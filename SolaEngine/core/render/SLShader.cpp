#include "SLShader.h"
#include "../SLEngineH.h"

SLShader::SLShader()
{
}


SLShader::~SLShader()
{
}

void SLShader::load(string& vsPatch, string& fsPatch){
	SLFileUtils* sfu = SLFileUtils::getInstance();
	string vsContent = sfu->getStrContent(vsPatch);
	string fsContent = sfu->getStrContent(fsPatch);

	this->_id = gltLoadShaderPairSrcWithAttributes(vsContent.c_str(), fsContent.c_str(), 4,
		GLT_ATTRIBUTE_VERTEX, "vVertex", GLT_ATTRIBUTE_NORMAL, "vNormal", GLT_ATTRIBUTE_TEXTURE0, "vTexCoord0", GLT_ATTRIBUTE_COLOR, "vColor");
}

void SLShader::use(){
	glUseProgram(this->_id);
}

void SLShader::setUniformMat44(string& uniformName, M3DMatrix44f* value){
	GLint tmpId = glGetUniformLocation(this->_id, uniformName.c_str());
	glUniformMatrix4fv(tmpId, 1, GL_FALSE, *value);
}

void SLShader::setUniformVec4(string& uniformName, M3DVector4f* value){
	GLint tmpId = glGetUniformLocation(this->_id, uniformName.c_str());
	glUniform4fv(tmpId, 1, *value);
}

void SLShader::setUniformTex(string& uniformName, int unionIndex, SLTexture* texture){
	glActiveTexture(GL_TEXTURE0 + unionIndex);
	texture->use();
	GLint tmpId = glGetUniformLocation(this->_id, uniformName.c_str());
	glUniform1i(tmpId, unionIndex);
}

void SLShader::setUniformTex(string& uniformName, int unionIndex, GLuint &textureId){
	glActiveTexture(GL_TEXTURE0 + unionIndex);
	glBindTexture(GL_TEXTURE_2D, textureId);
	GLint tmpId = glGetUniformLocation(this->_id, uniformName.c_str());
	glUniform1i(tmpId, unionIndex);
}

void SLShader::setUniformFloat(string& uniformName, float& value){
	GLint tmpId = glGetUniformLocation(this->_id, uniformName.c_str());
	glUniform1fv(tmpId,1, &value);
}