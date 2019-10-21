# The following lines of boilerplate have to be in your project's CMakeLists
# in this exact order for cmake to work correctly
cmake_minimum_required(VERSION 3.5)

set(CMAKE_C_STANDARD 99)

include($ENV{IDF_PATH}/tools/cmake/project.cmake)

add_compile_options(-Werror=format-truncation=0 -Werror=format-overflow=0)

project(ThingJS VERSION 1.1.1 LANGUAGES C)
