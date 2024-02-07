########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(khrplatform_COMPONENT_NAMES "")
set(khrplatform_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(khrplatform_PACKAGE_FOLDER_RELEASE "C:/Users/orbet/.conan2/p/khrpl54278e0c9b4ae/p")
set(khrplatform_BUILD_MODULES_PATHS_RELEASE )


set(khrplatform_INCLUDE_DIRS_RELEASE "${khrplatform_PACKAGE_FOLDER_RELEASE}/include")
set(khrplatform_RES_DIRS_RELEASE )
set(khrplatform_DEFINITIONS_RELEASE )
set(khrplatform_SHARED_LINK_FLAGS_RELEASE )
set(khrplatform_EXE_LINK_FLAGS_RELEASE )
set(khrplatform_OBJECTS_RELEASE )
set(khrplatform_COMPILE_DEFINITIONS_RELEASE )
set(khrplatform_COMPILE_OPTIONS_C_RELEASE )
set(khrplatform_COMPILE_OPTIONS_CXX_RELEASE )
set(khrplatform_LIB_DIRS_RELEASE )
set(khrplatform_BIN_DIRS_RELEASE )
set(khrplatform_LIBRARY_TYPE_RELEASE UNKNOWN)
set(khrplatform_IS_HOST_WINDOWS_RELEASE 1)
set(khrplatform_LIBS_RELEASE )
set(khrplatform_SYSTEM_LIBS_RELEASE )
set(khrplatform_FRAMEWORK_DIRS_RELEASE )
set(khrplatform_FRAMEWORKS_RELEASE )
set(khrplatform_BUILD_DIRS_RELEASE )
set(khrplatform_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(khrplatform_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${khrplatform_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${khrplatform_COMPILE_OPTIONS_C_RELEASE}>")
set(khrplatform_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${khrplatform_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${khrplatform_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${khrplatform_EXE_LINK_FLAGS_RELEASE}>")


set(khrplatform_COMPONENTS_RELEASE )