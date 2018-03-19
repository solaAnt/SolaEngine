//uniform mat4 mvpMatrix;
uniform mat4 mvMatrix;
uniform mat4 pMatrix;
uniform mat4 object2world;

attribute vec4 vVertex;
attribute vec2 vTexCoord0;
attribute vec4 vColor;
attribute vec4 vNormal;

varying vec2 vTex;
varying vec4 vFragColor;
varying vec4 vNorl;
varying vec4 vVert;

void main(void) 
{
	vTex = vTexCoord0;
	vFragColor = vColor; 
	vNorl = vNormal;
	vVert = vVertex*object2world;
	
	gl_Position = pMatrix * mvMatrix * vVertex;
 	//gl_Position = mvpMatrix * vVertex;
	//gl_Position =vVertex;
};