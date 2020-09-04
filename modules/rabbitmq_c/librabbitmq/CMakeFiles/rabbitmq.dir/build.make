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
CMAKE_SOURCE_DIR = /mnt/d/rabbitmq/c/rabbitmq-c-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/rabbitmq/c/rabbitmq-c-master

# Include any dependencies generated for this target.
include librabbitmq/CMakeFiles/rabbitmq.dir/depend.make

# Include the progress variables for this target.
include librabbitmq/CMakeFiles/rabbitmq.dir/progress.make

# Include the compile flags for this target's objects.
include librabbitmq/CMakeFiles/rabbitmq.dir/flags.make

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_framing.c.o: librabbitmq/CMakeFiles/rabbitmq.dir/flags.make
librabbitmq/CMakeFiles/rabbitmq.dir/amqp_framing.c.o: librabbitmq/amqp_framing.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/rabbitmq/c/rabbitmq-c-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object librabbitmq/CMakeFiles/rabbitmq.dir/amqp_framing.c.o"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rabbitmq.dir/amqp_framing.c.o   -c /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_framing.c

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_framing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rabbitmq.dir/amqp_framing.c.i"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_framing.c > CMakeFiles/rabbitmq.dir/amqp_framing.c.i

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_framing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rabbitmq.dir/amqp_framing.c.s"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_framing.c -o CMakeFiles/rabbitmq.dir/amqp_framing.c.s

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_api.c.o: librabbitmq/CMakeFiles/rabbitmq.dir/flags.make
librabbitmq/CMakeFiles/rabbitmq.dir/amqp_api.c.o: librabbitmq/amqp_api.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/rabbitmq/c/rabbitmq-c-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object librabbitmq/CMakeFiles/rabbitmq.dir/amqp_api.c.o"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rabbitmq.dir/amqp_api.c.o   -c /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_api.c

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_api.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rabbitmq.dir/amqp_api.c.i"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_api.c > CMakeFiles/rabbitmq.dir/amqp_api.c.i

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_api.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rabbitmq.dir/amqp_api.c.s"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_api.c -o CMakeFiles/rabbitmq.dir/amqp_api.c.s

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_connection.c.o: librabbitmq/CMakeFiles/rabbitmq.dir/flags.make
librabbitmq/CMakeFiles/rabbitmq.dir/amqp_connection.c.o: librabbitmq/amqp_connection.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/rabbitmq/c/rabbitmq-c-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object librabbitmq/CMakeFiles/rabbitmq.dir/amqp_connection.c.o"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rabbitmq.dir/amqp_connection.c.o   -c /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_connection.c

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_connection.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rabbitmq.dir/amqp_connection.c.i"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_connection.c > CMakeFiles/rabbitmq.dir/amqp_connection.c.i

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_connection.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rabbitmq.dir/amqp_connection.c.s"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_connection.c -o CMakeFiles/rabbitmq.dir/amqp_connection.c.s

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_mem.c.o: librabbitmq/CMakeFiles/rabbitmq.dir/flags.make
librabbitmq/CMakeFiles/rabbitmq.dir/amqp_mem.c.o: librabbitmq/amqp_mem.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/rabbitmq/c/rabbitmq-c-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object librabbitmq/CMakeFiles/rabbitmq.dir/amqp_mem.c.o"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rabbitmq.dir/amqp_mem.c.o   -c /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_mem.c

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_mem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rabbitmq.dir/amqp_mem.c.i"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_mem.c > CMakeFiles/rabbitmq.dir/amqp_mem.c.i

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_mem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rabbitmq.dir/amqp_mem.c.s"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_mem.c -o CMakeFiles/rabbitmq.dir/amqp_mem.c.s

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_socket.c.o: librabbitmq/CMakeFiles/rabbitmq.dir/flags.make
librabbitmq/CMakeFiles/rabbitmq.dir/amqp_socket.c.o: librabbitmq/amqp_socket.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/rabbitmq/c/rabbitmq-c-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object librabbitmq/CMakeFiles/rabbitmq.dir/amqp_socket.c.o"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rabbitmq.dir/amqp_socket.c.o   -c /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_socket.c

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_socket.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rabbitmq.dir/amqp_socket.c.i"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_socket.c > CMakeFiles/rabbitmq.dir/amqp_socket.c.i

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_socket.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rabbitmq.dir/amqp_socket.c.s"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_socket.c -o CMakeFiles/rabbitmq.dir/amqp_socket.c.s

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_table.c.o: librabbitmq/CMakeFiles/rabbitmq.dir/flags.make
librabbitmq/CMakeFiles/rabbitmq.dir/amqp_table.c.o: librabbitmq/amqp_table.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/rabbitmq/c/rabbitmq-c-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object librabbitmq/CMakeFiles/rabbitmq.dir/amqp_table.c.o"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rabbitmq.dir/amqp_table.c.o   -c /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_table.c

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_table.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rabbitmq.dir/amqp_table.c.i"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_table.c > CMakeFiles/rabbitmq.dir/amqp_table.c.i

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_table.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rabbitmq.dir/amqp_table.c.s"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_table.c -o CMakeFiles/rabbitmq.dir/amqp_table.c.s

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_url.c.o: librabbitmq/CMakeFiles/rabbitmq.dir/flags.make
librabbitmq/CMakeFiles/rabbitmq.dir/amqp_url.c.o: librabbitmq/amqp_url.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/rabbitmq/c/rabbitmq-c-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object librabbitmq/CMakeFiles/rabbitmq.dir/amqp_url.c.o"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rabbitmq.dir/amqp_url.c.o   -c /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_url.c

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_url.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rabbitmq.dir/amqp_url.c.i"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_url.c > CMakeFiles/rabbitmq.dir/amqp_url.c.i

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_url.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rabbitmq.dir/amqp_url.c.s"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_url.c -o CMakeFiles/rabbitmq.dir/amqp_url.c.s

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_tcp_socket.c.o: librabbitmq/CMakeFiles/rabbitmq.dir/flags.make
librabbitmq/CMakeFiles/rabbitmq.dir/amqp_tcp_socket.c.o: librabbitmq/amqp_tcp_socket.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/rabbitmq/c/rabbitmq-c-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object librabbitmq/CMakeFiles/rabbitmq.dir/amqp_tcp_socket.c.o"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rabbitmq.dir/amqp_tcp_socket.c.o   -c /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_tcp_socket.c

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_tcp_socket.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rabbitmq.dir/amqp_tcp_socket.c.i"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_tcp_socket.c > CMakeFiles/rabbitmq.dir/amqp_tcp_socket.c.i

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_tcp_socket.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rabbitmq.dir/amqp_tcp_socket.c.s"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_tcp_socket.c -o CMakeFiles/rabbitmq.dir/amqp_tcp_socket.c.s

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_time.c.o: librabbitmq/CMakeFiles/rabbitmq.dir/flags.make
librabbitmq/CMakeFiles/rabbitmq.dir/amqp_time.c.o: librabbitmq/amqp_time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/rabbitmq/c/rabbitmq-c-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object librabbitmq/CMakeFiles/rabbitmq.dir/amqp_time.c.o"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rabbitmq.dir/amqp_time.c.o   -c /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_time.c

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rabbitmq.dir/amqp_time.c.i"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_time.c > CMakeFiles/rabbitmq.dir/amqp_time.c.i

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rabbitmq.dir/amqp_time.c.s"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_time.c -o CMakeFiles/rabbitmq.dir/amqp_time.c.s

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_consumer.c.o: librabbitmq/CMakeFiles/rabbitmq.dir/flags.make
librabbitmq/CMakeFiles/rabbitmq.dir/amqp_consumer.c.o: librabbitmq/amqp_consumer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/rabbitmq/c/rabbitmq-c-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object librabbitmq/CMakeFiles/rabbitmq.dir/amqp_consumer.c.o"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rabbitmq.dir/amqp_consumer.c.o   -c /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_consumer.c

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_consumer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rabbitmq.dir/amqp_consumer.c.i"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_consumer.c > CMakeFiles/rabbitmq.dir/amqp_consumer.c.i

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_consumer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rabbitmq.dir/amqp_consumer.c.s"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_consumer.c -o CMakeFiles/rabbitmq.dir/amqp_consumer.c.s

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl.c.o: librabbitmq/CMakeFiles/rabbitmq.dir/flags.make
librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl.c.o: librabbitmq/amqp_openssl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/rabbitmq/c/rabbitmq-c-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl.c.o"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rabbitmq.dir/amqp_openssl.c.o   -c /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_openssl.c

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rabbitmq.dir/amqp_openssl.c.i"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_openssl.c > CMakeFiles/rabbitmq.dir/amqp_openssl.c.i

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rabbitmq.dir/amqp_openssl.c.s"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_openssl.c -o CMakeFiles/rabbitmq.dir/amqp_openssl.c.s

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl_hostname_validation.c.o: librabbitmq/CMakeFiles/rabbitmq.dir/flags.make
librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl_hostname_validation.c.o: librabbitmq/amqp_openssl_hostname_validation.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/rabbitmq/c/rabbitmq-c-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl_hostname_validation.c.o"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rabbitmq.dir/amqp_openssl_hostname_validation.c.o   -c /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_openssl_hostname_validation.c

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl_hostname_validation.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rabbitmq.dir/amqp_openssl_hostname_validation.c.i"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_openssl_hostname_validation.c > CMakeFiles/rabbitmq.dir/amqp_openssl_hostname_validation.c.i

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl_hostname_validation.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rabbitmq.dir/amqp_openssl_hostname_validation.c.s"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_openssl_hostname_validation.c -o CMakeFiles/rabbitmq.dir/amqp_openssl_hostname_validation.c.s

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_hostcheck.c.o: librabbitmq/CMakeFiles/rabbitmq.dir/flags.make
librabbitmq/CMakeFiles/rabbitmq.dir/amqp_hostcheck.c.o: librabbitmq/amqp_hostcheck.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/rabbitmq/c/rabbitmq-c-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object librabbitmq/CMakeFiles/rabbitmq.dir/amqp_hostcheck.c.o"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rabbitmq.dir/amqp_hostcheck.c.o   -c /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_hostcheck.c

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_hostcheck.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rabbitmq.dir/amqp_hostcheck.c.i"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_hostcheck.c > CMakeFiles/rabbitmq.dir/amqp_hostcheck.c.i

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_hostcheck.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rabbitmq.dir/amqp_hostcheck.c.s"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_hostcheck.c -o CMakeFiles/rabbitmq.dir/amqp_hostcheck.c.s

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl_bio.c.o: librabbitmq/CMakeFiles/rabbitmq.dir/flags.make
librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl_bio.c.o: librabbitmq/amqp_openssl_bio.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/rabbitmq/c/rabbitmq-c-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl_bio.c.o"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rabbitmq.dir/amqp_openssl_bio.c.o   -c /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_openssl_bio.c

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl_bio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rabbitmq.dir/amqp_openssl_bio.c.i"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_openssl_bio.c > CMakeFiles/rabbitmq.dir/amqp_openssl_bio.c.i

librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl_bio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rabbitmq.dir/amqp_openssl_bio.c.s"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/amqp_openssl_bio.c -o CMakeFiles/rabbitmq.dir/amqp_openssl_bio.c.s

# Object files for target rabbitmq
rabbitmq_OBJECTS = \
"CMakeFiles/rabbitmq.dir/amqp_framing.c.o" \
"CMakeFiles/rabbitmq.dir/amqp_api.c.o" \
"CMakeFiles/rabbitmq.dir/amqp_connection.c.o" \
"CMakeFiles/rabbitmq.dir/amqp_mem.c.o" \
"CMakeFiles/rabbitmq.dir/amqp_socket.c.o" \
"CMakeFiles/rabbitmq.dir/amqp_table.c.o" \
"CMakeFiles/rabbitmq.dir/amqp_url.c.o" \
"CMakeFiles/rabbitmq.dir/amqp_tcp_socket.c.o" \
"CMakeFiles/rabbitmq.dir/amqp_time.c.o" \
"CMakeFiles/rabbitmq.dir/amqp_consumer.c.o" \
"CMakeFiles/rabbitmq.dir/amqp_openssl.c.o" \
"CMakeFiles/rabbitmq.dir/amqp_openssl_hostname_validation.c.o" \
"CMakeFiles/rabbitmq.dir/amqp_hostcheck.c.o" \
"CMakeFiles/rabbitmq.dir/amqp_openssl_bio.c.o"

