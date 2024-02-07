########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(glext_FIND_QUIETLY)
    set(glext_MESSAGE_MODE VERBOSE)
else()
    set(glext_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/glextTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${glext_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(glext_VERSION_STRING "cci.20210420")
set(glext_INCLUDE_DIRS ${glext_INCLUDE_DIRS_RELEASE} )
set(glext_INCLUDE_DIR ${glext_INCLUDE_DIRS_RELEASE} )
set(glext_LIBRARIES ${glext_LIBRARIES_RELEASE} )
set(glext_DEFINITIONS ${glext_DEFINITIONS_RELEASE} )

# Only the first installed configuration is included to avoid the collision
foreach(_BUILD_MODULE ${glext_BUILD_MODULES_PATHS_RELEASE} )
    message(${glext_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


