#ifndef __SL_TEXTURE_MGR_H_
#define __SL_TEXTURE_MGR_H_
#include "../core/SLTexture.h"
#include <string>
#include <vector>
#include <map>

using namespace std;

class SLTextureManager
{
public:
	SLTextureManager();
	~SLTextureManager();
	static SLTextureManager* getInstance();

	SLTexture* addTexture(string path);

private:
	static SLTextureManager* _instance;
	map<string, SLTexture*> _textures;
};

#endif