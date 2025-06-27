cmake_minimum_required(VERSION 3.15)

set(CMAKE_TOOLCHAIN_FILE "aarch64-none-elf.cmake" CACHE PATH "")
set(CMAKE_GENERATOR Ninja)

project(mk LANGUAGES C CXX ASM)

set(ARCH "arm64" CACHE STRING "Target architecture (arm64 or x64)")
set_property(CACHE ARCH PROPERTY STRINGS "arm64" "x64")

message(STATUS "Target architecture: ${ARCH}")

if(NOT DEFINED CMAKE_TOOLCHAIN_FILE)
    message(FATAL_ERROR "CMAKE_TOOLCHAIN_FILE must be specified for cross-compilation")
endif()

set(KERN_DIR ${CMAKE_CURRENT_SOURCE_DIR}/kernel)
set(ARCH_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${ARCH})

add_subdirectory(kernel)