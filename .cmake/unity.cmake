# Create interface library for the unity framework.
add_library(unity INTERFACE)

target_sources(unity INTERFACE
	"${CMAKE_SOURCE_DIR}/third_party/unity/src/unity.c"    
)

target_include_directories(unity INTERFACE 
	"${CMAKE_SOURCE_DIR}/third_party/unity/src"    
)

target_compile_definitions(unity INTERFACE
	UNITY_INCLUDE_CONFIG_H
)

