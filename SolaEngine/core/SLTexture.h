#ifndef __SL_TEXTURE_H__
#define __SL_TEXTURE_H__
//#include "SLNode.h"
#include <string>
#include <GLTools.h>
using namespace std;

class SLTexture
{
public:
	SLTexture();
	~SLTexture();

	void init(string path);
	void use();

	int getWidth();
	int getHeight();

private:
	void _LoadTGATexture(const char *szFileName, GLenum minFilter, GLenum magFilter, GLenum wrapMode);
	GLuint _textureName;
	int _width;
	int _height;
};

#endif