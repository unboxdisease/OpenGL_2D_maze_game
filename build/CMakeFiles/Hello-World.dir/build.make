# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build"

# Include any dependencies generated for this target.
include CMakeFiles/Hello-World.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Hello-World.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Hello-World.dir/flags.make

CMakeFiles/Hello-World.dir/source/ball.cpp.o: CMakeFiles/Hello-World.dir/flags.make
CMakeFiles/Hello-World.dir/source/ball.cpp.o: ../source/ball.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Hello-World.dir/source/ball.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello-World.dir/source/ball.cpp.o -c "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/ball.cpp"

CMakeFiles/Hello-World.dir/source/ball.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello-World.dir/source/ball.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/ball.cpp" > CMakeFiles/Hello-World.dir/source/ball.cpp.i

CMakeFiles/Hello-World.dir/source/ball.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello-World.dir/source/ball.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/ball.cpp" -o CMakeFiles/Hello-World.dir/source/ball.cpp.s

CMakeFiles/Hello-World.dir/source/ball.cpp.o.requires:

.PHONY : CMakeFiles/Hello-World.dir/source/ball.cpp.o.requires

CMakeFiles/Hello-World.dir/source/ball.cpp.o.provides: CMakeFiles/Hello-World.dir/source/ball.cpp.o.requires
	$(MAKE) -f CMakeFiles/Hello-World.dir/build.make CMakeFiles/Hello-World.dir/source/ball.cpp.o.provides.build
.PHONY : CMakeFiles/Hello-World.dir/source/ball.cpp.o.provides

CMakeFiles/Hello-World.dir/source/ball.cpp.o.provides.build: CMakeFiles/Hello-World.dir/source/ball.cpp.o


CMakeFiles/Hello-World.dir/source/bomb.cpp.o: CMakeFiles/Hello-World.dir/flags.make
CMakeFiles/Hello-World.dir/source/bomb.cpp.o: ../source/bomb.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Hello-World.dir/source/bomb.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello-World.dir/source/bomb.cpp.o -c "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/bomb.cpp"

CMakeFiles/Hello-World.dir/source/bomb.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello-World.dir/source/bomb.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/bomb.cpp" > CMakeFiles/Hello-World.dir/source/bomb.cpp.i

CMakeFiles/Hello-World.dir/source/bomb.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello-World.dir/source/bomb.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/bomb.cpp" -o CMakeFiles/Hello-World.dir/source/bomb.cpp.s

CMakeFiles/Hello-World.dir/source/bomb.cpp.o.requires:

.PHONY : CMakeFiles/Hello-World.dir/source/bomb.cpp.o.requires

CMakeFiles/Hello-World.dir/source/bomb.cpp.o.provides: CMakeFiles/Hello-World.dir/source/bomb.cpp.o.requires
	$(MAKE) -f CMakeFiles/Hello-World.dir/build.make CMakeFiles/Hello-World.dir/source/bomb.cpp.o.provides.build
.PHONY : CMakeFiles/Hello-World.dir/source/bomb.cpp.o.provides

CMakeFiles/Hello-World.dir/source/bomb.cpp.o.provides.build: CMakeFiles/Hello-World.dir/source/bomb.cpp.o


CMakeFiles/Hello-World.dir/source/button.cpp.o: CMakeFiles/Hello-World.dir/flags.make
CMakeFiles/Hello-World.dir/source/button.cpp.o: ../source/button.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Hello-World.dir/source/button.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello-World.dir/source/button.cpp.o -c "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/button.cpp"

CMakeFiles/Hello-World.dir/source/button.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello-World.dir/source/button.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/button.cpp" > CMakeFiles/Hello-World.dir/source/button.cpp.i

CMakeFiles/Hello-World.dir/source/button.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello-World.dir/source/button.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/button.cpp" -o CMakeFiles/Hello-World.dir/source/button.cpp.s

CMakeFiles/Hello-World.dir/source/button.cpp.o.requires:

.PHONY : CMakeFiles/Hello-World.dir/source/button.cpp.o.requires

