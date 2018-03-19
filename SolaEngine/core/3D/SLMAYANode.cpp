/**
	create by hy 20171213
	*/
#include "SLMAYANode.h"
#include "../../core/misc/SLString.h"
#include "../../core/misc/SLFileUtils.h"
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <map>
#include "../../events/TouchEvent.h"

void SLMAYANode::_createBones(string& s, istringstream& in, ifstream& ifs){
	string tmp_str;
	string name;
	string parent;
	bool hasParent = false;

	in >> tmp_str;
	in >> name;
	in >> tmp_str;
	if (tmp_str == "-p"){
		hasParent = true;
		in >> parent;
	}

	//load translate;
	getline(ifs, s);
	Vec3 translate;
	istringstream translate_in(s);
	translate_in >> tmp_str;
	translate_in >> tmp_str;
	translate_in >> tmp_str;
	translate_in >> tmp_str;
	translate_in >> translate.x;
	translate_in >> translate.y;
	translate_in >> translate.z;

	//load rotation;
	getline(ifs, s);
	Vec3 rotation;
	istringstream rotation_in(s);
	rotation_in >> tmp_str;
	rotation_in >> tmp_str;
	rotation_in >> tmp_str;
	rotation_in >> tmp_str;
	rotation_in >> rotation.x;
	rotation_in >> rotation.y;
	rotation_in >> rotation.z;

	//load scale;
	getline(ifs, s);
	Vec3 scale;
	istringstream scale_in(s);
	scale_in >> tmp_str;
	scale_in >> tmp_str;
	scale_in >> tmp_str;
	scale_in >> tmp_str;
	scale_in >> scale.x;
	scale_in >> scale.y;
	scale_in >> scale.z;

	SLBone* bone = new SLBone();
	name = SLString::replace(name, "\"", "");
	name = SLString::replace(name, ";", "");
	bone->setName(name);
	_bones[name] = bone;

	bone->setPosition(-translate.x, translate.y, translate.z);
	bone->setRotation(rotation.x, 1, 0, 0);
	bone->setRotation(-rotation.y, 0, 1, 0);
	bone->setRotation(-rotation.z, 0, 0, 1);
	bone->setScale(scale.x, scale.y, scale.z);

	printf("%s %f %f %f   %f %f %f  %f %f %f \n",
		name.c_str(),
		translate.x, translate.y, translate.z,
		rotation.x, rotation.y, rotation.z,
		scale.x, scale.y, scale.z
		);

	if (!hasParent){
		this->addChild(bone);
		bone->setParentBone(nullptr);
	}
	else{
		parent = SLString::replace(parent, "\"", "");
		parent = SLString::replace(parent, ";", "");
		vector<string> parents = SLString::split(parent, "|");

		auto parent_bone = _bones[parents.back()];
		bone->setParentBone(parent_bone);

		printf((parents.back() + "\n").c_str());
	}
}

