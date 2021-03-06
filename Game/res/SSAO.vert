#version 330

out vec2 fragmentTexcoord;

const vec2 vertices[4] = vec2[] (vec2(-1.0, 1.0), vec2(-1.0, -1.0), vec2(1.0, 1.0), vec2(1.0, -1.0));

void main()
{
	fragmentTexcoord = vertices[gl_VertexID] * 0.5 + 0.5;
	gl_Position = vec4(vertices[gl_VertexID], 0.0, 1.0);
}