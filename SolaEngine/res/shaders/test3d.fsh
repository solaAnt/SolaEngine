varying vec2 vTex;
varying vec4 vFragColor;
varying vec4 vNorl;
varying vec4 vVert;

uniform sampler2D textureUnit0;
uniform sampler2D textureUnit1;
uniform float flag;
uniform mat4 object2world;

void main(void) 
{ 	
	//gl_FragColor = texture2D(textureUnit0, vTex);
	//if(texture2D(textureUnit1, vTex).r<=flag){
	//	discard;
	//}
	
	vec4 lightPos=vec4((1.0f-flag)*50.0f,50.0f,50.0f,1.0f);
	vec4 lightDir=lightPos-vVert;
	lightDir=vec4(0.1f,-0.1f,1.0f,1.0f);
	
	float d=max(0,dot(normalize(vNorl),normalize(lightDir)));
	d=d+0.1f;
	//float d=max(0,dot(normalize(vNorl),normalize(vec4((1.0f-flag)*50.0f,-10.0f,10.0f,1.0f))));
	//d=d+0.3f;
	d=min(1.0f,d);
	
	vec4 c;
	c=texture2D(textureUnit0, vTex)*d;
	c.a=vFragColor.a;
	gl_FragColor = c;
	//gl_FragColor = vec4(1.0f,0.0f,0.0f,1.0f);
	//float d=dot(vNorl,lightDir);
	//gl_FragColor = vec4(d,0.0f,0.0f,1.0f);
};