void SLMAYANode::_createAnimation(string& s, istringstream& in, ifstream& ifs){
	string tmp_str;
	in >> tmp_str;

	string name;
	in >> name;
	name = SLString::replace(name, "\"", "");
	name = SLString::replace(name, ";", "");
	name = SLString::replace(name, " ", "_");

	//skip head
	name=SLString::replace(name,"_translateX","");
	if (name == ""){
		for (int i = 0; i < 44; i++){
			getline(ifs, s);
		}

		return;
	}
	
	auto  names = SLString::split(name, "/");
	auto bone = _bones.find(names.back());
	if (bone == _bones.end()){
		printf("can't find bone %s",name.c_str());
		return;
	}

	MayaAnimation animation;
	animation.bone = bone->second;

	string tmpPosStr;
	//deal _translateX
	string txStr;

	getline(ifs, txStr);
	getline(ifs, txStr);
	getline(ifs, txStr);
	istringstream txin(txStr);
	txin >> tmpPosStr >> tmpPosStr >> tmpPosStr;
	int totalFrameCount = atoi(tmpPosStr.c_str());
	txin >> tmpPosStr;
	getline(ifs, s);
	//end _translateX

	//deal _translateY=====
	string tyStr;

	getline(ifs, tyStr);
	getline(ifs, tyStr);
	getline(ifs, tyStr);
	getline(ifs, tyStr);
	istringstream tyin(tyStr);
	tyin >> tmpPosStr >> tmpPosStr >> tmpPosStr >> tmpPosStr;

	getline(ifs, s);
	//end _translateY=====

	//deal _translateZ=====
	string tzStr;

	getline(ifs, tzStr);
	getline(ifs, tzStr);
	getline(ifs, tzStr);
	getline(ifs, tzStr);
	istringstream tzin(tzStr);
	tzin >> tmpPosStr >> tmpPosStr >> tmpPosStr >> tmpPosStr;

	getline(ifs, s);
	//end _translateZ=====

	//deal rotationX=====
	string rxStr;

	getline(ifs, rxStr);
	getline(ifs, rxStr);
	getline(ifs, rxStr);
	getline(ifs, rxStr);
	istringstream rxin(rxStr);
	rxin >> tmpPosStr >> tmpPosStr >> tmpPosStr >> tmpPosStr;

	getline(ifs, s);
	//end rotationX=====

	//deal rotationY=====
	string ryStr;

	getline(ifs, ryStr);
	getline(ifs, ryStr);
	getline(ifs, ryStr);
	getline(ifs, ryStr);
	istringstream ryin(ryStr);
	ryin >> tmpPosStr >> tmpPosStr >> tmpPosStr >> tmpPosStr;

	getline(ifs, s);
	//end rotationY=====

	//deal rotationZ=====
	string rzStr;

	getline(ifs, rzStr);
	getline(ifs, rzStr);
	getline(ifs, rzStr);
	getline(ifs, rzStr);
	istringstream rzin(rzStr);
	rzin >> tmpPosStr >> tmpPosStr >> tmpPosStr >> tmpPosStr;

	getline(ifs, s);
	//end rotationZ=====

	//deal scaleX=====
	string sxStr;

	getline(ifs, sxStr);
	getline(ifs, sxStr);
	getline(ifs, sxStr);
	getline(ifs, sxStr);
	istringstream sxin(sxStr);
	sxin >> tmpPosStr >> tmpPosStr >> tmpPosStr >> tmpPosStr;

	getline(ifs, s);
	//end scaleX=====

	//deal scaleY=====
	string syStr;

	getline(ifs, syStr);
	getline(ifs, syStr);
	getline(ifs, syStr);
	getline(ifs, syStr);
	istringstream syin(syStr);
	syin >> tmpPosStr >> tmpPosStr >> tmpPosStr >> tmpPosStr;

	getline(ifs, s);
	//end scaleY=====

	//deal scaleZ=====
	string szStr;

	getline(ifs, szStr);
	getline(ifs, szStr);
	getline(ifs, szStr);
	getline(ifs, szStr);
	istringstream szin(szStr);
	szin >> tmpPosStr >> tmpPosStr >> tmpPosStr >> tmpPosStr;

	getline(ifs, s);
	//end scaleZ=====

	//deal animation
	for (int curFrame = 0; curFrame < totalFrameCount; curFrame++){
		SLTransformInfo tinfo;
		float tmp;

		//translate
		txin >> tmp >> tmp;
		tinfo.tanslateX = tmp;
		tyin >> tmp >> tmp;
		tinfo.tanslateY = tmp;
		tzin >> tmp >> tmp;
		tinfo.tanslateZ = tmp;
		
		//rotation
		rxin >> tmp >> tmp;
		tinfo.rotationX = tmp;
		ryin >> tmp >> tmp;
		tinfo.rotationY = tmp;
		rzin >> tmp >> tmp;
		tinfo.rotationZ = tmp;
		
		//scale
		sxin >> tmp >> tmp;
		tinfo.scaleX = tmp;
		syin >> tmp >> tmp;
		tinfo.scaleY = tmp;
		szin >> tmp >> tmp;
		tinfo.scaleZ = tmp;

		animation.info.push_back(tinfo);
	}

	_animation.push_back(animation);
}

void SLMAYANode::load(string file){
	SLFileUtils* slfu = SLFileUtils::getInstance();
	ifstream ifs(slfu->getFullPatch(file).c_str());
	string s;
	int line = 0;
	while (getline(ifs, s))
	{
		line++;
		//skip head
		if (line < 64)
			continue;

		istringstream in(s);
		//read name and parent;
		string head;
		in >> head;

		if (head == "createNode"){
			string node_type;
			in >> node_type;

			//create bone
			if (node_type == "transform" || node_type == "joint"){
				this->_createBones(s, in, ifs);
			}

	/*		printf((node_type + "\n").c_str());*/
			//create animation
			if (node_type == "animCurveTL" || node_type == "animCurveTU" || node_type == "animCurveTA"){
				this->_createAnimation(s, in, ifs);
			}
			//printf((tmp_str + "\n").c_str());
		}

		//printf((s+"\n").c_str());
	}
};

void SLMAYANode::playAnimation(){
	_animationIndex = 0;
	EventHandler c = [this](void* data){
		if (_animationIndex >= this->_animation[0].info.size()){
			_animationIndex = 0;
		}

		for (auto boneAni : _animation){
			auto tInfo = boneAni.info[_animationIndex];
			auto bone = boneAni.bone;

			bone->setPosition(tInfo.tanslateX, tInfo.tanslateY, tInfo.tanslateZ);
			bone->setRotation(tInfo.rotationX, 1, 0, 0);
			bone->setRotation(tInfo.rotationY, 0,1, 0);
			bone->setRotation(tInfo.rotationZ, 0, 0, 1);
			bone->setScale(tInfo.scaleX, tInfo.scaleY, tInfo.scaleZ);
		}

		_animationIndex++;
	};

	BaseHandler* updateHnadler = new BaseHandler(c);
	TouchEvent* event = TouchEvent::getInstance();
	event->addEventListener(TouchEvent::EVENT_ON_NODE_UPDATED, updateHnadler);
}