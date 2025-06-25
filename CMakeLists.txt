cmake_minimum_required(VERSION 3.15)
project(MyKernel LANGUAGES CXX ASM)

set(ARCH "arm64" CACHE STRING "Target architecture (arm64 or x64)")
set_property(CACHE ARCH PROPERTY STRINGS "arm64" "x64")

message(STATUS "Target architecture: ${ARCH}")

if(NOT DEFINED CMAKE_TOOLCHAIN_FILE)
    message(FATAL_ERROR "CMAKE_TOOLCHAIN_FILE must be specified for cross-compilation")
endif()

set(KERN_DIR ${CMAKE_CURRENT_SOURCE_DIR}/kern)
set(ARCH_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${ARCH})

add_subdirectory(kern)
add_subdirectory(${ARCH})

# Итоговый таргет ядра
add_executable(kernel
    $<TARGET_OBJECTS:kern_objects>
    $<TARGET_OBJECTS:arch_objects>
)