CMakeFiles/Hello-World.dir/source/button.cpp.o.provides: CMakeFiles/Hello-World.dir/source/button.cpp.o.requires
	$(MAKE) -f CMakeFiles/Hello-World.dir/build.make CMakeFiles/Hello-World.dir/source/button.cpp.o.provides.build
.PHONY : CMakeFiles/Hello-World.dir/source/button.cpp.o.provides

CMakeFiles/Hello-World.dir/source/button.cpp.o.provides.build: CMakeFiles/Hello-World.dir/source/button.cpp.o


CMakeFiles/Hello-World.dir/source/coin.cpp.o: CMakeFiles/Hello-World.dir/flags.make
CMakeFiles/Hello-World.dir/source/coin.cpp.o: ../source/coin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Hello-World.dir/source/coin.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello-World.dir/source/coin.cpp.o -c "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/coin.cpp"

CMakeFiles/Hello-World.dir/source/coin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello-World.dir/source/coin.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/coin.cpp" > CMakeFiles/Hello-World.dir/source/coin.cpp.i

CMakeFiles/Hello-World.dir/source/coin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello-World.dir/source/coin.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/coin.cpp" -o CMakeFiles/Hello-World.dir/source/coin.cpp.s

CMakeFiles/Hello-World.dir/source/coin.cpp.o.requires:

.PHONY : CMakeFiles/Hello-World.dir/source/coin.cpp.o.requires

CMakeFiles/Hello-World.dir/source/coin.cpp.o.provides: CMakeFiles/Hello-World.dir/source/coin.cpp.o.requires
	$(MAKE) -f CMakeFiles/Hello-World.dir/build.make CMakeFiles/Hello-World.dir/source/coin.cpp.o.provides.build
.PHONY : CMakeFiles/Hello-World.dir/source/coin.cpp.o.provides

CMakeFiles/Hello-World.dir/source/coin.cpp.o.provides.build: CMakeFiles/Hello-World.dir/source/coin.cpp.o


CMakeFiles/Hello-World.dir/source/color.cpp.o: CMakeFiles/Hello-World.dir/flags.make
CMakeFiles/Hello-World.dir/source/color.cpp.o: ../source/color.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Hello-World.dir/source/color.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello-World.dir/source/color.cpp.o -c "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/color.cpp"

CMakeFiles/Hello-World.dir/source/color.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello-World.dir/source/color.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/color.cpp" > CMakeFiles/Hello-World.dir/source/color.cpp.i

CMakeFiles/Hello-World.dir/source/color.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello-World.dir/source/color.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/color.cpp" -o CMakeFiles/Hello-World.dir/source/color.cpp.s

CMakeFiles/Hello-World.dir/source/color.cpp.o.requires:

.PHONY : CMakeFiles/Hello-World.dir/source/color.cpp.o.requires

CMakeFiles/Hello-World.dir/source/color.cpp.o.provides: CMakeFiles/Hello-World.dir/source/color.cpp.o.requires
	$(MAKE) -f CMakeFiles/Hello-World.dir/build.make CMakeFiles/Hello-World.dir/source/color.cpp.o.provides.build
.PHONY : CMakeFiles/Hello-World.dir/source/color.cpp.o.provides

CMakeFiles/Hello-World.dir/source/color.cpp.o.provides.build: CMakeFiles/Hello-World.dir/source/color.cpp.o


CMakeFiles/Hello-World.dir/source/input.cpp.o: CMakeFiles/Hello-World.dir/flags.make
CMakeFiles/Hello-World.dir/source/input.cpp.o: ../source/input.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Hello-World.dir/source/input.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello-World.dir/source/input.cpp.o -c "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/input.cpp"

CMakeFiles/Hello-World.dir/source/input.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello-World.dir/source/input.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/input.cpp" > CMakeFiles/Hello-World.dir/source/input.cpp.i

CMakeFiles/Hello-World.dir/source/input.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello-World.dir/source/input.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/input.cpp" -o CMakeFiles/Hello-World.dir/source/input.cpp.s

CMakeFiles/Hello-World.dir/source/input.cpp.o.requires:

