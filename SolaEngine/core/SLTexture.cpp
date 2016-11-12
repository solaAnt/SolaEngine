#include "SLTexture.h"
#include "../extends/libpng/Libpng.h"

SLTexture::SLTexture(){
	glGenTextures(1, &_textureName);
}

SLTexture::~SLTexture(){
	glDeleteTextures(1, &_textureName);
}

void SLTexture::init(string path){
	glBindTexture(GL_TEXTURE_2D, _textureName);
	this->_LoadTGATexture(path.c_str(), GL_LINEAR_MIPMAP_LINEAR, GL_LINEAR, GL_REPEAT);
	glBindTexture(GL_TEXTURE_2D, 0);
}

void SLTexture::use(){
	glBindTexture(GL_TEXTURE_2D, _textureName);
}

int SLTexture::getWidth(){
	return _width;
}

int SLTexture::getHeight(){
	return _height;
}
void SLTexture::_LoadTGATexture(const char *szFileName, GLenum minFilter, GLenum magFilter, GLenum wrapMode)
{
	//GLbyte *pBits;
	//int nWidth, nHeight, nComponents;
	//GLenum eFormat;

	//// Read the texture bits
	//pBits = gltReadTGABits(szFileName, &nWidth, &nHeight, &nComponents, &eFormat);
	//if (pBits == NULL)
	//	return;

	//glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
	//glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	//glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	//glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

	//glTexImage2D(GL_TEXTURE_2D, 0, GL_COMPRESSED_RGB, nWidth, nHeight, 0,
	//	eFormat, GL_UNSIGNED_BYTE, pBits);
	//glGenerateMipmap(GL_TEXTURE_2D);
	//free(pBits);

	//_width = nWidth;
	//_height = nHeight;

	CreateTextureFromPng(szFileName, _width, _height);
}