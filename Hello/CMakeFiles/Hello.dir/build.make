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
include Hello/CMakeFiles/Hello.dir/depend.make

# Include the progress variables for this target.
include Hello/CMakeFiles/Hello.dir/progress.make

# Include the compile flags for this target's objects.
include Hello/CMakeFiles/Hello.dir/flags.make

Hello/CMakeFiles/Hello.dir/hello.cxx.o: Hello/CMakeFiles/Hello.dir/flags.make
Hello/CMakeFiles/Hello.dir/hello.cxx.o: Hello/hello.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vimes/graming/c/scrubsomemore/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Hello/CMakeFiles/Hello.dir/hello.cxx.o"
	cd /home/vimes/graming/c/scrubsomemore/Hello && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Hello.dir/hello.cxx.o -c /home/vimes/graming/c/scrubsomemore/Hello/hello.cxx

Hello/CMakeFiles/Hello.dir/hello.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello.dir/hello.cxx.i"
	cd /home/vimes/graming/c/scrubsomemore/Hello && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/vimes/graming/c/scrubsomemore/Hello/hello.cxx > CMakeFiles/Hello.dir/hello.cxx.i

Hello/CMakeFiles/Hello.dir/hello.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello.dir/hello.cxx.s"
	cd /home/vimes/graming/c/scrubsomemore/Hello && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/vimes/graming/c/scrubsomemore/Hello/hello.cxx -o CMakeFiles/Hello.dir/hello.cxx.s

Hello/CMakeFiles/Hello.dir/hello.cxx.o.requires:
.PHONY : Hello/CMakeFiles/Hello.dir/hello.cxx.o.requires

Hello/CMakeFiles/Hello.dir/hello.cxx.o.provides: Hello/CMakeFiles/Hello.dir/hello.cxx.o.requires
	$(MAKE) -f Hello/CMakeFiles/Hello.dir/build.make Hello/CMakeFiles/Hello.dir/hello.cxx.o.provides.build
.PHONY : Hello/CMakeFiles/Hello.dir/hello.cxx.o.provides

Hello/CMakeFiles/Hello.dir/hello.cxx.o.provides.build: Hello/CMakeFiles/Hello.dir/hello.cxx.o

# Object files for target Hello
Hello_OBJECTS = \
"CMakeFiles/Hello.dir/hello.cxx.o"

# External object files for target Hello
Hello_EXTERNAL_OBJECTS =

Hello/libHello.a: Hello/CMakeFiles/Hello.dir/hello.cxx.o
Hello/libHello.a: Hello/CMakeFiles/Hello.dir/build.make
Hello/libHello.a: Hello/CMakeFiles/Hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libHello.a"
	cd /home/vimes/graming/c/scrubsomemore/Hello && $(CMAKE_COMMAND) -P CMakeFiles/Hello.dir/cmake_clean_target.cmake
	cd /home/vimes/graming/c/scrubsomemore/Hello && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Hello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Hello/CMakeFiles/Hello.dir/build: Hello/libHello.a
.PHONY : Hello/CMakeFiles/Hello.dir/build

Hello/CMakeFiles/Hello.dir/requires: Hello/CMakeFiles/Hello.dir/hello.cxx.o.requires
.PHONY : Hello/CMakeFiles/Hello.dir/requires

Hello/CMakeFiles/Hello.dir/clean:
	cd /home/vimes/graming/c/scrubsomemore/Hello && $(CMAKE_COMMAND) -P CMakeFiles/Hello.dir/cmake_clean.cmake
.PHONY : Hello/CMakeFiles/Hello.dir/clean

Hello/CMakeFiles/Hello.dir/depend:
	cd /home/vimes/graming/c/scrubsomemore && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vimes/graming/c/scrubsomemore /home/vimes/graming/c/scrubsomemore/Hello /home/vimes/graming/c/scrubsomemore /home/vimes/graming/c/scrubsomemore/Hello /home/vimes/graming/c/scrubsomemore/Hello/CMakeFiles/Hello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Hello/CMakeFiles/Hello.dir/depend

