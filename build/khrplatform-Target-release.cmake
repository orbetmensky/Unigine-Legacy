# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(khrplatform_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(khrplatform_FRAMEWORKS_FOUND_RELEASE "${khrplatform_FRAMEWORKS_RELEASE}" "${khrplatform_FRAMEWORK_DIRS_RELEASE}")

set(khrplatform_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET khrplatform_DEPS_TARGET)
    add_library(khrplatform_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET khrplatform_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${khrplatform_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${khrplatform_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### khrplatform_DEPS_TARGET to all of them
conan_package_library_targets("${khrplatform_LIBS_RELEASE}"    # libraries
                              "${khrplatform_LIB_DIRS_RELEASE}" # package_libdir
                              "${khrplatform_BIN_DIRS_RELEASE}" # package_bindir
                              "${khrplatform_LIBRARY_TYPE_RELEASE}"
                              "${khrplatform_IS_HOST_WINDOWS_RELEASE}"
                              khrplatform_DEPS_TARGET
                              khrplatform_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "khrplatform"    # package_name
                              "${khrplatform_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${khrplatform_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET khrplatform::khrplatform
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${khrplatform_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${khrplatform_LIBRARIES_TARGETS}>
                 APPEND)

    if("${khrplatform_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET khrplatform::khrplatform
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     khrplatform_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET khrplatform::khrplatform
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${khrplatform_LINKER_FLAGS_RELEASE}> APPEND)
    set_property(TARGET khrplatform::khrplatform
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${khrplatform_INCLUDE_DIRS_RELEASE}> APPEND)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET khrplatform::khrplatform
                 PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${khrplatform_LIB_DIRS_RELEASE}> APPEND)
    set_property(TARGET khrplatform::khrplatform
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${khrplatform_COMPILE_DEFINITIONS_RELEASE}> APPEND)
    set_property(TARGET khrplatform::khrplatform
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${khrplatform_COMPILE_OPTIONS_RELEASE}> APPEND)

########## For the modules (FindXXX)
set(khrplatform_LIBRARIES_RELEASE khrplatform::khrplatform)
