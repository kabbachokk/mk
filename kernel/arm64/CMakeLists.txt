file(GLOB_RECURSE ARM64_SOURCES *.cc *.c *.S *.s)

#Options:
include(CMakeDependentOption)
option(DUMMY_OPTION "DUMMY OPTION"  ON)

#Generate configuration header file:
configure_file(arm64_config.h.in  arm64_config.h)

add_library(arch_objects OBJECT ${ARM64_SOURCES})

target_include_directories(arch_objects PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})