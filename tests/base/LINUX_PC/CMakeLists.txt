#****************************************************************************************
# \file         CMakeLists.txt
# \brief        CMake descriptor file for MicroTBX test program for Linux/GCC.
# \internal
#----------------------------------------------------------------------------------------
#                          C O P Y R I G H T
#----------------------------------------------------------------------------------------
#   Copyright (c) 2022 by Feaser     www.feaser.com     All rights reserved
#
#----------------------------------------------------------------------------------------
#                            L I C E N S E
#----------------------------------------------------------------------------------------
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# \endinternal
#****************************************************************************************
# Specify the minimum version
cmake_minimum_required(VERSION 3.9)


#****************************************************************************************
# Project configuration
#****************************************************************************************
# Specify the project name and language
project(microtbx_tests LANGUAGES C)


#****************************************************************************************
# Language configuration
#****************************************************************************************
# Set the required C standard.
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)


#****************************************************************************************
# Directories
#****************************************************************************************
# Set MicroTBX related directory locations
set(MICROTBX_BASE ${PROJECT_SOURCE_DIR}/../../../third_party/microtbx/source)
set(MICROTBX_INCS
  "${MICROTBX_BASE}"
  "${MICROTBX_BASE}/port/LINUX"
  "${MICROTBX_BASE}/tests"
)

# Set Unity related directory locations
set(UNITY_BASE ${PROJECT_SOURCE_DIR}/../../../third_party/unity/src)
set(UNITY_INCS
  "${UNITY_BASE}"
)


#****************************************************************************************
# Compiler flags
#****************************************************************************************
# Set compiler specific macros
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -pthread")


#***************************************************************************************
# Includes
#****************************************************************************************
# Set include directories
include_directories("${PROJECT_SOURCE_DIR}" "${MICROTBX_INCS}" "${UNITY_INCS}")


#***************************************************************************************
# Files
#****************************************************************************************
# Collect MicroTBX sources, headers and tests
file(GLOB MICROTBX_CORE_SRCS 
  "${MICROTBX_BASE}/*.h"
  "${MICROTBX_BASE}/*.c"
)
file(GLOB MICROTBX_PORT_SRCS
  "${MICROTBX_BASE}/port/LINUX/*.h"
  "${MICROTBX_BASE}/port/LINUX/*.c"
)
file(GLOB MICROTBX_TEST_SRCS 
  "${MICROTBX_BASE}/tests/*.h"
  "${MICROTBX_BASE}/tests/*.c"
)
set(MICROTBX_SRCS
  "${MICROTBX_CORE_SRCS}"
  "${MICROTBX_PORT_SRCS}"
  "${MICROTBX_TEST_SRCS}"
)

# Collect Unity sources and headers
file(GLOB UNITY_CORE_SRCS 
  "${UNITY_BASE}/*.h"
  "${UNITY_BASE}/*.c"
)
set(UNITY_SRCS
  "${UNITY_CORE_SRCS}"
)

# Add program sources
set(PROG_SRCS
  main.c
  "${MICROTBX_SRCS}"
  "${UNITY_SRCS}"
)

#***************************************************************************************
# Targets
#****************************************************************************************
# Set main target.
add_executable(${PROJECT_NAME}
  ${PROG_SRCS}
)
# Define macro UNITY_INCLUDE_CONFIG_H to include "unity_config.h" for configuration.
target_compile_definitions(${PROJECT_NAME} PRIVATE UNITY_INCLUDE_CONFIG_H)


#*********************************** end of CMakeLists.txt ******************************
