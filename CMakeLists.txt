# Specify the minimum version for CMake

cmake_minimum_required(VERSION 2.8.9)
project(fcdpp1)
set(CMAKE_BUILD_TYPE Release)

include_directories(include)

file(GLOB SOURCES "src/*.c")

add_library(libfcdpp1 SHARED ${SOURCES})

install(TARGETS libfcdpp1 DESTINATION "lib/")
