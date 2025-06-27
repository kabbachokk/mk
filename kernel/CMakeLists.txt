file(GLOB_RECURSE KERN_SOURCES *.cc *.c *.S *.s)

#Options:
include(CMakeDependentOption)
option(DUMMY_OPTION "DUMMY OPTION"  ON)

#Generate configuration header file:
configure_file(config.h.in  config.h)

add_subdirectory(${ARCH})
add_library(kern_objects OBJECT ${KERN_SOURCES})

# Итоговый таргет ядра
add_executable(kernel
    $<TARGET_OBJECTS:kern_objects>
    $<TARGET_OBJECTS:arch_objects>
)

target_include_directories(kern_objects PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})