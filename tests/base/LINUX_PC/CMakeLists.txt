# Configure the project name.
project(microtbx_tests)

# Import library dependencies.
include("${CMAKE_SOURCE_DIR}/.cmake/unity.cmake")

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
    microtbx-template
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

