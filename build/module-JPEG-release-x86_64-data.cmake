########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(libjpeg_COMPONENT_NAMES "")
set(libjpeg_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(libjpeg_PACKAGE_FOLDER_RELEASE "C:/Users/orbet/.conan2/p/libjp0a77fd78bf747/p")
set(libjpeg_BUILD_MODULES_PATHS_RELEASE )


set(libjpeg_INCLUDE_DIRS_RELEASE "${libjpeg_PACKAGE_FOLDER_RELEASE}/include")
set(libjpeg_RES_DIRS_RELEASE "${libjpeg_PACKAGE_FOLDER_RELEASE}/res")
set(libjpeg_DEFINITIONS_RELEASE "-DLIBJPEG_STATIC")
set(libjpeg_SHARED_LINK_FLAGS_RELEASE )
set(libjpeg_EXE_LINK_FLAGS_RELEASE )
set(libjpeg_OBJECTS_RELEASE )
set(libjpeg_COMPILE_DEFINITIONS_RELEASE "LIBJPEG_STATIC")
set(libjpeg_COMPILE_OPTIONS_C_RELEASE )
set(libjpeg_COMPILE_OPTIONS_CXX_RELEASE )
set(libjpeg_LIB_DIRS_RELEASE "${libjpeg_PACKAGE_FOLDER_RELEASE}/lib")
set(libjpeg_BIN_DIRS_RELEASE )
set(libjpeg_LIBRARY_TYPE_RELEASE STATIC)
set(libjpeg_IS_HOST_WINDOWS_RELEASE 1)
set(libjpeg_LIBS_RELEASE libjpeg)
set(libjpeg_SYSTEM_LIBS_RELEASE )
set(libjpeg_FRAMEWORK_DIRS_RELEASE )
set(libjpeg_FRAMEWORKS_RELEASE )
set(libjpeg_BUILD_DIRS_RELEASE )
set(libjpeg_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(libjpeg_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${libjpeg_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${libjpeg_COMPILE_OPTIONS_C_RELEASE}>")
set(libjpeg_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libjpeg_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libjpeg_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libjpeg_EXE_LINK_FLAGS_RELEASE}>")


set(libjpeg_COMPONENTS_RELEASE )