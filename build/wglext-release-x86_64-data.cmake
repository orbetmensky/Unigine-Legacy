########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(wglext_COMPONENT_NAMES "")
list(APPEND wglext_FIND_DEPENDENCY_NAMES opengl_system)
list(REMOVE_DUPLICATES wglext_FIND_DEPENDENCY_NAMES)
set(opengl_system_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(wglext_PACKAGE_FOLDER_RELEASE "C:/Users/orbet/.conan2/p/wglex49fca61555f44/p")
set(wglext_BUILD_MODULES_PATHS_RELEASE )


set(wglext_INCLUDE_DIRS_RELEASE "${wglext_PACKAGE_FOLDER_RELEASE}/include")
set(wglext_RES_DIRS_RELEASE )
set(wglext_DEFINITIONS_RELEASE )
set(wglext_SHARED_LINK_FLAGS_RELEASE )
set(wglext_EXE_LINK_FLAGS_RELEASE )
set(wglext_OBJECTS_RELEASE )
set(wglext_COMPILE_DEFINITIONS_RELEASE )
set(wglext_COMPILE_OPTIONS_C_RELEASE )
set(wglext_COMPILE_OPTIONS_CXX_RELEASE )
set(wglext_LIB_DIRS_RELEASE )
set(wglext_BIN_DIRS_RELEASE )
set(wglext_LIBRARY_TYPE_RELEASE UNKNOWN)
set(wglext_IS_HOST_WINDOWS_RELEASE 1)
set(wglext_LIBS_RELEASE )
set(wglext_SYSTEM_LIBS_RELEASE )
set(wglext_FRAMEWORK_DIRS_RELEASE )
set(wglext_FRAMEWORKS_RELEASE )
set(wglext_BUILD_DIRS_RELEASE )
set(wglext_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(wglext_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${wglext_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${wglext_COMPILE_OPTIONS_C_RELEASE}>")
set(wglext_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${wglext_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${wglext_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${wglext_EXE_LINK_FLAGS_RELEASE}>")


set(wglext_COMPONENTS_RELEASE )