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

# Include any dependencies generated for this target.
include modules/superres/CMakeFiles/opencv_superres.dir/depend.make

# Include the progress variables for this target.
include modules/superres/CMakeFiles/opencv_superres.dir/progress.make

# Include the compile flags for this target's objects.
include modules/superres/CMakeFiles/opencv_superres.dir/flags.make

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.o: modules/superres/CMakeFiles/opencv_superres.dir/flags.make
modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.o: /Data/opencv_2.4.13.2/sources/modules/superres/src/btv_l1.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Data/opencv_2.4.13.2/build_John_unix_static/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.o"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.o -c /Data/opencv_2.4.13.2/sources/modules/superres/src/btv_l1.cpp

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.i"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Data/opencv_2.4.13.2/sources/modules/superres/src/btv_l1.cpp > CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.i

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.s"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Data/opencv_2.4.13.2/sources/modules/superres/src/btv_l1.cpp -o CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.s

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.o.requires:
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.o.requires

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.o.provides: modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_superres.dir/build.make modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.o.provides

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.o

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.o: modules/superres/CMakeFiles/opencv_superres.dir/flags.make
modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.o: /Data/opencv_2.4.13.2/sources/modules/superres/src/btv_l1_gpu.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Data/opencv_2.4.13.2/build_John_unix_static/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.o"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.o -c /Data/opencv_2.4.13.2/sources/modules/superres/src/btv_l1_gpu.cpp

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.i"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Data/opencv_2.4.13.2/sources/modules/superres/src/btv_l1_gpu.cpp > CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.i

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.s"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Data/opencv_2.4.13.2/sources/modules/superres/src/btv_l1_gpu.cpp -o CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.s

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.o.requires:
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.o.requires

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.o.provides: modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_superres.dir/build.make modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.o.provides

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.o

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.o: modules/superres/CMakeFiles/opencv_superres.dir/flags.make
modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.o: /Data/opencv_2.4.13.2/sources/modules/superres/src/btv_l1_ocl.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Data/opencv_2.4.13.2/build_John_unix_static/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.o"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.o -c /Data/opencv_2.4.13.2/sources/modules/superres/src/btv_l1_ocl.cpp

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.i"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Data/opencv_2.4.13.2/sources/modules/superres/src/btv_l1_ocl.cpp > CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.i

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.s"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Data/opencv_2.4.13.2/sources/modules/superres/src/btv_l1_ocl.cpp -o CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.s

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.o.requires:
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.o.requires

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.o.provides: modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_superres.dir/build.make modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.o.provides

modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.o

modules/superres/CMakeFiles/opencv_superres.dir/src/frame_source.cpp.o: modules/superres/CMakeFiles/opencv_superres.dir/flags.make
modules/superres/CMakeFiles/opencv_superres.dir/src/frame_source.cpp.o: /Data/opencv_2.4.13.2/sources/modules/superres/src/frame_source.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Data/opencv_2.4.13.2/build_John_unix_static/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/superres/CMakeFiles/opencv_superres.dir/src/frame_source.cpp.o"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_superres.dir/src/frame_source.cpp.o -c /Data/opencv_2.4.13.2/sources/modules/superres/src/frame_source.cpp

modules/superres/CMakeFiles/opencv_superres.dir/src/frame_source.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_superres.dir/src/frame_source.cpp.i"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Data/opencv_2.4.13.2/sources/modules/superres/src/frame_source.cpp > CMakeFiles/opencv_superres.dir/src/frame_source.cpp.i

modules/superres/CMakeFiles/opencv_superres.dir/src/frame_source.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_superres.dir/src/frame_source.cpp.s"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Data/opencv_2.4.13.2/sources/modules/superres/src/frame_source.cpp -o CMakeFiles/opencv_superres.dir/src/frame_source.cpp.s

modules/superres/CMakeFiles/opencv_superres.dir/src/frame_source.cpp.o.requires:
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/src/frame_source.cpp.o.requires

modules/superres/CMakeFiles/opencv_superres.dir/src/frame_source.cpp.o.provides: modules/superres/CMakeFiles/opencv_superres.dir/src/frame_source.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_superres.dir/build.make modules/superres/CMakeFiles/opencv_superres.dir/src/frame_source.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/src/frame_source.cpp.o.provides

modules/superres/CMakeFiles/opencv_superres.dir/src/frame_source.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_superres.dir/src/frame_source.cpp.o

modules/superres/CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.o: modules/superres/CMakeFiles/opencv_superres.dir/flags.make
modules/superres/CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.o: /Data/opencv_2.4.13.2/sources/modules/superres/src/input_array_utility.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Data/opencv_2.4.13.2/build_John_unix_static/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/superres/CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.o"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.o -c /Data/opencv_2.4.13.2/sources/modules/superres/src/input_array_utility.cpp

modules/superres/CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.i"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Data/opencv_2.4.13.2/sources/modules/superres/src/input_array_utility.cpp > CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.i

modules/superres/CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.s"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Data/opencv_2.4.13.2/sources/modules/superres/src/input_array_utility.cpp -o CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.s

