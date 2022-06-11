This program performs unit tests on the MicroTBX software components. It is targeted towards a GNU/Linux based PC and is configured for building with the GNU GCC toolchain.

# Prerequisites

The test program relies on [CMake](https://cmake.org/) to automatically detect the build tools on your system and to generate the build environment for it. On a Debian/Ubuntu based system, the following command installs the build dependencies:

```
sudo apt-get install build-essential cmake
```

# Getting the code

The MicroTBX software component needs to be manually obtained:

```
cd third_party
git clone https://github.com/feaser/microtbx.git microtbx
```

# Building

Using the terminal, set the working directory to the `./build` directory. Next, type the following two commands to detect and generate the Unix Makefiles based build environment and then build the test program:

```
cmake ..
make
```

This creates the `microtbx_tests` executable in the `./build` directory. 

# Running

After building the test program, you can perform the unit tests by starting the `microtbx_tests` executable, located in the `./build` directory:

```
./microtbx_tests
```

The test program produces text on the standard output to inform you about its progress, including a final summary about the passed/failed tests.