.PHONY : CMakeFiles/Hello-World.dir/source/input.cpp.o.requires

CMakeFiles/Hello-World.dir/source/input.cpp.o.provides: CMakeFiles/Hello-World.dir/source/input.cpp.o.requires
	$(MAKE) -f CMakeFiles/Hello-World.dir/build.make CMakeFiles/Hello-World.dir/source/input.cpp.o.provides.build
.PHONY : CMakeFiles/Hello-World.dir/source/input.cpp.o.provides

CMakeFiles/Hello-World.dir/source/input.cpp.o.provides.build: CMakeFiles/Hello-World.dir/source/input.cpp.o


CMakeFiles/Hello-World.dir/source/main.cpp.o: CMakeFiles/Hello-World.dir/flags.make
CMakeFiles/Hello-World.dir/source/main.cpp.o: ../source/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Hello-World.dir/source/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello-World.dir/source/main.cpp.o -c "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/main.cpp"

CMakeFiles/Hello-World.dir/source/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello-World.dir/source/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/main.cpp" > CMakeFiles/Hello-World.dir/source/main.cpp.i

CMakeFiles/Hello-World.dir/source/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello-World.dir/source/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/main.cpp" -o CMakeFiles/Hello-World.dir/source/main.cpp.s

CMakeFiles/Hello-World.dir/source/main.cpp.o.requires:

.PHONY : CMakeFiles/Hello-World.dir/source/main.cpp.o.requires

CMakeFiles/Hello-World.dir/source/main.cpp.o.provides: CMakeFiles/Hello-World.dir/source/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Hello-World.dir/build.make CMakeFiles/Hello-World.dir/source/main.cpp.o.provides.build
.PHONY : CMakeFiles/Hello-World.dir/source/main.cpp.o.provides

CMakeFiles/Hello-World.dir/source/main.cpp.o.provides.build: CMakeFiles/Hello-World.dir/source/main.cpp.o


CMakeFiles/Hello-World.dir/source/maze.cpp.o: CMakeFiles/Hello-World.dir/flags.make
CMakeFiles/Hello-World.dir/source/maze.cpp.o: ../source/maze.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Hello-World.dir/source/maze.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello-World.dir/source/maze.cpp.o -c "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/maze.cpp"

CMakeFiles/Hello-World.dir/source/maze.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello-World.dir/source/maze.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/maze.cpp" > CMakeFiles/Hello-World.dir/source/maze.cpp.i

CMakeFiles/Hello-World.dir/source/maze.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello-World.dir/source/maze.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/maze.cpp" -o CMakeFiles/Hello-World.dir/source/maze.cpp.s

CMakeFiles/Hello-World.dir/source/maze.cpp.o.requires:

.PHONY : CMakeFiles/Hello-World.dir/source/maze.cpp.o.requires

CMakeFiles/Hello-World.dir/source/maze.cpp.o.provides: CMakeFiles/Hello-World.dir/source/maze.cpp.o.requires
	$(MAKE) -f CMakeFiles/Hello-World.dir/build.make CMakeFiles/Hello-World.dir/source/maze.cpp.o.provides.build
.PHONY : CMakeFiles/Hello-World.dir/source/maze.cpp.o.provides

CMakeFiles/Hello-World.dir/source/maze.cpp.o.provides.build: CMakeFiles/Hello-World.dir/source/maze.cpp.o


CMakeFiles/Hello-World.dir/source/nonedit.cpp.o: CMakeFiles/Hello-World.dir/flags.make
CMakeFiles/Hello-World.dir/source/nonedit.cpp.o: ../source/nonedit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Hello-World.dir/source/nonedit.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello-World.dir/source/nonedit.cpp.o -c "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/nonedit.cpp"

CMakeFiles/Hello-World.dir/source/nonedit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello-World.dir/source/nonedit.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/nonedit.cpp" > CMakeFiles/Hello-World.dir/source/nonedit.cpp.i

CMakeFiles/Hello-World.dir/source/nonedit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello-World.dir/source/nonedit.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/nonedit.cpp" -o CMakeFiles/Hello-World.dir/source/nonedit.cpp.s

