# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake

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
CMAKE_SOURCE_DIR = /home/f85/blmonten/github/collision/collision

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/f85/blmonten/github/collision/collision/Debug

# Include any dependencies generated for this target.
include CMakeFiles/collision_core.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/collision_core.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/collision_core.dir/flags.make

CMakeFiles/collision_core.dir/src/Enemy.cpp.o: CMakeFiles/collision_core.dir/flags.make
CMakeFiles/collision_core.dir/src/Enemy.cpp.o: ../src/Enemy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/f85/blmonten/github/collision/collision/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/collision_core.dir/src/Enemy.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/collision_core.dir/src/Enemy.cpp.o -c /home/f85/blmonten/github/collision/collision/src/Enemy.cpp

CMakeFiles/collision_core.dir/src/Enemy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collision_core.dir/src/Enemy.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/f85/blmonten/github/collision/collision/src/Enemy.cpp > CMakeFiles/collision_core.dir/src/Enemy.cpp.i

CMakeFiles/collision_core.dir/src/Enemy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collision_core.dir/src/Enemy.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/f85/blmonten/github/collision/collision/src/Enemy.cpp -o CMakeFiles/collision_core.dir/src/Enemy.cpp.s

CMakeFiles/collision_core.dir/src/Enemy.cpp.o.requires:

.PHONY : CMakeFiles/collision_core.dir/src/Enemy.cpp.o.requires

CMakeFiles/collision_core.dir/src/Enemy.cpp.o.provides: CMakeFiles/collision_core.dir/src/Enemy.cpp.o.requires
	$(MAKE) -f CMakeFiles/collision_core.dir/build.make CMakeFiles/collision_core.dir/src/Enemy.cpp.o.provides.build
.PHONY : CMakeFiles/collision_core.dir/src/Enemy.cpp.o.provides

CMakeFiles/collision_core.dir/src/Enemy.cpp.o.provides.build: CMakeFiles/collision_core.dir/src/Enemy.cpp.o


CMakeFiles/collision_core.dir/src/GameApp.cpp.o: CMakeFiles/collision_core.dir/flags.make
CMakeFiles/collision_core.dir/src/GameApp.cpp.o: ../src/GameApp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/f85/blmonten/github/collision/collision/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/collision_core.dir/src/GameApp.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/collision_core.dir/src/GameApp.cpp.o -c /home/f85/blmonten/github/collision/collision/src/GameApp.cpp

CMakeFiles/collision_core.dir/src/GameApp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collision_core.dir/src/GameApp.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/f85/blmonten/github/collision/collision/src/GameApp.cpp > CMakeFiles/collision_core.dir/src/GameApp.cpp.i

CMakeFiles/collision_core.dir/src/GameApp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collision_core.dir/src/GameApp.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/f85/blmonten/github/collision/collision/src/GameApp.cpp -o CMakeFiles/collision_core.dir/src/GameApp.cpp.s

CMakeFiles/collision_core.dir/src/GameApp.cpp.o.requires:

.PHONY : CMakeFiles/collision_core.dir/src/GameApp.cpp.o.requires

CMakeFiles/collision_core.dir/src/GameApp.cpp.o.provides: CMakeFiles/collision_core.dir/src/GameApp.cpp.o.requires
	$(MAKE) -f CMakeFiles/collision_core.dir/build.make CMakeFiles/collision_core.dir/src/GameApp.cpp.o.provides.build
.PHONY : CMakeFiles/collision_core.dir/src/GameApp.cpp.o.provides

CMakeFiles/collision_core.dir/src/GameApp.cpp.o.provides.build: CMakeFiles/collision_core.dir/src/GameApp.cpp.o


CMakeFiles/collision_core.dir/src/Player.cpp.o: CMakeFiles/collision_core.dir/flags.make
CMakeFiles/collision_core.dir/src/Player.cpp.o: ../src/Player.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/f85/blmonten/github/collision/collision/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/collision_core.dir/src/Player.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/collision_core.dir/src/Player.cpp.o -c /home/f85/blmonten/github/collision/collision/src/Player.cpp

CMakeFiles/collision_core.dir/src/Player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collision_core.dir/src/Player.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/f85/blmonten/github/collision/collision/src/Player.cpp > CMakeFiles/collision_core.dir/src/Player.cpp.i

CMakeFiles/collision_core.dir/src/Player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collision_core.dir/src/Player.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/f85/blmonten/github/collision/collision/src/Player.cpp -o CMakeFiles/collision_core.dir/src/Player.cpp.s

CMakeFiles/collision_core.dir/src/Player.cpp.o.requires:

.PHONY : CMakeFiles/collision_core.dir/src/Player.cpp.o.requires

CMakeFiles/collision_core.dir/src/Player.cpp.o.provides: CMakeFiles/collision_core.dir/src/Player.cpp.o.requires
	$(MAKE) -f CMakeFiles/collision_core.dir/build.make CMakeFiles/collision_core.dir/src/Player.cpp.o.provides.build
.PHONY : CMakeFiles/collision_core.dir/src/Player.cpp.o.provides

