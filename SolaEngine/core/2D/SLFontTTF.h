#ifndef __SLFontTTF_h__
#define __SLFontTTF_h__

#include <vector>
#include <math.h>
#include <math3d.h>

#include "../SLNode.h";
#include "../../managers/SLFontManager.h"
#include "../../managers/SLShaderManager.h"
using namespace std;

class SLFontTTF :public SLNode
{
public:
	virtual void onDraw(GLMatrixStack &mvStack, GLGeometryTransform &transformPipeline);

public:
	SLFontTTF() :SLNode(){
		SLShaderManager* smgr = SLShaderManager::getInstance();
		_shader=smgr->addShader(string("fontShader"));
	};
	~SLFontTTF(){};

	void setContent(wstring& ,int size,Vec4 color);

private:
	Vec4 _fontColor;
	int _fontSize;
	vector<float> vertexAttr;
	wstring _content = L"≤‚ ‘ƒ⁄»›";//need delete
};

#endif 