CMakeFiles/Hello-World.dir/source/nonedit.cpp.o.requires:

.PHONY : CMakeFiles/Hello-World.dir/source/nonedit.cpp.o.requires

CMakeFiles/Hello-World.dir/source/nonedit.cpp.o.provides: CMakeFiles/Hello-World.dir/source/nonedit.cpp.o.requires
	$(MAKE) -f CMakeFiles/Hello-World.dir/build.make CMakeFiles/Hello-World.dir/source/nonedit.cpp.o.provides.build
.PHONY : CMakeFiles/Hello-World.dir/source/nonedit.cpp.o.provides

CMakeFiles/Hello-World.dir/source/nonedit.cpp.o.provides.build: CMakeFiles/Hello-World.dir/source/nonedit.cpp.o


CMakeFiles/Hello-World.dir/source/other_handlers.cpp.o: CMakeFiles/Hello-World.dir/flags.make
CMakeFiles/Hello-World.dir/source/other_handlers.cpp.o: ../source/other_handlers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Hello-World.dir/source/other_handlers.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello-World.dir/source/other_handlers.cpp.o -c "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/other_handlers.cpp"

CMakeFiles/Hello-World.dir/source/other_handlers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello-World.dir/source/other_handlers.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/other_handlers.cpp" > CMakeFiles/Hello-World.dir/source/other_handlers.cpp.i

CMakeFiles/Hello-World.dir/source/other_handlers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello-World.dir/source/other_handlers.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/other_handlers.cpp" -o CMakeFiles/Hello-World.dir/source/other_handlers.cpp.s

CMakeFiles/Hello-World.dir/source/other_handlers.cpp.o.requires:

.PHONY : CMakeFiles/Hello-World.dir/source/other_handlers.cpp.o.requires

CMakeFiles/Hello-World.dir/source/other_handlers.cpp.o.provides: CMakeFiles/Hello-World.dir/source/other_handlers.cpp.o.requires
	$(MAKE) -f CMakeFiles/Hello-World.dir/build.make CMakeFiles/Hello-World.dir/source/other_handlers.cpp.o.provides.build
.PHONY : CMakeFiles/Hello-World.dir/source/other_handlers.cpp.o.provides

CMakeFiles/Hello-World.dir/source/other_handlers.cpp.o.provides.build: CMakeFiles/Hello-World.dir/source/other_handlers.cpp.o


CMakeFiles/Hello-World.dir/source/timer.cpp.o: CMakeFiles/Hello-World.dir/flags.make
CMakeFiles/Hello-World.dir/source/timer.cpp.o: ../source/timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Hello-World.dir/source/timer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello-World.dir/source/timer.cpp.o -c "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/timer.cpp"

CMakeFiles/Hello-World.dir/source/timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello-World.dir/source/timer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/timer.cpp" > CMakeFiles/Hello-World.dir/source/timer.cpp.i

CMakeFiles/Hello-World.dir/source/timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello-World.dir/source/timer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/source/timer.cpp" -o CMakeFiles/Hello-World.dir/source/timer.cpp.s

CMakeFiles/Hello-World.dir/source/timer.cpp.o.requires:

.PHONY : CMakeFiles/Hello-World.dir/source/timer.cpp.o.requires

CMakeFiles/Hello-World.dir/source/timer.cpp.o.provides: CMakeFiles/Hello-World.dir/source/timer.cpp.o.requires
	$(MAKE) -f CMakeFiles/Hello-World.dir/build.make CMakeFiles/Hello-World.dir/source/timer.cpp.o.provides.build
.PHONY : CMakeFiles/Hello-World.dir/source/timer.cpp.o.provides

CMakeFiles/Hello-World.dir/source/timer.cpp.o.provides.build: CMakeFiles/Hello-World.dir/source/timer.cpp.o


