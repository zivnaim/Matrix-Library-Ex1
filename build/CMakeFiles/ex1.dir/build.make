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
CMAKE_SOURCE_DIR = /home/zivnaim/ass1/ex1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zivnaim/ass1/ex1/build

# Include any dependencies generated for this target.
include CMakeFiles/ex1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ex1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ex1.dir/flags.make

CMakeFiles/ex1.dir/ErrorCode.c.o: CMakeFiles/ex1.dir/flags.make
CMakeFiles/ex1.dir/ErrorCode.c.o: ../ErrorCode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zivnaim/ass1/ex1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ex1.dir/ErrorCode.c.o"
	/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ex1.dir/ErrorCode.c.o   -c /home/zivnaim/ass1/ex1/ErrorCode.c

CMakeFiles/ex1.dir/ErrorCode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ex1.dir/ErrorCode.c.i"
	/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zivnaim/ass1/ex1/ErrorCode.c > CMakeFiles/ex1.dir/ErrorCode.c.i

CMakeFiles/ex1.dir/ErrorCode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ex1.dir/ErrorCode.c.s"
	/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zivnaim/ass1/ex1/ErrorCode.c -o CMakeFiles/ex1.dir/ErrorCode.c.s

CMakeFiles/ex1.dir/Matrix.c.o: CMakeFiles/ex1.dir/flags.make
CMakeFiles/ex1.dir/Matrix.c.o: ../Matrix.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zivnaim/ass1/ex1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/ex1.dir/Matrix.c.o"
	/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ex1.dir/Matrix.c.o   -c /home/zivnaim/ass1/ex1/Matrix.c

CMakeFiles/ex1.dir/Matrix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ex1.dir/Matrix.c.i"
	/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zivnaim/ass1/ex1/Matrix.c > CMakeFiles/ex1.dir/Matrix.c.i

CMakeFiles/ex1.dir/Matrix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ex1.dir/Matrix.c.s"
	/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zivnaim/ass1/ex1/Matrix.c -o CMakeFiles/ex1.dir/Matrix.c.s

# Object files for target ex1
ex1_OBJECTS = \
"CMakeFiles/ex1.dir/ErrorCode.c.o" \
"CMakeFiles/ex1.dir/Matrix.c.o"

# External object files for target ex1
ex1_EXTERNAL_OBJECTS =

libex1.a: CMakeFiles/ex1.dir/ErrorCode.c.o
libex1.a: CMakeFiles/ex1.dir/Matrix.c.o
libex1.a: CMakeFiles/ex1.dir/build.make
libex1.a: CMakeFiles/ex1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zivnaim/ass1/ex1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libex1.a"
	$(CMAKE_COMMAND) -P CMakeFiles/ex1.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ex1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ex1.dir/build: libex1.a

.PHONY : CMakeFiles/ex1.dir/build

CMakeFiles/ex1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ex1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ex1.dir/clean

CMakeFiles/ex1.dir/depend:
	cd /home/zivnaim/ass1/ex1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zivnaim/ass1/ex1 /home/zivnaim/ass1/ex1 /home/zivnaim/ass1/ex1/build /home/zivnaim/ass1/ex1/build /home/zivnaim/ass1/ex1/build/CMakeFiles/ex1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ex1.dir/depend
