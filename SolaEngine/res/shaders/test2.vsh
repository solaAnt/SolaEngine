uniform mat4 mvpMatrix;
attribute vec4 vVertex;
attribute vec2 vTexCoord0;
attribute vec4 vColor;

varying vec2 vTex;
varying vec4 vFragColor;
void main(void) 
{
	vTex = vTexCoord0;
	vFragColor = vColor; 

 	gl_Position = mvpMatrix * vVertex;
};