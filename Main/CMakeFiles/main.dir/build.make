# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vimes/graming/c/scrubsomemore

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vimes/graming/c/scrubsomemore

# Include any dependencies generated for this target.
include Main/CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include Main/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include Main/CMakeFiles/main.dir/flags.make

Main/CMakeFiles/main.dir/main.c.o: Main/CMakeFiles/main.dir/flags.make
Main/CMakeFiles/main.dir/main.c.o: Main/main.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vimes/graming/c/scrubsomemore/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object Main/CMakeFiles/main.dir/main.c.o"
	cd /home/vimes/graming/c/scrubsomemore/Main && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/main.dir/main.c.o   -c /home/vimes/graming/c/scrubsomemore/Main/main.c

Main/CMakeFiles/main.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/main.c.i"
	cd /home/vimes/graming/c/scrubsomemore/Main && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/vimes/graming/c/scrubsomemore/Main/main.c > CMakeFiles/main.dir/main.c.i

Main/CMakeFiles/main.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/main.c.s"
	cd /home/vimes/graming/c/scrubsomemore/Main && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/vimes/graming/c/scrubsomemore/Main/main.c -o CMakeFiles/main.dir/main.c.s

Main/CMakeFiles/main.dir/main.c.o.requires:
.PHONY : Main/CMakeFiles/main.dir/main.c.o.requires

Main/CMakeFiles/main.dir/main.c.o.provides: Main/CMakeFiles/main.dir/main.c.o.requires
	$(MAKE) -f Main/CMakeFiles/main.dir/build.make Main/CMakeFiles/main.dir/main.c.o.provides.build
.PHONY : Main/CMakeFiles/main.dir/main.c.o.provides

Main/CMakeFiles/main.dir/main.c.o.provides.build: Main/CMakeFiles/main.dir/main.c.o

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.c.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

Main/main: Main/CMakeFiles/main.dir/main.c.o
Main/main: Main/CMakeFiles/main.dir/build.make
Main/main: bin/libSomeFunctions.a
Main/main: Main/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable main"
	cd /home/vimes/graming/c/scrubsomemore/Main && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Main/CMakeFiles/main.dir/build: Main/main
.PHONY : Main/CMakeFiles/main.dir/build

Main/CMakeFiles/main.dir/requires: Main/CMakeFiles/main.dir/main.c.o.requires
.PHONY : Main/CMakeFiles/main.dir/requires

Main/CMakeFiles/main.dir/clean:
	cd /home/vimes/graming/c/scrubsomemore/Main && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : Main/CMakeFiles/main.dir/clean

Main/CMakeFiles/main.dir/depend:
	cd /home/vimes/graming/c/scrubsomemore && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vimes/graming/c/scrubsomemore /home/vimes/graming/c/scrubsomemore/Main /home/vimes/graming/c/scrubsomemore /home/vimes/graming/c/scrubsomemore/Main /home/vimes/graming/c/scrubsomemore/Main/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Main/CMakeFiles/main.dir/depend
