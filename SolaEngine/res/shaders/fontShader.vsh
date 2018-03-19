uniform mat4 mvMatrix;
uniform mat4 pMatrix;

attribute vec4 vVertex;
attribute vec2 vTexCoord0;
attribute vec4 vColor;

varying vec2 vTex;
varying vec4 vFragColor;

void main(void) 
{
	vTex = vTexCoord0;
	vFragColor = vColor; 

 	gl_Position = pMatrix * mvMatrix * vVertex;
};