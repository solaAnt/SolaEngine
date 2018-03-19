/**
	create by hy 20161117
	*/
#include "SLNode3d.h"
#include "../../core/render/SLMatrixStack.h"

Vec3 SLNode3d::covWtn(Vec3 wp){
	Mat4 mat = this->getNtwTransform().getInversed();
	Vec3 ret;
	mat.transformPoint(wp, &ret);

	return ret;
}

Vec3 SLNode3d::covNtw(Vec3 np){
	Mat4 mat = this->getNtwTransform();

	Vec3 ret;
	mat.transformPoint(np, &ret);

	return ret;
}

Mat4 SLNode3d::getNtpTransform(){
	SLTransformInfo info = _transformInfo;

	Vec3 tl(info.tanslateX, info.tanslateY, info.tanslateZ);
	Mat4 mat;
	mat.translate(tl);

	mat.rotateX((info.rotationX));
	mat.rotateY((info.rotationY));
	mat.rotateZ((info.rotationZ));

	Vec3 t2(info.scaleX, info.scaleY, info.scaleZ);
	mat.scale(t2);
	return mat;
}


Mat4 SLNode3d::getNtwTransform(){
	Mat4 mat = this->getNtpTransform();

	for (SLNode3d* p = _parent; p != nullptr; p = p->getParent())
	{
		Mat4 mat44 = p->getNtpTransform();
		mat = mat44*mat;
	}

	return mat;
}

void SLNode3d::beforeRender(float dt){
}

void SLNode3d::afterRender(float dt){
	void* data = (void*)&dt;
	this->dispathEvent(BaseEvent::EVENT_ON_NODE_UPDATED, data);
}

void SLNode3d::draw(GLMatrixStack &mvStack, GLGeometryTransform &transformPipeline){
	this->beforeRender(1);

	//mvStack.PushMatrix();
	//mvStack.Translate(_transformInfo.tanslateX, _transformInfo.tanslateY, _transformInfo.tanslateZ);
	//mvStack.Scale(_transformInfo.scaleX, _transformInfo.scaleY, _transformInfo.scaleZ);

	//mvStack.Rotate(_transformInfo.rotationX, 1, 0, 0);
	//mvStack.Rotate(_transformInfo.rotationY, 0, 1, 0);
	//mvStack.Rotate(_transformInfo.rotationZ, 0, 0, 1);
	glPushMatrix();
	glTranslatef(_transformInfo.tanslateX, _transformInfo.tanslateY, _transformInfo.tanslateZ);

	glRotatef(_transformInfo.rotationY, 0, 1, 0);
	glRotatef(_transformInfo.rotationX, 1, 0, 0);
	glRotatef(_transformInfo.rotationZ, 0, 0, 1);


	glScalef(_transformInfo.scaleX, _transformInfo.scaleY, _transformInfo.scaleZ);

	this->onDraw(mvStack,transformPipeline);

	for (size_t i = 0; i < _childrens.size(); i++)
	{
		SLNode3d* node = _childrens[i];
		node->draw(mvStack, transformPipeline);
	}
	//mvStack.PopMatrix();
	glPopMatrix();
	this->afterRender(1);
}
void SLNode3d::onDraw(GLMatrixStack &mvStack, GLGeometryTransform &transformPipeline){
	//M3DMatrix44f* mvMatrix = (M3DMatrix44f*)transformPipeline.GetModelViewMatrix();

	//memcpy(_transformInfo.mv, mvMatrix, sizeof(M3DMatrix44f));

	//_texture->use();
	//glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	
	glShadeModel(GL_SMOOTH);
	this->_shader->use();
	_initShaderUniform();

	//this->_shader->setUniformMat44(string("mvpMatrix"), (M3DMatrix44f*) transformPipeline.GetModelViewProjectionMatrix());
	//this->_shader->setUniformMat44(string("mvpMatrix"), (M3DMatrix44f*)mvp);
	//this->_shader->setUniformTex(string("textureUnit0"), 0, _texture);
	//this->_shader->setUniformVec4(string("uColor"), (M3DMatrix44f*)transformPipeline.GetModelViewProjectionMatrix());
	//glUseProgram(0);
	_triangleBatch.Draw();
}
void SLNode3d::setPosition(float x, float y, float z){
	_transformInfo.tanslateX = x;
	_transformInfo.tanslateY = y;
	_transformInfo.tanslateZ = z;
}

