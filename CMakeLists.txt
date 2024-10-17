cmake_minimum_required(VERSION 3.10)
project(calculator) 

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_library(libcalculator SHARED calculator.cpp calculator.h) 

set(SOURCES
    calculator.cpp
    main.cpp
)


add_executable(calculator.exe ${SOURCES})
target_link_libraries(calculator.exe PRIVATE libcalculator) 