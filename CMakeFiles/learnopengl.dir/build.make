# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_SOURCE_DIR = /home/ylhena/dev/learnopengl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ylhena/dev/learnopengl

# Include any dependencies generated for this target.
include CMakeFiles/learnopengl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/learnopengl.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/learnopengl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/learnopengl.dir/flags.make

CMakeFiles/learnopengl.dir/src/main.cpp.o: CMakeFiles/learnopengl.dir/flags.make
CMakeFiles/learnopengl.dir/src/main.cpp.o: src/main.cpp
CMakeFiles/learnopengl.dir/src/main.cpp.o: CMakeFiles/learnopengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ylhena/dev/learnopengl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/learnopengl.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/learnopengl.dir/src/main.cpp.o -MF CMakeFiles/learnopengl.dir/src/main.cpp.o.d -o CMakeFiles/learnopengl.dir/src/main.cpp.o -c /home/ylhena/dev/learnopengl/src/main.cpp

CMakeFiles/learnopengl.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/learnopengl.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ylhena/dev/learnopengl/src/main.cpp > CMakeFiles/learnopengl.dir/src/main.cpp.i

CMakeFiles/learnopengl.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/learnopengl.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ylhena/dev/learnopengl/src/main.cpp -o CMakeFiles/learnopengl.dir/src/main.cpp.s

CMakeFiles/learnopengl.dir/src/glad.c.o: CMakeFiles/learnopengl.dir/flags.make
CMakeFiles/learnopengl.dir/src/glad.c.o: src/glad.c
CMakeFiles/learnopengl.dir/src/glad.c.o: CMakeFiles/learnopengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ylhena/dev/learnopengl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/learnopengl.dir/src/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/learnopengl.dir/src/glad.c.o -MF CMakeFiles/learnopengl.dir/src/glad.c.o.d -o CMakeFiles/learnopengl.dir/src/glad.c.o -c /home/ylhena/dev/learnopengl/src/glad.c

CMakeFiles/learnopengl.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/learnopengl.dir/src/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ylhena/dev/learnopengl/src/glad.c > CMakeFiles/learnopengl.dir/src/glad.c.i

CMakeFiles/learnopengl.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/learnopengl.dir/src/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ylhena/dev/learnopengl/src/glad.c -o CMakeFiles/learnopengl.dir/src/glad.c.s

# Object files for target learnopengl
learnopengl_OBJECTS = \
"CMakeFiles/learnopengl.dir/src/main.cpp.o" \
"CMakeFiles/learnopengl.dir/src/glad.c.o"

# External object files for target learnopengl
learnopengl_EXTERNAL_OBJECTS =

learnopengl: CMakeFiles/learnopengl.dir/src/main.cpp.o
learnopengl: CMakeFiles/learnopengl.dir/src/glad.c.o
learnopengl: CMakeFiles/learnopengl.dir/build.make
learnopengl: /usr/lib64/libglfw.so.3.3
learnopengl: /usr/lib64/libGLX.so
learnopengl: /usr/lib64/libOpenGL.so
learnopengl: CMakeFiles/learnopengl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ylhena/dev/learnopengl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable learnopengl"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/learnopengl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/learnopengl.dir/build: learnopengl
.PHONY : CMakeFiles/learnopengl.dir/build

CMakeFiles/learnopengl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/learnopengl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/learnopengl.dir/clean

CMakeFiles/learnopengl.dir/depend:
	cd /home/ylhena/dev/learnopengl && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ylhena/dev/learnopengl /home/ylhena/dev/learnopengl /home/ylhena/dev/learnopengl /home/ylhena/dev/learnopengl /home/ylhena/dev/learnopengl/CMakeFiles/learnopengl.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/learnopengl.dir/depend

