varying vec2 vTex;
varying vec4 vFragColor; 
uniform sampler2D textureUnit0;

void main(void) 
{ 
	//vTex=
	gl_FragColor = texture2D(textureUnit0, vTex)*vFragColor; 
	//gl_FragColor = vec4(1.0f,0.0f,0.0f,1.0f);
	//gl_FragColor = vec4(vFragColor.r,vFragColor.g,vFragColor.b,1.0f);
};