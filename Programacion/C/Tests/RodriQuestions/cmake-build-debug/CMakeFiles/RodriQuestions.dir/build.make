# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\AlumnoM\Documents\Programacion\C\RodriQuestions

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\AlumnoM\Documents\Programacion\C\RodriQuestions\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/RodriQuestions.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/RodriQuestions.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RodriQuestions.dir/flags.make

CMakeFiles/RodriQuestions.dir/rodriquestions.c.obj: CMakeFiles/RodriQuestions.dir/flags.make
CMakeFiles/RodriQuestions.dir/rodriquestions.c.obj: ../rodriquestions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\AlumnoM\Documents\Programacion\C\RodriQuestions\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/RodriQuestions.dir/rodriquestions.c.obj"
	C:\PROGRA~2\Dev-Cpp\MinGW64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\RodriQuestions.dir\rodriquestions.c.obj -c C:\Users\AlumnoM\Documents\Programacion\C\RodriQuestions\rodriquestions.c

CMakeFiles/RodriQuestions.dir/rodriquestions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RodriQuestions.dir/rodriquestions.c.i"
	C:\PROGRA~2\Dev-Cpp\MinGW64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\AlumnoM\Documents\Programacion\C\RodriQuestions\rodriquestions.c > CMakeFiles\RodriQuestions.dir\rodriquestions.c.i

CMakeFiles/RodriQuestions.dir/rodriquestions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RodriQuestions.dir/rodriquestions.c.s"
	C:\PROGRA~2\Dev-Cpp\MinGW64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\AlumnoM\Documents\Programacion\C\RodriQuestions\rodriquestions.c -o CMakeFiles\RodriQuestions.dir\rodriquestions.c.s

# Object files for target RodriQuestions
RodriQuestions_OBJECTS = \
"CMakeFiles/RodriQuestions.dir/rodriquestions.c.obj"

# External object files for target RodriQuestions
RodriQuestions_EXTERNAL_OBJECTS =

RodriQuestions.exe: CMakeFiles/RodriQuestions.dir/rodriquestions.c.obj
RodriQuestions.exe: CMakeFiles/RodriQuestions.dir/build.make
RodriQuestions.exe: CMakeFiles/RodriQuestions.dir/linklibs.rsp
RodriQuestions.exe: CMakeFiles/RodriQuestions.dir/objects1.rsp
RodriQuestions.exe: CMakeFiles/RodriQuestions.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\AlumnoM\Documents\Programacion\C\RodriQuestions\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable RodriQuestions.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\RodriQuestions.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RodriQuestions.dir/build: RodriQuestions.exe
.PHONY : CMakeFiles/RodriQuestions.dir/build

CMakeFiles/RodriQuestions.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\RodriQuestions.dir\cmake_clean.cmake
.PHONY : CMakeFiles/RodriQuestions.dir/clean

CMakeFiles/RodriQuestions.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\AlumnoM\Documents\Programacion\C\RodriQuestions C:\Users\AlumnoM\Documents\Programacion\C\RodriQuestions C:\Users\AlumnoM\Documents\Programacion\C\RodriQuestions\cmake-build-debug C:\Users\AlumnoM\Documents\Programacion\C\RodriQuestions\cmake-build-debug C:\Users\AlumnoM\Documents\Programacion\C\RodriQuestions\cmake-build-debug\CMakeFiles\RodriQuestions.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RodriQuestions.dir/depend

