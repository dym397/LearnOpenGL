#version 330 core
layout (location = 0) in vec3 aPos;   //location=0 是对属性的编号(这里是顶点坐标属性)
layout (location = 1) in vec3 aColor;//颜色
layout (location = 2) in vec2 aTexCoord;//纹理
out vec3 ourColor;
out vec2 TexCoord;
uniform mat4 transform;
void main()
{
	ourColor=aColor;
	TexCoord=vec2(aTexCoord.x, 1-aTexCoord.y);
        gl_Position = transform*vec4(aPos, 1.0);
}