cmake_minimum_required(VERSION 3.27)

project(LearnOpenGL)

add_executable(learnopengl src/main.cpp src/glad.c src/shader.cpp)

find_package(glfw3 3.3 REQUIRED)
target_link_libraries(learnopengl glfw)

find_package(OpenGL REQUIRED)
target_link_libraries(learnopengl OpenGL::GL)
