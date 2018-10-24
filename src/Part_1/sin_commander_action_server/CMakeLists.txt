cmake_minimum_required(VERSION 2.8.3)
project(sin_commander_action_server)

find_package(catkin_simple REQUIRED)

catkin_simple()

cs_add_executable(sin_commander_action_server src/sin_commander_action_server.cpp)
cs_add_executable(sin_commander_action_client src/sin_commander_action_client.cpp)

cs_install()
cs_export()
    