# External object files for target rabbitmq
rabbitmq_EXTERNAL_OBJECTS =

librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/amqp_framing.c.o
librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/amqp_api.c.o
librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/amqp_connection.c.o
librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/amqp_mem.c.o
librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/amqp_socket.c.o
librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/amqp_table.c.o
librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/amqp_url.c.o
librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/amqp_tcp_socket.c.o
librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/amqp_time.c.o
librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/amqp_consumer.c.o
librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl.c.o
librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl_hostname_validation.c.o
librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/amqp_hostcheck.c.o
librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/amqp_openssl_bio.c.o
librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/build.make
librabbitmq/librabbitmq.so.4.4.1: /usr/lib/x86_64-linux-gnu/libssl.so
librabbitmq/librabbitmq.so.4.4.1: /usr/lib/x86_64-linux-gnu/libcrypto.so
librabbitmq/librabbitmq.so.4.4.1: librabbitmq/CMakeFiles/rabbitmq.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/rabbitmq/c/rabbitmq-c-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking C shared library librabbitmq.so"
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rabbitmq.dir/link.txt --verbose=$(VERBOSE)
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && $(CMAKE_COMMAND) -E cmake_symlink_library librabbitmq.so.4.4.1 librabbitmq.so.4 librabbitmq.so

librabbitmq/librabbitmq.so.4: librabbitmq/librabbitmq.so.4.4.1
	@$(CMAKE_COMMAND) -E touch_nocreate librabbitmq/librabbitmq.so.4

librabbitmq/librabbitmq.so: librabbitmq/librabbitmq.so.4.4.1
	@$(CMAKE_COMMAND) -E touch_nocreate librabbitmq/librabbitmq.so

# Rule to build all files generated by this target.
librabbitmq/CMakeFiles/rabbitmq.dir/build: librabbitmq/librabbitmq.so

.PHONY : librabbitmq/CMakeFiles/rabbitmq.dir/build

librabbitmq/CMakeFiles/rabbitmq.dir/clean:
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq && $(CMAKE_COMMAND) -P CMakeFiles/rabbitmq.dir/cmake_clean.cmake
.PHONY : librabbitmq/CMakeFiles/rabbitmq.dir/clean

librabbitmq/CMakeFiles/rabbitmq.dir/depend:
	cd /mnt/d/rabbitmq/c/rabbitmq-c-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/rabbitmq/c/rabbitmq-c-master /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq /mnt/d/rabbitmq/c/rabbitmq-c-master /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq /mnt/d/rabbitmq/c/rabbitmq-c-master/librabbitmq/CMakeFiles/rabbitmq.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : librabbitmq/CMakeFiles/rabbitmq.dir/depend

