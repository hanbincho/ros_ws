cmake_minimum_required(VERSION 2.8.3)
project(sin_commander_service)

find_package(catkin_simple REQUIRED)

catkin_simple()

cs_add_executable(sin_commander_service src/sin_commander_service.cpp)
cs_add_executable(sin_commander_client src/sin_commander_client.cpp)

cs_install()
cs_export()
    
