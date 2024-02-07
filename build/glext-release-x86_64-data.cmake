########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(glext_COMPONENT_NAMES "")
list(APPEND glext_FIND_DEPENDENCY_NAMES khrplatform opengl_system)
list(REMOVE_DUPLICATES glext_FIND_DEPENDENCY_NAMES)
set(khrplatform_FIND_MODE "NO_MODULE")
set(opengl_system_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(glext_PACKAGE_FOLDER_RELEASE "C:/Users/orbet/.conan2/p/glextbc1c3ddd43be2/p")
set(glext_BUILD_MODULES_PATHS_RELEASE )


set(glext_INCLUDE_DIRS_RELEASE "${glext_PACKAGE_FOLDER_RELEASE}/include")
set(glext_RES_DIRS_RELEASE )
set(glext_DEFINITIONS_RELEASE )
set(glext_SHARED_LINK_FLAGS_RELEASE )
set(glext_EXE_LINK_FLAGS_RELEASE )
set(glext_OBJECTS_RELEASE )
set(glext_COMPILE_DEFINITIONS_RELEASE )
set(glext_COMPILE_OPTIONS_C_RELEASE )
set(glext_COMPILE_OPTIONS_CXX_RELEASE )
set(glext_LIB_DIRS_RELEASE )
set(glext_BIN_DIRS_RELEASE )
set(glext_LIBRARY_TYPE_RELEASE UNKNOWN)
set(glext_IS_HOST_WINDOWS_RELEASE 1)
set(glext_LIBS_RELEASE )
set(glext_SYSTEM_LIBS_RELEASE )
set(glext_FRAMEWORK_DIRS_RELEASE )
set(glext_FRAMEWORKS_RELEASE )
set(glext_BUILD_DIRS_RELEASE )
set(glext_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(glext_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${glext_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${glext_COMPILE_OPTIONS_C_RELEASE}>")
set(glext_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${glext_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${glext_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${glext_EXE_LINK_FLAGS_RELEASE}>")


set(glext_COMPONENTS_RELEASE )