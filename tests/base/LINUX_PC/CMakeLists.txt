# Configure the project name.
project(microtbx_tests)

# Configure project sources.
set(PROJECT_SOURCES
    "${CMAKE_CURRENT_LIST_DIR}/main.c"
)

# Configure project include directories.
set(PROJECT_INCLUDES
    "${CMAKE_CURRENT_LIST_DIR}"
)

# Configure project libraries.
set(PROJECT_LIBRARIES
	unity
    microtbx
    microtbx-linux
    microtbx-tests
    pthread
)

# Set target executabe.
add_executable(${PROJECT_NAME}
    ${PROJECT_SOURCES}
)

# Add include directories.
target_include_directories(${PROJECT_NAME} PRIVATE
    ${PROJECT_INCLUDES}
)

# Add libraries to include.
target_link_libraries(${PROJECT_NAME}
    ${PROJECT_LIBRARIES}
)

# Create microtbx_MISRA for MISRA checking with cppcheck.
include("${CMAKE_SOURCE_DIR}/third_party/microtbx/source/misra.cmake")


