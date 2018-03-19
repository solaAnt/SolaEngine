/**
	create by hy 20171213
	*/
#include "SLFBXNode.h"

void SLFBXNode::load()
{
	//bones[0].SetBone(nullptr, 4.5f);
	//bones[1].SetBone(&bones[0], 4.5f);

	///** 绑定到骨骼上的皮肤顶点数据 */
	//modelPoints[0].SetVertex(Vec4(-1.0f, 0.0f, 0.0f), Vec4(0.0f, 0.0f, 1.0),
	//	0, 0, 0, 0, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1);
	//modelPoints[1].SetVertex(Vec4(1.0f, 0.0f, 0.0f), Vec4(0.0f, 0.0f, 1.0),
	//	0, 0, 0, 0, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1);
	//modelPoints[2].SetVertex(Vec4(1.0f, 3.0f, 0.0f), Vec4(0.0f, 0.0f, 1.0),
	//	0, 1, 0, 0, 0.50f, 0.50f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 2);
	//modelPoints[3].SetVertex(Vec4(-1.0f, 3.0f, 0.0f), Vec4(0.0f, 0.0f, 1.0),
	//	0, 1, 0, 0, 0.50f, 0.50f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 2);

	//modelPoints[4].SetVertex(Vec4(-1.0f, 3.0f, 0.0f), Vec4(0.0f, 0.0f, 1.0),
	//	0, 1, 0, 0, 0.50f, 0.50f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 2);
	//modelPoints[5].SetVertex(Vec4(1.0f, 3.0f, 0.0f), Vec4(0.0f, 0.0f, 1.0),
	//	0, 1, 0, 0, 0.50f, 0.50f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 2);
	//modelPoints[6].SetVertex(Vec4(1.0f, 6.0f, 0.0f), Vec4(0.0f, 0.0f, 1.0),
	//	0, 1, 0, 0, 0.35f, 0.65f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 2);
	//modelPoints[7].SetVertex(Vec4(-1.0f, 6.0f, 0.0f), Vec4(0.0f, 0.0f, 1.0),
	//	0, 1, 0, 0, 0.35f, 0.65f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 2);

	//modelPoints[8].SetVertex(Vec4(-1.0f, 6.0f, 0.0f), Vec4(0.0f, 0.0f, 1.0),
	//	0, 1, 0, 0, 0.35f, 0.65f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 2);
	//modelPoints[9].SetVertex(Vec4(1.0f, 6.0f, 0.0f), Vec4(0.0f, 0.0f, 1.0),
	//	0, 1, 0, 0, 0.35f, 0.65f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 2);
	//modelPoints[10].SetVertex(Vec4(1.0f, 9.0f, 0.0f), Vec4(0.0f, 0.0f, 1.0),
	//	1, 0, 0, 0, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1);
	//modelPoints[11].SetVertex(Vec4(-1.0f, 9.0f, 0.0f), Vec4(0.0f, 0.0f, 1.0),
	//	1, 0, 0, 0, 1.0f, 0.0f, 0.0f, 0.0f, 1.0, 0.0f, 0.0f, 1.0f, 1);

}

void SLFBXNode::onDraw(GLMatrixStack &mvStack, GLGeometryTransform &transformPipeline)
{
	updateBones();

	//glUseProgram(0);
	//Mat4 mat;
	///** 渲染网格中的顶点，即绘制皮肤 */
	//for (int j = 0; j < MAX_MESHES; j++)
	//{
	//	glBegin(GL_QUADS);

	//	for (int i = 0; i < MAX_MESH_POINTS; i++)
	//	{
	//		///获得顶点指针
	//		auto thisVertex = &modelPoints[i + j * MAX_MESH_POINTS];

	//		///根据权值计算顶点
	//		Vec4 pos = Vec4(0.0, 0.0, 0.0, 0.0);
	//		Vec4 normal = Vec4(0.0, 0.0, 0.0);

	//		for (int i2 = 0; i2 < thisVertex->numBones; i2++)
	//		{
	//			mat = bones[thisVertex->boneIndex[i2]].worldTransform;

	//			///加权骨骼对顶点位置和法线的影响
	//			pos += (mat*thisVertex->pos * thisVertex->weights[i2]);
	//			normal += (mat*thisVertex->normal *thisVertex->weights[i2]);
	//		}

	//		///渲染该顶点
	//		glColor4f(thisVertex->r, thisVertex->g, thisVertex->b, thisVertex->a);
	//		glNormal3f(normal.x, normal.y, normal.z);
	//		glVertex3f(pos.x, pos.y, pos.z);
	//	}

	//	glEnd();
	//}
}

void SLFBXNode::updateBones()
{
	/** 用于保存旋转和平移矩阵 */
	//Mat4 transpose, rotTemp1, rotTemp2, tempRelative;

	///** 循环更新骨骼 */
	//for (int i = 0; i < MAX_BONES; i++)
	//{
	//	///检查是否是根骨骼
	//	if (bones[i].parent == nullptr)
	//	{
	//		/** 设置变换矩阵 */
	//		bones[i].localTransform.translate(0,0,0);
	//		bones[i].worldTransform = this->getNtwTransform();

	//		/** 赋值，为了显示骨骼 */
	//		displayBones[i] = bones[i].localTransform;
	//	}
	//	else
	//	{
	//		auto parent = &bones[bones[i].parent->index];
	//		auto thisBone = &bones[i];

	//		thisBone->localTransform.setIdentity();

	//		/** 移动该骨骼到父结点骨骼(绕父骨骼转) */

	//		thisBone->localTransform.translate(0, parent->length * i, 0);

	//		/** 根据鼠标旋转 */
	//		//rotTemp1.Rotate(xRotation, 0, 1, 0);
	//		//rotTemp2.Rotate(yRotation, 0, 0, 1);

	//		/** 保存相对变换矩阵，并反转 */
	//		tempRelative = thisBone->localTransform;
	//		//tempRelative.inverseTranslate();

	//		/** 保存变换，为了显示骨骼 */
	//		displayBones[i] = parent->worldTransform * thisBone->localTransform;
	//			//*(rotTemp1 * rotTemp2);

	//		/** 计算相对变换矩阵 */
	//	//	bones[i].relative = bones[i].relative * (rotTemp1 * rotTemp2) * tempRelative;

	//		/** 计算绝对变换矩阵 */
	//		thisBone->worldTransform = parent->worldTransform * thisBone->localTransform;
	//	}
	//}
}