modules/superres/CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.o.requires:
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.o.requires

modules/superres/CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.o.provides: modules/superres/CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_superres.dir/build.make modules/superres/CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.o.provides

modules/superres/CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.o

modules/superres/CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.o: modules/superres/CMakeFiles/opencv_superres.dir/flags.make
modules/superres/CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.o: /Data/opencv_2.4.13.2/sources/modules/superres/src/optical_flow.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Data/opencv_2.4.13.2/build_John_unix_static/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/superres/CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.o"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.o -c /Data/opencv_2.4.13.2/sources/modules/superres/src/optical_flow.cpp

modules/superres/CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.i"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Data/opencv_2.4.13.2/sources/modules/superres/src/optical_flow.cpp > CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.i

modules/superres/CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.s"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Data/opencv_2.4.13.2/sources/modules/superres/src/optical_flow.cpp -o CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.s

modules/superres/CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.o.requires:
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.o.requires

modules/superres/CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.o.provides: modules/superres/CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_superres.dir/build.make modules/superres/CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.o.provides

modules/superres/CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.o

modules/superres/CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.o: modules/superres/CMakeFiles/opencv_superres.dir/flags.make
modules/superres/CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.o: /Data/opencv_2.4.13.2/sources/modules/superres/src/super_resolution.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Data/opencv_2.4.13.2/build_John_unix_static/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/superres/CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.o"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.o -c /Data/opencv_2.4.13.2/sources/modules/superres/src/super_resolution.cpp

modules/superres/CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.i"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Data/opencv_2.4.13.2/sources/modules/superres/src/super_resolution.cpp > CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.i

modules/superres/CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.s"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Data/opencv_2.4.13.2/sources/modules/superres/src/super_resolution.cpp -o CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.s

modules/superres/CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.o.requires:
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.o.requires

modules/superres/CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.o.provides: modules/superres/CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_superres.dir/build.make modules/superres/CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.o.provides

modules/superres/CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.o

# Object files for target opencv_superres
opencv_superres_OBJECTS = \
"CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.o" \
"CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.o" \
"CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.o" \
"CMakeFiles/opencv_superres.dir/src/frame_source.cpp.o" \
"CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.o" \
"CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.o" \
"CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.o"

# External object files for target opencv_superres
opencv_superres_EXTERNAL_OBJECTS =

lib/libopencv_superres.a: modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.o
lib/libopencv_superres.a: modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.o
lib/libopencv_superres.a: modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.o
lib/libopencv_superres.a: modules/superres/CMakeFiles/opencv_superres.dir/src/frame_source.cpp.o
lib/libopencv_superres.a: modules/superres/CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.o
lib/libopencv_superres.a: modules/superres/CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.o
lib/libopencv_superres.a: modules/superres/CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.o
lib/libopencv_superres.a: modules/superres/CMakeFiles/opencv_superres.dir/build.make
lib/libopencv_superres.a: modules/superres/CMakeFiles/opencv_superres.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library ../../lib/libopencv_superres.a"
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && $(CMAKE_COMMAND) -P CMakeFiles/opencv_superres.dir/cmake_clean_target.cmake
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_superres.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/superres/CMakeFiles/opencv_superres.dir/build: lib/libopencv_superres.a
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/build

modules/superres/CMakeFiles/opencv_superres.dir/requires: modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1.cpp.o.requires
modules/superres/CMakeFiles/opencv_superres.dir/requires: modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_gpu.cpp.o.requires
modules/superres/CMakeFiles/opencv_superres.dir/requires: modules/superres/CMakeFiles/opencv_superres.dir/src/btv_l1_ocl.cpp.o.requires
modules/superres/CMakeFiles/opencv_superres.dir/requires: modules/superres/CMakeFiles/opencv_superres.dir/src/frame_source.cpp.o.requires
modules/superres/CMakeFiles/opencv_superres.dir/requires: modules/superres/CMakeFiles/opencv_superres.dir/src/input_array_utility.cpp.o.requires
modules/superres/CMakeFiles/opencv_superres.dir/requires: modules/superres/CMakeFiles/opencv_superres.dir/src/optical_flow.cpp.o.requires
modules/superres/CMakeFiles/opencv_superres.dir/requires: modules/superres/CMakeFiles/opencv_superres.dir/src/super_resolution.cpp.o.requires
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/requires

modules/superres/CMakeFiles/opencv_superres.dir/clean:
	cd /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres && $(CMAKE_COMMAND) -P CMakeFiles/opencv_superres.dir/cmake_clean.cmake
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/clean

modules/superres/CMakeFiles/opencv_superres.dir/depend:
	cd /Data/opencv_2.4.13.2/build_John_unix_static && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Data/opencv_2.4.13.2/sources /Data/opencv_2.4.13.2/sources/modules/superres /Data/opencv_2.4.13.2/build_John_unix_static /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres /Data/opencv_2.4.13.2/build_John_unix_static/modules/superres/CMakeFiles/opencv_superres.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/superres/CMakeFiles/opencv_superres.dir/depend

