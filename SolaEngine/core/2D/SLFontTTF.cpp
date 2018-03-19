/**
	create by hy 20171213
	*/
#include "SLFontTTF.h"
#include "SLFreetype.h"

void SLFontTTF::setContent(wstring& content, int size, Vec4 color){
	//wchar_t* contentond=_content;
	_fontSize = size;
	_fontColor = color;
	_content = content;
}

void SLFontTTF::onDraw(GLMatrixStack &mvStack, GLGeometryTransform &transformPipeline){
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	_shader->use();
	_shader->setUniformMat44(string("mvMatrix"), (M3DMatrix44f*)transformPipeline.GetModelViewMatrix());
	_shader->setUniformMat44(string("pMatrix"), (M3DMatrix44f*)transformPipeline.GetProjectionMatrix());

	SLFontManager* fmgr = SLFontManager::getInstance();
	int font = fmgr->char_font;
	if (!font)
		return;

	CFontManager* cfmgr= fmgr->getInstance()->getFontMgr();
	int tall = cfmgr->getFontTall(font);
	int x = 0;
	int y = -3;

	int dx = x;
	int dy = y;

	GLuint sglt = 0;

	wchar_t* content = const_cast<wchar_t*>(_content.c_str());
	while (*content)
	{
		if (*content == L'\n')
		{
			content++;
			dx = x;
			dy += tall + 2;    //row spacing
			continue;
		}

		int cw, ct, bx, by, av;
		GLuint glt;
		float crd[4];

		if (!cfmgr->getCharInfo(font, *content, &cw, &ct, &bx, &by, &av, &glt, crd))
		{
			content++;
			continue;
		}

		//大多数情况下多个字符都在同一个纹理中，避免频繁绑定纹理，可以提高效率
		if (glt != sglt)
		{
			//glBindTexture(GL_TEXTURE_2D, glt);
			//GLint tmpId = glGetUniformLocation(_shader->_id, "textureUnit0");
			//glUniform1i(tmpId, 0);
			_shader->setUniformTex(string("textureUnit0"), 0, glt);
			sglt = glt;

			if (vertexAttr.size() > 0){
				GLBatch batch;
				int vertexSize = vertexAttr.size() / 6;
				batch.Reset();
				batch.Begin(GL_QUADS, vertexSize, 1);

				for (int i = 0; i < vertexAttr.size(); i += 6){
					batch.Color4f(_fontColor.x, _fontColor.y, _fontColor.z, _fontColor.w);
					batch.MultiTexCoord2f(vertexAttr[i], vertexAttr[i + 1], vertexAttr[i + 2]);
					batch.Vertex3f(vertexAttr[i + 3], vertexAttr[i + 4], vertexAttr[i + 5]);
				}
				batch.End();
				batch.Draw();

				vertexAttr.clear();
			}
		}

		int px = dx + bx;
		int py = dy - by;

		//_triangleBatch.Reset();
		//_triangleBatch.Begin(GL_QUADS, 4, 1);

		vertexAttr.push_back(0);
		vertexAttr.push_back(crd[0]);
		vertexAttr.push_back(crd[3]);
		vertexAttr.push_back(px);
		vertexAttr.push_back(py);
		vertexAttr.push_back(0);
		//_triangleBatch.MultiTexCoord2f(0, crd[0], crd[3]);
		//_triangleBatch.Color4f(1, 0, 0, 1);
		//_triangleBatch.Vertex3f(px, py, 0);



		vertexAttr.push_back(0);
		vertexAttr.push_back(crd[2]);
		vertexAttr.push_back(crd[3]);
		vertexAttr.push_back(px + cw);
		vertexAttr.push_back(py);
		vertexAttr.push_back(0);
		//_triangleBatch.MultiTexCoord2f(0, crd[2], crd[3]);
		//_triangleBatch.Color4f(1, 0, 0, 1);
		//_triangleBatch.Vertex3f(px + cw, py, 0);

		vertexAttr.push_back(0);
		vertexAttr.push_back(crd[2]);
		vertexAttr.push_back(crd[1]);
		vertexAttr.push_back(px + cw);
		vertexAttr.push_back(py + ct);
		vertexAttr.push_back(0);

		//_triangleBatch.MultiTexCoord2f(0, crd[2], crd[1]);
		//_triangleBatch.Color4f(1, 0, 0, 1);
		//_triangleBatch.Vertex3f(px + cw, py + ct, 0);


		vertexAttr.push_back(0);
		vertexAttr.push_back(crd[0]);
		vertexAttr.push_back(crd[1]);
		vertexAttr.push_back(px);
		vertexAttr.push_back(py + ct);
		vertexAttr.push_back(0);
		//_triangleBatch.MultiTexCoord2f(0, crd[0], crd[1]);
		//_triangleBatch.Color4f(1, 0, 0, 1);
		//_triangleBatch.Vertex3f(px, py + ct, 0);

		//_triangleBatch.End();
		//_triangleBatch.Draw();

		//====================================
		//if (vertexAttr.size() > 0){
		//	int vertexSize = vertexAttr.size() / 6;
		//	_triangleBatch.Reset();
		//	_triangleBatch.Begin(GL_QUADS, vertexSize, 1);

		//	for (int i = 0; i < vertexAttr.size(); i += 6){
		//		_triangleBatch.Color4f(1, 0, 0, 1);
		//		_triangleBatch.MultiTexCoord2f(vertexAttr[i], vertexAttr[i + 1], vertexAttr[i+2]);
		//		_triangleBatch.Vertex3f(vertexAttr[i + 3], vertexAttr[i + 4], vertexAttr[i+5]);
		//	}
		//	_triangleBatch.End();
		//	_triangleBatch.Draw();

		//	vertexAttr.clear();
		//}
		dx += av;

		content++;
	}
}