CMakeFiles/collision_core.dir/src/Player.cpp.o.provides.build: CMakeFiles/collision_core.dir/src/Player.cpp.o


CMakeFiles/collision_core.dir/src/SplashState.cpp.o: CMakeFiles/collision_core.dir/flags.make
CMakeFiles/collision_core.dir/src/SplashState.cpp.o: ../src/SplashState.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/f85/blmonten/github/collision/collision/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/collision_core.dir/src/SplashState.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/collision_core.dir/src/SplashState.cpp.o -c /home/f85/blmonten/github/collision/collision/src/SplashState.cpp

CMakeFiles/collision_core.dir/src/SplashState.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collision_core.dir/src/SplashState.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/f85/blmonten/github/collision/collision/src/SplashState.cpp > CMakeFiles/collision_core.dir/src/SplashState.cpp.i

CMakeFiles/collision_core.dir/src/SplashState.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collision_core.dir/src/SplashState.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/f85/blmonten/github/collision/collision/src/SplashState.cpp -o CMakeFiles/collision_core.dir/src/SplashState.cpp.s

CMakeFiles/collision_core.dir/src/SplashState.cpp.o.requires:

.PHONY : CMakeFiles/collision_core.dir/src/SplashState.cpp.o.requires

CMakeFiles/collision_core.dir/src/SplashState.cpp.o.provides: CMakeFiles/collision_core.dir/src/SplashState.cpp.o.requires
	$(MAKE) -f CMakeFiles/collision_core.dir/build.make CMakeFiles/collision_core.dir/src/SplashState.cpp.o.provides.build
.PHONY : CMakeFiles/collision_core.dir/src/SplashState.cpp.o.provides

CMakeFiles/collision_core.dir/src/SplashState.cpp.o.provides.build: CMakeFiles/collision_core.dir/src/SplashState.cpp.o


CMakeFiles/collision_core.dir/src/MenuState.cpp.o: CMakeFiles/collision_core.dir/flags.make
CMakeFiles/collision_core.dir/src/MenuState.cpp.o: ../src/MenuState.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/f85/blmonten/github/collision/collision/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/collision_core.dir/src/MenuState.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/collision_core.dir/src/MenuState.cpp.o -c /home/f85/blmonten/github/collision/collision/src/MenuState.cpp

CMakeFiles/collision_core.dir/src/MenuState.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collision_core.dir/src/MenuState.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/f85/blmonten/github/collision/collision/src/MenuState.cpp > CMakeFiles/collision_core.dir/src/MenuState.cpp.i

CMakeFiles/collision_core.dir/src/MenuState.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collision_core.dir/src/MenuState.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/f85/blmonten/github/collision/collision/src/MenuState.cpp -o CMakeFiles/collision_core.dir/src/MenuState.cpp.s

CMakeFiles/collision_core.dir/src/MenuState.cpp.o.requires:

.PHONY : CMakeFiles/collision_core.dir/src/MenuState.cpp.o.requires

CMakeFiles/collision_core.dir/src/MenuState.cpp.o.provides: CMakeFiles/collision_core.dir/src/MenuState.cpp.o.requires
	$(MAKE) -f CMakeFiles/collision_core.dir/build.make CMakeFiles/collision_core.dir/src/MenuState.cpp.o.provides.build
.PHONY : CMakeFiles/collision_core.dir/src/MenuState.cpp.o.provides

CMakeFiles/collision_core.dir/src/MenuState.cpp.o.provides.build: CMakeFiles/collision_core.dir/src/MenuState.cpp.o


CMakeFiles/collision_core.dir/src/ResourceManager.cpp.o: CMakeFiles/collision_core.dir/flags.make
CMakeFiles/collision_core.dir/src/ResourceManager.cpp.o: ../src/ResourceManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/f85/blmonten/github/collision/collision/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/collision_core.dir/src/ResourceManager.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/collision_core.dir/src/ResourceManager.cpp.o -c /home/f85/blmonten/github/collision/collision/src/ResourceManager.cpp

CMakeFiles/collision_core.dir/src/ResourceManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collision_core.dir/src/ResourceManager.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/f85/blmonten/github/collision/collision/src/ResourceManager.cpp > CMakeFiles/collision_core.dir/src/ResourceManager.cpp.i

CMakeFiles/collision_core.dir/src/ResourceManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collision_core.dir/src/ResourceManager.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/f85/blmonten/github/collision/collision/src/ResourceManager.cpp -o CMakeFiles/collision_core.dir/src/ResourceManager.cpp.s

CMakeFiles/collision_core.dir/src/ResourceManager.cpp.o.requires:

.PHONY : CMakeFiles/collision_core.dir/src/ResourceManager.cpp.o.requires

CMakeFiles/collision_core.dir/src/ResourceManager.cpp.o.provides: CMakeFiles/collision_core.dir/src/ResourceManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/collision_core.dir/build.make CMakeFiles/collision_core.dir/src/ResourceManager.cpp.o.provides.build
.PHONY : CMakeFiles/collision_core.dir/src/ResourceManager.cpp.o.provides

