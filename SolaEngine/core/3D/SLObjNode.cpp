/**
	create by hy 20171213
	*/
#include "SLObjNode.h"
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <GLTools.h>
#include "../../core/misc/SLFileUtils.h"
#include "../../managers/SLShaderManager.h"
#include "../../managers/SLTextureManager.h"

void SLObjNode::load(string& patch){
	SLFileUtils* slfu = SLFileUtils::getInstance();

	SLShaderManager* smgr = SLShaderManager::getInstance();
	_shader= smgr->addShader(string("test3d"));

	SLTextureManager* tmgr = SLTextureManager::getInstance();
	_texture = tmgr->addTexture(patch+".png");
	_maskTexture = tmgr->addTexture("testmask.png");

	ifstream ifs(slfu->getFullPatch(patch + ".obj").c_str());
	string s;
	Mian *f;
	POINT3 *v;
	FaXiangLiang *vn;
	WenLi    *vt;
	while (getline(ifs, s))
	{
		if (s.length() < 2)continue;
		if (s[0] == 'v'){
			if (s[1] == 't'){//vt 0.581151 0.979929 纹理
				istringstream in(s);
				vt = new WenLi();
				string head;
				in >> head >> vt->TU >> vt->TV;
				VT.push_back(*vt);
			}
			else if (s[1] == 'n'){//vn 0.637005 -0.0421857 0.769705 法向量
				istringstream in(s);
				vn = new FaXiangLiang();
				string head;
				in >> head >> vn->NX >> vn->NY >> vn->NZ;
				VN.push_back(*vn);
			}
			else{//v -53.0413 158.84 -135.806 点
				istringstream in(s);
				v = new POINT3();
				string head;
				in >> head >> v->X >> v->Y >> v->Z;
				V.push_back(*v);
			}
		}
		else if (s[0] == 'f'){//f 2443//2656 2442//2656 2444//2656 面
			for (int k = s.size() - 1; k >= 0; k--){
				if (s[k] == '/')s[k] = ' ';
			}
			istringstream in(s);
			f = new Mian();
			string head;
			in >> head;
			int i = 0;
			while (i < 3)
			{
				if (V.size() != 0)
				{
					in >> f->V[i];
					f->V[i] -= 1;
				}
				if (VT.size() != 0)
				{
					in >> f->T[i];
					f->T[i] -= 1;
				}
				if (VN.size() != 0)
				{
					in >> f->N[i];
					f->N[i] -= 1;
				}
				i++;
			}
			F.push_back(*f);
		}
	}

	//init batch
	_triangleBatch.Reset();
	_triangleBatch.Begin(GL_TRIANGLES, F.size() * 3, 1);

	for (int i = 0; i < F.size(); i++)
	{
		//!!!!!!vertex 一定要在最后！！！，用来划分批次
		_triangleBatch.MultiTexCoord2f(0,VT[F[i].T[0]].TU, VT[F[i].T[0]].TV);
		_triangleBatch.Color4f(1, 1, 1, 1);
		_triangleBatch.Normal3f(VN[F[i].N[0]].NX, VN[F[i].N[0]].NY, VN[F[i].N[0]].NZ);
		_triangleBatch.Vertex3f(V[F[i].V[0]].X, V[F[i].V[0]].Y , V[F[i].V[0]].Z);
		float nx = VN[F[i].N[0]].NX;
		float ny = VN[F[i].N[0]].NY;
		float nz = VN[F[i].N[0]].NZ;


		_triangleBatch.MultiTexCoord2f(0, VT[F[i].T[1]].TU, VT[F[i].T[1]].TV);
		_triangleBatch.Color4f(1, 1, 1, 1);
		_triangleBatch.Normal3f(VN[F[i].N[1]].NX, VN[F[i].N[1]].NY, VN[F[i].N[1]].NZ);
		_triangleBatch.Vertex3f(V[F[i].V[1]].X, V[F[i].V[1]].Y, V[F[i].V[1]].Z);

		float nx1 = VN[F[i].N[1]].NX;
		float ny1 = VN[F[i].N[1]].NY;
		float nz1 = VN[F[i].N[1]].NZ;


		_triangleBatch.MultiTexCoord2f(0, VT[F[i].T[2]].TU, VT[F[i].T[2]].TV);
		_triangleBatch.Color4f(1, 1, 1, 1);
		float nx2 = VN[F[i].N[2]].NX;
		float ny2 = VN[F[i].N[2]].NY;
		float nz2 = VN[F[i].N[2]].NZ;
		_triangleBatch.Normal3f(VN[F[i].N[2]].NX, VN[F[i].N[2]].NY, VN[F[i].N[2]].NZ);
		_triangleBatch.Vertex3f(V[F[i].V[2]].X, V[F[i].V[2]].Y, V[F[i].V[2]].Z);

	}

	_triangleBatch.End();
}

#include "../../Launcher.h"

void SLObjNode::onDraw(GLMatrixStack &mvStack, GLGeometryTransform &transformPipeline){
	_shader->use();
	_initShaderUniform();
	_shader->setUniformTex(string("textureUnit0"), 0, _texture);
	_shader->setUniformTex(string("textureUnit1"), 1, _maskTexture);
	_shader->setUniformFloat(string("flag"), Launcher::getInstance()->testcode);
	_triangleBatch.Draw();
}