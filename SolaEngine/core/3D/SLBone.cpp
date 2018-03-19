/**
	create by hy 20171213
	*/
#include "SLBone.h"

void SLBone::onDraw(GLMatrixStack &mvStack, GLGeometryTransform &transformPipeline){
	glUseProgram(0);

	for (size_t i = 0; i < _childrens.size(); i++)
	{
		SLNode3d* node = _childrens[i];
		SLTransformInfo sltif = node->getTransformInfo();
		GLBatch batch;

		batch.Reset();
		batch.Begin(GL_LINE_STRIP, 2, 1);

		batch.Color4f(1, 1, 1, 1);
		batch.Vertex3f(0, 0, 0);

		batch.Color4f(1, 1, 1, 1);
		batch.Vertex3f(sltif.tanslateX, sltif.tanslateY, sltif.tanslateZ);

		batch.End();
		batch.Draw();
	}
};