CMakeFiles/collision_core.dir/src/ResourceManager.cpp.o.provides.build: CMakeFiles/collision_core.dir/src/ResourceManager.cpp.o


CMakeFiles/collision_core.dir/src/StateManager.cpp.o: CMakeFiles/collision_core.dir/flags.make
CMakeFiles/collision_core.dir/src/StateManager.cpp.o: ../src/StateManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/f85/blmonten/github/collision/collision/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/collision_core.dir/src/StateManager.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/collision_core.dir/src/StateManager.cpp.o -c /home/f85/blmonten/github/collision/collision/src/StateManager.cpp

CMakeFiles/collision_core.dir/src/StateManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collision_core.dir/src/StateManager.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/f85/blmonten/github/collision/collision/src/StateManager.cpp > CMakeFiles/collision_core.dir/src/StateManager.cpp.i

CMakeFiles/collision_core.dir/src/StateManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collision_core.dir/src/StateManager.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/f85/blmonten/github/collision/collision/src/StateManager.cpp -o CMakeFiles/collision_core.dir/src/StateManager.cpp.s

CMakeFiles/collision_core.dir/src/StateManager.cpp.o.requires:

.PHONY : CMakeFiles/collision_core.dir/src/StateManager.cpp.o.requires

CMakeFiles/collision_core.dir/src/StateManager.cpp.o.provides: CMakeFiles/collision_core.dir/src/StateManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/collision_core.dir/build.make CMakeFiles/collision_core.dir/src/StateManager.cpp.o.provides.build
.PHONY : CMakeFiles/collision_core.dir/src/StateManager.cpp.o.provides

CMakeFiles/collision_core.dir/src/StateManager.cpp.o.provides.build: CMakeFiles/collision_core.dir/src/StateManager.cpp.o


# Object files for target collision_core
collision_core_OBJECTS = \
"CMakeFiles/collision_core.dir/src/Enemy.cpp.o" \
"CMakeFiles/collision_core.dir/src/GameApp.cpp.o" \
"CMakeFiles/collision_core.dir/src/Player.cpp.o" \
"CMakeFiles/collision_core.dir/src/SplashState.cpp.o" \
"CMakeFiles/collision_core.dir/src/MenuState.cpp.o" \
"CMakeFiles/collision_core.dir/src/ResourceManager.cpp.o" \
"CMakeFiles/collision_core.dir/src/StateManager.cpp.o"

# External object files for target collision_core
collision_core_EXTERNAL_OBJECTS =

libcollision_core.a: CMakeFiles/collision_core.dir/src/Enemy.cpp.o
libcollision_core.a: CMakeFiles/collision_core.dir/src/GameApp.cpp.o
libcollision_core.a: CMakeFiles/collision_core.dir/src/Player.cpp.o
libcollision_core.a: CMakeFiles/collision_core.dir/src/SplashState.cpp.o
libcollision_core.a: CMakeFiles/collision_core.dir/src/MenuState.cpp.o
libcollision_core.a: CMakeFiles/collision_core.dir/src/ResourceManager.cpp.o
libcollision_core.a: CMakeFiles/collision_core.dir/src/StateManager.cpp.o
libcollision_core.a: CMakeFiles/collision_core.dir/build.make
libcollision_core.a: CMakeFiles/collision_core.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/f85/blmonten/github/collision/collision/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library libcollision_core.a"
	$(CMAKE_COMMAND) -P CMakeFiles/collision_core.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/collision_core.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/collision_core.dir/build: libcollision_core.a

.PHONY : CMakeFiles/collision_core.dir/build

CMakeFiles/collision_core.dir/requires: CMakeFiles/collision_core.dir/src/Enemy.cpp.o.requires
CMakeFiles/collision_core.dir/requires: CMakeFiles/collision_core.dir/src/GameApp.cpp.o.requires
CMakeFiles/collision_core.dir/requires: CMakeFiles/collision_core.dir/src/Player.cpp.o.requires
CMakeFiles/collision_core.dir/requires: CMakeFiles/collision_core.dir/src/SplashState.cpp.o.requires
CMakeFiles/collision_core.dir/requires: CMakeFiles/collision_core.dir/src/MenuState.cpp.o.requires
CMakeFiles/collision_core.dir/requires: CMakeFiles/collision_core.dir/src/ResourceManager.cpp.o.requires
CMakeFiles/collision_core.dir/requires: CMakeFiles/collision_core.dir/src/StateManager.cpp.o.requires

.PHONY : CMakeFiles/collision_core.dir/requires

CMakeFiles/collision_core.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/collision_core.dir/cmake_clean.cmake
.PHONY : CMakeFiles/collision_core.dir/clean

CMakeFiles/collision_core.dir/depend:
	cd /home/f85/blmonten/github/collision/collision/Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/f85/blmonten/github/collision/collision /home/f85/blmonten/github/collision/collision /home/f85/blmonten/github/collision/collision/Debug /home/f85/blmonten/github/collision/collision/Debug /home/f85/blmonten/github/collision/collision/Debug/CMakeFiles/collision_core.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/collision_core.dir/depend
