# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_jaredbot_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED jaredbot_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(jaredbot_FOUND FALSE)
  elseif(NOT jaredbot_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(jaredbot_FOUND FALSE)
  endif()
  return()
endif()
set(_jaredbot_CONFIG_INCLUDED TRUE)

# output package information
if(NOT jaredbot_FIND_QUIETLY)
  message(STATUS "Found jaredbot: 0.0.0 (${jaredbot_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'jaredbot' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${jaredbot_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(jaredbot_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${jaredbot_DIR}/${_extra}")
endforeach()
