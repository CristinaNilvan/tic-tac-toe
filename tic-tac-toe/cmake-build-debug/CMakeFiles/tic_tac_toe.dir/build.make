# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\crist\OneDrive\Desktop\Github\tic-tac-toe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\crist\OneDrive\Desktop\Github\tic-tac-toe\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/tic_tac_toe.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tic_tac_toe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tic_tac_toe.dir/flags.make

CMakeFiles/tic_tac_toe.dir/main.c.obj: CMakeFiles/tic_tac_toe.dir/flags.make
CMakeFiles/tic_tac_toe.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\crist\OneDrive\Desktop\Github\tic-tac-toe\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/tic_tac_toe.dir/main.c.obj"
	C:\PROGRA~1\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\tic_tac_toe.dir\main.c.obj   -c C:\Users\crist\OneDrive\Desktop\Github\tic-tac-toe\main.c

CMakeFiles/tic_tac_toe.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tic_tac_toe.dir/main.c.i"
	C:\PROGRA~1\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\crist\OneDrive\Desktop\Github\tic-tac-toe\main.c > CMakeFiles\tic_tac_toe.dir\main.c.i

CMakeFiles/tic_tac_toe.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tic_tac_toe.dir/main.c.s"
	C:\PROGRA~1\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\crist\OneDrive\Desktop\Github\tic-tac-toe\main.c -o CMakeFiles\tic_tac_toe.dir\main.c.s

# Object files for target tic_tac_toe
tic_tac_toe_OBJECTS = \
"CMakeFiles/tic_tac_toe.dir/main.c.obj"

# External object files for target tic_tac_toe
tic_tac_toe_EXTERNAL_OBJECTS =

tic_tac_toe.exe: CMakeFiles/tic_tac_toe.dir/main.c.obj
tic_tac_toe.exe: CMakeFiles/tic_tac_toe.dir/build.make
tic_tac_toe.exe: CMakeFiles/tic_tac_toe.dir/linklibs.rsp
tic_tac_toe.exe: CMakeFiles/tic_tac_toe.dir/objects1.rsp
tic_tac_toe.exe: CMakeFiles/tic_tac_toe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\crist\OneDrive\Desktop\Github\tic-tac-toe\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable tic_tac_toe.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\tic_tac_toe.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tic_tac_toe.dir/build: tic_tac_toe.exe

.PHONY : CMakeFiles/tic_tac_toe.dir/build

CMakeFiles/tic_tac_toe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\tic_tac_toe.dir\cmake_clean.cmake
.PHONY : CMakeFiles/tic_tac_toe.dir/clean

CMakeFiles/tic_tac_toe.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\crist\OneDrive\Desktop\Github\tic-tac-toe C:\Users\crist\OneDrive\Desktop\Github\tic-tac-toe C:\Users\crist\OneDrive\Desktop\Github\tic-tac-toe\cmake-build-debug C:\Users\crist\OneDrive\Desktop\Github\tic-tac-toe\cmake-build-debug C:\Users\crist\OneDrive\Desktop\Github\tic-tac-toe\cmake-build-debug\CMakeFiles\tic_tac_toe.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tic_tac_toe.dir/depend
