/**
	create by hy 20161117
*/
#include "SLNode.h"
#include "../events/TouchEvent.h"
#include "SLPoint.h"

void SLNode::removeTouchHnadler(){
	if (_callBackd == nullptr || _touchHnadler == nullptr)
		return;

	_callBackd = nullptr;

	TouchEvent* event = TouchEvent::getInstance();
	event->removeListener(TouchEvent::EVENT_ON_TOUCH_BEGIN, _touchHnadler);
}

void SLNode::setTouchHandler(EventHandler callBackd){
	if (_touchHnadler != nullptr){
		delete _touchHnadler;
		_touchHnadler = nullptr;
	}
	_callBackd = callBackd;
	//test add click event
	EventHandler a = [&](void* data){
		SLPoint* p = (SLPoint*)(data);

		Vec3 res = this->covWtn(Vec3(p->x, p->y, 0));
		printf("EVENT_ON_TOUCH_BEGIN%f,%f \r\n", res.x, res.y);
		printf("There need a hit Test.\r\n");

		TouchEventData touchEventData;
		touchEventData.eventName = TouchEvent::EVENT_ON_TOUCH_BEGIN;
		touchEventData.nodePoint = res;

		_callBackd((void*)&touchEventData);
	};

	TouchEvent* event = TouchEvent::getInstance();
	_touchHnadler = new BaseHandler(a);
	event->addEventListener(TouchEvent::EVENT_ON_TOUCH_BEGIN, _touchHnadler);
}

Vec3 SLNode::covWtn(Vec3 wp){
	Mat4 mat = this->getNtwTransform().getInversed();
	Vec3 ret;
	mat.transformPoint(wp, &ret);

	return ret;
}

Vec3 SLNode::covNtw(Vec3 np){
	Mat4 mat = this->getNtwTransform();

	Vec3 ret;
	mat.transformPoint(np, &ret);

	return ret;
}

Mat4 SLNode::getNtpTransform(){
	SLTransformInfo info = _transformInfo;

	Vec3 tl(info.tanslateX, info.tanslateY, 0);
	Mat4 mat;
	mat.translate(tl);
	mat.rotateZ(info.rotation);

	return mat;
}


Mat4 SLNode::getNtwTransform(){
	Mat4 mat = this->getNtpTransform();

	for (SLNode* p = _parent; p != nullptr; p = p->getParent())
	{
		Mat4 mat44 = p->getNtpTransform();
		mat = mat44*mat;
	}

	return mat;
}

void SLNode::beforeRender(float dt){
}

void SLNode::afterRender(float dt){
	void* data = (void*)&dt;
	this->dispathEvent(BaseEvent::EVENT_ON_NODE_UPDATED, data);
}

void SLNode::setTexture(SLTexture* texture){
	_texture = texture;
	float width = texture->getWidth();
	float height = texture->getHeight();

	float offsetX = _centralityX*width;
	float offsetY = _centralityY*height;

	float leftX = -offsetX;
	float rightX = width - offsetX;

	float bottomY = -offsetY;
	float topY = height - offsetY;

	GLBatch	triangleBatch;
	_triangleBatch = triangleBatch;

	_triangleBatch.Reset();
	_triangleBatch.Begin(GL_TRIANGLE_STRIP, 4, 1);

	_triangleBatch.MultiTexCoord2f(0, 0.0f, 0.0f);
	_triangleBatch.Color4f(1, 1, 1, 1);
	_triangleBatch.Vertex3f(leftX, bottomY, 0);

	_triangleBatch.MultiTexCoord2f(0, 1.0f, 0.0f);
	_triangleBatch.Color4f(1, 1, 1, 1);
	_triangleBatch.Vertex3f(rightX, bottomY, 0);

	_triangleBatch.MultiTexCoord2f(0, 0.0f, 1.0f);
	_triangleBatch.Color4f(1, 1, 1, 1);
	_triangleBatch.Vertex3f(leftX, topY, 0);

	_triangleBatch.MultiTexCoord2f(0, 1.0f, 1.0f);
	_triangleBatch.Color4f(1, 1, 1, 1);
	_triangleBatch.Vertex3f(rightX, topY, 0);

	_triangleBatch.End();
}

void SLNode::draw(GLMatrixStack &mvStack, GLGeometryTransform &transformPipeline, GLShaderManager &shaderManager){
	this->beforeRender(1);

	mvStack.PushMatrix();
	mvStack.Translate(_transformInfo.tanslateX, _transformInfo.tanslateY, 0);
	mvStack.Scale(_transformInfo.scaleX, _transformInfo.scaleY, 1);
	mvStack.Rotate(_transformInfo.rotation, 0, 0, 1);

	M3DMatrix44f* mvMatrix = (M3DMatrix44f*)transformPipeline.GetModelViewMatrix();

	memcpy(_transformInfo.mv, mvMatrix, sizeof(M3DMatrix44f));

	if (_texture != nullptr){
		_texture->use();
		glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

		M3DVector4f color = { 1, 1, 1, _alpha };
		shaderManager.UseStockShader(GLT_SHADER_TEXTURE_REPLACE, transformPipeline.GetModelViewProjectionMatrix(), 0, color);
		_triangleBatch.Draw();
	}

	for (size_t i = 0; i < _childrens.size(); i++)
	{
		SLNode* node = _childrens[i];
		node->draw(mvStack, transformPipeline, shaderManager);
	}
	mvStack.PopMatrix();

	this->afterRender(1);
}

void SLNode::setPosition(float x, float y){
	_transformInfo.tanslateX = x;
	_transformInfo.tanslateY = y;
}

void SLNode::setScale(float x, float y){
	_transformInfo.scaleX = x;
	_transformInfo.scaleY = y;
}

void SLNode::setRotation(float value){
	_transformInfo.rotation = value;
}

float SLNode::getRotation(){
	return _transformInfo.rotation;
}

void SLNode::addChild(SLNode* value){
	if (value == nullptr)
		return;

	if (value->getParent() != nullptr)
		return;

	value->setParent(this);
	_childrens.push_back(value);
}

void SLNode::removeChild(SLNode* value){
	printf("%d removeChild\r\n", _tag);

	for (size_t i = 0; i < _childrens.size(); i++)
	{
		SLNode* node = _childrens[i];
		if (node == value){
			_childrens.erase(_childrens.begin() + i);
			node->setParent(nullptr);
			node->removeAll();
			delete node;
			break;
		}
	}
}

void SLNode::removeSelf(){
	_parent->removeChild(this);
}

void SLNode::removeAll(){
	for (size_t i = 0; i < _childrens.size();)
	{
		SLNode* node = _childrens[i];
		node->removeSelf();
	}
}

void SLNode::setParent(SLNode* value){
	_parent = value;
	_isRunning = !(value == nullptr);
}

SLNode*  SLNode::getParent(){
	return _parent;
}

void SLNode::setAlpha(float alpha){
	_alpha = alpha;
	if (_texture == nullptr)
		return;

	//this->setTexture(_texture);
}

float SLNode::getAlpha(){
	return this->_alpha;
}

SLNode::SLNode()
{
	_tag = -1;
	this->_init();
}

SLNode::SLNode(int tag)
{
	_tag = tag;
	this->_init();
}

SLNode::~SLNode()
{
	printf("%d ~SLNode\r\n", _tag);
	_childrens.clear();
	_parent = nullptr;
}

void SLNode::_init(){
	_texture = nullptr;
	_isRunning = false;
	_alpha = 1.0f;

	_centralityX = 0.0f;
	_centralityY = 0.0f;
}