# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Data/opencv_2.4.13.2/sources

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Data/opencv_2.4.13.2/build_John_unix_static

# Utility rule file for install_docs.

# Include the progress variables for this target.
include doc/CMakeFiles/install_docs.dir/progress.make

doc/CMakeFiles/install_docs:
	cd /Data/opencv_2.4.13.2/build_John_unix_static/doc && /Applications/CMake.app/Contents/bin/cmake -DCMAKE_INSTALL_COMPONENT=docs -P /Data/opencv_2.4.13.2/build_John_unix_static/cmake_install.cmake

install_docs: doc/CMakeFiles/install_docs
install_docs: doc/CMakeFiles/install_docs.dir/build.make
.PHONY : install_docs

# Rule to build all files generated by this target.
doc/CMakeFiles/install_docs.dir/build: install_docs
.PHONY : doc/CMakeFiles/install_docs.dir/build

doc/CMakeFiles/install_docs.dir/clean:
	cd /Data/opencv_2.4.13.2/build_John_unix_static/doc && $(CMAKE_COMMAND) -P CMakeFiles/install_docs.dir/cmake_clean.cmake
.PHONY : doc/CMakeFiles/install_docs.dir/clean

doc/CMakeFiles/install_docs.dir/depend:
	cd /Data/opencv_2.4.13.2/build_John_unix_static && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Data/opencv_2.4.13.2/sources /Data/opencv_2.4.13.2/sources/doc /Data/opencv_2.4.13.2/build_John_unix_static /Data/opencv_2.4.13.2/build_John_unix_static/doc /Data/opencv_2.4.13.2/build_John_unix_static/doc/CMakeFiles/install_docs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/CMakeFiles/install_docs.dir/depend

