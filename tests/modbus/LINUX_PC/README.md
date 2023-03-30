This program performs unit tests on the MicroTBX software components. It is targeted towards a GNU/Linux based PC and is configured for building with the GNU GCC toolchain.

# Prerequisites

The test program relies on [CMake](https://cmake.org/) to automatically detect the build tools on your system and to generate the build environment for it. On a Debian/Ubuntu based system, the following command installs the build dependencies:

```bash
sudo apt-get install build-essential cmake cppcheck
```

# Building

Using the terminal, set the working directory to where you cloned the unit tests framework (e.g. `~/MicroTBXTests`). Next, type the following commands to detect and generate the Unix Makefiles based build environment and then build the test program:

```bash
cd build
cmake ..
cd tests/modbus/LINUX_PC
make
```

This creates the `microtbx_modbus_tests` executable in the `./build` directory. 

# Running

After building the test program, you can perform the unit tests by starting the `microtbx_modbus_tests` executable, located in the current directory:

```
./microtbx_modbus_tests
```

The test program produces text on the standard output to inform you about its progress, including a final summary about the passed/failed tests.

# Linting

To lint the code for static code analysis to verify MISRA compliance, run:

```bash
make microtbx_modbus_MISRA
```