void SLNode3d::setScale(float x, float y, float z){
	_transformInfo.scaleX = x;
	_transformInfo.scaleY = y;
	_transformInfo.scaleZ = z;
}

void SLNode3d::setRotation(float value, float x, float y, float z){
	if (x != 0){
		_transformInfo.rotationX = value;
	}
	if (y != 0){
		_transformInfo.rotationY = value;
	}
	if (z != 0){
		_transformInfo.rotationZ = value;
	}
}

void SLNode3d::addChild(SLNode3d* value){
	if (value == nullptr)
		return;

	if (value->getParent() != nullptr)
		return;

	value->setParent(this);
	_childrens.push_back(value);
}

void SLNode3d::removeChild(SLNode3d* value){
	//printf("%d removeChild\r\n", _tag);

	for (size_t i = 0; i < _childrens.size(); i++)
	{
		SLNode3d* node = _childrens[i];
		if (node == value){
			_childrens.erase(_childrens.begin() + i);
			node->setParent(nullptr);
			node->removeAll();
			delete node;
			break;
		}
	}
}

void SLNode3d::removeSelf(){
	_parent->removeChild(this);
}

void SLNode3d::removeAll(){
	for (size_t i = 0; i < _childrens.size();)
	{
		SLNode3d* node = _childrens[i];
		node->removeSelf();
	}
}

void SLNode3d::setParent(SLNode3d* value){
	_parent = value;
	_isRunning = !(value == nullptr);
}

SLNode3d*  SLNode3d::getParent(){
	return _parent;
}

SLNode3d::SLNode3d()
{
	_tag = -1;
	this->_init();
}

SLNode3d::~SLNode3d()
{
	//printf("%d ~SLNode\r\n", _tag);
	_childrens.clear();
	_parent = nullptr;
}

#include "../../Launcher.h"
#include "../../managers/SLShaderManager.h"

void SLNode3d::_initShaderUniform(){
	float mv[16];
	glGetFloatv(GL_MODELVIEW_MATRIX, mv);

	float pm[16];
	glGetFloatv(GL_PROJECTION_MATRIX, pm);

	this->_shader->setUniformMat44(string("mvMatrix"), (M3DMatrix44f*)mv);
	this->_shader->setUniformMat44(string("pMatrix"), (M3DMatrix44f*)pm);
	this->_shader->setUniformMat44(string("object2world"), (M3DMatrix44f*)(getNtpTransform().getInversed()).m);
	//printf("asd");
}

void SLNode3d::_init(){
	SLShaderManager* smgr = SLShaderManager::getInstance();
	_shader = smgr->addShader(string("test3d"));

	_isRunning = false;
	//if (true){ return; }

	//_triangleBatch.Reset();
	//_triangleBatch.Begin(GL_TRIANGLE_STRIP, 4);

	//float testf =1.0f;
	////lb
	////_triangleBatch.MultiTexCoord2f(0, 0.0f, 0.0f);
	//_triangleBatch.Color4f(1, 1, 1, 1);
	//_triangleBatch.Vertex3f(-testf, -testf, 0);

	////rb
	////_triangleBatch.MultiTexCoord2f(0, 1.0f, 0.0f);
	//_triangleBatch.Color4f(1, 1, 1, 1);
	//_triangleBatch.Vertex3f(testf, -testf, 0);

	////lt
	////_triangleBatch.MultiTexCoord2f(0, 0.0f, 1.0f);
	//_triangleBatch.Color4f(1, 1, 1, 1);
	//_triangleBatch.Vertex3f(-testf, testf, 0);

	////rt
	////_triangleBatch.MultiTexCoord2f(0, 1.0f, 1.0f);
	//_triangleBatch.Color4f(1, 1, 1, 1);
	//_triangleBatch.Vertex3f(testf, testf, 0);

	//_triangleBatch.End();
}