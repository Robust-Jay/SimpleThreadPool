# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/SimpleThreadPool

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/SimpleThreadPool/build

# Include any dependencies generated for this target.
include src/CMakeFiles/simple_tp.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/simple_tp.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/simple_tp.dir/flags.make

src/CMakeFiles/simple_tp.dir/threadpool.cc.o: src/CMakeFiles/simple_tp.dir/flags.make
src/CMakeFiles/simple_tp.dir/threadpool.cc.o: ../src/threadpool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/SimpleThreadPool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/simple_tp.dir/threadpool.cc.o"
	cd /home/SimpleThreadPool/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_tp.dir/threadpool.cc.o -c /home/SimpleThreadPool/src/threadpool.cc

src/CMakeFiles/simple_tp.dir/threadpool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_tp.dir/threadpool.cc.i"
	cd /home/SimpleThreadPool/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/SimpleThreadPool/src/threadpool.cc > CMakeFiles/simple_tp.dir/threadpool.cc.i

src/CMakeFiles/simple_tp.dir/threadpool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_tp.dir/threadpool.cc.s"
	cd /home/SimpleThreadPool/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/SimpleThreadPool/src/threadpool.cc -o CMakeFiles/simple_tp.dir/threadpool.cc.s

# Object files for target simple_tp
simple_tp_OBJECTS = \
"CMakeFiles/simple_tp.dir/threadpool.cc.o"

# External object files for target simple_tp
simple_tp_EXTERNAL_OBJECTS =

../lib/libsimple_tp.so: src/CMakeFiles/simple_tp.dir/threadpool.cc.o
../lib/libsimple_tp.so: src/CMakeFiles/simple_tp.dir/build.make
../lib/libsimple_tp.so: src/CMakeFiles/simple_tp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/SimpleThreadPool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../lib/libsimple_tp.so"
	cd /home/SimpleThreadPool/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_tp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/simple_tp.dir/build: ../lib/libsimple_tp.so

.PHONY : src/CMakeFiles/simple_tp.dir/build

src/CMakeFiles/simple_tp.dir/clean:
	cd /home/SimpleThreadPool/build/src && $(CMAKE_COMMAND) -P CMakeFiles/simple_tp.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/simple_tp.dir/clean

src/CMakeFiles/simple_tp.dir/depend:
	cd /home/SimpleThreadPool/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/SimpleThreadPool /home/SimpleThreadPool/src /home/SimpleThreadPool/build /home/SimpleThreadPool/build/src /home/SimpleThreadPool/build/src/CMakeFiles/simple_tp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/simple_tp.dir/depend
