#ifndef SLNODE_H_
#define SLNODE_H_

#include <vector>
#include <math.h>
#include <math3d.h>
#include "SLTransformInfo.h"
#include <GLMatrixStack.h>
#include <GLGeometryTransform.h>
#include "../core/SLTexture.h"
#include "../events/BaseEvent.h"
#include "../extends/math/Mat4.h"
#include "../core/render/SLShader.h"
using namespace std;

class SLNode:public BaseEvent
{
public:
	void removeTouchHnadler();
	void setTouchHandler(EventHandler a);

public:
	Mat4 getNtpTransform();
	Mat4 getNtwTransform();
	Vec3 covNtw(Vec3 np);
	Vec3 covWtn(Vec3 wp);

public:
	void beforeRender(float dt);
	void afterRender(float dt);
	void draw(GLMatrixStack &mvStack, GLGeometryTransform &transformPipeline);
	virtual void onDraw(GLMatrixStack &mvStack, GLGeometryTransform &transformPipeline);

public:
	void setCentralityX(float x){ _centralityX = x; setTexture(_texture); };
	void setCentralityY(float y){ _centralityY = y; setTexture(_texture); };

	SLTransformInfo getTransformInfo(){ return _transformInfo; };
	void setPosition(float x, float y);
	void setScale(float x, float y);
	void setRotation(float value);

public:
	void addChild(SLNode* value);
	void removeChild(SLNode* value);
	void removeSelf();
	void removeAll();

public:
	void setShader(SLShader* shader){
		_shader = shader;
	};

	void setTexture(SLTexture* texture);
	SLTexture* getTexture();
	void setParent(SLNode* value);
	SLNode* getParent();

	void setAlpha(float alpha);
	float getAlpha();

public:
	float test_gr_x;
	float test_gr_y;
	SLNode(int tag);
	SLNode();
	virtual ~SLNode();

protected:
	void _init();
	SLShader* _shader;
	SLTexture* _texture;
	GLBatch	_triangleBatch;

private:

	float _centralityX;
	float _centralityY;

	SLTransformInfo _transformInfo;

	bool _isRunning;
	int _tag;
	SLNode* _parent;
	vector<SLNode*> _childrens;

	float _alpha;
	
	BaseHandler* _touchHnadler;
	EventHandler _callBackd;
};
#endif