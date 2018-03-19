#ifndef __SLFBXNode_h__
#define __SLFBXNode_h__

#include <vector>
#include <math.h>
#include <math3d.h>
#include "SLNode3d.h"
#include "SLBone.h"

using namespace std;
#define MAX_BONES                2   /**骨骼数*/
#define MAX_MESHES              3   /**网格数，即基本图元数(纹理贴图后的皮肤)*/
#define MAX_MESH_POINTS    4   /**一个网格顶点数，即四边形*/

class SLFBXNode :public SLNode3d
{
public:
	void load();
	virtual void onDraw(GLMatrixStack &mvStack, GLGeometryTransform &transformPipeline);

	Vec4 trans;                       /**< 用于平移骨骼模型 */
	SLBone bones[MAX_BONES];            /**< 保存骨骼结构 */
	Mat4 displayBones[MAX_BONES];     /**< 用于绘制骨骼 */
	//SLBoneVertex modelPoints[MAX_MESHES * MAX_MESH_POINTS]; /**< 模型顶点数据，即皮肤顶点 */

	void updateBones();
};

#endif