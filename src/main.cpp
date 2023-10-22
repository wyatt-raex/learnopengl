// Shaders e1 branch

#include "main.hpp"

#include <cmath>
#include <fstream>

/* DEFINES */
#define WIN_HEIGHT 600
#define WIN_LENGTH 800

/* Shader File Paths */
const char* vertexPath = "./src/vertex.vert";
const char* fragmentPath = "./src/fragment.frag";


int main(int argc, char** argv) {
  // Create a window
  // ---------------------------------------------------------------------------------------------
  // Init glfw
  glfwInit();
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

  // Create a window
  GLFWwindow* window = glfwCreateWindow(WIN_LENGTH, WIN_HEIGHT, "Learn OpenGL", NULL, NULL);
  if (window == NULL) {
    std::cout << "Failed to create GLFW window" << std::endl;
    glfwTerminate();
    return -1;
  }

  glfwMakeContextCurrent(window);

  // Init glad
  if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
    std::cout << "Failed to initialize GLAD" << std::endl;
    return -1;
  }

  // Setup OpenGL viewport
  glViewport(0, 0, WIN_LENGTH, WIN_HEIGHT);
  glfwSetFramebufferSizeCallback(window, framebuffer_size_callback); 

  // Build and compile shader program
  // ---------------------------------------------------------------------------------------------
  // vertex shader
  Shader ourShader(vertexPath, fragmentPath);

  // Set up vertex data (and buffer(s)) and configure vertex attributes
  // ---------------------------------------------------------------------------------------------
  float vertices[] = {
    // positions         // colors
     0.5f,  0.5f, 0.0f,  1.0f, 0.0f, 0.0f, // top right
     0.5f, -0.5f, 0.0f,  0.0f, 1.0f, 0.0f, // bottom right
    -0.5f, -0.5f, 0.0f,  0.0f, 0.0f, 1.0f, // bottom left
    -0.5f,  0.5f, 0.0f,  0.0f, 0.0f, 0.0f, // top left
  }; 
  unsigned int indices[] = {
    0, 1, 3, // first triangle
    1, 2, 3  // second triangle
  };

  // VBO: Vertex Buffer Object - buffer to vertex attribute and index data
  // EBO: Element Buffer Object - stores data on what indices each `triangle/primative` uses
  // VAO: Vertex Array Object - stores VBO configuration data & pointers to VBO & EBO
  unsigned int VBO, EBO, VAO;
  glGenVertexArrays(1, &VAO);
  glGenBuffers(1, &VBO);
  glGenBuffers(1, &EBO);
  // bind the Vertex Array Obect first, then bind and set vertex buffer(s)
  // and then configure vertex attribute(s).
  glBindVertexArray(VAO);

  glBindBuffer(GL_ARRAY_BUFFER, VBO);
  glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
  glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

  // Specify VBO layout: (index, size, type, normalized, stride, pointer)
  // position attribute
  glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)0);
  glEnableVertexAttribArray(0);
  // color attribute
  glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)(3 * sizeof(float)));
  glEnableVertexAttribArray(1);

  glBindBuffer(GL_ARRAY_BUFFER, 0);

  // You can unbind the VAO afterwords so other VAO calls won't accidentally modify this VAO,
  // but this rarely happens. Modifying other VAOs requires a call to `glBindVertexArray` anyways
  // so we generally don't unbind VAOs (nor VBOs) when it's not directly necessary.
  glBindVertexArray(0);

  // Render loop
  // ---------------------------------------------------------------------------------------------
  // uncomment this call to draw in wireframe polygons
  // glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
  while (!glfwWindowShouldClose(window)) {
    // Input
    processInput(window);

    // Rendering commands here
    glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);

    ourShader.use();

    glBindVertexArray(VAO);
    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
    glBindVertexArray(0);

    // Check and call events and swap buffers
    glfwSwapBuffers(window);
    glfwPollEvents();
  }

  // Garbage collection and end program
  // ---------------------------------------------------------------------------------------------
  // De-allocate all OpenGL resources
  glDeleteVertexArrays(1, &VAO);
  glDeleteBuffers(1, &VBO);
  // ourShader.~Shader();

  // Clean GLFW resources and terminate program
  glfwTerminate();
  return 0;
}


void framebuffer_size_callback(GLFWwindow* window, int width, int height) {
  glViewport(0, 0, width, height);
}


void readShaderSourceCode(const char* filePath, std::string *shaderSource) {
  std::ifstream fileStream(filePath, std::ios::in);

  if (!fileStream.is_open()) {
    std::cerr << "Could not read file " << filePath << ". File does not exist!" << std::endl;
    return;
  }

  std::string line = "";
  while (!fileStream.eof()) {
    std::getline(fileStream, line);
    shaderSource->append(line + "\n");
  }

  fileStream.close();
}


void processInput(GLFWwindow *window) {
  if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
    glfwSetWindowShouldClose(window, true);
}


