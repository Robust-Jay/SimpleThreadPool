cmake_minimum_required(VERSION 3.0)
# project(Test)
# set(CMKE_CXX_FLAGS ${CMKE_CXX_FLAGS} -g)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

include_directories(${PROJECT_SOURCE_DIR}/include)
link_directories(${PROJECT_SOURCE_DIR}/lib)
add_subdirectory(src)
add_subdirectory(test)