# Object files for target Hello-World
Hello__World_OBJECTS = \
"CMakeFiles/Hello-World.dir/source/ball.cpp.o" \
"CMakeFiles/Hello-World.dir/source/bomb.cpp.o" \
"CMakeFiles/Hello-World.dir/source/button.cpp.o" \
"CMakeFiles/Hello-World.dir/source/coin.cpp.o" \
"CMakeFiles/Hello-World.dir/source/color.cpp.o" \
"CMakeFiles/Hello-World.dir/source/input.cpp.o" \
"CMakeFiles/Hello-World.dir/source/main.cpp.o" \
"CMakeFiles/Hello-World.dir/source/maze.cpp.o" \
"CMakeFiles/Hello-World.dir/source/nonedit.cpp.o" \
"CMakeFiles/Hello-World.dir/source/other_handlers.cpp.o" \
"CMakeFiles/Hello-World.dir/source/timer.cpp.o"

# External object files for target Hello-World
Hello__World_EXTERNAL_OBJECTS =

Hello-World: CMakeFiles/Hello-World.dir/source/ball.cpp.o
Hello-World: CMakeFiles/Hello-World.dir/source/bomb.cpp.o
Hello-World: CMakeFiles/Hello-World.dir/source/button.cpp.o
Hello-World: CMakeFiles/Hello-World.dir/source/coin.cpp.o
Hello-World: CMakeFiles/Hello-World.dir/source/color.cpp.o
Hello-World: CMakeFiles/Hello-World.dir/source/input.cpp.o
Hello-World: CMakeFiles/Hello-World.dir/source/main.cpp.o
Hello-World: CMakeFiles/Hello-World.dir/source/maze.cpp.o
Hello-World: CMakeFiles/Hello-World.dir/source/nonedit.cpp.o
Hello-World: CMakeFiles/Hello-World.dir/source/other_handlers.cpp.o
Hello-World: CMakeFiles/Hello-World.dir/source/timer.cpp.o
Hello-World: CMakeFiles/Hello-World.dir/build.make
Hello-World: libraries/glfw/src/libglfw3.a
Hello-World: libglad.a
Hello-World: /usr/lib/x86_64-linux-gnu/librt.so
Hello-World: /usr/lib/x86_64-linux-gnu/libm.so
Hello-World: CMakeFiles/Hello-World.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable Hello-World"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Hello-World.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Hello-World.dir/build: Hello-World

.PHONY : CMakeFiles/Hello-World.dir/build

CMakeFiles/Hello-World.dir/requires: CMakeFiles/Hello-World.dir/source/ball.cpp.o.requires
CMakeFiles/Hello-World.dir/requires: CMakeFiles/Hello-World.dir/source/bomb.cpp.o.requires
CMakeFiles/Hello-World.dir/requires: CMakeFiles/Hello-World.dir/source/button.cpp.o.requires
CMakeFiles/Hello-World.dir/requires: CMakeFiles/Hello-World.dir/source/coin.cpp.o.requires
CMakeFiles/Hello-World.dir/requires: CMakeFiles/Hello-World.dir/source/color.cpp.o.requires
CMakeFiles/Hello-World.dir/requires: CMakeFiles/Hello-World.dir/source/input.cpp.o.requires
CMakeFiles/Hello-World.dir/requires: CMakeFiles/Hello-World.dir/source/main.cpp.o.requires
CMakeFiles/Hello-World.dir/requires: CMakeFiles/Hello-World.dir/source/maze.cpp.o.requires
CMakeFiles/Hello-World.dir/requires: CMakeFiles/Hello-World.dir/source/nonedit.cpp.o.requires
CMakeFiles/Hello-World.dir/requires: CMakeFiles/Hello-World.dir/source/other_handlers.cpp.o.requires
CMakeFiles/Hello-World.dir/requires: CMakeFiles/Hello-World.dir/source/timer.cpp.o.requires

.PHONY : CMakeFiles/Hello-World.dir/requires

CMakeFiles/Hello-World.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Hello-World.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Hello-World.dir/clean

CMakeFiles/Hello-World.dir/depend:
	cd "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001" "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001" "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build" "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build" "/home/kushal/kushal/sem4/graphics/assignment 1/Hello-World-main/201911001/build/CMakeFiles/Hello-World.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Hello-World.dir/depend

