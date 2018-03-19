#ifndef __SLMAYANode_h__
#define __SLMAYANode_h__

#include <vector>
#include <math.h>
#include <math3d.h>
#include "../../extends/math/Mat4.h"
#include "SLNode3d.h"
#include "SLBone.h"

using namespace std;

class SLMAYANode :public SLNode3d
{
private:
	class MayaAnimation{
		public:
			SLBone* bone;
			vector<SLTransformInfo> info;
	};

public:
	void load(string file);
	void playAnimation();

private:
	void _createBones(string& s, istringstream& in, ifstream& ifs);
	void _createAnimation(string& s, istringstream& in, ifstream& ifs);

	std::map<string, SLBone*> _bones;
	vector<MayaAnimation> _animation;
	int _animationIndex = 0;
};
#endif