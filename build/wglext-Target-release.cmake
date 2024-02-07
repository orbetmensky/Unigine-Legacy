# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(wglext_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(wglext_FRAMEWORKS_FOUND_RELEASE "${wglext_FRAMEWORKS_RELEASE}" "${wglext_FRAMEWORK_DIRS_RELEASE}")

set(wglext_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET wglext_DEPS_TARGET)
    add_library(wglext_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET wglext_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${wglext_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${wglext_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:opengl::opengl>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### wglext_DEPS_TARGET to all of them
conan_package_library_targets("${wglext_LIBS_RELEASE}"    # libraries
                              "${wglext_LIB_DIRS_RELEASE}" # package_libdir
                              "${wglext_BIN_DIRS_RELEASE}" # package_bindir
                              "${wglext_LIBRARY_TYPE_RELEASE}"
                              "${wglext_IS_HOST_WINDOWS_RELEASE}"
                              wglext_DEPS_TARGET
                              wglext_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "wglext"    # package_name
                              "${wglext_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${wglext_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET wglext::wglext
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${wglext_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${wglext_LIBRARIES_TARGETS}>
                 APPEND)

    if("${wglext_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET wglext::wglext
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     wglext_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET wglext::wglext
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${wglext_LINKER_FLAGS_RELEASE}> APPEND)
    set_property(TARGET wglext::wglext
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${wglext_INCLUDE_DIRS_RELEASE}> APPEND)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET wglext::wglext
                 PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${wglext_LIB_DIRS_RELEASE}> APPEND)
    set_property(TARGET wglext::wglext
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${wglext_COMPILE_DEFINITIONS_RELEASE}> APPEND)
    set_property(TARGET wglext::wglext
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${wglext_COMPILE_OPTIONS_RELEASE}> APPEND)

########## For the modules (FindXXX)
set(wglext_LIBRARIES_RELEASE wglext::wglext)
