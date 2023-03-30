cmake_minimum_required(VERSION 3.17)

# Configure C and C++ standards.
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Specify overall project name.
project(test LANGUAGES C CXX ASM)

# Import library dependencies.
include("${CMAKE_SOURCE_DIR}/.cmake/unity.cmake")

# Include the MicroTBX interface library
add_subdirectory(third_party/microtbx)

# Include the MicroTBX-Modbus interface library, if the component is available.
if(EXISTS "${CMAKE_SOURCE_DIR}/third_party/microtbx-modbus")
  add_subdirectory(third_party/microtbx-modbus)
endif()

# Include the test sources
add_subdirectory(tests)


