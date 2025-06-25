file(GLOB_RECURSE KERN_SOURCES *.cpp *.c *.S *.s)

#Options:
include(CMakeDependentOption)
option(DUMMY_OPTION "DUMMY OPTION"  ON)

#Generate configuration header file:
configure_file(config.h.in  config.h)

add_library(kern_objects OBJECT ${KERN_SOURCES})

target_include_directories(kern_objects PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})