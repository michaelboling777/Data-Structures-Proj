# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mbb/gp-team-k

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mbb/gp-team-k/targets

# Include any dependencies generated for this target.
include CMakeFiles/bankSimulationDemo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/bankSimulationDemo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/bankSimulationDemo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bankSimulationDemo.dir/flags.make

CMakeFiles/bankSimulationDemo.dir/src/Demo.cpp.o: CMakeFiles/bankSimulationDemo.dir/flags.make
CMakeFiles/bankSimulationDemo.dir/src/Demo.cpp.o: ../src/Demo.cpp
CMakeFiles/bankSimulationDemo.dir/src/Demo.cpp.o: CMakeFiles/bankSimulationDemo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mbb/gp-team-k/targets/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bankSimulationDemo.dir/src/Demo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bankSimulationDemo.dir/src/Demo.cpp.o -MF CMakeFiles/bankSimulationDemo.dir/src/Demo.cpp.o.d -o CMakeFiles/bankSimulationDemo.dir/src/Demo.cpp.o -c /home/mbb/gp-team-k/src/Demo.cpp

CMakeFiles/bankSimulationDemo.dir/src/Demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bankSimulationDemo.dir/src/Demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mbb/gp-team-k/src/Demo.cpp > CMakeFiles/bankSimulationDemo.dir/src/Demo.cpp.i

CMakeFiles/bankSimulationDemo.dir/src/Demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bankSimulationDemo.dir/src/Demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mbb/gp-team-k/src/Demo.cpp -o CMakeFiles/bankSimulationDemo.dir/src/Demo.cpp.s

# Object files for target bankSimulationDemo
bankSimulationDemo_OBJECTS = \
"CMakeFiles/bankSimulationDemo.dir/src/Demo.cpp.o"

# External object files for target bankSimulationDemo
bankSimulationDemo_EXTERNAL_OBJECTS =

bankSimulationDemo: CMakeFiles/bankSimulationDemo.dir/src/Demo.cpp.o
bankSimulationDemo: CMakeFiles/bankSimulationDemo.dir/build.make
bankSimulationDemo: CMakeFiles/bankSimulationDemo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mbb/gp-team-k/targets/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bankSimulationDemo"
	/usr/bin/cmake -E copy_if_different /home/mbb/gp-team-k/resource/demoData.txt /home/mbb/gp-team-k/targets
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bankSimulationDemo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bankSimulationDemo.dir/build: bankSimulationDemo
.PHONY : CMakeFiles/bankSimulationDemo.dir/build

CMakeFiles/bankSimulationDemo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bankSimulationDemo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bankSimulationDemo.dir/clean

CMakeFiles/bankSimulationDemo.dir/depend:
	cd /home/mbb/gp-team-k/targets && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mbb/gp-team-k /home/mbb/gp-team-k /home/mbb/gp-team-k/targets /home/mbb/gp-team-k/targets /home/mbb/gp-team-k/targets/CMakeFiles/bankSimulationDemo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bankSimulationDemo.dir/depend
