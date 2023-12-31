#pragma once

#include "../include/glad/glad.h"
#include <GLFW/glfw3.h>
#include "../include/KHR/khrplatform.h"

#include <iostream>


/* Function Prototypes */
void framebuffer_size_callback(GLFWwindow* window, int width, int height);

void readShaderSourceCode(const char* filePath, std::string *shaderSource);

void processInput(GLFWwindow *window);
