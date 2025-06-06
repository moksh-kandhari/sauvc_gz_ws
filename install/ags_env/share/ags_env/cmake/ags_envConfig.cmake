# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_ags_env_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED ags_env_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(ags_env_FOUND FALSE)
  elseif(NOT ags_env_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(ags_env_FOUND FALSE)
  endif()
  return()
endif()
set(_ags_env_CONFIG_INCLUDED TRUE)

# output package information
if(NOT ags_env_FIND_QUIETLY)
  message(STATUS "Found ags_env: 0.0.0 (${ags_env_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'ags_env' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ags_env_DEPRECATED_QUIET)
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(ags_env_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${ags_env_DIR}/${_extra}")
endforeach()
