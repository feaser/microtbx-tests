# Include all base tests
add_subdirectory(base)

# Include the modbus tests, if the component is available.
if(EXISTS "${CMAKE_SOURCE_DIR}/third_party/microtbx-modbus")
  add_subdirectory(modbus)
endif()
