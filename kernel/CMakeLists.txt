file(GLOB KERN_SOURCES *.cc *.c *.S *.s)

include(CMakeDependentOption)
option(DUMMY_OPTION "DUMMY OPTION"  ON)

configure_file(config.h.in  config.h)

add_subdirectory(${ARCH})
add_library(kern_objects OBJECT ${KERN_SOURCES})

add_executable(kernel.elf
    $<TARGET_OBJECTS:kern_objects>
    $<TARGET_OBJECTS:arch_objects>
)

target_include_directories(kern_objects PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(kern_objects PRIVATE ${CMAKE_CURRENT_BINARY_DIR})