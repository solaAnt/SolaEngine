varying vec2 vTex;
varying vec4 vFragColor; 
uniform sampler2D textureUnit0;

void main(void) 
{ 
	float grey = dot(texture2D(textureUnit0, vTex).rgb, vec3(0.299, 0.587, 0.114));
	gl_FragColor = vec4(grey, grey, grey, vFragColor.a);  
	  
	//gl_FragColor = texture2D(textureUnit0, vTex)*vFragColor; 
	//gl_FragColor = vec4(1.0f,0.0f,0.0f,1.0f);
};