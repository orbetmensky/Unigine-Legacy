########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(wglext_FIND_QUIETLY)
    set(wglext_MESSAGE_MODE VERBOSE)
else()
    set(wglext_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/wglextTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${wglext_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(wglext_VERSION_STRING "cci.20200813")
set(wglext_INCLUDE_DIRS ${wglext_INCLUDE_DIRS_RELEASE} )
set(wglext_INCLUDE_DIR ${wglext_INCLUDE_DIRS_RELEASE} )
set(wglext_LIBRARIES ${wglext_LIBRARIES_RELEASE} )
set(wglext_DEFINITIONS ${wglext_DEFINITIONS_RELEASE} )

# Only the first installed configuration is included to avoid the collision
foreach(_BUILD_MODULE ${wglext_BUILD_MODULES_PATHS_RELEASE} )
    message(${wglext_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


