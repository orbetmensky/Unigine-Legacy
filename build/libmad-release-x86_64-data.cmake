########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(libmad_COMPONENT_NAMES "")
set(libmad_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(libmad_PACKAGE_FOLDER_RELEASE "C:/Users/orbet/.conan2/p/libma7e99c0f862f33/p")
set(libmad_BUILD_MODULES_PATHS_RELEASE )


set(libmad_INCLUDE_DIRS_RELEASE "${libmad_PACKAGE_FOLDER_RELEASE}/include")
set(libmad_RES_DIRS_RELEASE )
set(libmad_DEFINITIONS_RELEASE )
set(libmad_SHARED_LINK_FLAGS_RELEASE )
set(libmad_EXE_LINK_FLAGS_RELEASE )
set(libmad_OBJECTS_RELEASE )
set(libmad_COMPILE_DEFINITIONS_RELEASE )
set(libmad_COMPILE_OPTIONS_C_RELEASE )
set(libmad_COMPILE_OPTIONS_CXX_RELEASE )
set(libmad_LIB_DIRS_RELEASE "${libmad_PACKAGE_FOLDER_RELEASE}/lib")
set(libmad_BIN_DIRS_RELEASE )
set(libmad_LIBRARY_TYPE_RELEASE STATIC)
set(libmad_IS_HOST_WINDOWS_RELEASE 1)
set(libmad_LIBS_RELEASE mad)
set(libmad_SYSTEM_LIBS_RELEASE )
set(libmad_FRAMEWORK_DIRS_RELEASE )
set(libmad_FRAMEWORKS_RELEASE )
set(libmad_BUILD_DIRS_RELEASE )
set(libmad_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(libmad_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${libmad_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${libmad_COMPILE_OPTIONS_C_RELEASE}>")
set(libmad_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libmad_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libmad_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libmad_EXE_LINK_FLAGS_RELEASE}>")


set(libmad_COMPONENTS_RELEASE )