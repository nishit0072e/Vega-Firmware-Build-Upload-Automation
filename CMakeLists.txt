cmake_minimum_required (VERSION 3.16)

list (APPEND CMAKE_PREFIX_PATH "C:/RISCV/taurus/SDK")

find_package (taurus 0.1 REQUIRED)

project (blink.elf LANGUAGES C)

add_executable (${PROJECT_NAME} blink.c)

target_link_libraries (${PROJECT_NAME} PRIVATE taurus::taurus)

