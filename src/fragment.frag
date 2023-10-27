#version 330 core
out vec4 FragColor;
in vec3 outPos; // the input variable from the vertex shader (same name and type)

void main() {
  FragColor = vec4(outPos, 1.0);
}
