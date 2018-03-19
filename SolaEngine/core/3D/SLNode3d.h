#ifndef __SLNode3d_h__
#define __SLNode3d_h__

#include <vector>
#include <math.h>
#include <math3d.h>
#include "../SLTransformInfo.h"
#include "../../extends/math/Mat4.h"
#include "../../core/render/SLShader.h"

//#include "SLTransformInfo.h"
#include <GLMatrixStack.h>
#include <GLGeometryTransform.h>

//#include "../core/SLTexture.h"
#include "../../events/BaseEvent.h"
//#include "../extends/math/Mat4.h"
//#include "../core/render/SLShader.h"
using namespace std;

class SLNode3d :public BaseEvent
{
public:
	Mat4 getNtpTransform();
	Mat4 getNtwTransform();
	Vec3 covNtw(Vec3 np);
	Vec3 covWtn(Vec3 wp);

public:
	void beforeRender(float dt);
	void afterRender(float dt);
	virtual void draw(GLMatrixStack &mvStack, GLGeometryTransform &transformPipeline);
	virtual void onDraw(GLMatrixStack &mvStack, GLGeometryTransform &transformPipeline);

public:
	SLTransformInfo getTransformInfo(){ return _transformInfo; };
	void setPosition(float x, float y, float z);
	void setScale(float x, float y, float z);
	void setRotation(float value, float x, float y, float z);

public:
	void addChild(SLNode3d* value);
	void removeChild(SLNode3d* value);
	void removeSelf();
	void removeAll();

public:
	void setParent(SLNode3d* value);
	SLNode3d* getParent();
	vector<SLNode3d*>* getChildren(){
		return &_childrens;
	};

	void setShader(SLShader* shader){
		_shader = shader; 
	};
	void setName(string& name){
		_name = name;
	}

	void setTag(int& tag){
		_tag = tag;
	}

public:
	SLNode3d();
	~SLNode3d();

protected:
	virtual void _init();
	void _initShaderUniform();
	GLBatch	_triangleBatch;
	SLTransformInfo _transformInfo;
	SLShader* _shader;
	vector<SLNode3d*> _childrens;

private:
	
	//float _centralityX;
	//float _centralityY;
	string _name;
	bool _isRunning;
	int _tag;
	SLNode3d* _parent;


	//float _alpha;
	//SLTexture* _texture;
	//BaseHandler* _touchHnadler;
	//EventHandler _callBackd;
};
#endif