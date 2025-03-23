# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "L:/eriks/Source/VisualStudio/Repos/JoyShockLibrary/_deps/hidapi-src")
  file(MAKE_DIRECTORY "L:/eriks/Source/VisualStudio/Repos/JoyShockLibrary/_deps/hidapi-src")
endif()
file(MAKE_DIRECTORY
  "L:/eriks/Source/VisualStudio/Repos/JoyShockLibrary/_deps/hidapi-build"
  "L:/eriks/Source/VisualStudio/Repos/JoyShockLibrary/_deps/hidapi-subbuild/hidapi-populate-prefix"
  "L:/eriks/Source/VisualStudio/Repos/JoyShockLibrary/_deps/hidapi-subbuild/hidapi-populate-prefix/tmp"
  "L:/eriks/Source/VisualStudio/Repos/JoyShockLibrary/_deps/hidapi-subbuild/hidapi-populate-prefix/src/hidapi-populate-stamp"
  "L:/eriks/Source/VisualStudio/Repos/JoyShockLibrary/_deps/hidapi-subbuild/hidapi-populate-prefix/src"
  "L:/eriks/Source/VisualStudio/Repos/JoyShockLibrary/_deps/hidapi-subbuild/hidapi-populate-prefix/src/hidapi-populate-stamp"
)

set(configSubDirs Debug)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "L:/eriks/Source/VisualStudio/Repos/JoyShockLibrary/_deps/hidapi-subbuild/hidapi-populate-prefix/src/hidapi-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "L:/eriks/Source/VisualStudio/Repos/JoyShockLibrary/_deps/hidapi-subbuild/hidapi-populate-prefix/src/hidapi-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
