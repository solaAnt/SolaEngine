//Maya ASCII 2016 scene
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 57 43 57 ;
	setAttr ".r" -type "double3" -28.076862662266123 44.999999999999986 8.9959671327898901e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".fcp" 1000;
	setAttr ".coi" 91.361917668140052;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 1000;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 1000;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 1000;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "qs";
	setAttr ".t" -type "double3" 0 0 0;
	setAttr ".r" -type "double3" 0 0 0;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode transform -n "Bip01" -p "|qs";
	setAttr ".t" -type "double3" 0.00025261 0.5802588 -0.2862737;
	setAttr ".r" -type "double3" 270 -89.99992 0;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode transform -n "Bip01_Footsteps" -p "|qs|Bip01";
	setAttr ".t" -type "double3" 0 0 -0.5802588;
	setAttr ".r" -type "double3" 0 0 -270.0001;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode transform -n "Dummy06" -p "|qs|Bip01|Bip01_Footsteps";
	setAttr ".t" -type "double3" -0.0001435478 0.02112358 0.04239567;
	setAttr ".r" -type "double3" 0 0 0;
	setAttr ".s" -type "double3" 0.3310716 0.3310716 0.3310716;
	setAttr ".ro" 2;
createNode transform -n "Dummy14" -p "|qs|Bip01|Bip01_Footsteps";
	setAttr ".t" -type "double3" -0.0001435478 0.0211235 1.961203;
	setAttr ".r" -type "double3" 0 0 0;
	setAttr ".s" -type "double3" 0.3310716 0.3310716 0.3310716;
	setAttr ".ro" 2;
createNode joint -n "Bip01_Pelvis" -p "|qs|Bip01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 0 0;
	setAttr ".r" -type "double3" 270 -89.99993 0;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_Spine" -p "|qs|Bip01|Bip01_Pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.08107959 0.03002741 3.078952E-08;
	setAttr ".r" -type "double3" -0.0002079697 -0.0001729396 -323.9672;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Thigh" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.08323102 0.02341213 0.09245199;
	setAttr ".r" -type "double3" 35.16547 -181.3732 -223.8327;
	setAttr ".s" -type "double3" 0.9999999 0.9999999 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Calf" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_L_Thigh";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.5058189 3.814697E-08 -3.814697E-08;
	setAttr ".r" -type "double3" 4.963334E-07 2.62147E-06 -100.7211;
	setAttr ".s" -type "double3" 1 0.9999999 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Foot" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_L_Thigh|Bip01_L_Calf";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.4698732 -5.722046E-08 3.814697E-08;
	setAttr ".r" -type "double3" 5.836369 -354.8107 -6.723374;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Toe0" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_L_Thigh|Bip01_L_Calf|Bip01_L_Foot";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.158354 0.08852983 -1.907349E-08;
	setAttr ".r" -type "double3" -2.00024E-06 0 -270;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode transform -n "Bip01_L_Toe0Nub" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_L_Thigh|Bip01_L_Calf|Bip01_L_Foot|Bip01_L_Toe0";
	setAttr ".t" -type "double3" 0.07019352 4.768371E-09 0;
	setAttr ".r" -type "double3" -2.449588E-22 2.00024E-06 -180;
	setAttr ".s" -type "double3" -1 -1 -1;
	setAttr ".ro" 2;
createNode transform -n "Dummy08" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_L_Thigh|Bip01_L_Calf|Bip01_L_Foot";
	setAttr ".t" -type "double3" 0.1279857 0.02499058 -0.005108395;
	setAttr ".r" -type "double3" 0 -90 -187.503;
	setAttr ".s" -type "double3" 0.3310716 0.3310716 0.3310716;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Thigh" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.08323102 0.02341263 -0.09245178;
	setAttr ".r" -type "double3" 348.8521 -175.2161 -233.8333;
	setAttr ".s" -type "double3" 0.9999999 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Calf" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_R_Thigh";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.5058188 0 0;
	setAttr ".r" -type "double3" 0 0 -116.0547;
	setAttr ".s" -type "double3" 0.9999999 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Foot" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_R_Thigh|Bip01_R_Calf";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.4698731 9.536743E-09 0;
	setAttr ".r" -type "double3" 19.79596 -1.979785 -333.9055;
	setAttr ".s" -type "double3" 0.9999999 0.9999998 0.9999999;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Toe0" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_R_Thigh|Bip01_R_Calf|Bip01_R_Foot";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.158354 0.08852986 2.384186E-09;
	setAttr ".r" -type "double3" 1.109906E-05 2.22763E-07 -270;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode transform -n "Bip01_R_Toe0Nub" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_R_Thigh|Bip01_R_Calf|Bip01_R_Foot|Bip01_R_Toe0";
	setAttr ".t" -type "double3" 0.07019354 1.192093E-09 -1.192093E-09;
	setAttr ".r" -type "double3" -8.14222E-13 -2.414808E-12 0;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode transform -n "Dummy07" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_R_Thigh|Bip01_R_Calf|Bip01_R_Foot";
	setAttr ".t" -type "double3" 0.1279857 0.02512478 0.006129299;
	setAttr ".r" -type "double3" -1.195283E-05 -90 -172.4972;
	setAttr ".s" -type "double3" 0.3310716 0.3310716 0.3310716;
	setAttr ".ro" 2;
createNode joint -n "Bip01_Spine1" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.09181305 -7.766723E-05 -1.42163E-05;
	setAttr ".r" -type "double3" 10.37325 -0.008351492 -0.000758597;
	setAttr ".s" -type "double3" 0.9999999 0.9999999 0.9999999;
	setAttr ".ro" 2;
createNode joint -n "Bip01_Spine2" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.09914108 -0.0001292038 -1.995087E-05;
	setAttr ".r" -type "double3" 8.771091 -0.007026554 -4.604995;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_Neck" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.1936594 -0.02719494 -1.907349E-08;
	setAttr ".r" -type "double3" 7.476481E-06 -4.771453E-05 -342.9645;
	setAttr ".s" -type "double3" 0.9999999 0.9999999 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_Head" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.06102432 7.629394E-08 -1.907349E-08;
	setAttr ".r" -type "double3" 3.207121 -356.134 -39.90843;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode transform -n "Bip01_HeadNub" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_Head";
	setAttr ".t" -type "double3" 0.1575988 0 0;
	setAttr ".r" -type "double3" -1.707548E-06 1.707547E-06 -4.268868E-07;
	setAttr ".s" -type "double3" 1 0.9999999 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Clavicle" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.06585701 -0.0003350067 0.0152277;
	setAttr ".r" -type "double3" 17.58865 -270 -179.9998;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_UpperArm" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.1112886 0 0;
	setAttr ".r" -type "double3" 13.22241 -289.0732 -6.402159;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Forearm" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.2121517 3.814697E-08 0;
	setAttr ".r" -type "double3" 2.41216E-06 -1.136739E-07 -47.69809;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Hand" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.2852316 3.814697E-08 -3.814697E-08;
	setAttr ".r" -type "double3" 291.7099 -54.13344 -6.943737;
	setAttr ".s" -type "double3" 0.9999999 1 0.9999999;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Finger0" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.02049216 0.01748447 -0.01983528;
	setAttr ".r" -type "double3" 36.83782 -188.3468 -226.9251;
	setAttr ".s" -type "double3" 0.9999996 1 0.9999994;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Finger01" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.05018112 0 1.907349E-08;
	setAttr ".r" -type "double3" 0 0 -345.6607;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Finger02" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger0|Bip01_L_Finger01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.0372266 0 9.536743E-09;
	setAttr ".r" -type "double3" 4.549432E-07 -2.520593E-06 -349.7688;
	setAttr ".s" -type "double3" 1 0.9999999 1;
	setAttr ".ro" 2;
createNode transform -n "Bip01_L_Finger0Nub" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger0|Bip01_L_Finger01|Bip01_L_Finger02";
	setAttr ".t" -type "double3" 0.0273148 0 9.536743E-09;
	setAttr ".r" -type "double3" 5.088889E-14 -8.537738E-07 3.415095E-06;
	setAttr ".s" -type "double3" 0.9999999 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Finger1" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.09545644 -0.003407631 -0.02751114;
	setAttr ".r" -type "double3" 358.6545 -353.3148 -345.8915;
	setAttr ".s" -type "double3" 0.9999997 0.9999993 1.000001;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Finger11" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.05426368 -3.814697E-08 1.907349E-08;
	setAttr ".r" -type "double3" 2.116718E-07 9.307831E-07 -346.2469;
	setAttr ".s" -type "double3" 0.9999999 0.9999999 0.9999999;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Finger12" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger1|Bip01_L_Finger11";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.02795137 3.814697E-08 -1.907349E-08;
	setAttr ".r" -type "double3" 8.096352E-07 1.728913E-06 -358.5283;
	setAttr ".s" -type "double3" 0.9999999 0.9999999 0.9999999;
	setAttr ".ro" 2;
createNode transform -n "Bip01_L_Finger1Nub" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger1|Bip01_L_Finger11|Bip01_L_Finger12";
	setAttr ".t" -type "double3" 0.02325443 -3.814697E-08 -1.907349E-08;
	setAttr ".r" -type "double3" -1.280661E-06 -1.280661E-06 1.707547E-06;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Finger2" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.101034 -0.004168091 -0.006480255;
	setAttr ".r" -type "double3" 346.2019 -6.308077 -325.6699;
	setAttr ".s" -type "double3" 1 0.9999999 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Finger21" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.05373657 0 -9.536743E-09;
	setAttr ".r" -type "double3" 0 0 -348.3571;
	setAttr ".s" -type "double3" 0.9999999 0.9999999 0.9999999;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Finger22" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger2|Bip01_L_Finger21";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.02753643 3.814697E-08 0;
	setAttr ".r" -type "double3" 2.518707E-06 6.314373E-07 -336.4637;
	setAttr ".s" -type "double3" 1 0.9999999 1;
	setAttr ".ro" 2;
createNode transform -n "Bip01_L_Finger2Nub" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger2|Bip01_L_Finger21|Bip01_L_Finger22";
	setAttr ".t" -type "double3" 0.02548393 -3.814697E-08 -1.907349E-08;
	setAttr ".r" -type "double3" -3.201651E-07 4.268869E-07 -8.537738E-07;
	setAttr ".s" -type "double3" 0.9999999 0.9999999 0.9999999;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Finger3" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.09922373 -2.388E-05 0.01604292;
	setAttr ".r" -type "double3" 348.9134 -8.578901 -318.2741;
	setAttr ".s" -type "double3" 1.000001 0.9999998 0.9999996;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Finger31" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.05304121 -7.629394E-08 0;
	setAttr ".r" -type "double3" 2.063767E-07 5.446775E-08 -345.2154;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Finger32" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger3|Bip01_L_Finger31";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.02503864 0 0;
	setAttr ".r" -type "double3" -2.132428E-07 -6.061334E-07 -331.0159;
	setAttr ".s" -type "double3" 0.9999999 1 1;
	setAttr ".ro" 2;
createNode transform -n "Bip01_L_Finger3Nub" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger3|Bip01_L_Finger31|Bip01_L_Finger32";
	setAttr ".t" -type "double3" 0.02174839 -3.814697E-08 1.907349E-08;
	setAttr ".r" -type "double3" 3.868662E-07 0 0;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Finger4" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.09225868 0.006311149 0.03442449;
	setAttr ".r" -type "double3" 352.027 -14.10187 -315.7439;
	setAttr ".s" -type "double3" 1 1.000001 0.9999999;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Finger41" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.04196907 0 0;
	setAttr ".r" -type "double3" 2.582082E-07 7.228318E-08 -338.6503;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_L_Finger42" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger4|Bip01_L_Finger41";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.02057209 -3.814697E-08 1.907349E-08;
	setAttr ".r" -type "double3" -3.333672E-07 -8.62148E-08 -336.5851;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode transform -n "Bip01_L_Finger4Nub" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger4|Bip01_L_Finger41|Bip01_L_Finger42";
	setAttr ".t" -type "double3" 0.01514088 0 1.907349E-08;
	setAttr ".r" -type "double3" 8.337634E-08 -2.668043E-08 -1.481061E-24;
	setAttr ".s" -type "double3" 0.9999999 0.9999999 1;
	setAttr ".ro" 2;
createNode transform -n "Dummy10" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand";
	setAttr ".t" -type "double3" 0.04087423 0.008716049 0.01384565;
	setAttr ".r" -type "double3" 33.47602 -85.33202 -82.84738;
	setAttr ".s" -type "double3" 0.3310716 0.3310716 0.3310716;
	setAttr ".ro" 2;
createNode transform -n "Dummy03" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle";
	setAttr ".t" -type "double3" 0.1027363 0.0928527 -0.0145359;
	setAttr ".r" -type "double3" 75.26834 -179.9997 -179.9997;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode transform -n "Bone13" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Dummy03";
	setAttr ".t" -type "double3" -3.814697E-08 0 -1.525879E-07;
	setAttr ".r" -type "double3" 345.772 -5.21951 -59.66185;
	setAttr ".s" -type "double3" 0.9999999 1 1;
	setAttr ".ro" 2;
createNode transform -n "Bone14" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Dummy03|Bone13";
	setAttr ".t" -type "double3" 0.5597713 -1.144409E-07 7.629394E-08;
	setAttr ".r" -type "double3" 0 0 -3.415095E-06;
	setAttr ".s" -type "double3" 0.9999999 1 1;
	setAttr ".ro" 2;
createNode transform -n "Point02" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Dummy03";
	setAttr ".t" -type "double3" 0.01103458 -0.01487072 0.05158371;
	setAttr ".r" -type "double3" 15.74334 -347.9255 -51.73149;
	setAttr ".s" -type "double3" 0.9999999 1 0.9999999;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Clavicle" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.06585701 -0.0003349304 -0.01522783;
	setAttr ".r" -type "double3" 342.9189 -89.99995 -200.6155;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_UpperArm" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.1112886 0 0;
	setAttr ".r" -type "double3" 1.142257 -63.17312 -62.09914;
	setAttr ".s" -type "double3" 1 0.9999999 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Forearm" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.2121518 0 0;
	setAttr ".r" -type "double3" -3.400031E-06 -4.528587E-06 -139.9695;
	setAttr ".s" -type "double3" 0.9999999 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Hand" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.2852316 1.192093E-09 0;
	setAttr ".r" -type "double3" 55.03342 -354.2832 -83.42349;
	setAttr ".s" -type "double3" 1 1 0.9999999;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Finger0" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.02049216 0.01748451 0.01983527;
	setAttr ".r" -type "double3" 323.1622 -171.6533 -226.9251;
	setAttr ".s" -type "double3" 0.9999996 0.9999999 0.9999992;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Finger01" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.05018112 -3.814697E-08 0;
	setAttr ".r" -type "double3" 2.112722E-06 3.180408E-06 -330.1609;
	setAttr ".s" -type "double3" 1 0.9999999 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Finger02" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger0|Bip01_R_Finger01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.03722656 7.629394E-08 0;
	setAttr ".r" -type "double3" -1.528748E-06 -1.143493E-06 -349.7688;
	setAttr ".s" -type "double3" 1 0.9999999 1;
	setAttr ".ro" 2;
createNode transform -n "Bip01_R_Finger0Nub" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger0|Bip01_R_Finger01|Bip01_R_Finger02";
	setAttr ".t" -type "double3" 0.0273148 0 0;
	setAttr ".r" -type "double3" -1.707547E-06 -8.537737E-07 -180;
	setAttr ".s" -type "double3" -1 -1 -1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Finger1" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.09545647 -0.003407593 0.02751114;
	setAttr ".r" -type "double3" 7.145149 -9.172034 -293.2565;
	setAttr ".s" -type "double3" 0.9999996 0.9999992 1.000001;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Finger11" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.05426361 0 0;
	setAttr ".r" -type "double3" -4.268087E-07 -8.167283E-09 -268.9037;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Finger12" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger1|Bip01_R_Finger11";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.02795141 0 9.536743E-09;
	setAttr ".r" -type "double3" 1.690537E-06 6.839758E-07 -358.5283;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode transform -n "Bip01_R_Finger1Nub" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger1|Bip01_R_Finger11|Bip01_R_Finger12";
	setAttr ".t" -type "double3" 0.02325443 0 0;
	setAttr ".r" -type "double3" 0 0 -180;
	setAttr ".s" -type "double3" -0.9999999 -1 -0.9999999;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Finger2" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.101034 -0.004168091 0.006480236;
	setAttr ".r" -type "double3" 13.79807 -353.692 -289.0168;
	setAttr ".s" -type "double3" 0.9999992 1.000001 0.9999998;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Finger21" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.05373649 0 1.907349E-08;
	setAttr ".r" -type "double3" 2.188336E-06 -7.04217E-07 -266.037;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Finger22" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger2|Bip01_R_Finger21";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.02753639 -7.629394E-08 0;
	setAttr ".r" -type "double3" -1.906429E-06 1.008727E-07 -336.4637;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode transform -n "Bip01_R_Finger2Nub" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger2|Bip01_R_Finger21|Bip01_R_Finger22";
	setAttr ".t" -type "double3" 0.02548401 0 0;
	setAttr ".r" -type "double3" 8.537738E-07 6.403304E-07 -180;
	setAttr ".s" -type "double3" -0.9999999 -0.9999999 -0.9999999;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Finger3" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.09922372 -2.388E-05 -0.01604293;
	setAttr ".r" -type "double3" 11.08664 -351.4211 -282.4001;
	setAttr ".s" -type "double3" 1.000001 0.9999998 0.9999995;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Finger31" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.05304123 0 0;
	setAttr ".r" -type "double3" -2.56149E-06 6.251602E-07 -264.8223;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Finger32" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger3|Bip01_R_Finger31";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.02503861 0 -1.907349E-08;
	setAttr ".r" -type "double3" -4.137112E-07 7.468418E-07 -331.0159;
	setAttr ".s" -type "double3" 0.9999999 0.9999998 1;
	setAttr ".ro" 2;
createNode transform -n "Bip01_R_Finger3Nub" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger3|Bip01_R_Finger31|Bip01_R_Finger32";
	setAttr ".t" -type "double3" 0.02174843 0 0;
	setAttr ".r" -type "double3" 8.537737E-07 4.268869E-07 -180;
	setAttr ".s" -type "double3" -0.9999999 -1 -1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Finger4" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.09225869 0.006311111 -0.03442449;
	setAttr ".r" -type "double3" 7.973016 -345.8982 -283.0012;
	setAttr ".s" -type "double3" 1 1.000001 0.9999998;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Finger41" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.04196922 9.536743E-09 9.536743E-09;
	setAttr ".r" -type "double3" -1.82032E-06 -1.561456E-06 -250.2317;
	setAttr ".s" -type "double3" 0.9999999 0.9999999 1;
	setAttr ".ro" 2;
createNode joint -n "Bip01_R_Finger42" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger4|Bip01_R_Finger41";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.02057209 0 0;
	setAttr ".r" -type "double3" 2.020051E-07 -1.540705E-06 -336.5851;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode transform -n "Bip01_R_Finger4Nub" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger4|Bip01_R_Finger41|Bip01_R_Finger42";
	setAttr ".t" -type "double3" 0.01514084 0 0;
	setAttr ".r" -type "double3" -1.280661E-06 -1.494104E-06 -180;
	setAttr ".s" -type "double3" -1 -1 -1;
	setAttr ".ro" 2;
createNode transform -n "Dummy09" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand";
	setAttr ".t" -type "double3" 0.04782471 -0.001636887 -0.01484237;
	setAttr ".r" -type "double3" 33.47602 -94.66798 -277.1528;
	setAttr ".s" -type "double3" 0.3310716 0.3310716 0.3310716;
	setAttr ".ro" 2;
createNode transform -n "Dummy04" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle";
	setAttr ".t" -type "double3" 0.1130628 0.05731537 -0.01772774;
	setAttr ".r" -type "double3" 75.26833 0.0003140672 -179.9997;
	setAttr ".s" -type "double3" 0.9999999 1 1;
	setAttr ".ro" 2;
createNode transform -n "Bone15" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Dummy04";
	setAttr ".t" -type "double3" -5.722046E-08 3.051758E-07 0;
	setAttr ".r" -type "double3" 3.090988 -355.3645 -81.38992;
	setAttr ".s" -type "double3" 0.9999999 1 1;
	setAttr ".ro" 2;
createNode transform -n "Bone16" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Dummy04|Bone15";
	setAttr ".t" -type "double3" 0.6079946 0 1.525879E-07;
	setAttr ".r" -type "double3" 6.83019E-06 3.415096E-06 3.415096E-06;
	setAttr ".s" -type "double3" 0.9999999 0.9999999 1;
	setAttr ".ro" 2;
createNode transform -n "Point01" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Dummy04";
	setAttr ".t" -type "double3" -0.007945823 0.03517754 -0.08047867;
	setAttr ".r" -type "double3" 23.50836 -354.3613 -96.61682;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode transform -n "Dummy13" -p "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2";
	setAttr ".t" -type "double3" 0.08251781 -0.04546501 -0.0001434517;
	setAttr ".r" -type "double3" 345.314 -269.9999 -180;
	setAttr ".s" -type "double3" 0.3310716 0.3310716 0.3310716;
	setAttr ".ro" 2;
createNode joint -n "Bone01" -p "|qs|Bip01|Bip01_Pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.01151641 0.03745831 0.1519271;
	setAttr ".r" -type "double3" 294.5766 -163.9144 -302.2275;
	setAttr ".s" -type "double3" 0.9999999 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bone02" -p "|qs|Bip01|Bip01_Pelvis|Bone01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.2027012 -9.161247E-09 1.135724E-08;
	setAttr ".r" -type "double3" 1.760946E-14 -3.828132E-14 -65.2975;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bone03" -p "|qs|Bip01|Bip01_Pelvis|Bone01|Bone02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.3019164 -3.796921E-08 1.816508E-08;
	setAttr ".r" -type "double3" 1.118303E-14 3.036357E-14 -334.0791;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bone04" -p "|qs|Bip01|Bip01_Pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.01050002 -0.09788746 0.08957885;
	setAttr ".r" -type "double3" 322.9495 -357.0644 -105.265;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bone05" -p "|qs|Bip01|Bip01_Pelvis|Bone04";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.2027012 -9.161247E-09 1.135724E-08;
	setAttr ".r" -type "double3" 2.398941E-14 -3.464189E-14 -55.2975;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bone06" -p "|qs|Bip01|Bip01_Pelvis|Bone04|Bone05";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.3019164 -3.796921E-08 1.816508E-08;
	setAttr ".r" -type "double3" 8.494119E-15 3.122269E-14 -329.0791;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bone07" -p "|qs|Bip01|Bip01_Pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.01151686 0.03745745 -0.1452646;
	setAttr ".r" -type "double3" 65.42377 -196.4207 -132.2279;
	setAttr ".s" -type "double3" -0.9999998 -1 -1;
	setAttr ".ro" 2;
createNode joint -n "Bone08" -p "|qs|Bip01|Bip01_Pelvis|Bone07";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.2027012 -9.161247E-09 1.135724E-08;
	setAttr ".r" -type "double3" 3.213797E-14 -2.725258E-14 -40.29751;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bone09" -p "|qs|Bip01|Bip01_Pelvis|Bone07|Bone08";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.3019164 -3.796921E-08 1.816508E-08;
	setAttr ".r" -type "double3" 345.1122 -333.651 -332.5826;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bone10" -p "|qs|Bip01|Bip01_Pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.01049976 -0.09788799 -0.09908707;
	setAttr ".r" -type "double3" 37.0502 -2.93578 -275.265;
	setAttr ".s" -type "double3" -1 -1 -0.9999999;
	setAttr ".ro" 2;
createNode joint -n "Bone11" -p "|qs|Bip01|Bip01_Pelvis|Bone10";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.2027012 -9.161247E-09 1.135724E-08;
	setAttr ".r" -type "double3" 2.087888E-14 -3.660088E-14 -60.29751;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode joint -n "Bone12" -p "|qs|Bip01|Bip01_Pelvis|Bone10|Bone11";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.3019164 -3.796921E-08 1.816508E-08;
	setAttr ".r" -type "double3" 1.628572E-14 2.796036E-14 -344.0791;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode transform -n "Dummy05" -p "|qs|Bip01";
	setAttr ".t" -type "double3" -0.2641441 -0.3410622 -0.02542934;
	setAttr ".r" -type "double3" 8.025472E-05 -269.999 -269.8969;
	setAttr ".s" -type "double3" 0.9999999 1 0.9999999;
	setAttr ".ro" 2;
createNode transform -n "Bone17" -p "|qs|Bip01|Dummy05";
	setAttr ".t" -type "double3" 0 0 0;
	setAttr ".r" -type "double3" 0 -4.07111E-13 0;
	setAttr ".s" -type "double3" 1 1 0.9999999;
	setAttr ".ro" 2;
createNode transform -n "Bone18" -p "|qs|Bip01|Dummy05|Bone17";
	setAttr ".t" -type "double3" 0.7474371 -5.66455E-08 5.876064E-11;
	setAttr ".r" -type "double3" 0 0 0;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr ".ro" 2;
createNode transform -n "Dummy01" -p "|qs|Bip01|Dummy05|Bone17";
	setAttr ".t" -type "double3" 0.6791829 0.07540226 0.01087303;
	setAttr ".r" -type "double3" -3.642214E-16 -2.024991E-13 -0.1030539;
	setAttr ".s" -type "double3" 1 1 0.9999999;
	setAttr ".ro" 2;
createNode transform -n "IK_Chain02" -p "|qs|Bip01|Dummy05|Bone17|Dummy01";
	setAttr ".t" -type "double3" -1.411438E-06 7.629394E-08 5.340576E-07;
	setAttr ".r" -type "double3" 270 4.045935E-06 0;
	setAttr ".s" -type "double3" 1 1 0.9999999;
	setAttr ".ro" 2;
createNode transform -n "Dummy02" -p "|qs|Bip01|Dummy05|Bone17";
	setAttr ".t" -type "double3" 0.1447241 0.009451522 -0.0001709747;
	setAttr ".r" -type "double3" -3.642214E-16 -2.024991E-13 -0.1030539;
	setAttr ".s" -type "double3" 1 1 0.9999999;
	setAttr ".ro" 2;
createNode transform -n "IK_Chain01" -p "|qs|Bip01|Dummy05|Bone17|Dummy02";
	setAttr ".t" -type "double3" -9.536743E-08 4.577637E-07 -1.144409E-07;
	setAttr ".r" -type "double3" 270.0198 -1.016722E-12 0;
	setAttr ".s" -type "double3" 0.9999999 0.9999999 1;
	setAttr ".ro" 2;
createNode transform -n "Dummy11" -p "|qs|Bip01|Dummy05";
	setAttr ".t" -type "double3" -0.3446723 0.005152664 0.008061904;
	setAttr ".r" -type "double3" 299.7012 -359.8193 -0.2079896;
	setAttr ".s" -type "double3" 0.3310716 0.3310716 0.3310716;
	setAttr ".ro" 2;
createNode transform -n "Dummy12" -p "|qs|Bip01|Dummy05";
	setAttr ".t" -type "double3" 0.8727266 0.00296299 0.008061981;
	setAttr ".r" -type "double3" 299.7012 -359.8193 -0.2079896;
	setAttr ".s" -type "double3" 0.3310716 0.3310716 0.3310716;
	setAttr ".ro" 2;
createNode transform -n "Object02" -p "|qs";
	setAttr ".t" -type "double3" 0 0 0;
	setAttr ".r" -type "double3" 270 0 0;
	setAttr ".s" -type "double3" 1 1 1;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".ro" 2;
createNode mesh -n "Object02Shape" -p "|qs|Object02";
	setAttr -k off ".v";
	setAttr -s 1 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "Object02ShapeOrig" -p "|qs|Object02";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1638 ".uvst[0].uvsp[0:1637]" -type "float2" 
		0.458155 0.960101 0.454639 0.907737 0.419067 0.90655 0.411887 0.959008 0.499377 0.907241 0.502959 0.94707 
		0.458643 0.987357 0.504031 0.979447 0.54271 0.947556 0.535393 0.924906 0.569105 0.924754 0.565596 0.913828 
		0.531552 0.903305 0.558465 0.895997 0.547553 0.96879 0.579782 0.960016 0.574668 0.937483 0.604671 0.95253 
		0.595521 0.93334 0.593175 0.918669 0.601635 0.930592 0.602242 0.924513 0.608015 0.913794 0.604002 0.910783 
		0.591699 0.905963 0.550992 0.861378 0.583328 0.888888 0.600405 0.888896 0.592472 0.857558 0.57881 0.818845 
		0.543905 0.825174 0.499349 0.863176 0.500926 0.829236 0.453469 0.829181 0.45127 0.862697 0.419445 0.86263 
		0.42464 0.82985 0.393729 0.825433 0.38418 0.860934 0.336334 0.84951 0.350012 0.812472 0.379001 0.899199 
		0.335032 0.888651 0.375045 0.940308 0.331022 0.929567 0.362904 0.77494 0.398777 0.786581 0.374063 0.754856 
		0.40205 0.762247 0.429975 0.790074 0.430472 0.765666 0.453266 0.76607 0.45261 0.792261 0.500438 0.761569 
		0.507923 0.789085 0.540113 0.786249 0.534886 0.75462 0.560108 0.751194 0.563362 0.777524 0.431949 0.746154 
		0.454107 0.74443 0.432162 0.715713 0.455641 0.717369 0.498023 0.72697 0.530344 0.721224 0.405654 0.743515 
		0.40139 0.71942 0.550389 0.714329 0.383189 0.72074 0.493054 0.675821 0.520869 0.669934 0.555513 0.668458 
		0.487878 0.637773 0.518815 0.632096 0.456953 0.63727 0.454975 0.678398 0.433711 0.677841 0.436592 0.634036 
		0.550896 0.62592 0.416809 0.631256 0.410321 0.675206 0.374148 0.670925 0.380249 0.624761 0.442565 0.557327 
		0.462178 0.56025 0.446738 0.501565 0.4674 0.50337 0.487492 0.563892 0.487824 0.505317 0.512672 0.561549 
		0.511835 0.503277 0.535249 0.557159 0.53743 0.499113 0.426798 0.497966 0.425982 0.554586 0.408177 0.495244 
		0.402466 0.55341 0.469628 0.474876 0.450745 0.471889 0.508789 0.470364 0.488589 0.474898 0.430502 0.467084 
		0.413357 0.462637 0.532471 0.466325 0.005995 0.402361 0.071197 0.441762 0.03691865 0.4064583 0.005995 0.441762 
		0.071197 0.485423 0.122608 0.440101 0.119381 0.487045 0.071197 0.534727 0.005995 0.53292 0.005995 0.484642 
		0.159232 0.539965 0.071197 0.614164 0.005995 0.61416 0.158265 0.614175 0.111583 0.673348 0.079046 0.671563 
		0.0549555 0.6487295 0.038714 0.683295 0.156642 0.699795 0.112209 0.705158 0.079872 0.69255 0.06194236 0.6885183 
		0.1348041 0.7024308 0.239855 0.678912 0.235967 0.614185 0.310608 0.614189 0.308837 0.675333 0.310608 0.556405 
		0.217568 0.548237 0.04173952 0.7003347 0.162168 0.490069 0.171539 0.439055 0.215687 0.465522 0.212694 0.497494 
		0.267428 0.468675 0.264968 0.498262 0.241268 0.5232495 0.310608 0.527052 0.310608 0.497699 0.310608 0.47226 
		0.310608 0.435751 0.270363 0.43683 0.222152 0.436325 0.06293835 0.702543 0.044105 0.713657 0.06494094 0.721788 
		0.07981279 0.7070459 0.09601089 0.706102 0.079729 0.727559 0.06167857 0.729695 0.07973891 0.7432733 0.09780595 0.7357162 
		0.06137946 0.7491406 0.079751 0.762458 0.05622365 0.757686 0.04362813 0.7318311 0.04302 0.755008 0.05346218 0.7221966 
		0.042896 0.7761475 0.0781455 0.782988 0.07654 0.803518 0.042772 0.797287 0.075004 0.844668 0.098724 0.850826 
		0.104848 0.802204 0.108627 0.7807515 0.13593 0.782609 0.132376 0.859197 0.165914 0.798739 0.183327 0.741251 
		0.156104 0.748076 0.135276 0.75713 0.112406 0.759299 0.196555 0.769998 0.066723 0.897324 0.005986 0.851581 
		0.005128 0.891864 0.005986 0.796949 0.02365326 0.7773149 0.03002083 0.7701168 0.115873 0.728159 0.1049408 0.7472407 
		0.229727 0.727022 0.205034 0.776809 0.212669 0.794195 0.248252 0.794794 0.2622 0.729069 0.30884 0.789403 
		0.30884 0.724951 0.21378 0.840608 0.245939 0.852001 0.308841 0.789521 0.308841 0.85393 0.308841 0.898709 
		0.284187 0.901055 0.19659 0.880933 0.17506 0.875343 0.189416 0.83574 0.23557 0.888613 0.190693 0.794493 
		0.1452052 0.7304853 0.1343365 0.7221427 0.1064685 0.7142027 0.097801 0.727859 0.0960785 0.7608785 0.03406806 0.7046559 
		0.02567047 0.6971248 0.03108076 0.7272193 0.01853338 0.7226077 0.005986 0.717996 0.0059905 0.666078 0.03067533 0.7562916 
		0.01833067 0.7575753 0.005986 0.758859 0.031064 0.37918 0.005995 0.324241 0.005995 0.358134 0.019187 0.322245 
		0.071197 0.411 0.122608 0.440101 0.482454 0.433524 0.460636 0.391568 0.462971 0.429589 0.490774 0.400191 
		0.428848 0.40469 0.44141 0.432697 0.410437 0.42192 0.423821 0.436512 0.387438 0.435167 0.403986 0.450218 
		0.517064 0.41936 0.500799 0.439376 0.535177 0.432113 0.519771 0.448061 0.531006 0.403709 0.552776 0.418356 
		0.432228 0.342374 0.460064 0.346134 0.393574 0.403442 0.414427 0.375859 0.430996 0.300363 0.39438 0.345774 
		0.384139 0.293199 0.407135 0.269013 0.426354 0.246332 0.461753 0.306514 0.438447 0.264592 0.46371 0.252449 
		0.463481 0.218628 0.499777 0.242748 0.488722 0.26575 0.521426 0.265086 0.519738 0.289708 0.542079 0.289535 
		0.529142 0.342799 0.501719 0.299119 0.498498 0.344034 0.507552 0.371366 0.536379 0.389857 0.546474 0.366845 
		0.549695 0.374514 0.560102 0.405717 0.563527 0.382083 0.374407 0.024934 0.347091 0.043095 0.35757 0.055475 
		0.337104 0.025302 0.358604 0.0214 0.390217 0.035745 0.374457 0.062893 0.417638 0.048299 0.405097 0.070581 
		0.428165 0.060267 0.423227 0.070093 0.438092 0.068195 0.435587 0.073211 0.447766 0.072138 0.444795 0.078184 
		0.450993 0.082177 0.455161 0.074264 0.455661 0.080299 0.371982 0.41864 0.364113 0.405919 0.387322 0.391444 
		0.361127 0.381576 0.374054 0.374391 0.377515 0.366053 0.305947 0.014414 0.299804 0.041949 0.309552 0.042976 
		0.310234 0.014695 0.318948 0.042287 0.315404 0.014492 0.324606 0.040742 0.321944 0.013845 0.299717 0.013475 
		0.293902 0.040019 0.308198 0.091796 0.288487 0.089537 0.326155 0.090204 0.335698 0.084728 0.279837 0.083587 
		0.032222 0.956158 0.005118 0.979088 0.032791 0.984988 0.005118 0.948915 0.04930342 0.9897315 0.065861 0.994488 
		0.064025 0.966386 0.040362 0.926162 0.005124 0.948835 0.005124 0.915388 0.066631 0.951045 0.07224733 0.944389 
		0.005124 0.891934 0.080547 0.934553 0.124466 0.923165 0.11964 0.886144 0.146098 0.883709 0.156068 0.914608 
		0.06905513 0.9401505 0.05085413 0.9321035 0.08133067 0.9318814 0.04444812 0.9590155 0.06125112 0.9589595 0.04446413 0.9947745 
		0.06612812 0.9947745 0.02619411 0.9947175 0.02619411 0.9601955 0.02619512 0.9601524 0.02619512 0.9297905 0.07290648 0.9264598 
		0.03676179 0.9287838 0.807862 0.013154 0.818317 0.051117 0.783255 0.050234 0.777056 0.013154 0.785627 0.080519 
		0.821257 0.071789 0.826781 0.095673 0.792444 0.113422 0.722029 0.013154 0.730431 0.054431 0.663185 0.013154 
		0.672399 0.061254 0.746444 0.093532 0.688706 0.107613 0.758928 0.130564 0.706195 0.153704 0.602595 0.013154 
		0.614444 0.063197 0.634856 0.121454 0.656273 0.177485 0.543602 0.013154 0.556235 0.080295 0.574273 0.136961 
		0.593406 0.200581 0.448764 0.013154 0.478753 0.089778 0.504554 0.156733 0.527672 0.22729 0.730589 0.201289 
		0.779338 0.167746 0.811906 0.148556 0.845125 0.131016 0.624319 0.259215 0.557605 0.291316 0.834559 0.17419 
		0.859843 0.155268 0.761532 0.236345 0.807954 0.201036 0.716014 0.273787 0.684419 0.23092 0.657725 0.326005 
		0.604676 0.360107 0.458155 0.960101 0.411887 0.959008 0.419067 0.90655 0.454639 0.907737 0.499377 0.907241 
		0.502959 0.94707 0.458643 0.987357 0.504031 0.979447 0.54271 0.947556 0.535393 0.924906 0.569105 0.924754 
		0.565596 0.913828 0.531552 0.903305 0.558465 0.895997 0.547553 0.96879 0.579782 0.960016 0.574668 0.937483 
		0.604671 0.95253 0.595521 0.93334 0.593175 0.918669 0.601635 0.930592 0.602242 0.924513 0.608015 0.913794 
		0.604002 0.910783 0.591699 0.905963 0.550992 0.861378 0.583328 0.888888 0.600405 0.888896 0.592472 0.857558 
		0.57881 0.818845 0.543905 0.825174 0.499349 0.863176 0.500926 0.829236 0.453469 0.829181 0.45127 0.862697 
		0.419445 0.86263 0.42464 0.82985 0.393729 0.825433 0.38418 0.860934 0.336334 0.84951 0.350012 0.812472 
		0.379001 0.899199 0.335032 0.888651 0.375045 0.940308 0.331022 0.929567 0.362904 0.77494 0.398777 0.786581 
		0.374063 0.754856 0.40205 0.762247 0.429975 0.790074 0.430472 0.765666 0.453266 0.76607 0.45261 0.792261 
		0.500438 0.761569 0.507923 0.789085 0.540113 0.786249 0.534886 0.75462 0.560108 0.751194 0.563362 0.777524 
		0.431949 0.746154 0.454107 0.74443 0.432162 0.715713 0.455641 0.717369 0.498023 0.72697 0.530344 0.721224 
		0.405654 0.743515 0.40139 0.71942 0.550389 0.714329 0.383189 0.72074 0.493054 0.675821 0.520869 0.669934 
		0.555513 0.668458 0.487878 0.637773 0.518815 0.632096 0.456953 0.63727 0.454975 0.678398 0.433711 0.677841 
		0.436592 0.634036 0.550896 0.62592 0.416809 0.631256 0.410321 0.675206 0.374148 0.670925 0.380249 0.624761 
		0.442565 0.557327 0.462178 0.56025 0.446738 0.501565 0.4674 0.50337 0.487492 0.563892 0.487824 0.505317 
		0.512672 0.561549 0.511835 0.503277 0.535249 0.557159 0.53743 0.499113 0.426798 0.497966 0.425982 0.554586 
		0.408177 0.495244 0.402466 0.55341 0.469628 0.474876 0.488589 0.474898 0.508789 0.470364 0.532471 0.466325 
		0.413357 0.462637 0.430502 0.467084 0.450745 0.471889 0.005995 0.402361 0.03934009 0.4067791 0.071197 0.441762 
		0.005995 0.441762 0.071197 0.485423 0.122608 0.440101 0.119381 0.487045 0.071197 0.534727 0.005995 0.53292 
		0.005995 0.484642 0.159232 0.539965 0.071197 0.614164 0.005995 0.61416 0.158265 0.614175 0.111583 0.673348 
		0.079046 0.671563 0.0549555 0.6487295 0.156642 0.699795 0.239855 0.678912 0.235967 0.614185 0.310608 0.614189 
		0.308837 0.675333 0.217568 0.548237 0.310608 0.556405 0.162168 0.490069 0.171539 0.439055 0.215687 0.465522 
		0.212694 0.497494 0.267428 0.468675 0.264968 0.498262 0.241268 0.5232495 0.310608 0.527052 0.310608 0.497699 
		0.310608 0.47226 0.310608 0.435751 0.270363 0.43683 0.222152 0.436325 0.031064 0.37918 0.005995 0.358134 
		0.005995 0.324241 0.019187 0.322245 0.071197 0.411 0.122608 0.440101 0.482454 0.433524 0.462971 0.429589 
		0.460636 0.391568 0.490774 0.400191 0.428848 0.40469 0.44141 0.432697 0.410437 0.42192 0.423821 0.436512 
		0.387438 0.435167 0.403986 0.450218 0.517064 0.41936 0.500799 0.439376 0.535177 0.432113 0.519771 0.448061 
		0.531006 0.403709 0.552776 0.418356 0.432228 0.342374 0.460064 0.346134 0.393574 0.403442 0.414427 0.375859 
		0.430996 0.300363 0.39438 0.345774 0.384139 0.293199 0.407135 0.269013 0.426354 0.246332 0.461753 0.306514 
		0.438447 0.264592 0.46371 0.252449 0.463481 0.218628 0.499777 0.242748 0.488722 0.26575 0.521426 0.265086 
		0.519738 0.289708 0.542079 0.289535 0.529142 0.342799 0.501719 0.299119 0.498498 0.344034 0.507552 0.371366 
		0.536379 0.389857 0.546474 0.366845 0.549695 0.374514 0.560102 0.405717 0.563527 0.382083 0.374407 0.024934 
		0.35757 0.055475 0.347091 0.043095 0.337104 0.025302 0.358604 0.0214 0.390217 0.035745 0.374457 0.062893 
		0.417638 0.048299 0.405097 0.070581 0.428165 0.060267 0.423227 0.070093 0.438092 0.068195 0.435587 0.073211 
		0.447766 0.072138 0.444795 0.078184 0.450993 0.082177 0.455161 0.074264 0.455661 0.080299 0.371982 0.41864 
		0.364113 0.405919 0.387322 0.391444 0.361127 0.381576 0.374054 0.374391 0.377515 0.366053 0.305947 0.014414 
		0.310234 0.014695 0.309552 0.042976 0.299804 0.041949 0.318948 0.042287 0.315404 0.014492 0.324606 0.040742 
		0.321944 0.013845 0.299717 0.013475 0.293902 0.040019 0.308198 0.091796 0.288487 0.089537 0.326155 0.090204 
		0.335698 0.084728 0.279837 0.083587 0.0059905 0.666078 0.02418014 0.698705 0.005986 0.717996 0.038714 0.683295 
		0.06194236 0.6885183 0.079872 0.69255 0.112209 0.705158 0.1348041 0.7024308 0.04173952 0.7003347 0.02567047 0.6971248 
		0.1452052 0.7304853 0.1343365 0.7221427 0.156104 0.748076 0.183327 0.741251 0.229727 0.727022 0.2622 0.729069 
		0.248252 0.794794 0.30884 0.789403 0.30884 0.724951 0.212669 0.794195 0.21378 0.840608 0.245939 0.852001 
		0.308841 0.789521 0.308841 0.85393 0.308841 0.898709 0.284187 0.901055 0.19659 0.880933 0.17506 0.875343 
		0.23557 0.888613 0.205034 0.776809 0.196555 0.769998 0.165914 0.798739 0.13593 0.782609 0.132376 0.859197 
		0.098724 0.850826 0.11964 0.886144 0.066723 0.897324 0.124466 0.923165 0.080547 0.934553 0.040362 0.926162 
		0.146098 0.883709 0.156068 0.914608 0.075004 0.844668 0.005986 0.851581 0.005128 0.891864 0.005124 0.891934 
		0.005124 0.915388 0.005124 0.948835 0.032222 0.956158 0.064025 0.966386 0.065861 0.994488 0.032791 0.984988 
		0.066631 0.951045 0.07309152 0.9433886 0.042772 0.797287 0.005986 0.796949 0.02365326 0.7773149 0.03002083 0.7701168 
		0.07654 0.803518 0.104848 0.802204 0.042896 0.7761475 0.108627 0.7807515 0.135276 0.75713 0.112406 0.759299 
		0.115873 0.728159 0.1049408 0.7472407 0.0781455 0.782988 0.079751 0.762458 0.0960785 0.7608785 0.05622365 0.757686 
		0.06137946 0.7491406 0.07973891 0.7432733 0.06167857 0.729695 0.079729 0.727559 0.09780595 0.7357162 0.06494094 0.721788 
		0.04362813 0.7318311 0.04302 0.755008 0.07981279 0.7070459 0.06293835 0.702543 0.09601089 0.706102 0.044105 0.713657 
		0.05635522 0.7258338 0.097801 0.727859 0.1064685 0.7142027 0.03067533 0.7562916 0.03108076 0.7272193 0.01853338 0.7226077 
		0.03406806 0.7046559 0.005986 0.717996 0.01833067 0.7575753 0.005986 0.758859 0.01555385 0.981313 0.005118 0.979088 
		0.005118 0.948915 0.06905513 0.9401505 0.08317579 0.9306384 0.05085413 0.9321035 0.04444812 0.9590155 0.06125112 0.9589595 
		0.04446413 0.9947745 0.06612812 0.9947745 0.02619411 0.9947175 0.02619411 0.9601955 0.02619512 0.9601524 0.02619512 0.9297905 
		0.07731803 0.9253308 0.03676179 0.9287838 0.635802 0.810244 0.643046 0.845407 0.622499 0.840814 0.659993 0.809684 
		0.640626 0.876822 0.620528 0.875214 0.625017 0.908898 0.637845 0.906138 0.647925 0.932673 0.693543 0.815522 
		0.692334 0.842885 0.790641 0.821434 0.789509 0.847843 0.825169 0.81267 0.837086 0.7844 0.788095 0.791389 
		0.822059 0.847738 0.787989 0.879801 0.831026 0.886222 0.795016 0.917489 0.830043 0.922906 0.794282 0.948004 
		0.829404 0.953067 0.790095 0.986458 0.826351 0.98913 0.849517 0.952026 0.848367 0.886872 0.847194 0.924787 
		0.849353 0.81437 0.839346 0.98913 0.850856 0.850247 0.888048 0.821587 0.887949 0.853222 0.959802 0.827756 
		0.959802 0.85786 0.984012 0.825087 0.984012 0.861147 0.959802 0.896171 0.984012 0.895984 0.959802 0.929358 
		0.984012 0.927297 0.959802 0.956867 0.984012 0.956812 0.959802 0.98913 0.984012 0.98913 0.984012 0.7844 
		0.959802 0.7844 0.888543 0.98913 0.893982 0.956216 0.886874 0.7844 0.889709 0.888632 0.89619 0.927112 
		0.849261 0.7844 0.807862 0.013154 0.777056 0.013154 0.783255 0.050234 0.818317 0.051117 0.785627 0.080519 
		0.821257 0.071789 0.826781 0.095673 0.792444 0.113422 0.722029 0.013154 0.730431 0.054431 0.663185 0.013154 
		0.672399 0.061254 0.746444 0.093532 0.688706 0.107613 0.758928 0.130564 0.706195 0.153704 0.602595 0.013154 
		0.614444 0.063197 0.634856 0.121454 0.656273 0.177485 0.543602 0.013154 0.556235 0.080295 0.574273 0.136961 
		0.593406 0.200581 0.448764 0.013154 0.478753 0.089778 0.504554 0.156733 0.527672 0.22729 0.730589 0.201289 
		0.779338 0.167746 0.811906 0.148556 0.845125 0.131016 0.624319 0.259215 0.557605 0.291316 0.834559 0.17419 
		0.859843 0.155268 0.761532 0.236345 0.807954 0.201036 0.716014 0.273787 0.684419 0.23092 0.657725 0.326005 
		0.604676 0.360107 0.04713079 0.9653957 0.07290648 0.9264598 0.03676179 0.9287838 0.08133067 0.9318814 0.07731803 0.9253308 
		0.08317579 0.9306384 0.04713079 0.9653957 0.03676179 0.9287838 0.101194 0.127316 0.077856 0.151622 0.084754 0.123189 
		0.097319 0.14906 0.094539 0.171683 0.0708 0.187543 0.085284 0.192928 0.062182 0.13751 0.073964 0.109972 
		0.085674 0.105884 0.088941 0.109506 0.100237 0.11116 0.088387 0.099075 0.078088 0.094901 0.062749 0.10137 
		0.036509 0.121956 0.01469 0.148882 0.007348 0.116704 0.065082 0.15207 0.061252 0.184944 0.017865 0.179166 
		0.054354 0.092997 0.101739 0.083635 0.073629 0.077165 0.094572 0.067085 0.094754 0.077354 0.063418 0.200737 
		0.014876 0.207006 0.102766 0.071885 0.063728 0.211113 0.015367 0.237407 0.06441 0.228728 0.063533 0.248882 
		0.060081 0.272383 0.014422 0.264999 0.046909 0.299573 0.008776 0.281183 0.034219 0.315012 0.06354 0.324384 
		0.057837 0.333887 0.080144 0.338694 0.082211 0.328382 0.071369 0.317167 0.075693 0.344903 0.06163 0.30192 
		0.070886 0.286138 0.069683 0.270901 0.085075 0.274939 0.086488 0.285746 0.104939 0.275449 0.105097 0.264189 
		0.126321 0.266953 0.125858 0.276357 0.124937 0.286337 0.104926 0.285752 0.147265 0.276902 0.144393 0.287359 
		0.148592 0.269325 0.084842 0.26201 0.125611 0.25945 0.105989 0.255956 0.085264 0.251607 0.07464 0.249454 
		0.146754 0.262027 0.084852 0.24012 0.074477 0.230622 0.108119 0.245011 0.10826 0.254216 0.129659 0.248164 
		0.12918 0.239377 0.107572 0.235881 0.129438 0.257183 0.147697 0.251142 0.146785 0.259362 0.084703 0.230731 
		0.084863 0.214681 0.073128 0.213375 0.070735 0.203514 0.083282 0.201373 0.146583 0.242614 0.106613 0.225649 
		0.106409 0.216921 0.127195 0.219528 0.127866 0.228782 0.106607 0.234381 0.127827 0.23724 0.145919 0.231441 
		0.14424 0.23962 0.143522 0.221421 0.105856 0.205673 0.107755 0.195102 0.125884 0.1968 0.126455 0.207735 
		0.105872 0.213907 0.125397 0.215216 0.142196 0.210026 0.140577 0.217014 0.139903 0.198257 0.135071 0.189321 
		0.125997 0.188031 0.13918 0.180189 0.128442 0.179585 0.111513 0.178053 0.111095 0.187104 0.107717 0.176074 
		0.112246 0.173112 0.113892 0.164296 0.132038 0.173826 0.13146 0.164748 0.11688 0.154523 0.134029 0.15525 
		0.15388 0.156611 0.14477 0.166485 0.109994 0.151962 0.117779 0.150686 0.115914 0.141329 0.135235 0.151413 
		0.134862 0.141845 0.119673 0.131586 0.135672 0.131953 0.156886 0.132886 0.146885 0.142862 0.113503 0.129756 
		0.121389 0.127847 0.121472 0.110108 0.135664 0.128253 0.136909 0.111142 0.1408832 0.1162789 0.1394102 0.1326039 
		0.155771 0.153383 0.1464962 0.1178179 0.1484782 0.1240519 0.159714 0.144133 0.153173 0.175411 0.158452 0.166996 
		0.959802 0.85786 0.984012 0.861147 0.984012 0.825087 0.959802 0.827756 0.959802 0.896171 0.984012 0.895984 
		0.959802 0.929358 0.984012 0.927297 0.959802 0.956867 0.984012 0.956812 0.959802 0.98913 0.984012 0.98913 
		0.984012 0.7844 0.959802 0.7844 0.888543 0.98913 0.893982 0.956216 0.887949 0.853222 0.888048 0.821587 
		0.886874 0.7844 0.89619 0.927112 0.889709 0.888632 0.850856 0.850247 0.849353 0.81437 0.825169 0.81267 
		0.837086 0.7844 0.790641 0.821434 0.788095 0.791389 0.789509 0.847843 0.822059 0.847738 0.787989 0.879801 
		0.831026 0.886222 0.795016 0.917489 0.830043 0.922906 0.794282 0.948004 0.829404 0.953067 0.790095 0.986458 
		0.826351 0.98913 0.849517 0.952026 0.848367 0.886872 0.847194 0.924787 0.839346 0.98913 0.692536 0.950392 
		0.660834 0.98814 0.692943 0.916568 0.68914 0.880347 0.65783 0.952525 0.637845 0.906138 0.647925 0.932673 
		0.625017 0.908898 0.640626 0.876822 0.620528 0.875214 0.622499 0.840814 0.643046 0.845407 0.635802 0.810244 
		0.692334 0.842885 0.693543 0.815522 0.663012 0.783819 0.659993 0.809684 0.143851 0.188973 0.849261 0.7844 
		0.189416 0.83574 0.190693 0.794493 0.101194 0.127316 0.084754 0.123189 0.077856 0.151622 0.097319 0.14906 
		0.094539 0.171683 0.0708 0.187543 0.085284 0.192928 0.062182 0.13751 0.073964 0.109972 0.085674 0.105884 
		0.088941 0.109506 0.100237 0.11116 0.088387 0.099075 0.078088 0.094901 0.062749 0.10137 0.036509 0.121956 
		0.01469 0.148882 0.007348 0.116704 0.065082 0.15207 0.061252 0.184944 0.017865 0.179166 0.054354 0.092997 
		0.101739 0.083635 0.073629 0.077165 0.094572 0.067085 0.094754 0.077354 0.063418 0.200737 0.014876 0.207006 
		0.102766 0.071885 0.063728 0.211113 0.015367 0.237407 0.06441 0.228728 0.063533 0.248882 0.060081 0.272383 
		0.014422 0.264999 0.046909 0.299573 0.008776 0.281183 0.034219 0.315012 0.06354 0.324384 0.057837 0.333887 
		0.080144 0.338694 0.082211 0.328382 0.071369 0.317167 0.075693 0.344903 0.06163 0.30192 0.070886 0.286138 
		0.069683 0.270901 0.085075 0.274939 0.086488 0.285746 0.104939 0.275449 0.105097 0.264189 0.126321 0.266953 
		0.125858 0.276357 0.124937 0.286337 0.104926 0.285752 0.147265 0.276902 0.144393 0.287359 0.148592 0.269325 
		0.084842 0.26201 0.125611 0.25945 0.105989 0.255956 0.085264 0.251607 0.07464 0.249454 0.146754 0.262027 
		0.084852 0.24012 0.074477 0.230622 0.108119 0.245011 0.10826 0.254216 0.129659 0.248164 0.12918 0.239377 
		0.107572 0.235881 0.129438 0.257183 0.147697 0.251142 0.146785 0.259362 0.084703 0.230731 0.084863 0.214681 
		0.073128 0.213375 0.070735 0.203514 0.083282 0.201373 0.146583 0.242614 0.106613 0.225649 0.106409 0.216921 
		0.127195 0.219528 0.127866 0.228782 0.106607 0.234381 0.127827 0.23724 0.145919 0.231441 0.14424 0.23962 
		0.143522 0.221421 0.105856 0.205673 0.107755 0.195102 0.125884 0.1968 0.126455 0.207735 0.105872 0.213907 
		0.125397 0.215216 0.142196 0.210026 0.140577 0.217014 0.139903 0.198257 0.135071 0.189321 0.125997 0.188031 
		0.13918 0.180189 0.128442 0.179585 0.111513 0.178053 0.111095 0.187104 0.107717 0.176074 0.112246 0.173112 
		0.113892 0.164296 0.132038 0.173826 0.13146 0.164748 0.11688 0.154523 0.134029 0.15525 0.15388 0.156611 
		0.14477 0.166485 0.109994 0.151962 0.117779 0.150686 0.115914 0.141329 0.135235 0.151413 0.134862 0.141845 
		0.119673 0.131586 0.135672 0.131953 0.156886 0.132886 0.146885 0.142862 0.113503 0.129756 0.121389 0.127847 
		0.121472 0.110108 0.135664 0.128253 0.136909 0.111142 0.1408832 0.1162789 0.1394102 0.1326039 0.155771 0.153383 
		0.1464962 0.1178179 0.1484782 0.1240519 0.159714 0.144133 0.153173 0.175411 0.158452 0.166996 0.143851 0.188973 
		0.663012 0.783819 0.692536 0.950392 0.660834 0.98814 0.692943 0.916568 0.68914 0.880347 0.65783 0.952525 
		0.767272 0.413629 0.832843 0.396486 0.834895 0.366911 0.749675 0.386071 0.871104 0.36312 0.87021 0.34815 
		0.822632 0.34629 0.861899 0.334735 0.795208 0.335782 0.755171 0.36053 0.77054 0.317995 0.827773 0.286726 
		0.807947 0.271573 0.720793 0.342654 0.847177 0.313172 0.917447 0.353918 0.893719 0.391994 0.865388 0.446196 
		0.920659 0.329429 0.979907 0.311327 0.991606 0.34125 0.982231 0.394652 0.956927 0.43498 0.913266 0.312725 
		0.970863 0.295181 0.972171 0.301554 0.965796 0.244268 0.887283 0.281317 0.869618 0.232563 0.846945 0.217183 
		0.917489 0.153731 0.898173 0.125948 0.941593 0.187857 0.888234 0.114168 0.840622 0.204403 0.797157 0.260679 
		0.758777 0.306775 0.691721 0.34363 0.735472 0.36862 0.727141 0.391082 0.743935 0.426515 0.803881 0.439285 
		0.830361 0.473751 0.890864 0.517297 0.921579 0.48576 0.792108 0.459222 0.824693 0.488263 0.884608 0.53219 
		0.738186 0.705542 0.679658 0.718211 0.743497 0.723185 0.726305 0.697323 0.742278 0.735758 0.747939 0.747949 
		0.70539 0.687467 0.67672 0.682999 0.729108 0.682963 0.649072 0.675353 0.628246 0.660113 0.634391 0.710261 
		0.663372 0.738619 0.660883 0.755031 0.709858 0.766735 0.741614 0.754574 0.767272 0.413629 0.749675 0.386071 
		0.834895 0.366911 0.832843 0.396486 0.871104 0.36312 0.87021 0.34815 0.822632 0.34629 0.861899 0.334735 
		0.795208 0.335782 0.755171 0.36053 0.77054 0.317995 0.827773 0.286726 0.807947 0.271573 0.720793 0.342654 
		0.847177 0.313172 0.917447 0.353918 0.893719 0.391994 0.865388 0.446196 0.830361 0.473751 0.803881 0.439285 
		0.920659 0.329429 0.979907 0.311327 0.991606 0.34125 0.982231 0.394652 0.956927 0.43498 0.869618 0.232563 
		0.887283 0.281317 0.913266 0.312725 0.970863 0.295181 0.972171 0.301554 0.965796 0.244268 0.941593 0.187857 
		0.917489 0.153731 0.846945 0.217183 0.898173 0.125948 0.888234 0.114168 0.840622 0.204403 0.797157 0.260679 
		0.758777 0.306775 0.691721 0.34363 0.735472 0.36862 0.727141 0.391082 0.743935 0.426515 0.792108 0.459222 
		0.824693 0.488263 0.890864 0.517297 0.921579 0.48576 0.884608 0.53219 0.679658 0.718211 0.738186 0.705542 
		0.743497 0.723185 0.726305 0.697323 0.742278 0.735758 0.747939 0.747949 0.70539 0.687467 0.67672 0.682999 
		0.729108 0.682963 0.649072 0.675353 0.628246 0.660113 0.634391 0.710261 0.663372 0.738619 0.660883 0.755031 
		0.709858 0.766735 0.741614 0.754574 0.248411 0.120352 0.226736 0.101299 0.198391 0.114839 0.198391 0.145874 
		0.169207 0.102005 0.149524 0.121189 0.157872 0.073239 0.131878 0.073239 0.169294 0.044652 0.150726 0.027123 
		0.198391 0.031658 0.198391 0.005728 0.22835 0.043157 0.246375 0.022464 0.240988 0.073239 0.271931 0.073239 
		0.198391 0.073239 0.835042 0.010624 0.903094 0.010624 0.901528 0.056222 0.835042 0.056222 0.944689 0.010624 
		0.943766 0.056222 0.987471 0.010624 0.987471 0.056222 0.835042 0.010624 0.903094 0.010624 0.901528 0.056222 
		0.835042 0.056222 0.944689 0.010624 0.943766 0.056222 0.987471 0.010624 0.987471 0.056222 0.835042 0.010624 
		0.835042 0.056222 0.901528 0.056222 0.903094 0.010624 0.944689 0.010624 0.943766 0.056222 0.987471 0.010624 
		0.987471 0.056222 0.835042 0.010624 0.835042 0.056222 0.901528 0.056222 0.903094 0.010624 0.944689 0.010624 
		0.943766 0.056222 0.987471 0.010624 0.987471 0.056222 0.248411 0.120352 0.198391 0.145874 0.198391 0.114839 
		0.226736 0.101299 0.169207 0.102005 0.149524 0.121189 0.157872 0.073239 0.131878 0.073239 0.169294 0.044652 
		0.150726 0.027123 0.198391 0.031658 0.198391 0.005728 0.22835 0.043157 0.246375 0.022464 0.240988 0.073239 
		0.271931 0.073239 0.198391 0.073239 0.598193 0.402087 0.600279 0.45875 0.713809 0.430626 0.696854 0.554199 
		0.614043 0.566274 0.802726 0.495608 0.703855 0.597052 0.643441 0.651891 0.739409 0.675433 0.780053 0.60538 
		0.824539 0.556875 0.827236 0.615183 0.803104 0.69169 0.600279 0.45875 0.713809 0.430626 0.694198 0.540063 
		0.614043 0.566274 0.818745 0.509097 0.598193 0.402087 0.700138 0.600968 0.771064 0.592235 0.739409 0.675433 
		0.803105 0.69169 0.827236 0.615183 0.643441 0.651891 0.872607 0.538565 0.867749 0.552644 0.886374 0.55661 
		0.892863 0.540955 0.900441 0.560801 0.902695 0.54322 0.914422 0.544878 0.916461 0.563443 0.856261 0.576204 
		0.879092 0.581156 0.849132 0.604434 0.872088 0.608506 0.899503 0.580728 0.895822 0.609206 0.918368 0.581532 
		0.919487 0.609387 0.837058 0.635715 0.867038 0.632643 0.892291 0.635666 0.919492 0.636923 0.829617 0.658835 
		0.860495 0.664189 0.889177 0.665899 0.921185 0.668323 0.812036 0.698034 0.851992 0.698034 0.88656 0.698034 
		0.922628 0.698034 0.945334 0.606594 0.938678 0.578788 0.935682 0.560771 0.933544 0.542746 0.952992 0.66457 
		0.955693 0.698034 0.951175 0.55501 0.947035 0.540323 0.964503 0.606778 0.958658 0.571668 0.971246 0.637226 
		0.950656 0.632308 0.977793 0.67084 0.978463 0.698034 0.307035 0.301357 0.312955 0.259452 0.277906 0.263826 
		0.268882 0.302844 0.346788 0.303491 0.346788 0.261944 0.304868 0.211263 0.322564 0.213562 0.346788 0.215765 
		0.346788 0.346901 0.311448 0.346581 0.346788 0.39487 0.321195 0.39171 0.346788 0.464568 0.303679 0.394732 
		0.281969 0.346366 0.307035 0.301357 0.268882 0.302844 0.277906 0.263826 0.312955 0.259452 0.346788 0.303491 
		0.346788 0.261944 0.304868 0.211263 0.322564 0.213562 0.346788 0.215765 0.346788 0.346901 0.311448 0.346581 
		0.346788 0.39487 0.321195 0.39171 0.346788 0.464568 0.303679 0.394732 0.281969 0.346366 0.872607 0.538565 
		0.892863 0.540955 0.886374 0.55661 0.867749 0.552644 0.900441 0.560801 0.902695 0.54322 0.914422 0.544878 
		0.916461 0.563443 0.856261 0.576204 0.879092 0.581156 0.849132 0.604434 0.872088 0.608506 0.899503 0.580728 
		0.895822 0.609206 0.918368 0.581532 0.919487 0.609387 0.837058 0.635715 0.867038 0.632643 0.892291 0.635666 
		0.919492 0.636923 0.829617 0.658835 0.860495 0.664189 0.889177 0.665899 0.921185 0.668323 0.812036 0.698034 
		0.851992 0.698034 0.88656 0.698034 0.922628 0.698034 0.945334 0.606594 0.938678 0.578788 0.935682 0.560771 
		0.933544 0.542746 0.952992 0.66457 0.955693 0.698034 0.951175 0.55501 0.947035 0.540323 0.964503 0.606778 
		0.958658 0.571668 0.971246 0.637226 0.950656 0.632308 0.977793 0.67084 0.978463 0.698034 0.307035 0.301357 
		0.268882 0.302844 0.277906 0.263826 0.312955 0.259452 0.346788 0.303491 0.346788 0.261944 0.304868 0.211263 
		0.322564 0.213562 0.346788 0.215765 0.346788 0.346901 0.311448 0.346581 0.346788 0.39487 0.321195 0.39171 
		0.346788 0.464568 0.303679 0.394732 0.281969 0.346366 0.307035 0.301357 0.312955 0.259452 0.277906 0.263826 
		0.268882 0.302844 0.346788 0.303491 0.346788 0.261944 0.304868 0.211263 0.322564 0.213562 0.346788 0.215765 
		0.346788 0.346901 0.311448 0.346581 0.346788 0.39487 0.321195 0.39171 0.346788 0.464568 0.303679 0.394732 
		0.281969 0.346366 0.4361 0.3205 0.4401 0.3046 0.4092 0.3029 0.013 0.989 0.0617 0.989 
		0.013 0.9794 0.0617 0.989 0.013 0.989 0.013 0.9794 0.9399 0.6921 0.9466 0.5923 
		0.8059 0.6153 0.8039 0.5657 0.9471 0.5119 0.8068 0.5105 0.821 0.7506 0.9356 0.7564 
		0.6913 0.4649 0.7046 0.3426 0.7466 0.4764 0.7737 0.3492 0.8104 0.4748 0.8727 0.3374 
		0.9505 0.474 0.9382 0.3278 0.8039 0.5657 0.9466 0.5923 0.8059 0.6153 0.9399 0.6921 
		0.9471 0.5119 0.8068 0.5105 0.821 0.7506 0.9356 0.7564 0.7737 0.3492 0.7046 0.3426 
		0.7466 0.4764 0.6913 0.4649 0.8104 0.4748 0.8727 0.3374 0.9505 0.474 0.9382 0.3278 
		0.318231 0.156876 0.273961 0.155414 0.273961 0.195023 0.273961 0.108955 0.321418 0.119039 0.354634 0.158718 
		0.357307 0.11911 0.318539 0.195023 0.361956 0.195023 0.391083 0.119891 0.389792 0.157044 0.423549 0.117672 
		0.431758 0.152891 0.400051 0.195023 0.442054 0.195023 0.486536 0.195023 0.474961 0.145749 0.466832 0.110437 
		0.202756 0.197907 0.201294 0.242178 0.163147 0.197907 0.249215 0.197907 0.239131 0.245364 0.199452 0.278581 
		0.23906 0.281253 0.163147 0.242485 0.163147 0.285902 0.238279 0.315029 0.201126 0.313739 0.240498 0.347496 
		0.20528 0.355704 0.163147 0.323998 0.163147 0.366 0.163147 0.410482 0.212421 0.398907 0.247733 0.390778 
		0.273961 0.195023 0.273961 0.155414 0.318231 0.156876 0.273961 0.108955 0.321418 0.119039 0.354634 0.158718 
		0.357307 0.11911 0.318539 0.195023 0.361956 0.195023 0.391083 0.119891 0.389792 0.157044 0.423549 0.117672 
		0.431758 0.152891 0.400051 0.195023 0.442054 0.195023 0.486536 0.195023 0.474961 0.145749 0.466832 0.110437 
		0.202756 0.197907 0.163147 0.197907 0.201294 0.242178 0.249215 0.197907 0.239131 0.245364 0.199452 0.278581 
		0.23906 0.281253 0.163147 0.242485 0.163147 0.285902 0.238279 0.315029 0.201126 0.313739 0.240498 0.347496 
		0.20528 0.355704 0.163147 0.323998 0.163147 0.366 0.163147 0.410482 0.212421 0.398907 0.247733 0.390778 
;
	setAttr  ".cuvs" -type "string" "map1";
	setAttr -s 1638 ".vt[0:1637]" 
		0.1400682 -0.09427285 1.096121 0.1484992 -0.09575645 0.98745 0.08888405 -0.1192839 0.9820917 0.07661714 -0.1254504 1.084669 0.1733859 -0.01704946 0.9942901 0.1680432 -0.02268221 1.083554 
		0.1289449 -0.09465635 1.171563 0.1496134 -0.02934487 1.172015 0.1420678 0.05077465 1.092455 0.1417383 0.03143754 1.044152 0.08684503 0.08690503 1.041768 0.0898822 0.06747879 1.022867 
		0.1402549 0.03782072 0.992265 0.09068278 0.07400767 0.981778 0.1269269 0.04486391 1.168951 0.06678294 0.0909523 1.165134 0.07659999 0.1019829 1.074942 -0.0001334896 0.08942722 1.186607 
		0.01371884 0.09353468 1.136301 0.01939695 0.06166434 1.086785 -0.0001334899 0.07929782 1.135384 -0.0001335018 0.038234 1.100102 -0.0001334899 -0.02005984 1.089471 0.01086624 -0.0170863 1.092168 
		0.03479779 0.02553872 1.062426 0.09002221 0.0691222 0.8968566 0.02893907 0.03902343 0.9755136 0.005798413 -0.008791664 0.9688523 0.01310809 0.01181326 0.8963112 0.02514789 0.02169281 0.8159288 
		0.08689898 0.06001766 0.8146898 0.1617782 -0.006972267 0.8951229 0.1473815 0.005865574 0.8146815 0.1321843 -0.07262087 0.8073767 0.1399207 -0.08829875 0.8890111 0.08717501 -0.1085167 0.8898951 
		0.08633287 -0.09283563 0.8116062 0.03744065 -0.06728706 0.8124762 0.02611784 -0.08398172 0.8919724 0.01310809 0.01181326 0.8963112 0.02514789 0.02169281 0.8159288 0.01715139 -0.09267151 0.9723871 
		0.005798413 -0.008791664 0.9688523 0.02637612 -0.09684434 1.103577 0.01086624 -0.0170863 1.092168 0.03097738 0.02312618 0.7263858 0.0438287 -0.05324059 0.7241212 0.03006021 0.0175953 0.6784909 
		0.0417503 -0.04819181 0.6771309 0.08443529 -0.07231022 0.7214156 0.08169222 -0.06329384 0.6773911 0.1114382 -0.0503773 0.6787555 0.1199351 -0.05647985 0.7248248 0.1267509 0.01479937 0.6811225 
		0.1332593 0.01768259 0.7282865 0.0851253 0.05089679 0.7288635 0.08396766 0.04648008 0.6795442 0.03006021 0.0175953 0.6784909 0.03097738 0.02312618 0.7263858 0.08286848 -0.06445062 0.6368858 
		0.1149199 -0.04592223 0.6372727 0.08330481 -0.03886653 0.5839495 0.1061349 -0.02512032 0.5920673 0.1212828 0.02041032 0.6223921 0.08693765 0.04590563 0.6193714 0.04108813 -0.04649125 0.6346164 
		0.05255646 -0.01880828 0.591821 0.04492551 0.02216191 0.6006449 0.04492551 0.02216191 0.6006449 0.1352479 0.04427791 0.532231 0.09169117 0.0768766 0.5254456 0.03612451 0.04118456 0.5183918 
		0.1390942 0.04450459 0.4513512 0.08990078 0.07979703 0.4454866 0.1199747 -0.009744627 0.4476591 0.1154708 -0.01780437 0.5261506 0.08514279 -0.03367695 0.5221075 0.08767063 -0.02706626 0.4422759 
		0.04084865 0.04433392 0.4401966 0.05425449 -0.01712159 0.4402471 0.05082293 -0.01797886 0.5190768 0.03612451 0.04118456 0.5183918 0.04084865 0.04433392 0.4401966 0.08253714 -0.01115976 0.3074023 
		0.1045551 0.007912027 0.3099603 0.07943015 -0.00559863 0.223404 0.09793414 0.01241788 0.2225102 0.1163344 0.04460744 0.3141862 0.1043448 0.03724083 0.2231988 0.08156209 0.06251418 0.3133587 
		0.07838517 0.05263181 0.2237105 0.05466824 0.03770777 0.3110793 0.05315688 0.03135508 0.2248832 0.05782669 0.007805439 0.223751 0.0620315 0.002706944 0.3069613 0.05315688 0.03135508 0.2248832 
		0.05466824 0.03770777 0.3110793 0.0962939 0.012214 0.1841959 0.07806879 -0.005768603 0.1835194 0.07564149 0.05136426 0.1796808 0.0991497 0.03735736 0.182726 0.05444004 0.008609631 0.1820405 
		0.05102651 0.03164754 0.1797427 0.05102651 0.03164754 0.1797427 -0.0001334899 -0.1227367 1.125091 0.07262785 -0.1311371 1.161504 0.03626737 -0.1157063 1.115661 -0.0001334896 -0.1410337 1.17747 
		0.05940312 -0.1349582 1.209254 0.1311492 -0.09798916 1.171854 0.1078945 -0.09795267 1.219983 0.05259864 -0.1384549 1.272344 -0.0001334906 -0.1560509 1.258244 -0.00013349 -0.1444691 1.192941 
		0.09440289 -0.08329427 1.312713 0.05167489 -0.144865 1.333364 -0.0001334908 -0.1584723 1.328121 0.07695745 -0.09035084 1.347903 0.08568084 -0.102006 1.402088 0.06402252 -0.1247886 1.399267 
		0.03890675 -0.1426554 1.360249 0.02795937 -0.1404458 1.409311 0.09326203 -0.06327141 1.42356 0.1025137 -0.1323434 1.418401 0.07803424 -0.1594777 1.416559 0.05654735 -0.1511868 1.407839 
		0.105091 -0.09721892 1.423482 0.0700379 -0.01782665 1.38825 0.06070078 -0.03281358 1.338463 -0.0001334907 -0.0189728 1.340501 -0.0001334904 -0.0087784 1.384081 -0.0001334782 -0.0017565 1.308157 
		0.06494147 -0.01864434 1.305873 0.03427334 -0.157474 1.416346 0.1362935 -0.04850318 1.266073 0.1690469 -0.03159588 1.196711 0.1248704 0.03630222 1.205257 0.1076326 0.03306928 1.247248 
		0.05750548 0.07864748 1.224268 0.05002661 0.06108583 1.250539 0.05828655 0.02628709 1.287276 -0.0001334847 0.04642651 1.28192 -0.0001334895 0.0722142 1.257942 -0.0001334898 0.09086234 1.221113 
		-0.0001334896 0.1063904 1.186302 0.06629892 0.09883024 1.165147 0.1371822 0.05361895 1.169129 0.0560335 -0.1652963 1.417546 0.03967826 -0.1764116 1.434196 0.06468991 -0.1777737 1.433572 
		0.08480421 -0.1723111 1.431836 0.09156456 -0.1619485 1.427619 0.08424 -0.180771 1.452601 0.06315731 -0.186263 1.453558 0.08430863 -0.1789691 1.469378 0.1038884 -0.1664342 1.459364 
		0.06411058 -0.1833197 1.476168 0.08442618 -0.1658496 1.488948 0.05842819 -0.1740657 1.487548 0.03684574 -0.1829351 1.455621 0.03891718 -0.1733631 1.484112 0.05248256 -0.1847943 1.444505 
		0.04340351 -0.15346 1.503287 0.0794368 -0.1492945 1.500286 0.07448118 -0.1327152 1.510087 0.04289447 -0.1354857 1.512089 0.06747023 -0.07760404 1.534395 0.08558024 -0.05901964 1.513315 
		0.09668447 -0.1123481 1.504427 0.1034633 -0.1258281 1.493966 0.1060959 -0.08128834 1.489352 0.1076741 -0.04071115 1.51084 0.1211596 -0.02704966 1.485445 0.1009294 -0.02843012 1.442122 
		0.106553 -0.07137495 1.461992 0.1139304 -0.1016802 1.472973 0.1116997 -0.1361064 1.479905 0.1235769 0.00935952 1.474086 0.05863562 -0.01848899 1.564188 -0.0001334898 -0.07465927 1.537932 
		-0.000133478 -0.03762682 1.568357 -0.0001334772 -0.105044 1.510599 0.01939312 -0.1357517 1.499224 0.02839562 -0.1467353 1.499449 0.1143631 -0.1400611 1.448006 0.1111934 -0.1517172 1.470242 
		0.08141548 0.03295975 1.435258 0.1191842 0.05268983 1.474797 0.1030824 0.06156672 1.505116 0.06594729 0.06604871 1.505402 0.04739443 0.03783149 1.434813 -0.0001334898 0.05988555 1.503603 
		-0.0001334898 0.04076609 1.431231 0.107911 0.05131351 1.551178 0.05847654 0.05030698 1.575399 -0.0001334898 0.05988555 1.503603 -0.0001334898 0.05966303 1.569505 -0.00013349 0.04367926 1.610816 
		0.0344943 0.03422581 1.611275 0.1200982 0.01731365 1.57291 0.139486 0.01460756 1.563182 0.1301686 0.04989241 1.543516 0.06800964 0.01865434 1.586296 0.1293721 0.0538419 1.503402 
		0.1120503 -0.08383086 1.45001 0.1152756 -0.1074776 1.441245 0.1090943 -0.1483595 1.434119 0.1024487 -0.1671098 1.450303 0.09987887 -0.1567906 1.48471 0.01968662 -0.1581504 1.4273 
		0.01554988 -0.1416143 1.421531 0.02002176 -0.1739191 1.451839 0.007272329 -0.1589225 1.448057 -0.0001334831 -0.1433778 1.444276 -0.000133487 -0.1512198 1.380164 0.02356935 -0.1632445 1.481949 
		0.01120999 -0.1506407 1.479786 -0.0001334831 -0.1347308 1.477623 0.02637612 -0.09684434 1.103577 -0.0001334899 -0.02005984 1.089471 -0.0001334899 -0.06681281 1.096064 0.01086624 -0.0170863 1.092168 
		0.07661714 -0.1254504 1.084669 0.1289449 -0.09465635 1.171563 0.0962939 0.012214 0.1841959 0.07622439 -0.01549084 0.1415654 0.07806879 -0.005768603 0.1835194 0.103014 0.008067991 0.1423104 
		0.04788188 0.01249481 0.1443481 0.05444004 0.008609631 0.1820405 0.04637129 0.04239914 0.1563776 0.05102651 0.03164754 0.1797427 0.07468867 0.06305183 0.152872 0.07564149 0.05136426 0.1796808 
		0.09877001 0.04743428 0.1507302 0.0991497 0.03735736 0.182726 0.07468867 0.06305183 0.152872 0.07564149 0.05136426 0.1796808 0.1019437 0.05734124 0.1241409 0.07108717 0.07662741 0.1267331 
		0.05465909 -0.02728853 0.08195994 0.07741008 -0.04114269 0.09898836 0.03992806 0.05522727 0.1232322 0.04955569 0.0117721 0.1044464 0.05651374 -0.05744759 0.04447309 0.0515486 0.01091162 0.0569381 
		0.05539177 -0.02354898 0 0.05069456 -0.06562706 0 0.0601949 -0.1001393 0 0.08246123 -0.06512882 0.06285591 0.06168127 -0.09516595 0.02474151 0.08809675 -0.119399 0.03237667 
		0.09012232 -0.1380563 0 0.1144888 -0.1000989 0 0.1151096 -0.09310737 0.02902425 0.1277774 -0.06679829 -0.0003171511 0.1223308 -0.04464978 0.01912468 0.1247154 -0.0261614 -0.001579677 
		0.1080323 0.01125202 0.05497319 0.1185628 -0.05074371 0.04217175 0.1070403 -0.01620338 0.08033584 0.108398 0.009553605 0.1022289 0.1020233 0.05434846 0.1033236 0.08799203 0.03881236 0.0760926 
		0.08776207 0.04899934 0.08009428 0.07173433 0.07851347 0.1075552 0.07286486 0.06350835 0.0797355 0.05069456 -0.06562706 0 0.1144888 -0.1000989 0 0.1277774 -0.06679829 -0.0003171511 
		0.09012232 -0.1380563 0 0.0601949 -0.1001393 0 0.05539177 -0.02354898 0 0.1247154 -0.0261614 -0.001579677 0.0515486 0.01091162 0.0569381 0.1080323 0.01125202 0.05497319 
		0.06369851 0.03792712 0.07601122 0.08799203 0.03881236 0.0760926 0.06817301 0.04206313 0.02876685 0.08056048 0.04247363 0.02877333 0.0708644 0.04306624 0 0.07692102 0.04415793 0 
		0.076499 0.05088049 0 0.06842007 0.04965676 0 0.07258768 0.05329546 0 0.07108717 0.07662741 0.1267331 0.07173433 0.07851347 0.1075552 0.0427177 0.05407061 0.1027272 
		0.07286486 0.06350835 0.0797355 0.06130229 0.04855007 0.07984114 0.06369851 0.03792712 0.07601122 0.076499 0.05088049 0 0.08040255 0.04895132 0.02952738 0.07278433 0.05568091 0.02949879 
		0.07258768 0.05329546 0 0.06674521 0.04801107 0.02950722 0.06842007 0.04965676 0 0.06817301 0.04206313 0.02876685 0.0708644 0.04306624 0 0.07692102 0.04415793 0 
		0.08056048 0.04247363 0.02877333 0.07286486 0.06350835 0.0797355 0.08776207 0.04899934 0.08009428 0.06130229 0.04855007 0.07984114 0.06369851 0.03792712 0.07601122 0.08799203 0.03881236 0.0760926 
		0.02586921 -0.0164313 1.627273 0.0006496582 -0.03079227 1.637626 0.01769645 -0.0244256 1.643923 -0.000133478 -0.0272987 1.614282 0.03419086 -0.009066609 1.659243 0.03974786 0.009589231 1.673408 
		0.03280776 0.01091059 1.636781 0.03249752 -0.01373283 1.593231 -0.000133478 -0.0272987 1.614282 -0.000133478 -0.02751256 1.592469 0.03691509 0.01925828 1.608967 0.04324659 0.01901454 1.599817 
		-0.000133478 -0.03762682 1.568357 0.06800964 0.01865434 1.586296 0.1200982 0.01731365 1.57291 0.1061536 -0.02078482 1.551757 0.1218451 -0.02071451 1.546532 0.139486 0.01460756 1.563182 
		0.03691509 0.01925828 1.608967 0.0344943 0.03422581 1.611275 0.04324659 0.01901454 1.599817 0.02638404 0.03044707 1.639158 0.03280776 0.01091059 1.636781 0.02349068 0.03466111 1.677869 
		0.03974786 0.009589231 1.673408 0.0006496587 0.04223202 1.67784 -0.0001334898 0.04202111 1.637919 -0.0001334898 0.04202111 1.637919 -0.00013349 0.04367926 1.610816 0.04412623 0.02716269 1.599945 
		0.05847654 0.05030698 1.575399 0.07262785 -0.1311371 1.161504 0.1311492 -0.09798916 1.171854 0.1620953 -0.09332158 1.062038 0.09407293 -0.1402342 1.051617 0.1997247 -0.01149806 1.065233 
		0.1690469 -0.03159588 1.196711 0.1371822 0.05361895 1.169129 0.1680954 0.07543834 1.058433 0.1318022 -0.1519717 0.9354751 0.2101051 -0.1026217 0.9454896 0.1729244 -0.1689067 0.7908195 
		0.2499165 -0.1120516 0.815971 0.2363745 0.0002125105 0.9703317 0.2870955 0.01606664 0.8384882 0.2016117 0.09961951 0.9735087 0.2523399 0.1317642 0.8358458 0.2105969 -0.1859539 0.6503124 
		0.2932856 -0.1194543 0.6804107 0.3388111 0.02333977 0.7026879 0.292134 0.1551996 0.6975338 0.2399468 -0.2040371 0.4656948 0.3453679 -0.1250305 0.5124934 0.3918038 0.03536393 0.5461977 
		0.3355895 0.1908135 0.5324925 0.2555709 -0.2319867 0.2420943 0.3811322 -0.1263051 0.3195429 0.4344465 0.05095143 0.3749875 0.357842 0.2131147 0.3693277 0.1419132 0.1925807 0.8160484 
		0.1133882 0.1454592 0.9589832 0.08762629 0.118541 1.048228 0.06629892 0.09883024 1.165147 0.1989619 0.2820199 0.520912 0.2092108 0.3248856 0.3619635 0.02273997 0.1283561 1.08229 
		-0.0001334896 0.1063904 1.186302 0.04988001 0.2183527 0.8148867 0.03757928 0.1622782 0.9598285 0.06104686 0.2630896 0.6830965 0.1680704 0.2327864 0.6833327 0.07680415 0.3206331 0.5226504 
		0.07903682 0.3522309 0.3650559 -0.1403352 -0.09427286 1.096121 -0.07688411 -0.1254504 1.084669 -0.08915101 -0.1192839 0.9820917 -0.1487661 -0.09575644 0.9874499 -0.1736528 -0.01704946 0.9942901 
		-0.1683102 -0.02268222 1.083554 -0.1292119 -0.09465636 1.171563 -0.1498803 -0.02934488 1.172015 -0.1423348 0.05077463 1.092455 -0.1420052 0.03143754 1.044152 -0.087112 0.08690505 1.041768 
		-0.09014918 0.06747881 1.022868 -0.1405219 0.03782072 0.992265 -0.09094974 0.07400768 0.981778 -0.1271938 0.04486391 1.168951 -0.06704991 0.09095228 1.165134 -0.07686695 0.1019829 1.074942 
		-0.0001334896 0.08942722 1.186607 -0.01398581 0.09353466 1.136301 -0.01966392 0.06166434 1.086785 -0.0001334899 0.07929782 1.135384 -0.0001335018 0.038234 1.100102 -0.0001334899 -0.02005984 1.089471 
		-0.01113321 -0.0170863 1.092168 -0.03506474 0.02553871 1.091269 -0.09028918 0.0691222 0.8968566 -0.03377885 0.03902342 0.9755136 -0.00717058 -0.008791655 0.9688523 -0.01104064 0.01181327 0.8963112 
		-0.02541487 0.02169282 0.8159288 -0.08716594 0.06001766 0.8146898 -0.1620452 -0.006972256 0.8951229 -0.1476485 0.005865598 0.8146815 -0.1324513 -0.07262085 0.8073767 -0.1401876 -0.08829872 0.8890111 
		-0.08744197 -0.1085167 0.8898951 -0.08659984 -0.0928356 0.8116061 -0.03770762 -0.06728704 0.812476 -0.02405038 -0.08398172 0.8919724 -0.01104064 0.01181327 0.8963112 -0.02541487 0.02169282 0.8159288 
		-0.01852356 -0.09267151 0.9723871 -0.00717058 -0.008791655 0.9688523 -0.02664311 -0.09684434 1.103577 -0.01113321 -0.0170863 1.092168 -0.03124435 0.02312619 0.7263858 -0.04409565 -0.05324056 0.7241211 
		-0.03032717 0.0175953 0.6784909 -0.04201726 -0.04819181 0.6771308 -0.08470225 -0.07231019 0.7214155 -0.08195918 -0.06329384 0.6773911 -0.1117052 -0.0503773 0.6787556 -0.1202021 -0.05647984 0.7248248 
		-0.1270178 0.01479937 0.6811226 -0.1335263 0.01768258 0.7282864 -0.08539227 0.05089679 0.7288635 -0.08423463 0.04648008 0.6795442 -0.03032717 0.0175953 0.6784909 -0.03124435 0.02312619 0.7263858 
		-0.08313545 -0.0644506 0.6368856 -0.1151869 -0.04592223 0.6372727 -0.08357175 -0.03886651 0.5839495 -0.1064019 -0.02512032 0.5920674 -0.1215498 0.02041032 0.6223922 -0.08720464 0.04590563 0.6193715 
		-0.0413551 -0.04649123 0.6346163 -0.05282344 -0.01880828 0.591821 -0.04519248 0.02216191 0.6006449 -0.04519248 0.02216191 0.6006449 -0.1355148 0.04427791 0.532231 -0.09195815 0.07687663 0.5254457 
		-0.03639147 0.04118456 0.5183918 -0.1393612 0.0445046 0.4513512 -0.09016776 0.07979704 0.4454867 -0.1202416 -0.009744627 0.4476591 -0.1157378 -0.01780435 0.5261506 -0.08540976 -0.03367695 0.5221075 
		-0.0879376 -0.02706626 0.4422759 -0.04111562 0.04433392 0.4401966 -0.05452146 -0.01712159 0.4402471 -0.0510899 -0.01797886 0.5190768 -0.03639147 0.04118456 0.5183918 -0.04111562 0.04433392 0.4401966 
		-0.08280411 -0.01115976 0.3074023 -0.104822 0.007912027 0.3099603 -0.07969711 -0.00559863 0.223404 -0.09820114 0.01241788 0.2225102 -0.1166014 0.04460744 0.3141862 -0.1046118 0.03724083 0.2231988 
		-0.08182905 0.06251418 0.3133588 -0.07865214 0.0526318 0.2237105 -0.05493521 0.03770777 0.3110793 -0.05342383 0.03135508 0.2248832 -0.05809366 0.007805439 0.223751 -0.06229846 0.002706944 0.3069613 
		-0.05342383 0.03135508 0.2248832 -0.05493521 0.03770777 0.3110793 -0.09656087 0.012214 0.1841959 -0.09941667 0.03735736 0.182726 -0.07590847 0.05136427 0.1796808 -0.05129348 0.03164753 0.1797427 
		-0.05129348 0.03164753 0.1797427 -0.05470701 0.008609619 0.1820405 -0.07833576 -0.005768615 0.1835194 -0.0001334899 -0.1227367 1.125091 -0.03938469 -0.1159659 1.113735 -0.07289482 -0.1311371 1.161504 
		-0.0001334896 -0.1410337 1.17747 -0.0596701 -0.1349582 1.209254 -0.1314162 -0.09798913 1.171854 -0.1081615 -0.09795264 1.219983 -0.05286561 -0.1384549 1.272344 -0.0001334906 -0.1560509 1.258244 
		-0.00013349 -0.1444691 1.192941 -0.09466986 -0.0804939 1.312713 -0.05194186 -0.1448649 1.333364 -0.0001334908 -0.1584723 1.328121 -0.0772244 -0.08769623 1.347903 -0.0859478 -0.102006 1.402088 
		-0.06428947 -0.1247885 1.399267 -0.04045966 -0.1426553 1.362475 -0.09352899 -0.06327141 1.42356 -0.07030487 -0.01782666 1.38825 -0.06096774 -0.03281358 1.338463 -0.0001334907 -0.0189728 1.340501 
		-0.0001334904 -0.0087784 1.384081 -0.06520843 -0.01864435 1.300779 -0.0001334782 -0.0017565 1.308157 -0.1365605 -0.04850315 1.266073 -0.1693139 -0.03159586 1.196711 -0.1219619 0.04205293 1.210401 
		-0.1047241 0.02286374 1.25065 -0.05777245 0.08268403 1.224268 -0.05029356 0.06108581 1.250539 -0.0585535 0.02849328 1.279099 -0.0001334847 0.04642651 1.28192 -0.0001334895 0.0722142 1.257942 
		-0.0001334898 0.09086234 1.221113 -0.0001334896 0.1063904 1.186302 -0.0665659 0.09744005 1.165147 -0.1374492 0.05361893 1.169129 -0.02664311 -0.09684434 1.103577 -0.0001334899 -0.06681281 1.096064 
		-0.0001334899 -0.02005984 1.089471 -0.01113321 -0.0170863 1.092168 -0.07688411 -0.1254504 1.084669 -0.1292119 -0.09465636 1.171563 -0.09656087 0.012214 0.1841959 -0.07833576 -0.005768615 0.1835194 
		-0.07649137 -0.01549084 0.1415654 -0.103281 0.008067991 0.1423104 -0.04814886 0.01249481 0.1443481 -0.05470701 0.008609619 0.1820405 -0.04663827 0.04239914 0.1563776 -0.05129348 0.03164753 0.1797427 
		-0.07495563 0.06305181 0.152872 -0.07590847 0.05136427 0.1796808 -0.09903698 0.04743426 0.1507302 -0.09941667 0.03735736 0.182726 -0.07495563 0.06305181 0.152872 -0.07590847 0.05136427 0.1796808 
		-0.1022106 0.05734124 0.1241408 -0.07135413 0.0766274 0.1267331 -0.05492606 -0.02728853 0.08195994 -0.07767706 -0.04114269 0.09898836 -0.04019504 0.05522727 0.1232322 -0.04982267 0.0117721 0.1044464 
		-0.0567807 -0.05744759 0.04447309 -0.05181555 0.01091162 0.0569381 -0.05565875 -0.02354898 0 -0.05096153 -0.06562706 0 -0.06046187 -0.1001393 0 -0.08272819 -0.06512882 0.06285591 
		-0.06194823 -0.09516595 0.02474151 -0.08836371 -0.119399 0.03237666 -0.0903893 -0.1380563 0 -0.1147558 -0.1000989 0 -0.1153765 -0.09310737 0.02902423 -0.1280444 -0.06679829 -0.0003171511 
		-0.1225978 -0.04464978 0.01912468 -0.1249823 -0.0261614 -0.001579689 -0.1082992 0.01125202 0.05497319 -0.1188298 -0.05074369 0.04217175 -0.1073073 -0.01620338 0.08033584 -0.108665 0.009553605 0.1022289 
		-0.1022903 0.05434846 0.1033236 -0.08825899 0.03881236 0.0760926 -0.08802903 0.04899934 0.08009428 -0.07200132 0.07851347 0.1075552 -0.07313183 0.06350835 0.0797355 -0.05096153 -0.06562706 0 
		-0.1280444 -0.06679829 -0.0003171511 -0.1147558 -0.1000989 0 -0.0903893 -0.1380563 0 -0.06046187 -0.1001393 0 -0.05565875 -0.02354898 0 -0.1249823 -0.0261614 -0.001579689 
		-0.05181555 0.01091162 0.0569381 -0.1082992 0.01125202 0.05497319 -0.06396548 0.03792714 0.07601122 -0.08825899 0.03881236 0.0760926 -0.06843999 0.04206313 0.02876685 -0.08082745 0.04247363 0.02877333 
		-0.07113138 0.04306624 0 -0.07718798 0.04415793 0 -0.07676598 0.05088049 0 -0.06868703 0.04965676 0 -0.07285465 0.05329545 0 -0.07135413 0.0766274 0.1267331 
		-0.07200132 0.07851347 0.1075552 -0.04298466 0.05407061 0.1027272 -0.07313183 0.06350835 0.0797355 -0.06156927 0.04855007 0.07984115 -0.06396548 0.03792714 0.07601122 -0.07676598 0.05088049 0 
		-0.07285465 0.05329545 0 -0.0730513 0.05568089 0.02949879 -0.08066951 0.04895132 0.02952738 -0.06701217 0.04801107 0.02950724 -0.06868703 0.04965676 0 -0.06843999 0.04206313 0.02876685 
		-0.07113138 0.04306624 0 -0.07718798 0.04415793 0 -0.08082745 0.04247363 0.02877333 -0.07313183 0.06350835 0.0797355 -0.08802903 0.04899934 0.08009428 -0.06156927 0.04855007 0.07984115 
		-0.06396548 0.03792714 0.07601122 -0.08825899 0.03881236 0.0760926 -0.000133487 -0.1512198 1.380164 -0.01554553 -0.1416143 1.421531 -0.0001334831 -0.1433778 1.444276 -0.02897745 -0.1404457 1.410913 
		-0.05681432 -0.1511868 1.407839 -0.07830121 -0.1594777 1.416559 -0.1027807 -0.1323434 1.418401 -0.1053579 -0.09721889 1.423482 -0.03454031 -0.157474 1.416346 -0.01554553 -0.1416143 1.421531 
		-0.1123173 -0.08383084 1.45001 -0.1155426 -0.1074776 1.441245 -0.1068199 -0.07137492 1.461992 -0.1011964 -0.02843011 1.442122 -0.08168244 0.0329597 1.435258 -0.04766141 0.03783146 1.434813 
		-0.06621427 0.06604869 1.505402 -0.0001334898 0.05988555 1.503603 -0.0001334898 0.04076609 1.431231 -0.1033494 0.0615667 1.505116 -0.1081779 0.05131352 1.551178 -0.0587435 0.05030697 1.575399 
		-0.0001334898 0.05988555 1.503603 -0.0001334898 0.05966303 1.569505 -0.00013349 0.04367926 1.610816 -0.03476128 0.03422581 1.611275 -0.1203652 0.01731362 1.57291 -0.139753 0.01460756 1.563182 
		-0.06827661 0.01865431 1.586296 -0.1194512 0.05268982 1.474797 -0.1238439 0.009359532 1.474086 -0.1214266 -0.02704966 1.485445 -0.1100172 -0.08128831 1.489352 -0.1079411 -0.04071113 1.51084 
		-0.08584721 -0.05901962 1.513315 -0.1064205 -0.02078482 1.551757 -0.05890259 -0.01848902 1.564188 -0.1203652 0.01731362 1.57291 -0.06827661 0.01865431 1.586296 -0.03276449 -0.01373284 1.593231 
		-0.1221121 -0.02071451 1.546532 -0.139753 0.01460756 1.563182 -0.06773719 -0.07760404 1.534395 -0.0001334898 -0.07465927 1.537932 -0.000133478 -0.03762682 1.568357 -0.000133478 -0.03762682 1.568357 
		-0.000133478 -0.02751256 1.592469 -0.000133478 -0.0272987 1.614282 -0.02613618 -0.01643131 1.627273 -0.03307473 0.01091057 1.636781 -0.03844855 0.009589231 1.673408 -0.03289117 -0.009066612 1.659243 
		-0.03718207 0.01925831 1.608967 -0.04543636 0.0189779 1.598442 -0.04316143 -0.1354857 1.513159 -0.0001334772 -0.105044 1.510599 -0.01966009 -0.1357516 1.499224 -0.02866259 -0.1467353 1.499449 
		-0.07474815 -0.1327152 1.510087 -0.0983241 -0.1123481 1.504427 -0.04367048 -0.1534599 1.503287 -0.1037303 -0.1258281 1.493966 -0.1161961 -0.1016802 1.472973 -0.1119666 -0.1361064 1.479905 
		-0.1146301 -0.1400611 1.448006 -0.1113179 -0.1517172 1.470242 -0.07970377 -0.1492944 1.50085 -0.08469314 -0.1675548 1.48894 -0.1001458 -0.1567906 1.48471 -0.05869515 -0.1757709 1.48718 
		-0.06437755 -0.1821225 1.476168 -0.0845756 -0.1789691 1.469378 -0.06342428 -0.186263 1.453558 -0.08450697 -0.1785071 1.452601 -0.1041554 -0.1664342 1.459364 -0.06640521 -0.1777737 1.433572 
		-0.03711272 -0.1817927 1.455621 -0.03918414 -0.1732844 1.484112 -0.08507117 -0.172311 1.431836 -0.05630046 -0.1652963 1.417546 -0.09183152 -0.1619484 1.427619 -0.03994524 -0.1764116 1.434196 
		-0.05180189 -0.1834518 1.442454 -0.1027157 -0.1671098 1.450303 -0.1079218 -0.1482259 1.434119 -0.02495698 -0.1630528 1.481949 -0.02301678 -0.1723067 1.451839 -0.008941247 -0.1576457 1.448057 
		-0.02325305 -0.159352 1.4273 -0.0001334831 -0.1433778 1.444276 -0.01372663 -0.1506407 1.479786 -0.0001334831 -0.1347308 1.477623 -0.01639714 -0.0244256 1.643923 0.0006496582 -0.03079227 1.637626 
		-0.000133478 -0.0272987 1.614282 -0.03718207 0.01925831 1.608967 -0.04543636 0.0189779 1.598442 -0.03476128 0.03422581 1.611275 -0.02665101 0.03044708 1.639158 -0.03307473 0.01091057 1.636781 
		-0.02218157 0.03466111 1.677869 -0.03844855 0.009589231 1.673408 0.0006496587 0.04223202 1.67784 -0.0001334898 0.04202111 1.637919 -0.0001334898 0.04202111 1.637919 -0.00013349 0.04367926 1.610816 
		-0.04746877 0.02574971 1.597678 -0.0587435 0.05030697 1.575399 -0.1079411 -0.04071113 1.51084 -0.1453066 -0.02022969 1.532271 -0.1221121 -0.02071451 1.546532 -0.1214266 -0.02704966 1.485445 
		-0.1593744 0.01521852 1.546444 -0.139753 0.01460756 1.563182 -0.1304356 0.04989241 1.543516 -0.1453372 0.04945756 1.535828 -0.1296391 0.0538419 1.503402 -0.1519131 -0.02494103 1.460477 
		-0.1752391 -0.02021502 1.48203 -0.2340398 -0.013614 1.385516 -0.2509342 -0.01349548 1.403323 -0.2545213 -0.009653236 1.359759 -0.2463769 0.007750554 1.348653 -0.2196962 0.009721441 1.373946 
		-0.2732752 -0.009311224 1.378248 -0.2589793 0.01249092 1.414904 -0.2848073 0.01313354 1.385937 -0.2546657 0.04552833 1.401167 -0.2764511 0.04661882 1.374533 -0.2330779 0.047039 1.380803 
		-0.2552451 0.05075119 1.353646 -0.2196962 0.009721441 1.373946 -0.2463769 0.007750554 1.348653 -0.2828421 0.04832017 1.329812 -0.3109563 0.00994225 1.368241 -0.2982822 0.04390946 1.351577 
		-0.272026 -0.01358052 1.337147 -0.2662856 0.004257179 1.318361 -0.2949884 -0.01204679 1.353719 -0.3123598 -0.02083757 1.296449 -0.3345662 -0.01949066 1.317307 -0.4284102 -0.03490919 1.176444 
		-0.4490857 -0.03186359 1.186495 -0.4393522 -0.03619193 1.151579 -0.4642203 -0.03429988 1.163678 -0.4634133 -0.007295723 1.190671 -0.4799265 -0.01292211 1.169059 -0.4567881 0.01448328 1.181045 
		-0.4713168 0.01106096 1.16409 -0.4397912 0.01821635 1.169109 -0.450281 0.01581122 1.149556 -0.4243028 -0.003348833 1.169533 -0.4356275 -0.005243417 1.148271 -0.4356275 -0.005243417 1.148271 
		-0.4243028 -0.003348833 1.169533 -0.2979368 0.005079025 1.281775 -0.3214687 0.04462302 1.286645 -0.2979368 0.005079025 1.281775 -0.3554581 0.007225559 1.329705 -0.3463108 0.0400342 1.304885 
		-0.2662856 0.004257179 1.318361 -0.07289482 -0.1311371 1.161504 -0.09433991 -0.1402342 1.051616 -0.1623623 -0.09332157 1.062038 -0.1314162 -0.09798913 1.171854 -0.1999917 -0.01149804 1.065233 
		-0.1693139 -0.03159586 1.196711 -0.1374492 0.05361893 1.169129 -0.1683624 0.07543833 1.058434 -0.1320692 -0.1519717 0.9354751 -0.2103721 -0.1026217 0.9454894 -0.1731914 -0.1689067 0.7908192 
		-0.2501835 -0.1120516 0.8159709 -0.2366414 0.0002125105 0.9703317 -0.2873625 0.01606664 0.8384882 -0.2018787 0.09961949 0.9735089 -0.2526069 0.1317642 0.8358458 -0.2108639 -0.185954 0.6503124 
		-0.2935526 -0.1194543 0.6804107 -0.3390781 0.02333979 0.7026879 -0.292401 0.1551996 0.6975338 -0.2402138 -0.2040371 0.4656948 -0.3456349 -0.1250306 0.5124934 -0.3920708 0.03536392 0.5461977 
		-0.3358565 0.1908135 0.5324923 -0.2558379 -0.2319867 0.2420943 -0.3813992 -0.1263052 0.3195429 -0.4347135 0.0509514 0.3749875 -0.3581089 0.2131147 0.3693276 -0.1421801 0.1925806 0.8160484 
		-0.1136552 0.1454592 0.9589833 -0.08789328 0.1185409 1.048228 -0.0665659 0.09744005 1.165147 -0.1992289 0.2820199 0.520912 -0.2094778 0.3248856 0.3619635 -0.02300694 0.1283561 1.082289 
		-0.0001334896 0.1063904 1.186302 -0.05014698 0.2183526 0.8148867 -0.03784626 0.1622782 0.9598284 -0.06131383 0.2630896 0.6830965 -0.1683374 0.2327863 0.6833327 -0.07707112 0.3206331 0.5226505 
		-0.07930379 0.3522309 0.365056 0.06800964 0.01865434 1.586296 0.04412623 0.02716269 1.599945 0.05847654 0.05030698 1.575399 0.04324659 0.01901454 1.599817 -0.04746877 0.02574971 1.597678 
		-0.04543636 0.0189779 1.598442 -0.06827661 0.01865431 1.586296 -0.0587435 0.05030697 1.575399 0.5034277 -0.03160722 1.054174 0.4870681 -0.006262328 1.082895 0.4885792 -0.03604639 1.080714 
		0.5023543 -0.009916131 1.057013 0.4961275 0.01086215 1.062168 0.4872113 0.02700403 1.088982 0.4923669 0.03024034 1.068188 0.4658868 -0.01360586 1.095125 0.4602822 -0.03510765 1.075591 
		0.4681193 -0.05000767 1.075968 0.493517 -0.05543415 1.073938 0.5030377 -0.04923727 1.054597 0.4645232 -0.05093024 1.048793 0.4518384 -0.03893501 1.044622 0.4407402 -0.03451671 1.076873 
		0.4360087 -0.02363748 1.11568 0.4353606 -0.005243417 1.148271 0.4390852 -0.03619191 1.151579 0.4774554 -0.00511635 1.096699 0.4811335 0.02537839 1.100184 0.4500141 0.01581118 1.149556 
		0.4337628 -0.04663438 1.085793 0.4667341 -0.05295037 1.025161 0.4403808 -0.05653533 1.044872 0.4506051 -0.05558261 1.014442 0.4573283 -0.04375129 1.017684 0.4977904 0.02373618 1.101986 
		0.4710499 0.01106102 1.16409 0.4588704 -0.06368323 1.016113 0.5053784 0.01511453 1.102414 0.4796595 -0.01292213 1.169059 0.5145803 -0.003542966 1.10175 0.5162912 -0.02822943 1.102012 
		0.4990609 -0.05256892 1.100223 0.4639534 -0.03429991 1.163678 0.4596456 -0.06080588 1.091968 0.4390852 -0.03619191 1.151579 0.4337628 -0.04663438 1.085793 0.4548842 -0.06415536 1.049601 
		0.4403808 -0.05653533 1.044872 0.4588704 -0.06368323 1.016113 0.4667341 -0.05295037 1.025161 0.4645232 -0.05093024 1.048793 0.4506051 -0.05558261 1.014442 0.4681193 -0.05000767 1.075968 
		0.493517 -0.05543415 1.073938 0.5124731 -0.05303562 1.083879 0.5177489 -0.05353968 1.059427 0.5030377 -0.04923727 1.054597 0.5263305 -0.05641472 1.029678 0.5344698 -0.0456698 1.031756 
		0.5394149 -0.04702957 1.003288 0.5327219 -0.05677136 1.002774 0.5227234 -0.04945114 1.00024 0.5181236 -0.04905352 1.024751 0.5324606 -0.05778455 0.9777421 0.5239746 -0.05013806 0.9832351 
		0.5381578 -0.05015888 0.9775474 0.5279182 -0.04240397 1.061134 0.5286211 -0.03822186 1.000914 0.5215119 -0.03535685 1.026962 0.523738 -0.03017974 1.05847 0.5259044 -0.02853999 1.08144 
		0.5295335 -0.04173051 0.9770236 0.5305943 -0.01822226 1.058553 0.5236757 -0.003954001 1.083198 0.5256976 -0.0178249 1.021248 0.5205856 -0.02932272 1.020971 0.5189523 -0.01949831 0.9938578 
		0.5077891 -0.01067863 0.9963897 0.5153511 -0.00895055 1.023229 0.5116501 -0.02916635 0.994977 0.5018924 -0.02091228 0.9737762 0.4958808 -0.02909891 0.9744402 0.5229675 -0.004727527 1.059179 
		0.5136691 0.01400775 1.065712 0.5127708 0.01581085 1.087026 0.5044993 0.02533649 1.091605 0.5049422 0.03105834 1.06935 0.4937485 -0.01391425 0.9761202 0.5146134 0.007169119 1.022401 
		0.505114 0.01427117 1.025369 0.4923989 0.01448607 1.00413 0.502961 0.007518598 0.9980451 0.5083303 -0.002868072 1.021138 0.4965513 -0.002049575 0.9994178 0.4844275 0.006364582 0.9844525 
		0.4793591 -0.002571294 0.9864466 0.4768842 0.01216501 0.9906456 0.5048206 0.02874007 1.036919 0.4971051 0.0360692 1.040992 0.4842698 0.03649089 1.025523 0.4937733 0.0306418 1.019556 
		0.4989788 0.01873581 1.036682 0.4880545 0.02114351 1.021312 0.4745331 0.03000481 1.009207 0.4709077 0.02182917 1.011173 0.4688742 0.03480391 1.013956 0.4726554 0.02562462 1.02108 
		0.4823484 0.02467717 1.027225 0.4709077 0.02182917 1.011173 0.4880545 0.02114351 1.021312 0.4989788 0.01873581 1.036682 0.4899497 0.02309368 1.04439 0.5136691 0.01400775 1.065712 
		0.505114 0.01427117 1.025369 0.496528 0.002279644 1.0236 0.4923989 0.01448607 1.00413 0.4886904 0.003307934 1.00403 0.5083303 -0.002868072 1.021138 0.4965513 -0.002049575 0.9994178 
		0.4793591 -0.002571294 0.9864466 0.4787597 0.003050938 0.9969394 0.5229675 -0.004727527 1.059179 0.5153511 -0.00895055 1.023229 0.505877 -0.02282694 1.02241 0.5077891 -0.01067863 0.9963897 
		0.5035368 -0.0224287 0.9971716 0.5205856 -0.02932272 1.020971 0.5116501 -0.02916635 0.994977 0.4958808 -0.02909891 0.9744402 0.4936108 -0.02199511 0.9832349 0.523738 -0.03017974 1.05847 
		0.5215119 -0.03535685 1.026962 0.5181236 -0.04905352 1.024751 0.5286211 -0.03822186 1.000914 0.5227234 -0.04945114 1.00024 0.5239746 -0.05013806 0.9832351 0.5295335 -0.04173051 0.9770236 
		0.4937485 -0.01391425 0.9761202 0.5324606 -0.05778455 0.9777421 0.5381578 -0.05015888 0.9775474 0.5018924 -0.02091228 0.9737762 0.4768842 0.01216501 0.9906456 0.4844275 0.006364582 0.9844525 
		0.4488187 -0.03186356 1.186495 0.4639534 -0.03429991 1.163678 0.4390852 -0.03619191 1.151579 0.4281433 -0.03490923 1.176444 0.4631463 -0.007295711 1.190671 0.4796595 -0.01292213 1.169059 
		0.4565211 0.01448328 1.181045 0.4710499 0.01106102 1.16409 0.4395242 0.01821634 1.169109 0.4500141 0.01581118 1.149556 0.4240358 -0.00334888 1.169533 0.4353606 -0.005243417 1.148271 
		0.4353606 -0.005243417 1.148271 0.4240358 -0.00334888 1.169533 0.2976698 0.005079012 1.281775 0.3212017 0.04462305 1.286645 0.3342992 -0.01949063 1.317307 0.3120927 -0.02083758 1.296449 
		0.2976698 0.005079012 1.281775 0.3460439 0.04003419 1.304885 0.3551912 0.007225523 1.329705 0.2947214 -0.01204676 1.353719 0.271759 -0.0135805 1.337147 0.2542543 -0.009653236 1.359759 
		0.2461099 0.007750554 1.348653 0.2337728 -0.01361402 1.385516 0.2194292 0.009721429 1.373946 0.2506673 -0.01349547 1.403323 0.2730082 -0.009311212 1.378248 0.2587124 0.01249093 1.414904 
		0.2845404 0.01313354 1.385937 0.2543987 0.04552834 1.401167 0.2761841 0.04661882 1.374533 0.2328109 0.04703898 1.380803 0.2549782 0.05075121 1.353646 0.2194292 0.009721429 1.373946 
		0.2461099 0.007750554 1.348653 0.2825751 0.04832019 1.329812 0.3106894 0.009942238 1.368241 0.2980152 0.04390945 1.351577 0.2660186 0.004257191 1.318361 0.1497611 0.0523068 1.45041 
		0.1235769 0.00935952 1.474086 0.1768629 0.05013409 1.478089 0.1892064 0.01626368 1.497247 0.1191842 0.05268983 1.474797 0.1450702 0.04945755 1.535828 0.1293721 0.0538419 1.503402 
		0.1301686 0.04989241 1.543516 0.1591074 0.01521853 1.546444 0.139486 0.01460756 1.563182 0.1218451 -0.02071451 1.546532 0.1450396 -0.02022972 1.532271 0.1076741 -0.04071115 1.51084 
		0.1749721 -0.02021503 1.48203 0.1516461 -0.02494101 1.460477 0.1235769 0.00935952 1.474086 0.1211596 -0.02704966 1.485445 0.4745331 0.03000481 1.009207 0.2660186 0.004257191 1.318361 
		-0.1304356 0.04989241 1.543516 -0.1296391 0.0538419 1.503402 -0.5036948 -0.03160722 1.054174 -0.4888462 -0.03604639 1.080714 -0.487335 -0.006262328 1.082895 -0.5026212 -0.009916108 1.057013 
		-0.4963945 0.01086216 1.062167 -0.4874783 0.02700404 1.088982 -0.4926338 0.03024035 1.068188 -0.4661537 -0.01360588 1.095125 -0.4605491 -0.03510767 1.075591 -0.4683863 -0.05000767 1.075968 
		-0.493784 -0.05543413 1.073938 -0.5033046 -0.04923727 1.054597 -0.4647901 -0.05093024 1.048793 -0.4521054 -0.03893503 1.044622 -0.4410071 -0.03451669 1.076873 -0.4362758 -0.02363753 1.11568 
		-0.4356275 -0.005243417 1.148271 -0.4393522 -0.03619193 1.151579 -0.4777224 -0.005116327 1.096699 -0.4814005 0.02537838 1.100184 -0.450281 0.01581122 1.149556 -0.4340298 -0.04663438 1.085793 
		-0.467001 -0.05295037 1.02516 -0.4406477 -0.05653533 1.044872 -0.450872 -0.05558264 1.014442 -0.4575953 -0.04375133 1.017683 -0.4980574 0.02373612 1.101986 -0.4713168 0.01106096 1.16409 
		-0.4591373 -0.06368325 1.016113 -0.5056453 0.01511443 1.102414 -0.4799265 -0.01292211 1.169059 -0.5148473 -0.003542977 1.10175 -0.5165582 -0.02822942 1.102012 -0.4993279 -0.05256891 1.100223 
		-0.4642203 -0.03429988 1.163678 -0.4599126 -0.06080589 1.091968 -0.4393522 -0.03619193 1.151579 -0.4340298 -0.04663438 1.085793 -0.4551512 -0.06415536 1.049601 -0.4406477 -0.05653533 1.044872 
		-0.4591373 -0.06368325 1.016113 -0.467001 -0.05295037 1.02516 -0.4647901 -0.05093024 1.048793 -0.450872 -0.05558264 1.014442 -0.4683863 -0.05000767 1.075968 -0.493784 -0.05543413 1.073938 
		-0.5127401 -0.05303562 1.083879 -0.5180159 -0.0535397 1.059427 -0.5033046 -0.04923727 1.054597 -0.5265976 -0.05641472 1.029678 -0.5347369 -0.04566984 1.031756 -0.539682 -0.04702958 1.003288 
		-0.5329889 -0.05677135 1.002774 -0.5229904 -0.04945107 1.00024 -0.5183907 -0.04905352 1.024751 -0.5327275 -0.05778455 0.9777421 -0.5242414 -0.050138 0.9832353 -0.5384248 -0.05015891 0.9775474 
		-0.5281851 -0.04240401 1.061134 -0.528888 -0.03822179 1.000914 -0.5217788 -0.03535685 1.026962 -0.5240049 -0.03017973 1.05847 -0.5261713 -0.02854 1.08144 -0.5298004 -0.04173051 0.9770236 
		-0.5308612 -0.01822226 1.058553 -0.5239427 -0.003954013 1.083198 -0.5259646 -0.01782492 1.021248 -0.5208526 -0.02932271 1.020971 -0.5192192 -0.01949831 0.9938578 -0.5080561 -0.0106786 0.9963897 
		-0.5156181 -0.008950514 1.023229 -0.5119172 -0.02916637 0.994977 -0.5021594 -0.02091229 0.9737762 -0.4961478 -0.02909892 0.9744402 -0.5232345 -0.004727527 1.059179 -0.5139362 0.01400775 1.065712 
		-0.5130377 0.01581083 1.087026 -0.5047663 0.02533647 1.091605 -0.5052092 0.03105832 1.06935 -0.4940155 -0.01391423 0.9761202 -0.5148804 0.007169119 1.022401 -0.5053809 0.01427117 1.025369 
		-0.4926659 0.01448607 1.00413 -0.5032279 0.007518621 0.9980451 -0.5085973 -0.002868072 1.021138 -0.4968183 -0.002049563 0.9994178 -0.4846945 0.006364606 0.9844525 -0.4796261 -0.00257127 0.9864467 
		-0.4771513 0.01216501 0.9906456 -0.5050876 0.02874009 1.036919 -0.4973721 0.03606923 1.040992 -0.4845367 0.03649091 1.025523 -0.4940403 0.03064183 1.019556 -0.4992457 0.01873581 1.036682 
		-0.4883215 0.02114352 1.021312 -0.4748001 0.03000483 1.009207 -0.4711747 0.02182917 1.011173 -0.4691411 0.03480393 1.013956 -0.4729224 0.02562462 1.02108 -0.4826154 0.02467717 1.027225 
		-0.4711747 0.02182917 1.011173 -0.4883215 0.02114352 1.021312 -0.4992457 0.01873581 1.036682 -0.4902167 0.02309369 1.04439 -0.5139362 0.01400775 1.065712 -0.5053809 0.01427117 1.025369 
		-0.496795 0.002279656 1.0236 -0.4926659 0.01448607 1.00413 -0.4889573 0.003307945 1.00403 -0.5085973 -0.002868072 1.021138 -0.4968183 -0.002049563 0.9994178 -0.4796261 -0.00257127 0.9864467 
		-0.4790267 0.00305095 0.9969394 -0.5232345 -0.004727527 1.059179 -0.5156181 -0.008950514 1.023229 -0.5061439 -0.02282692 1.02241 -0.5080561 -0.0106786 0.9963897 -0.5038038 -0.02242872 0.9971716 
		-0.5208526 -0.02932271 1.020971 -0.5119172 -0.02916637 0.994977 -0.4961478 -0.02909892 0.9744402 -0.4938777 -0.0219951 0.9832348 -0.5240049 -0.03017973 1.05847 -0.5217788 -0.03535685 1.026962 
		-0.5183907 -0.04905352 1.024751 -0.528888 -0.03822179 1.000914 -0.5229904 -0.04945107 1.00024 -0.5242414 -0.050138 0.9832353 -0.5298004 -0.04173051 0.9770236 -0.4940155 -0.01391423 0.9761202 
		-0.5327275 -0.05778455 0.9777421 -0.5384248 -0.05015891 0.9775474 -0.5021594 -0.02091229 0.9737762 -0.4771513 0.01216501 0.9906456 -0.4846945 0.006364606 0.9844525 -0.4748001 0.03000483 1.009207 
		-0.1238439 0.009359532 1.474086 -0.150028 0.05230681 1.45041 -0.1238439 0.009359532 1.474086 -0.1771299 0.05013409 1.478089 -0.1894734 0.01626368 1.497247 -0.1194512 0.05268982 1.474797 
		0.1042481 -0.08042748 1.543196 0.1397162 -0.07313791 1.575369 0.159251 -0.07163403 1.563616 0.1126429 -0.08108236 1.52293 0.1804803 -0.06455513 1.585107 0.185877 -0.0579872 1.574973 
		0.1660412 -0.07208907 1.547051 0.1892788 -0.05853222 1.562554 0.159652 -0.07401413 1.52661 0.1288997 -0.07894938 1.515006 0.1598432 -0.08428864 1.506735 0.2015283 -0.06164284 1.519955 
		0.2023873 -0.06936856 1.502072 0.123744 -0.09146222 1.490949 0.1991424 -0.06794517 1.545696 0.2068149 -0.03670667 1.603736 0.1683453 -0.04522837 1.60816 0.1150846 -0.03938714 1.606987 
		0.2132592 -0.02700491 1.586547 0.2295703 0.01973777 1.587307 0.233523 0.02006135 1.612883 0.1975746 0.01711849 1.637938 0.1593954 0.01399301 1.636124 0.2163033 -0.02667928 1.573102 
		0.2244394 0.01931774 1.579198 0.2206382 0.01900656 1.582779 0.2617529 0.02237236 1.56356 0.2345226 -0.04176233 1.5504 0.2458804 -0.03196486 1.510546 0.2468797 -0.04080806 1.490245 
		0.2869835 0.02443784 1.486575 0.2908082 0.02475094 1.459841 0.2829308 0.02410606 1.519552 0.2875604 0.02448505 1.448245 0.244896 -0.03460526 1.480731 0.1992711 -0.06303927 1.492543 
		0.1579018 -0.07789448 1.496869 0.1151298 -0.08211433 1.474316 0.1200275 -0.06805467 1.506296 0.1043832 -0.06989334 1.517188 0.09665802 -0.06946857 1.537158 0.1017726 -0.0721052 1.569021 
		0.09208098 -0.0507674 1.587628 0.0927483 0.007667901 1.603179 0.1102841 0.009972584 1.623292 0.09580386 -0.06180316 1.561257 0.08801916 -0.04328684 1.578323 0.08819856 0.007295438 1.592872 
		0.1043832 -0.06989334 1.517188 0.1879963 -0.04795177 1.555681 0.09665802 -0.06946857 1.537158 0.1200275 -0.06805467 1.506296 0.09580386 -0.06180316 1.561257 0.08801916 -0.04328684 1.578323 
		0.1579018 -0.07789448 1.496869 0.1992711 -0.06303927 1.492543 0.1151298 -0.08211433 1.474316 0.244896 -0.03460526 1.480731 0.2875604 0.02448505 1.448245 0.2690964 0.02297351 1.536727 
		0.2163212 0.01865316 1.580359 0.2179821 0.01878907 1.60809 0.134558 0.01195969 1.621029 0.08819856 0.007295438 1.592872 0.08962601 0.09818738 1.543196 0.09780257 0.1001988 1.52293 
		0.1453268 0.09845652 1.563616 0.1258075 0.09676331 1.575369 0.1674248 0.09492455 1.585107 0.1738178 0.08932175 1.574973 0.1519525 0.1000098 1.547051 0.1770856 0.09041277 1.562554 
		0.1453353 0.1008701 1.52661 0.1141898 0.1007382 1.515006 0.143853 0.111039 1.506735 0.1886661 0.09547419 1.519955 0.1882572 0.1032368 1.502072 0.1070677 0.1122459 1.490949 
		0.185287 0.1013046 1.545696 0.197938 0.07172983 1.603736 0.1585945 0.07388147 1.60816 0.105899 0.06609277 1.605645 0.07501093 0.06571805 1.587628 0.08853704 0.0895733 1.569021 
		0.2058743 0.06320532 1.586547 0.2295703 0.01973777 1.587307 0.233523 0.02006135 1.612883 0.1975746 0.01711849 1.637938 0.1593954 0.01399301 1.636124 0.2372545 0.07340468 1.510547 
		0.2244544 0.08122448 1.5504 0.2089308 0.06337909 1.573102 0.2244394 0.01931774 1.579198 0.2206382 0.01900656 1.582779 0.2617529 0.02237236 1.56356 0.2829308 0.02410606 1.519552 
		0.2869835 0.02443784 1.486575 0.2368022 0.08229262 1.490245 0.2908082 0.02475094 1.459841 0.2875604 0.02448505 1.448245 0.2358537 0.07584978 1.480731 0.1862119 0.09648491 1.492543 
		0.1429774 0.1044142 1.496869 0.1000885 0.1016215 1.474316 0.1072077 0.08854561 1.506296 0.09147254 0.08781544 1.517188 0.08391937 0.08613993 1.537158 0.08432325 0.07843761 1.561257 
		0.0722198 0.05767639 1.578323 0.0927483 0.007667901 1.603179 0.1102841 0.009972584 1.623292 0.08819856 0.007295438 1.592872 0.177541 0.07976455 1.555681 0.09147254 0.08781544 1.517188 
		0.08391937 0.08613993 1.537158 0.1072077 0.08854561 1.506296 0.08432325 0.07843761 1.561257 0.0722198 0.05767639 1.578323 0.1429774 0.1044142 1.496869 0.1862119 0.09648491 1.492543 
		0.1000885 0.1016215 1.474316 0.2358537 0.07584978 1.480731 0.2875604 0.02448505 1.448245 0.2690964 0.02297351 1.536727 0.2163212 0.01865316 1.580359 0.2179821 0.01878907 1.60809 
		0.134558 0.01195969 1.621029 0.08819856 0.007295438 1.592872 0.1575594 -0.07182267 1.562604 0.1542185 -0.08321419 1.558583 0.1424843 -0.0844366 1.563422 0.1409647 -0.07355142 1.569447 
		0.1308796 -0.08644466 1.558534 0.1245532 -0.07639128 1.562533 0.1262023 -0.08806217 1.546781 0.1179385 -0.0786787 1.545914 0.1311922 -0.08834148 1.535051 0.1249954 -0.07907375 1.529324 
		0.1429265 -0.08711912 1.530212 0.1415901 -0.07734498 1.522481 0.1545311 -0.08511097 1.535101 0.1580016 -0.07450514 1.529394 0.1592084 -0.08349355 1.546852 0.1646163 -0.0722177 1.546013 
		0.1432969 -0.09005652 1.547171 0.09370427 -0.06693769 1.543017 0.09987222 -0.07946608 1.547768 0.1012231 -0.08164481 1.539055 0.09360815 -0.06742527 1.534927 0.1100447 -0.08064158 1.549575 
		0.1116042 -0.08211391 1.540892 0.1204213 -0.07853026 1.551005 0.1212707 -0.07895344 1.542311 0.1022253 -0.06843192 1.517435 0.1079431 -0.08161566 1.520128 0.1137216 -0.08107676 1.513142 
		0.1062175 -0.06644283 1.510666 0.1162937 -0.08341879 1.527871 0.122137 -0.08222003 1.521207 0.1220523 -0.07838034 1.53582 0.1277886 -0.07794398 1.529064 0.08141655 0.08316237 1.543017 
		0.08124242 0.08362781 1.534927 0.08644341 0.09889654 1.539055 0.0854648 0.0965271 1.547768 0.09531062 0.09934136 1.549575 0.0966099 0.1010477 1.540892 0.1058924 0.09894577 1.551005 
		0.1066618 0.09950149 1.542311 0.08958112 0.08602251 1.517435 0.0938437 0.08470917 1.510666 0.0988678 0.1003687 1.513142 0.09307859 0.0999607 1.520128 0.1010248 0.103098 1.527871 
		0.1069852 0.1028655 1.521207 0.1075261 0.09906321 1.535819 0.1132571 0.09956563 1.529063 0.143627 0.09836757 1.562604 0.1269721 0.09737431 1.569447 0.1267011 0.1083618 1.563422 
		0.1384779 0.109064 1.558583 0.1149244 0.1084557 1.558534 0.1103172 0.09750729 1.562533 0.1100462 0.109291 1.546781 0.1034186 0.09868844 1.545914 0.1149243 0.1103781 1.535051 
		0.1103173 0.1002259 1.529324 0.1267011 0.1110805 1.530212 0.1269722 0.1012191 1.522481 0.1384779 0.1109864 1.535101 0.1436271 0.1010862 1.529394 0.143356 0.1101512 1.546852 
		0.1505258 0.09990503 1.546013 0.1265889 0.114039 1.547171 -0.08255719 0.02016878 1.606784 -0.1023465 0.02201395 1.606368 -0.0761627 0.06334352 1.587499 -0.1515501 0.05956185 1.584025 
		-0.1570654 0.02150972 1.599423 -0.1046012 0.0775383 1.53802 -0.1817718 0.05666361 1.574203 -0.2061048 0.02099088 1.586659 -0.1949148 0.01911658 1.540998 -0.1754304 0.05400104 1.531338 
		-0.1424954 0.06804578 1.515266 -0.1824887 0.05339743 1.504924 -0.2050872 0.02127568 1.507948 -0.1023465 0.02201395 1.606368 -0.07927676 -0.04496146 1.578935 -0.1489562 -0.02872443 1.583566 
		-0.1570654 0.02150972 1.599423 -0.1201937 -0.05424593 1.514408 -0.08255719 0.02016878 1.606784 -0.1840709 -0.02400835 1.577181 -0.1738296 -0.02360834 1.535018 -0.1949148 0.01911658 1.540998 
		-0.2050872 0.02127568 1.507948 -0.1875275 -0.01838998 1.499567 -0.2061048 0.02099088 1.586659 0.06995344 -0.1266419 1.128074 0.09138826 -0.1357882 1.050411 0.1583182 -0.08991157 1.060447 
		0.1274872 -0.09435845 1.138103 0.1948718 -0.01141027 1.063026 0.1578894 -0.03105739 1.141961 0.1302309 0.04445063 1.13427 0.1645564 0.07219689 1.056111 0.1290892 -0.1475742 0.9341606 
		0.2061601 -0.0994072 0.9438989 0.1701021 -0.1645543 0.7895874 0.2459252 -0.1088574 0.8144565 0.2314135 0.000235578 0.9683785 0.2820887 0.01605295 0.8366556 0.1980058 0.09633854 0.9713504 
		0.2485709 0.1285004 0.8339564 0.2076678 -0.181634 0.649224 0.2892455 -0.1162758 0.6789961 0.3337796 0.02328776 0.7009251 0.2790937 0.1532695 0.693427 0.2369204 -0.199721 0.4648958 
		0.3412113 -0.1218757 0.5113998 0.3866826 0.03524109 0.5447195 0.3338186 0.1869028 0.5287402 0.2524969 -0.227684 0.2414132 0.3771002 -0.122922 0.3186925 0.4292393 0.05085268 0.3738467 
		0.3538584 0.2097794 0.3681313 0.1402138 0.187849 0.8142735 0.1118842 0.1407213 0.9570554 0.08627464 0.1137896 1.046222 0.06505745 0.08959519 1.130704 0.1968782 0.2773526 0.5193951 
		0.207118 0.3201474 0.3606996 0.02231573 0.1344622 1.06283 -0.000133478 0.1012219 1.187325 0.04882186 0.2134521 0.8130723 0.03673267 0.1573619 0.9579469 0.05986454 0.2581974 0.6813371 
		0.1661646 0.2281204 0.6815943 0.07557345 0.3156857 0.5210897 0.07781345 0.347212 0.3637364 0.3944325 -0.02477531 1.292875 0.4114408 -0.02625185 1.251842 0.375753 -0.02979591 1.245457 
		0.3567677 -0.03110519 1.28161 0.4253957 0.006884835 1.303959 0.4314969 0.001918363 1.258457 0.4281433 -0.03490922 1.176444 0.4488187 -0.03186354 1.186495 0.4631463 -0.007295699 1.190671 
		0.4066406 0.01264747 1.348695 0.3801485 -0.01674213 1.338322 0.3728969 0.01917513 1.390741 0.3603688 -0.002605318 1.380048 0.3213334 0.02799954 1.443478 0.3455449 -0.009956178 1.372591 
		0.3541117 -0.02585862 1.325707 0.3988754 0.03965131 1.286438 0.3622709 0.04869866 1.273638 0.3801713 0.0360261 1.239056 0.4151295 0.02899166 1.246498 0.4253957 0.006884835 1.303959 
		0.4314969 0.001918363 1.258457 0.4395242 0.01821633 1.169109 0.4565211 0.01448327 1.181045 0.4631463 -0.007295699 1.190671 0.4066406 0.01264747 1.348695 0.3842506 0.04274175 1.332379 
		0.3728969 0.01917513 1.390741 0.3633013 0.03992011 1.375799 0.3213334 0.02799954 1.443478 0.3495142 0.04760394 1.36684 0.3595256 0.05264841 1.317864 -0.07022042 -0.1266419 1.128074 
		-0.1277541 -0.09435844 1.138103 -0.1585852 -0.08991156 1.060447 -0.09165522 -0.1357882 1.050411 -0.1951388 -0.01141027 1.063026 -0.1581563 -0.03105738 1.141961 -0.1304979 0.04445061 1.13427 
		-0.1648234 0.07219686 1.056111 -0.1293562 -0.1475742 0.9341608 -0.2064271 -0.09940717 0.9438989 -0.1703691 -0.1645543 0.7895876 -0.2461922 -0.1088574 0.8144565 -0.2316805 0.0002355423 0.9683785 
		-0.2823557 0.01605295 0.8366556 -0.1982727 0.09633854 0.9713503 -0.2488379 0.1285005 0.8339562 -0.2079348 -0.181634 0.649224 -0.2895125 -0.1162758 0.6789961 -0.3340465 0.02328777 0.700925 
		-0.2793607 0.1532695 0.693427 -0.2371874 -0.199721 0.4648958 -0.3414783 -0.1218757 0.5113998 -0.3869496 0.03524108 0.5447195 -0.3340856 0.1869028 0.5287402 -0.2527639 -0.227684 0.2414132 
		-0.3773672 -0.122922 0.3186925 -0.4295062 0.05085266 0.3738467 -0.3541254 0.2097794 0.3681312 -0.1404808 0.187849 0.8142735 -0.1121511 0.1407213 0.9570553 -0.08654162 0.1137896 1.046222 
		-0.06532442 0.08959516 1.130704 -0.1971451 0.2773526 0.5193951 -0.207385 0.3201475 0.3606996 -0.0225827 0.1344622 1.06283 -0.000133478 0.1012219 1.187325 -0.04908878 0.2134519 0.8130722 
		-0.03699962 0.1573618 0.9579468 -0.06013148 0.2581974 0.6813371 -0.1664316 0.2281204 0.6815943 -0.07584045 0.3156858 0.5210896 -0.07808045 0.3472121 0.3637364 -0.3946995 -0.02477534 1.292874 
		-0.3570346 -0.03110518 1.28161 -0.3776812 -0.03061138 1.245457 -0.4133689 -0.02706734 1.251841 -0.4256626 0.006884836 1.303958 -0.4317639 0.001918364 1.258457 -0.4284102 -0.03490921 1.176444 
		-0.4490857 -0.03186347 1.186495 -0.4634133 -0.007295628 1.190671 -0.4069076 0.01264753 1.348695 -0.3804154 -0.0167421 1.338322 -0.3731639 0.01917517 1.390742 -0.3606358 -0.002605307 1.380048 
		-0.3216003 0.02799954 1.443478 -0.3458119 -0.009956198 1.372591 -0.3543787 -0.02585863 1.325707 -0.3991424 0.03965131 1.286438 -0.4153965 0.02899167 1.246498 -0.3804383 0.03602611 1.239056 
		-0.3625379 0.04869866 1.273638 -0.4256626 0.006884836 1.303958 -0.4317639 0.001918364 1.258457 -0.4397912 0.01821633 1.169109 -0.4567881 0.01448327 1.181045 -0.4634133 -0.007295628 1.190671 
		-0.4069076 0.01264753 1.348695 -0.3845175 0.04274174 1.332379 -0.3731639 0.01917517 1.390742 -0.3635683 0.03992011 1.375799 -0.3216003 0.02799954 1.443478 -0.3497812 0.04760391 1.36684 
		-0.3597926 0.0526484 1.317864 0.006048903 -0.07957383 1.666577 0.006295914 -0.07624737 1.665343 0.0006496722 -0.07681988 1.664859 0.0006496722 -0.07681988 1.664859 0.0006496722 -0.04807607 1.687888 
		0.006295914 -0.07624737 1.665343 0.0006496722 -0.04807607 1.687888 0.0006496722 -0.07681988 1.664859 -0.004986404 -0.07624737 1.665343 0.0186638 -0.05491654 1.679438 0.01232698 -0.0698807 1.676438 
		0.01541651 -0.06627785 1.663813 0.009217502 -0.07142054 1.663083 0.0006496722 -0.07577357 1.676359 0.0006496722 -0.07401656 1.662915 0.01940408 -0.04473973 1.666794 0.01941425 -0.04446335 1.679577 
		0.0006496722 -0.0725162 1.666853 0.0006496722 -0.07009786 1.65641 0.00905973 -0.07057165 1.666883 0.01011593 -0.06508348 1.656489 0.01505126 -0.06269474 1.667376 0.01820969 -0.05196516 1.656657 
		0.01947337 -0.04145275 1.670949 0.01896014 -0.04178836 1.656824 -0.007918157 -0.07142054 1.663083 -0.01102764 -0.0698807 1.676438 -0.014107 -0.06627785 1.663813 -0.01736446 -0.05491654 1.679438 
		0.0006496722 -0.07577357 1.676359 0.0006496722 -0.07401656 1.662915 -0.01809495 -0.04473973 1.666794 -0.01810474 -0.04446335 1.679577 -0.008806419 -0.06508348 1.656489 0.0006496722 -0.07009786 1.65641 
		-0.00775022 -0.07057165 1.666883 0.0006496722 -0.0725162 1.666853 -0.01374213 -0.06269474 1.667376 -0.01691035 -0.05196516 1.656657 -0.01816423 -0.04145275 1.670949 -0.0176608 -0.04178836 1.656824 
		-0.0830525 -0.02089893 1.60896 -0.07460947 -0.05863399 1.595334 -0.1280601 -0.07300748 1.629313 -0.04967337 -0.048901 1.537172 -0.05638715 -0.008091645 1.552888 -0.08550689 0.01825203 1.611062 
		-0.06061488 0.01233461 1.556134 -0.123525 -0.02862593 1.650141 -0.1114221 0.01717153 1.65474 -0.05267405 0.04416083 1.570176 -0.07262241 0.05231054 1.618562 -0.03487057 0.05748079 1.589373 
		-0.03970824 0.06733969 1.62783 -0.0894113 0.06043394 1.662381 -0.05197173 0.08874577 1.674291 -1.29948E-08 0.1008369 1.680132 -1.17324E-08 0.08075154 1.629313 -1.17324E-08 0.06433725 1.590737 
		-0.0761887 -0.05869987 1.593206 -0.08477897 -0.02087326 1.607128 -0.129599 -0.07284825 1.6275 -0.05142465 -0.04906454 1.535884 -0.05796019 -0.0082063 1.551835 -0.08733389 0.01865654 1.609635 
		-0.06225004 0.01261196 1.555273 -0.1253428 -0.02838085 1.648485 -0.1133277 0.01761539 1.653405 -0.05397531 0.04513886 1.569537 -0.07414552 0.05343794 1.617345 -0.03558666 0.05881952 1.588738 
		-0.04049326 0.07288541 1.626485 -0.09088726 0.06151076 1.661064 -0.05273309 0.09017628 1.672825 -4.075292E-09 0.1023794 1.678625 -1.933706E-09 0.08251767 1.627876 -1.933706E-09 0.06577726 1.59 
		0.12806 -0.07300748 1.629313 0.0746095 -0.05863399 1.595334 0.0830525 -0.02089893 1.60896 0.04941745 -0.04890099 1.537172 0.05638713 -0.008091645 1.552888 0.08550686 0.01825202 1.611062 
		0.06061485 0.01233458 1.556134 0.1235249 -0.02862593 1.65014 0.1114221 0.01717154 1.65474 0.05267403 0.0441608 1.570176 0.07262238 0.05231053 1.618562 0.03487056 0.05748079 1.589373 
		0.03970822 0.06733968 1.62783 0.08941127 0.06043392 1.662381 0.0519717 0.08874575 1.674291 -1.29948E-08 0.1008369 1.680132 -1.17324E-08 0.08075154 1.629313 -1.17324E-08 0.06433725 1.590737 
		0.07618868 -0.05869987 1.593206 0.129599 -0.07284827 1.6275 0.08477896 -0.02087326 1.607128 0.05116867 -0.04906454 1.535884 0.05796016 -0.008206312 1.551835 0.08733386 0.01865654 1.609635 
		0.06225001 0.01261197 1.555273 0.1253428 -0.02838085 1.648485 0.1133276 0.0176154 1.653405 0.05397529 0.04513886 1.569537 0.07414549 0.05343796 1.617345 0.03558666 0.05881952 1.588738 
		0.04049325 0.07288541 1.626485 0.09088727 0.06151078 1.661064 0.05273308 0.09017628 1.672825 -4.075292E-09 0.1023794 1.678625 -1.933706E-09 0.08251767 1.627876 -1.933706E-09 0.06577726 1.59 
;
	setAttr -s 5993 ".ed[0:5992]" 
		0 1 0 1 2 0 2 0 0 2 3 0 3 0 0 0 4 0 
		4 1 0 0 5 0 5 4 0 4 0 0 3 6 0 6 0 0 
		0 3 0 0 7 0 7 5 0 7 0 0 6 7 0 8 5 0 
		5 7 0 7 8 0 8 9 0 9 5 0 10 9 0 8 10 0 
		9 10 0 10 11 0 11 9 0 11 12 0 12 9 0 9 11 0 
		12 4 0 4 5 0 5 12 0 12 5 0 5 9 0 9 12 0 
		11 13 0 13 12 0 12 11 0 14 8 0 7 14 0 8 14 0 
		14 15 0 15 8 0 8 15 0 15 16 0 16 8 0 16 10 0 
		8 16 0 15 17 0 17 16 0 16 15 0 18 16 0 16 17 0 
		17 18 0 16 18 0 18 10 0 10 16 0 18 19 0 19 10 0 
		10 18 0 19 11 0 11 10 0 10 19 0 20 19 0 19 18 0 
		18 20 0 20 18 0 17 20 0 19 20 0 20 21 0 21 19 0 
		22 19 0 21 22 0 22 23 0 23 19 0 23 24 0 24 19 0 
		24 11 0 25 12 0 12 13 0 13 25 0 23 26 0 26 24 0 
		24 23 0 26 13 0 13 11 0 11 26 0 26 11 0 11 24 0 
		24 26 0 25 13 0 13 26 0 26 25 0 23 27 0 27 26 0 
		26 23 0 27 28 0 28 26 0 28 25 0 29 25 0 28 29 0 
		29 30 0 30 25 0 30 31 0 31 25 0 30 32 0 32 31 0 
		33 31 0 32 33 0 33 34 0 34 31 0 33 35 0 35 34 0 
		33 36 0 36 35 0 37 35 0 36 37 0 37 38 0 38 35 0 
		37 39 0 39 38 0 37 40 0 40 39 0 41 38 0 39 41 0 
		41 39 0 39 42 0 42 41 0 43 41 0 42 43 0 3 41 0 
		43 3 0 42 44 0 44 43 0 2 35 0 35 38 0 38 2 0 
		2 38 0 38 41 0 41 2 0 3 2 0 2 41 0 41 3 0 
		1 34 0 34 35 0 35 1 0 1 35 0 35 2 0 4 34 0 
		34 1 0 1 4 0 4 31 0 31 34 0 34 4 0 4 12 0 
		12 31 0 45 40 0 40 37 0 37 45 0 45 37 0 37 46 0 
		46 45 0 47 45 0 46 47 0 47 46 0 46 48 0 48 47 0 
		48 46 0 46 49 0 49 48 0 49 50 0 50 48 0 49 51 0 
		51 50 0 49 52 0 52 51 0 51 49 0 53 51 0 52 53 0 
		53 52 0 52 54 0 54 53 0 55 53 0 54 55 0 55 56 0 
		56 53 0 53 55 0 55 57 0 57 56 0 56 55 0 55 58 0 
		58 57 0 57 55 0 51 59 0 59 50 0 50 51 0 59 48 0 
		48 50 0 59 51 0 51 60 0 60 59 0 53 60 0 60 51 0 
		60 61 0 61 59 0 59 60 0 60 62 0 62 61 0 56 63 0 
		63 53 0 53 56 0 63 62 0 62 60 0 60 63 0 53 63 0 
		63 60 0 60 53 0 63 56 0 56 64 0 64 63 0 61 65 0 
		65 59 0 59 61 0 65 61 0 61 66 0 66 65 0 48 59 0 
		65 48 0 65 47 0 67 56 0 56 57 0 57 67 0 56 67 0 
		67 64 0 64 56 0 66 68 0 68 65 0 47 65 0 68 47 0 
		64 69 0 69 63 0 69 62 0 64 70 0 70 69 0 69 64 0 
		64 67 0 67 71 0 71 64 0 71 70 0 70 64 0 72 69 0 
		70 72 0 72 70 0 70 73 0 73 72 0 71 73 0 73 70 0 
		74 69 0 69 72 0 72 74 0 74 75 0 75 69 0 75 62 0 
		62 69 0 76 75 0 74 76 0 76 74 0 74 77 0 77 76 0 
		71 78 0 78 73 0 77 79 0 79 76 0 79 80 0 80 76 0 
		79 81 0 81 80 0 79 82 0 82 81 0 81 79 0 74 83 0 
		83 77 0 77 74 0 74 84 0 84 83 0 83 74 0 72 84 0 
		84 74 0 74 72 0 84 85 0 85 83 0 83 84 0 84 86 0 
		86 85 0 87 86 0 86 84 0 84 87 0 73 87 0 87 72 0 
		72 73 0 87 84 0 84 72 0 87 88 0 88 86 0 89 88 0 
		87 89 0 89 90 0 90 88 0 88 89 0 91 90 0 89 91 0 
		78 91 0 91 89 0 89 78 0 91 92 0 92 90 0 90 91 0 
		83 85 0 85 93 0 93 83 0 93 94 0 94 83 0 93 95 0 
		95 94 0 95 96 0 96 94 0 77 83 0 94 77 0 77 94 0 
		94 79 0 79 77 0 79 94 0 94 96 0 96 79 0 96 82 0 
		82 79 0 73 89 0 89 87 0 87 73 0 78 89 0 89 73 0 
		88 97 0 97 86 0 97 98 0 98 86 0 98 85 0 85 86 0 
		92 99 0 99 90 0 90 92 0 99 100 0 100 90 0 88 100 0 
		100 97 0 97 88 0 90 100 0 100 88 0 98 101 0 101 85 0 
		85 101 0 101 93 0 93 85 0 93 101 0 101 102 0 102 93 0 
		93 102 0 102 95 0 95 93 0 92 103 0 103 99 0 99 92 0 
		104 105 0 105 106 0 106 104 0 105 104 0 104 107 0 107 105 0 
		107 108 0 108 105 0 105 107 0 109 105 0 105 108 0 108 109 0 
		109 108 0 108 110 0 110 109 0 108 111 0 111 110 0 110 108 0 
		108 112 0 112 111 0 111 108 0 108 113 0 113 112 0 112 108 0 
		107 113 0 113 108 0 108 107 0 111 114 0 114 110 0 110 111 0 
		115 114 0 114 111 0 111 115 0 111 112 0 112 115 0 115 111 0 
		112 116 0 116 115 0 115 112 0 115 117 0 117 114 0 114 115 0 
		115 118 0 118 117 0 117 115 0 118 115 0 115 119 0 119 118 0 
		119 115 0 115 120 0 120 119 0 116 120 0 120 115 0 115 116 0 
		119 120 0 120 121 0 121 119 0 122 117 0 117 118 0 118 122 0 
		119 123 0 123 118 0 118 119 0 123 119 0 119 124 0 124 123 0 
		119 125 0 125 124 0 124 119 0 125 119 0 119 121 0 121 125 0 
		123 126 0 126 118 0 118 123 0 118 126 0 126 122 0 122 118 0 
		127 117 0 117 122 0 122 127 0 117 127 0 127 128 0 128 117 0 
		128 114 0 114 117 0 117 128 0 127 129 0 129 128 0 128 127 0 
		129 127 0 127 130 0 130 129 0 131 128 0 128 129 0 129 131 0 
		128 131 0 131 132 0 132 128 0 114 128 0 128 132 0 132 114 0 
		121 133 0 133 125 0 125 121 0 114 132 0 132 134 0 134 114 0 
		110 114 0 114 134 0 134 110 0 135 110 0 110 134 0 134 135 0 
		134 136 0 136 135 0 135 134 0 136 134 0 134 137 0 137 136 0 
		134 132 0 132 137 0 137 134 0 137 138 0 138 136 0 136 137 0 
		138 137 0 137 139 0 139 138 0 139 137 0 137 140 0 140 139 0 
		140 137 0 137 132 0 132 140 0 131 140 0 140 132 0 132 131 0 
		139 140 0 140 141 0 141 139 0 141 140 0 140 131 0 131 141 0 
		139 141 0 141 142 0 142 139 0 142 138 0 138 139 0 139 142 0 
		138 142 0 142 143 0 143 138 0 135 109 0 109 110 0 110 135 0 
		144 138 0 138 143 0 143 144 0 138 144 0 144 145 0 145 138 0 
		146 136 0 136 138 0 138 146 0 146 138 0 138 145 0 145 146 0 
		136 146 0 146 135 0 135 136 0 147 133 0 133 148 0 148 147 0 
		149 147 0 147 148 0 148 149 0 149 124 0 124 147 0 147 149 0 
		124 149 0 149 150 0 150 124 0 150 151 0 151 124 0 124 150 0 
		150 149 0 149 152 0 152 150 0 149 153 0 153 152 0 152 149 0 
		153 154 0 154 152 0 152 153 0 154 155 0 155 152 0 152 154 0 
		153 156 0 156 154 0 154 153 0 156 157 0 157 154 0 154 156 0 
		157 155 0 155 154 0 154 157 0 156 158 0 158 157 0 157 156 0 
		159 156 0 156 153 0 153 159 0 160 156 0 156 159 0 159 160 0 
		158 156 0 156 160 0 160 158 0 159 153 0 153 161 0 161 159 0 
		149 161 0 161 153 0 153 149 0 161 149 0 149 148 0 148 161 0 
		159 161 0 161 148 0 148 159 0 162 157 0 157 158 0 158 162 0 
		162 158 0 158 160 0 160 162 0 162 163 0 163 157 0 157 162 0 
		162 164 0 164 163 0 163 162 0 165 164 0 164 162 0 162 165 0 
		165 166 0 166 164 0 164 165 0 167 164 0 164 166 0 166 167 0 
		164 167 0 167 168 0 168 164 0 168 169 0 169 164 0 164 168 0 
		164 169 0 169 163 0 163 164 0 167 170 0 170 168 0 168 167 0 
		170 169 0 169 168 0 168 170 0 170 167 0 167 171 0 171 170 0 
		170 171 0 171 172 0 172 170 0 173 170 0 170 172 0 172 173 0 
		174 170 0 170 173 0 173 174 0 170 174 0 174 175 0 175 170 0 
		175 169 0 169 170 0 170 175 0 176 169 0 169 175 0 175 176 0 
		173 172 0 172 177 0 177 173 0 178 167 0 167 166 0 166 178 0 
		179 178 0 178 166 0 166 179 0 179 166 0 166 165 0 165 179 0 
		178 179 0 179 180 0 180 178 0 181 179 0 179 165 0 165 181 0 
		165 182 0 182 181 0 181 165 0 183 182 0 182 165 0 165 183 0 
		184 176 0 176 175 0 175 184 0 184 185 0 185 176 0 176 184 0 
		173 177 0 177 186 0 186 173 0 177 187 0 187 186 0 186 177 0 
		187 188 0 188 186 0 186 187 0 189 186 0 186 188 0 188 189 0 
		186 189 0 189 190 0 190 186 0 191 190 0 189 191 0 190 191 0 
		191 192 0 192 190 0 193 189 0 189 188 0 188 193 0 189 193 0 
		193 194 0 194 189 0 194 195 0 195 189 0 189 194 0 194 196 0 
		196 195 0 194 197 0 197 196 0 196 194 0 194 198 0 198 197 0 
		199 194 0 194 193 0 193 199 0 193 200 0 200 199 0 199 193 0 
		200 193 0 193 201 0 201 200 0 194 199 0 199 202 0 202 194 0 
		193 203 0 203 201 0 201 193 0 203 193 0 193 188 0 188 203 0 
		188 187 0 187 203 0 203 188 0 192 127 0 127 190 0 190 192 0 
		127 186 0 190 127 0 127 192 0 192 130 0 130 127 0 127 173 0 
		173 186 0 186 127 0 173 127 0 127 122 0 122 173 0 122 174 0 
		174 173 0 173 122 0 174 122 0 122 204 0 204 174 0 204 175 0 
		175 174 0 126 204 0 204 122 0 122 126 0 204 126 0 126 205 0 
		205 204 0 205 175 0 175 204 0 204 205 0 175 205 0 205 184 0 
		184 175 0 205 126 0 126 123 0 123 205 0 184 205 0 205 123 0 
		123 184 0 123 206 0 206 184 0 184 123 0 123 151 0 151 206 0 
		206 123 0 124 151 0 151 123 0 123 124 0 206 151 0 151 207 0 
		207 206 0 184 206 0 207 184 0 207 151 0 150 207 0 207 155 0 
		155 184 0 184 207 0 152 155 0 155 207 0 207 152 0 207 150 0 
		152 207 0 185 184 0 184 155 0 155 185 0 208 185 0 185 155 0 
		155 208 0 208 155 0 155 157 0 157 208 0 163 208 0 208 157 0 
		157 163 0 163 169 0 169 208 0 208 163 0 176 185 0 208 176 0 
		208 169 0 169 176 0 176 208 0 125 147 0 147 124 0 124 125 0 
		125 133 0 147 125 0 121 209 0 209 133 0 133 121 0 210 209 0 
		209 121 0 121 210 0 133 209 0 209 148 0 148 133 0 209 211 0 
		211 148 0 209 212 0 212 211 0 210 212 0 212 209 0 209 210 0 
		213 212 0 212 210 0 210 213 0 213 210 0 210 214 0 214 213 0 
		210 121 0 121 214 0 211 159 0 159 148 0 159 211 0 211 215 0 
		215 159 0 212 215 0 215 211 0 211 212 0 212 216 0 216 215 0 
		215 212 0 216 162 0 162 215 0 216 183 0 183 162 0 159 215 0 
		215 160 0 160 159 0 215 162 0 160 215 0 216 212 0 212 217 0 
		217 216 0 183 216 0 217 183 0 217 212 0 212 213 0 213 217 0 
		183 165 0 165 162 0 162 183 0 217 182 0 181 182 0 217 181 0 
		116 214 0 214 120 0 120 116 0 214 121 0 121 120 0 120 214 0 
		218 219 0 219 220 0 220 218 0 220 104 0 104 218 0 218 221 0 
		221 219 0 106 218 0 218 104 0 104 106 0 218 106 0 106 222 0 
		222 218 0 106 105 0 105 222 0 222 106 0 222 105 0 105 223 0 
		223 222 0 224 225 0 225 226 0 226 224 0 224 227 0 227 225 0 
		228 226 0 225 228 0 228 229 0 229 226 0 230 229 0 228 230 0 
		230 231 0 231 229 0 232 231 0 230 232 0 232 233 0 233 231 0 
		224 234 0 234 227 0 227 224 0 234 224 0 224 235 0 235 234 0 
		235 236 0 236 234 0 235 237 0 237 236 0 238 227 0 227 234 0 
		234 238 0 239 238 0 238 234 0 234 239 0 239 234 0 236 239 0 
		225 240 0 240 228 0 228 225 0 240 225 0 225 241 0 241 240 0 
		242 230 0 230 228 0 228 242 0 243 228 0 228 240 0 240 243 0 
		242 228 0 243 242 0 244 240 0 240 241 0 241 244 0 245 240 0 
		244 245 0 245 243 0 240 245 0 244 246 0 246 245 0 245 244 0 
		244 247 0 247 246 0 247 244 0 244 248 0 248 247 0 249 244 0 
		244 241 0 241 249 0 249 250 0 250 244 0 244 249 0 250 248 0 
		248 244 0 249 251 0 251 250 0 251 248 0 248 251 0 251 252 0 
		252 248 0 253 252 0 251 253 0 254 253 0 253 251 0 251 254 0 
		249 254 0 254 251 0 254 255 0 255 253 0 253 254 0 254 256 0 
		256 255 0 256 257 0 257 255 0 256 258 0 258 257 0 256 259 0 
		259 258 0 254 259 0 259 256 0 256 254 0 249 259 0 259 254 0 
		259 260 0 260 258 0 259 249 0 249 241 0 241 259 0 259 241 0 
		241 260 0 260 259 0 225 260 0 260 241 0 241 225 0 260 225 0 
		227 260 0 227 261 0 261 260 0 260 227 0 261 258 0 258 260 0 
		260 261 0 262 258 0 258 261 0 261 262 0 263 258 0 258 262 0 
		262 263 0 263 262 0 262 264 0 264 263 0 264 262 0 262 265 0 
		265 264 0 265 266 0 266 264 0 261 238 0 238 262 0 265 262 0 
		262 238 0 238 265 0 238 261 0 261 227 0 227 238 0 265 238 0 
		238 239 0 239 265 0 267 268 0 268 269 0 269 267 0 267 270 0 
		270 268 0 270 267 0 267 271 0 271 270 0 272 267 0 269 272 0 
		272 269 0 269 273 0 273 272 0 274 272 0 273 274 0 273 275 0 
		275 274 0 276 274 0 275 276 0 276 275 0 275 277 0 277 276 0 
		278 276 0 277 278 0 278 277 0 277 279 0 279 278 0 280 278 0 
		279 280 0 280 279 0 279 281 0 281 280 0 282 280 0 281 282 0 
		282 283 0 283 280 0 282 284 0 284 283 0 230 242 0 242 285 0 
		285 230 0 285 232 0 232 230 0 242 286 0 286 285 0 285 242 0 
		242 287 0 287 286 0 286 242 0 288 286 0 287 288 0 288 287 0 
		287 289 0 289 288 0 289 287 0 287 245 0 245 289 0 289 245 0 
		245 290 0 290 289 0 287 242 0 242 243 0 243 287 0 245 287 0 
		287 243 0 243 245 0 30 29 0 29 58 0 58 30 0 58 55 0 
		55 30 0 30 55 0 55 54 0 54 30 0 30 54 0 54 32 0 
		32 30 0 52 32 0 32 54 0 54 52 0 52 33 0 33 32 0 
		32 52 0 36 33 0 33 52 0 52 36 0 36 52 0 52 49 0 
		49 36 0 46 36 0 36 49 0 49 46 0 46 37 0 37 36 0 
		36 46 0 61 62 0 62 75 0 75 61 0 75 76 0 76 61 0 
		76 80 0 80 61 0 80 66 0 66 61 0 81 66 0 80 81 0 
		81 68 0 68 66 0 66 81 0 25 31 0 31 12 0 12 25 0 
		291 292 0 292 293 0 293 291 0 291 293 0 293 294 0 294 291 0 
		294 293 0 293 295 0 295 294 0 294 295 0 295 296 0 296 294 0 
		296 295 0 295 297 0 297 296 0 296 297 0 297 298 0 298 296 0 
		299 292 0 292 291 0 291 299 0 299 300 0 300 292 0 292 299 0 
		292 301 0 301 293 0 293 292 0 292 302 0 302 301 0 301 292 0 
		300 302 0 302 292 0 292 300 0 293 301 0 301 303 0 303 293 0 
		293 303 0 303 295 0 295 293 0 295 303 0 303 304 0 304 295 0 
		295 304 0 304 297 0 297 295 0 300 305 0 305 302 0 302 300 0 
		306 307 0 307 308 0 308 306 0 307 306 0 306 309 0 309 307 0 
		310 306 0 306 308 0 308 310 0 306 310 0 310 311 0 311 306 0 
		306 311 0 311 312 0 312 306 0 312 313 0 313 306 0 306 312 0 
		313 314 0 314 306 0 306 313 0 314 313 0 313 315 0 315 314 0 
		313 312 0 312 316 0 316 313 0 317 313 0 316 317 0 313 318 0 
		318 315 0 315 313 0 318 313 0 313 178 0 178 318 0 313 319 0 
		319 178 0 178 313 0 313 317 0 317 319 0 319 313 0 320 178 0 
		178 319 0 319 320 0 320 321 0 321 178 0 320 322 0 322 321 0 
		322 320 0 320 323 0 323 322 0 178 321 0 321 167 0 171 321 0 
		321 322 0 322 171 0 321 171 0 324 325 0 325 326 0 326 324 0 
		324 327 0 327 325 0 327 324 0 324 328 0 328 327 0 328 329 0 
		329 327 0 328 330 0 330 329 0 331 327 0 327 329 0 329 331 0 
		327 331 0 331 332 0 332 327 0 333 325 0 325 327 0 327 333 0 
		325 333 0 333 334 0 334 325 0 326 325 0 325 335 0 335 326 0 
		336 335 0 335 325 0 325 336 0 337 338 0 338 339 0 339 337 0 
		337 339 0 339 340 0 340 337 0 341 339 0 339 338 0 338 341 0 
		341 338 0 338 342 0 342 341 0 343 341 0 341 342 0 342 343 0 
		343 344 0 344 341 0 341 343 0 339 345 0 345 340 0 340 339 0 
		339 346 0 346 345 0 345 339 0 346 339 0 339 341 0 341 346 0 
		346 347 0 347 345 0 345 346 0 346 348 0 348 347 0 347 346 0 
		349 348 0 348 346 0 346 349 0 349 346 0 346 341 0 341 349 0 
		344 349 0 349 341 0 349 350 0 350 348 0 348 349 0 351 350 0 
		349 351 0 344 351 0 351 349 0 349 344 0 351 352 0 352 350 0 
		350 351 0 348 353 0 353 347 0 347 348 0 348 354 0 354 353 0 
		353 348 0 350 354 0 354 348 0 348 350 0 350 355 0 355 354 0 
		354 350 0 352 355 0 355 350 0 350 352 0 352 356 0 356 355 0 
		355 352 0 354 357 0 357 353 0 353 354 0 354 358 0 358 357 0 
		357 354 0 355 358 0 358 354 0 354 355 0 355 359 0 359 358 0 
		358 355 0 356 359 0 359 355 0 355 356 0 356 360 0 360 359 0 
		359 356 0 358 361 0 361 357 0 357 358 0 358 362 0 362 361 0 
		361 358 0 359 362 0 362 358 0 358 359 0 359 363 0 363 362 0 
		362 359 0 360 363 0 363 359 0 359 360 0 360 364 0 364 363 0 
		363 360 0 351 365 0 365 352 0 352 351 0 351 366 0 366 365 0 
		365 351 0 344 366 0 366 351 0 351 344 0 344 367 0 367 366 0 
		366 344 0 343 367 0 367 344 0 344 343 0 343 368 0 368 367 0 
		367 343 0 356 369 0 369 360 0 360 356 0 369 370 0 370 360 0 
		370 364 0 364 360 0 368 371 0 371 367 0 367 368 0 368 372 0 
		372 371 0 371 368 0 366 373 0 373 365 0 366 374 0 374 373 0 
		373 366 0 367 371 0 371 374 0 374 367 0 374 366 0 366 367 0 
		373 375 0 375 365 0 375 376 0 376 365 0 376 352 0 352 376 0 
		376 356 0 356 352 0 376 369 0 369 356 0 375 377 0 377 376 0 
		377 369 0 369 376 0 369 377 0 377 378 0 378 369 0 378 370 0 
		379 380 0 380 381 0 381 379 0 381 382 0 382 379 0 382 383 0 
		383 379 0 383 384 0 384 379 0 379 385 0 385 380 0 384 386 0 
		386 379 0 386 385 0 385 379 0 387 386 0 386 384 0 384 387 0 
		384 388 0 388 387 0 387 384 0 389 387 0 388 389 0 388 390 0 
		390 389 0 388 391 0 391 390 0 391 388 0 388 384 0 384 391 0 
		391 384 0 383 391 0 391 392 0 392 390 0 393 386 0 386 387 0 
		387 393 0 387 394 0 394 393 0 393 387 0 387 395 0 395 394 0 
		394 387 0 395 387 0 387 389 0 389 395 0 394 395 0 395 396 0 
		396 394 0 397 396 0 396 395 0 395 397 0 395 389 0 389 397 0 
		397 395 0 397 389 0 389 398 0 398 397 0 398 389 0 389 390 0 
		390 398 0 399 397 0 397 398 0 398 399 0 399 396 0 396 397 0 
		397 399 0 398 400 0 400 399 0 399 398 0 401 400 0 400 398 0 
		398 401 0 398 402 0 402 401 0 401 398 0 398 403 0 403 402 0 
		402 398 0 398 390 0 390 403 0 403 398 0 404 392 0 392 391 0 
		391 404 0 402 403 0 403 405 0 405 402 0 405 403 0 403 390 0 
		390 405 0 405 390 0 390 392 0 392 405 0 404 405 0 405 392 0 
		392 404 0 402 405 0 405 406 0 406 402 0 405 407 0 407 406 0 
		404 407 0 407 405 0 405 404 0 408 407 0 407 404 0 404 408 0 
		408 404 0 404 409 0 409 408 0 409 404 0 404 410 0 410 409 0 
		410 411 0 411 409 0 412 411 0 410 412 0 412 410 0 410 413 0 
		413 412 0 413 414 0 414 412 0 414 415 0 415 412 0 416 415 0 
		414 416 0 416 414 0 414 417 0 417 416 0 417 418 0 418 416 0 
		418 419 0 419 416 0 420 418 0 417 420 0 420 421 0 421 418 0 
		422 421 0 420 422 0 380 422 0 422 420 0 420 380 0 422 423 0 
		423 421 0 381 420 0 420 417 0 417 381 0 381 417 0 417 414 0 
		414 381 0 380 420 0 420 381 0 381 414 0 414 382 0 382 414 0 
		413 382 0 383 382 0 382 413 0 413 383 0 383 413 0 413 410 0 
		410 383 0 410 391 0 391 383 0 383 410 0 424 416 0 419 424 0 
		424 425 0 425 416 0 426 425 0 424 426 0 426 427 0 427 425 0 
		427 428 0 428 425 0 427 429 0 429 428 0 429 430 0 430 428 0 
		430 431 0 431 428 0 432 431 0 430 432 0 432 433 0 433 431 0 
		434 433 0 432 434 0 434 432 0 432 435 0 435 434 0 435 436 0 
		436 434 0 436 437 0 437 434 0 429 438 0 438 430 0 438 429 0 
		429 427 0 427 438 0 438 439 0 439 430 0 430 438 0 432 430 0 
		430 439 0 439 432 0 439 438 0 438 440 0 440 439 0 440 441 0 
		441 439 0 435 432 0 432 442 0 442 435 0 442 439 0 439 441 0 
		441 442 0 439 442 0 442 432 0 442 443 0 443 435 0 438 444 0 
		444 440 0 444 445 0 445 440 0 427 444 0 444 438 0 438 427 0 
		426 444 0 444 427 0 446 436 0 436 435 0 435 446 0 443 446 0 
		446 435 0 445 444 0 444 447 0 447 445 0 426 447 0 447 444 0 
		444 426 0 443 442 0 442 448 0 448 443 0 448 442 0 442 441 0 
		441 448 0 448 449 0 449 443 0 449 450 0 450 443 0 450 446 0 
		446 443 0 451 449 0 448 451 0 451 452 0 452 449 0 452 450 0 
		453 451 0 451 448 0 448 453 0 453 448 0 448 454 0 454 453 0 
		448 441 0 441 454 0 454 448 0 455 453 0 453 454 0 454 455 0 
		455 456 0 456 453 0 453 455 0 450 452 0 452 457 0 457 450 0 
		455 458 0 458 456 0 455 459 0 459 458 0 459 460 0 460 458 0 
		460 461 0 461 458 0 453 456 0 456 462 0 462 453 0 462 463 0 
		463 453 0 451 453 0 463 451 0 462 464 0 464 463 0 464 465 0 
		465 463 0 466 463 0 465 466 0 451 466 0 466 452 0 451 463 0 
		463 466 0 466 451 0 466 465 0 465 467 0 467 466 0 468 466 0 
		467 468 0 468 467 0 467 469 0 469 468 0 470 468 0 469 470 0 
		457 468 0 468 470 0 470 457 0 469 471 0 471 470 0 462 472 0 
		472 464 0 464 462 0 462 473 0 473 472 0 472 462 0 473 474 0 
		474 472 0 473 475 0 475 474 0 456 473 0 473 462 0 462 456 0 
		456 458 0 458 473 0 473 456 0 458 475 0 475 473 0 473 458 0 
		458 461 0 461 475 0 475 458 0 452 466 0 468 452 0 457 452 0 
		452 468 0 468 457 0 467 465 0 465 476 0 476 467 0 476 477 0 
		477 467 0 469 467 0 477 469 0 477 478 0 478 469 0 471 469 0 
		478 471 0 478 479 0 479 471 0 472 474 0 474 480 0 480 472 0 
		480 481 0 481 472 0 464 472 0 481 464 0 481 482 0 482 464 0 
		482 465 0 482 476 0 476 465 0 483 484 0 484 485 0 485 483 0 
		485 486 0 486 483 0 485 487 0 487 486 0 488 487 0 487 485 0 
		485 488 0 488 489 0 489 487 0 487 488 0 489 490 0 490 487 0 
		490 491 0 491 487 0 491 492 0 492 487 0 492 486 0 489 493 0 
		493 490 0 494 490 0 493 494 0 494 491 0 494 495 0 495 491 0 
		493 496 0 496 494 0 496 497 0 497 494 0 497 498 0 498 494 0 
		498 499 0 499 494 0 499 495 0 500 497 0 496 500 0 501 500 0 
		500 496 0 496 501 0 496 502 0 502 501 0 501 496 0 502 496 0 
		496 493 0 493 502 0 501 502 0 502 503 0 503 501 0 503 504 0 
		504 501 0 493 505 0 505 502 0 502 493 0 505 506 0 506 502 0 
		506 503 0 493 507 0 507 505 0 505 493 0 489 507 0 507 493 0 
		493 489 0 508 507 0 507 489 0 489 508 0 507 508 0 508 509 0 
		509 507 0 509 510 0 510 507 0 505 507 0 510 505 0 509 511 0 
		511 510 0 511 512 0 512 510 0 512 513 0 513 510 0 513 505 0 
		513 506 0 506 505 0 505 513 0 512 514 0 514 513 0 514 506 0 
		506 513 0 512 515 0 515 514 0 515 512 0 512 511 0 511 515 0 
		511 516 0 516 515 0 515 511 0 508 489 0 489 488 0 488 508 0 
		517 516 0 516 511 0 511 517 0 511 518 0 518 517 0 517 511 0 
		519 518 0 518 511 0 511 519 0 519 511 0 509 519 0 508 519 0 
		519 509 0 520 521 0 521 522 0 522 520 0 520 483 0 483 521 0 
		522 523 0 523 520 0 520 522 0 520 484 0 483 520 0 520 524 0 
		524 484 0 524 485 0 524 525 0 525 485 0 526 527 0 527 528 0 
		528 526 0 528 529 0 529 526 0 530 528 0 527 530 0 527 531 0 
		531 530 0 530 527 0 532 530 0 530 531 0 531 532 0 531 533 0 
		533 532 0 534 532 0 533 534 0 533 535 0 535 534 0 534 533 0 
		529 536 0 536 526 0 536 537 0 537 526 0 536 538 0 538 537 0 
		538 539 0 539 537 0 540 536 0 536 529 0 529 540 0 541 538 0 
		536 541 0 541 536 0 536 540 0 540 541 0 528 530 0 530 542 0 
		542 528 0 542 543 0 543 528 0 544 530 0 532 544 0 545 542 0 
		542 530 0 530 545 0 544 545 0 545 530 0 530 544 0 546 543 0 
		543 542 0 542 546 0 547 546 0 546 542 0 542 547 0 547 542 0 
		542 545 0 545 547 0 546 547 0 547 548 0 548 546 0 548 549 0 
		549 546 0 549 550 0 550 546 0 551 543 0 543 546 0 546 551 0 
		551 546 0 546 552 0 552 551 0 552 546 0 550 552 0 552 553 0 
		553 551 0 551 552 0 550 553 0 552 550 0 550 554 0 554 553 0 
		553 550 0 555 553 0 554 555 0 556 553 0 555 556 0 551 553 0 
		556 551 0 555 557 0 557 556 0 557 558 0 558 556 0 557 559 0 
		559 558 0 559 560 0 560 558 0 560 561 0 561 558 0 561 556 0 
		556 561 0 561 551 0 551 556 0 560 562 0 562 561 0 562 543 0 
		543 561 0 561 543 0 551 561 0 528 543 0 562 528 0 562 529 0 
		562 563 0 563 529 0 562 560 0 560 563 0 564 563 0 563 560 0 
		560 564 0 565 564 0 564 560 0 560 565 0 565 566 0 566 564 0 
		566 567 0 567 564 0 566 568 0 568 567 0 564 540 0 540 563 0 
		563 564 0 567 540 0 540 564 0 564 567 0 540 529 0 529 563 0 
		563 540 0 567 541 0 541 540 0 540 567 0 569 570 0 570 571 0 
		571 569 0 571 572 0 572 569 0 572 573 0 573 569 0 574 570 0 
		569 574 0 574 575 0 575 570 0 570 574 0 576 575 0 574 576 0 
		576 577 0 577 575 0 578 577 0 576 578 0 578 579 0 579 577 0 
		577 578 0 580 579 0 578 580 0 580 581 0 581 579 0 579 580 0 
		582 581 0 580 582 0 582 583 0 583 581 0 581 582 0 584 583 0 
		582 584 0 582 585 0 585 584 0 585 586 0 586 584 0 532 534 0 
		534 587 0 587 532 0 587 544 0 544 532 0 587 588 0 588 544 0 
		588 589 0 589 544 0 590 589 0 588 590 0 590 591 0 591 589 0 
		589 590 0 591 547 0 547 589 0 589 591 0 591 592 0 592 547 0 
		589 545 0 545 544 0 547 545 0 545 589 0 589 547 0 409 434 0 
		434 437 0 437 409 0 409 437 0 437 408 0 408 409 0 409 433 0 
		433 434 0 434 409 0 409 411 0 411 433 0 433 409 0 431 433 0 
		433 411 0 411 431 0 431 411 0 411 412 0 412 431 0 415 431 0 
		431 412 0 415 428 0 431 415 0 425 428 0 428 415 0 415 425 0 
		425 415 0 415 416 0 440 455 0 454 440 0 440 454 0 454 441 0 
		440 459 0 455 440 0 440 445 0 445 459 0 459 440 0 459 445 0 
		445 460 0 460 445 0 445 447 0 447 460 0 404 391 0 391 410 0 
		410 404 0 593 594 0 594 595 0 595 593 0 595 596 0 596 593 0 
		594 597 0 597 595 0 594 598 0 598 597 0 597 594 0 598 599 0 
		599 597 0 597 598 0 598 600 0 600 599 0 601 593 0 593 596 0 
		596 601 0 601 596 0 596 602 0 602 601 0 595 603 0 603 596 0 
		603 604 0 604 596 0 602 596 0 604 602 0 595 597 0 597 605 0 
		605 595 0 605 603 0 603 595 0 599 606 0 606 597 0 606 605 0 
		605 597 0 602 604 0 604 607 0 607 602 0 608 609 0 609 610 0 
		610 608 0 608 611 0 611 609 0 611 608 0 608 499 0 499 611 0 
		499 608 0 608 495 0 495 499 0 499 498 0 498 611 0 611 499 0 
		612 611 0 611 498 0 498 612 0 498 613 0 613 612 0 612 498 0 
		614 613 0 613 498 0 498 614 0 497 614 0 614 498 0 614 497 0 
		497 615 0 615 614 0 611 612 0 612 616 0 616 611 0 617 611 0 
		616 617 0 497 500 0 500 615 0 615 497 0 615 500 0 500 618 0 
		618 615 0 618 619 0 619 615 0 619 614 0 614 615 0 620 618 0 
		618 500 0 500 620 0 500 621 0 621 620 0 620 500 0 621 500 0 
		500 501 0 501 621 0 501 622 0 622 621 0 621 501 0 501 623 0 
		623 622 0 622 501 0 623 624 0 624 622 0 625 624 0 623 625 0 
		623 626 0 626 625 0 625 623 0 626 623 0 623 501 0 501 626 0 
		624 627 0 627 622 0 622 624 0 628 627 0 627 624 0 624 628 0 
		624 629 0 629 628 0 628 624 0 629 624 0 624 630 0 630 629 0 
		630 631 0 631 629 0 629 630 0 629 631 0 631 632 0 632 629 0 
		632 633 0 633 629 0 629 632 0 634 628 0 628 629 0 629 634 0 
		628 634 0 634 635 0 635 628 0 629 636 0 636 634 0 634 629 0 
		637 622 0 627 637 0 638 622 0 637 638 0 621 622 0 638 621 0 
		638 639 0 639 621 0 639 640 0 640 621 0 639 641 0 641 640 0 
		641 642 0 642 640 0 643 642 0 641 643 0 643 644 0 644 642 0 
		643 645 0 645 644 0 645 646 0 646 644 0 647 644 0 646 647 0 
		645 643 0 643 648 0 648 645 0 641 648 0 648 643 0 643 641 0 
		648 649 0 649 645 0 645 648 0 644 650 0 650 642 0 642 644 0 
		651 650 0 650 644 0 644 651 0 644 652 0 652 651 0 651 644 0 
		653 644 0 644 647 0 647 653 0 647 654 0 654 653 0 653 647 0 
		655 654 0 654 647 0 647 655 0 647 656 0 656 655 0 655 647 0 
		657 656 0 656 647 0 647 657 0 657 658 0 658 656 0 658 659 0 
		659 656 0 647 660 0 660 657 0 657 647 0 647 661 0 661 660 0 
		660 647 0 661 647 0 647 646 0 646 661 0 651 662 0 662 650 0 
		650 651 0 663 662 0 662 651 0 651 663 0 663 664 0 664 662 0 
		665 662 0 664 665 0 662 666 0 666 650 0 650 662 0 642 650 0 
		666 642 0 666 667 0 667 642 0 662 668 0 668 666 0 666 662 0 
		665 668 0 668 662 0 662 665 0 666 669 0 669 667 0 642 667 0 
		667 640 0 640 642 0 640 667 0 669 640 0 670 640 0 669 670 0 
		671 670 0 670 669 0 669 671 0 670 620 0 620 640 0 620 621 0 
		640 620 0 672 670 0 670 671 0 671 672 0 672 671 0 671 673 0 
		673 672 0 670 672 0 672 619 0 619 670 0 620 670 0 670 618 0 
		618 670 0 670 619 0 672 614 0 614 619 0 619 672 0 668 674 0 
		674 666 0 674 669 0 669 666 0 668 675 0 675 674 0 674 668 0 
		674 676 0 676 669 0 669 674 0 675 676 0 671 676 0 676 673 0 
		673 671 0 671 669 0 669 676 0 668 677 0 677 675 0 675 668 0 
		678 675 0 677 678 0 678 679 0 679 675 0 675 678 0 680 679 0 
		678 680 0 680 681 0 681 679 0 679 680 0 681 682 0 682 679 0 
		676 675 0 675 682 0 682 676 0 673 682 0 682 672 0 672 673 0 
		676 682 0 682 673 0 673 676 0 675 679 0 679 682 0 682 675 0 
		683 681 0 681 680 0 680 683 0 684 680 0 680 678 0 678 684 0 
		685 684 0 684 678 0 678 685 0 677 685 0 685 678 0 678 677 0 
		668 685 0 685 677 0 677 668 0 686 681 0 681 683 0 683 686 0 
		613 686 0 683 613 0 683 687 0 687 613 0 613 683 0 686 613 0 
		613 688 0 688 686 0 683 689 0 689 687 0 684 689 0 689 690 0 
		690 684 0 690 680 0 680 684 0 689 683 0 683 690 0 680 690 0 
		690 683 0 689 616 0 616 687 0 613 687 0 687 612 0 616 612 0 
		612 687 0 687 616 0 681 691 0 691 682 0 682 681 0 691 686 0 
		688 691 0 691 681 0 681 686 0 686 691 0 691 672 0 672 682 0 
		682 691 0 613 614 0 614 688 0 688 613 0 614 692 0 692 688 0 
		688 614 0 672 692 0 692 614 0 692 691 0 691 688 0 672 691 0 
		692 672 0 693 684 0 684 685 0 685 693 0 693 685 0 685 668 0 
		668 693 0 693 694 0 694 684 0 684 693 0 694 689 0 689 684 0 
		684 694 0 695 694 0 693 695 0 696 694 0 695 696 0 696 689 0 
		689 694 0 616 689 0 696 616 0 617 696 0 695 617 0 617 616 0 
		616 696 0 696 617 0 697 617 0 617 695 0 695 697 0 695 693 0 
		693 698 0 698 695 0 698 693 0 693 665 0 665 698 0 698 699 0 
		699 695 0 665 699 0 698 665 0 699 697 0 697 695 0 664 699 0 
		699 665 0 665 664 0 663 699 0 699 664 0 664 663 0 665 693 0 
		693 668 0 668 665 0 656 700 0 700 701 0 701 656 0 701 702 0 
		702 656 0 700 656 0 656 659 0 659 700 0 703 704 0 704 705 0 
		705 703 0 705 706 0 706 703 0 706 707 0 707 703 0 706 708 0 
		708 707 0 708 709 0 709 707 0 710 708 0 708 706 0 706 710 0 
		706 711 0 711 710 0 710 706 0 712 706 0 705 712 0 705 713 0 
		713 712 0 712 705 0 704 714 0 714 705 0 714 715 0 715 705 0 
		501 504 0 504 626 0 626 501 0 716 717 0 717 718 0 718 716 0 
		719 717 0 716 719 0 717 720 0 720 718 0 720 721 0 721 718 0 
		722 721 0 720 722 0 720 723 0 723 722 0 724 722 0 723 724 0 
		717 719 0 719 725 0 725 717 0 725 726 0 726 717 0 720 717 0 
		726 720 0 725 727 0 727 726 0 727 728 0 728 726 0 727 729 0 
		729 728 0 730 729 0 727 730 0 727 731 0 731 730 0 727 725 0 
		725 731 0 729 732 0 732 728 0 728 729 0 733 728 0 732 733 0 
		732 734 0 734 733 0 735 733 0 734 735 0 734 736 0 736 735 0 
		737 735 0 736 737 0 736 738 0 738 737 0 739 737 0 738 739 0 
		738 740 0 740 739 0 741 740 0 738 741 0 736 741 0 741 738 0 
		734 742 0 742 736 0 742 743 0 743 736 0 741 736 0 743 741 0 
		729 730 0 730 744 0 744 729 0 741 745 0 745 740 0 740 741 0 
		732 746 0 746 734 0 746 742 0 742 734 0 746 732 0 732 729 0 
		729 746 0 744 746 0 746 729 0 746 744 0 744 747 0 747 746 0 
		747 748 0 748 746 0 742 746 0 748 742 0 747 749 0 749 748 0 
		749 750 0 750 748 0 749 751 0 751 750 0 751 752 0 752 750 0 
		753 750 0 752 753 0 753 752 0 752 754 0 754 753 0 755 753 0 
		754 755 0 755 754 0 754 756 0 756 755 0 757 755 0 756 757 0 
		757 756 0 756 758 0 758 757 0 759 757 0 758 759 0 759 758 0 
		758 760 0 760 759 0 749 761 0 761 751 0 751 749 0 749 762 0 
		762 761 0 761 749 0 763 757 0 757 759 0 759 763 0 763 764 0 
		764 757 0 757 763 0 764 755 0 755 757 0 757 764 0 765 762 0 
		762 749 0 749 765 0 765 749 0 749 747 0 747 765 0 766 753 0 
		753 755 0 755 766 0 766 755 0 755 767 0 767 766 0 764 767 0 
		767 755 0 767 743 0 743 766 0 743 742 0 742 766 0 766 743 0 
		748 766 0 766 742 0 742 748 0 766 748 0 748 750 0 750 766 0 
		766 750 0 753 766 0 767 764 0 764 741 0 741 767 0 741 743 0 
		743 767 0 767 741 0 745 741 0 741 764 0 764 745 0 764 763 0 
		763 745 0 745 764 0 765 747 0 744 765 0 744 768 0 768 765 0 
		765 744 0 768 744 0 744 730 0 730 768 0 769 770 0 770 771 0 
		771 769 0 771 772 0 772 769 0 773 772 0 771 773 0 773 774 0 
		774 772 0 772 773 0 775 774 0 773 775 0 775 773 0 773 776 0 
		776 775 0 770 777 0 777 771 0 777 778 0 778 771 0 778 773 0 
		773 771 0 777 779 0 779 778 0 779 780 0 780 778 0 781 778 0 
		780 781 0 781 773 0 776 773 0 781 776 0 781 780 0 780 782 0 
		782 781 0 783 781 0 782 783 0 783 776 0 783 782 0 782 784 0 
		784 783 0 779 785 0 785 780 0 785 786 0 786 780 0 786 782 0 
		786 787 0 787 782 0 787 784 0 787 788 0 788 784 0 785 789 0 
		789 786 0 789 790 0 790 786 0 790 787 0 790 791 0 791 787 0 
		791 788 0 791 792 0 792 788 0 789 793 0 793 790 0 793 794 0 
		794 790 0 794 791 0 794 795 0 795 791 0 795 792 0 795 796 0 
		796 792 0 784 797 0 797 783 0 797 798 0 798 783 0 798 776 0 
		776 798 0 798 799 0 799 776 0 799 775 0 775 799 0 799 800 0 
		800 775 0 792 801 0 801 788 0 796 802 0 802 792 0 802 801 0 
		801 792 0 800 799 0 799 803 0 803 800 0 803 804 0 804 800 0 
		798 797 0 797 805 0 805 798 0 805 806 0 806 798 0 806 799 0 
		806 803 0 803 799 0 797 807 0 807 805 0 805 797 0 797 808 0 
		808 807 0 807 797 0 784 808 0 808 797 0 797 784 0 788 808 0 
		808 784 0 788 801 0 801 808 0 808 788 0 808 801 0 801 809 0 
		809 808 0 809 807 0 807 808 0 801 802 0 802 810 0 810 801 0 
		810 809 0 809 801 0 811 812 0 812 813 0 813 811 0 814 812 0 
		811 814 0 815 816 0 816 817 0 817 815 0 818 815 0 817 818 0 
		819 820 0 820 821 0 821 819 0 819 822 0 822 820 0 823 820 0 
		822 823 0 823 824 0 824 820 0 820 823 0 823 825 0 825 824 0 
		821 820 0 820 826 0 826 821 0 826 827 0 827 821 0 827 828 0 
		828 821 0 828 829 0 829 821 0 829 830 0 830 821 0 830 819 0 
		831 828 0 827 831 0 827 832 0 832 831 0 831 827 0 832 827 0 
		827 833 0 833 832 0 826 833 0 833 827 0 826 834 0 834 833 0 
		833 826 0 835 834 0 834 826 0 826 835 0 835 836 0 836 834 0 
		826 837 0 837 835 0 835 826 0 837 838 0 838 835 0 837 824 0 
		824 838 0 838 839 0 839 835 0 834 836 0 836 840 0 840 834 0 
		840 833 0 841 831 0 831 832 0 832 841 0 842 833 0 833 840 0 
		840 842 0 842 832 0 832 833 0 833 842 0 832 842 0 842 843 0 
		843 832 0 843 844 0 844 832 0 844 841 0 841 832 0 845 839 0 
		839 838 0 838 845 0 845 846 0 846 839 0 847 841 0 844 847 0 
		847 844 0 843 847 0 845 848 0 848 846 0 849 846 0 848 849 0 
		849 848 0 848 850 0 850 849 0 850 851 0 851 849 0 852 849 0 
		851 852 0 852 853 0 853 849 0 854 853 0 852 854 0 854 855 0 
		855 853 0 854 856 0 856 855 0 854 857 0 857 856 0 857 858 0 
		858 856 0 857 859 0 859 858 0 860 859 0 859 857 0 857 860 0 
		857 861 0 861 860 0 860 857 0 859 862 0 862 858 0 858 859 0 
		863 861 0 861 857 0 857 863 0 857 854 0 854 863 0 863 857 0 
		854 852 0 852 864 0 864 854 0 864 863 0 863 854 0 852 865 0 
		865 864 0 864 852 0 865 852 0 852 851 0 851 865 0 865 866 0 
		866 864 0 866 867 0 867 864 0 866 868 0 868 867 0 866 869 0 
		869 868 0 870 868 0 869 870 0 870 871 0 871 868 0 872 868 0 
		871 872 0 872 873 0 873 868 0 873 867 0 874 872 0 872 871 0 
		871 874 0 872 874 0 874 875 0 875 872 0 871 876 0 876 874 0 
		874 871 0 876 871 0 870 876 0 869 866 0 866 877 0 877 869 0 
		877 866 0 865 877 0 869 878 0 878 870 0 870 869 0 878 869 0 
		869 879 0 879 878 0 877 879 0 879 869 0 869 877 0 879 877 0 
		877 880 0 880 879 0 880 877 0 877 881 0 881 880 0 870 882 0 
		882 876 0 876 870 0 882 870 0 870 878 0 878 882 0 877 865 0 
		865 881 0 883 880 0 880 881 0 881 883 0 881 884 0 884 883 0 
		885 880 0 880 883 0 883 885 0 880 885 0 885 886 0 886 880 0 
		887 886 0 885 887 0 885 888 0 888 887 0 887 885 0 885 889 0 
		889 888 0 883 889 0 889 885 0 886 887 0 887 890 0 890 886 0 
		891 890 0 890 887 0 887 891 0 890 891 0 891 892 0 892 890 0 
		889 883 0 883 893 0 893 889 0 883 884 0 884 893 0 893 883 0 
		884 894 0 894 893 0 893 884 0 894 884 0 884 895 0 895 894 0 
		896 894 0 895 896 0 896 897 0 897 894 0 896 825 0 825 897 0 
		825 896 0 896 824 0 887 898 0 898 891 0 898 887 0 887 888 0 
		888 898 0 899 893 0 893 894 0 894 899 0 894 900 0 900 899 0 
		901 899 0 900 901 0 901 902 0 902 899 0 902 903 0 903 899 0 
		903 893 0 893 899 0 902 904 0 904 903 0 905 904 0 902 905 0 
		905 906 0 906 904 0 902 907 0 907 905 0 905 902 0 907 902 0 
		901 907 0 908 894 0 894 897 0 897 908 0 825 909 0 909 897 0 
		897 825 0 909 908 0 908 897 0 910 908 0 908 909 0 909 910 0 
		908 910 0 910 911 0 911 908 0 911 912 0 912 908 0 912 894 0 
		911 913 0 913 912 0 914 913 0 913 911 0 911 914 0 913 914 0 
		914 915 0 915 913 0 911 916 0 916 914 0 914 911 0 916 911 0 
		910 916 0 910 917 0 917 916 0 916 910 0 917 910 0 910 918 0 
		918 917 0 918 919 0 919 917 0 919 916 0 918 920 0 920 919 0 
		918 921 0 921 920 0 918 922 0 922 921 0 910 922 0 922 918 0 
		918 910 0 922 910 0 909 922 0 823 921 0 922 823 0 921 823 0 
		823 923 0 923 921 0 823 924 0 924 923 0 923 823 0 925 924 0 
		924 823 0 823 925 0 925 926 0 926 924 0 924 925 0 925 927 0 
		927 926 0 928 927 0 925 928 0 928 929 0 929 927 0 930 927 0 
		929 930 0 930 931 0 931 927 0 931 926 0 822 928 0 928 925 0 
		925 822 0 925 823 0 822 925 0 928 822 0 822 932 0 932 928 0 
		822 933 0 933 932 0 932 822 0 934 933 0 933 822 0 822 934 0 
		934 935 0 935 933 0 933 934 0 934 936 0 936 935 0 937 936 0 
		934 937 0 937 938 0 938 936 0 939 936 0 938 939 0 939 940 0 
		940 936 0 940 935 0 819 937 0 937 934 0 934 819 0 934 822 0 
		822 819 0 819 934 0 937 819 0 819 941 0 941 937 0 819 942 0 
		942 941 0 941 819 0 943 942 0 942 819 0 819 943 0 943 944 0 
		944 942 0 942 943 0 943 945 0 945 944 0 946 944 0 945 946 0 
		946 947 0 947 944 0 943 819 0 830 943 0 940 948 0 948 935 0 
		948 940 0 940 939 0 939 948 0 947 946 0 946 949 0 949 947 0 
		949 950 0 950 947 0 939 951 0 951 948 0 948 939 0 926 931 0 
		931 952 0 952 926 0 952 931 0 931 930 0 930 952 0 930 953 0 
		953 952 0 952 930 0 922 825 0 825 823 0 823 922 0 922 909 0 
		909 825 0 825 922 0 954 955 0 955 956 0 956 954 0 956 957 0 
		957 954 0 958 955 0 954 958 0 958 959 0 959 955 0 960 959 0 
		958 960 0 960 961 0 961 959 0 962 961 0 960 962 0 962 963 0 
		963 961 0 964 963 0 962 964 0 964 965 0 965 963 0 956 966 0 
		966 957 0 966 967 0 967 957 0 968 964 0 964 962 0 962 968 0 
		968 962 0 962 969 0 969 968 0 969 962 0 960 969 0 970 954 0 
		957 970 0 970 957 0 957 971 0 971 970 0 972 971 0 971 957 0 
		957 972 0 972 957 0 967 972 0 969 960 0 960 973 0 973 969 0 
		974 973 0 973 960 0 960 974 0 974 954 0 954 970 0 970 974 0 
		974 960 0 960 958 0 958 974 0 974 958 0 958 954 0 954 974 0 
		971 975 0 975 970 0 970 971 0 975 971 0 971 976 0 976 975 0 
		972 976 0 976 971 0 977 975 0 976 977 0 977 976 0 976 978 0 
		978 977 0 978 979 0 979 977 0 978 980 0 980 979 0 981 977 0 
		979 981 0 981 982 0 982 977 0 982 975 0 983 982 0 981 983 0 
		983 984 0 984 982 0 984 975 0 975 982 0 982 984 0 985 984 0 
		983 985 0 985 986 0 986 984 0 987 986 0 985 987 0 987 988 0 
		988 986 0 989 988 0 987 989 0 989 990 0 990 988 0 991 988 0 
		990 991 0 991 986 0 986 992 0 992 984 0 992 986 0 986 993 0 
		993 992 0 991 993 0 993 986 0 986 991 0 991 990 0 990 994 0 
		994 991 0 975 984 0 984 992 0 992 975 0 995 989 0 987 995 0 
		985 995 0 995 987 0 995 996 0 996 989 0 995 985 0 985 997 0 
		997 995 0 983 997 0 997 985 0 997 983 0 983 998 0 998 997 0 
		996 995 0 995 999 0 999 996 0 997 999 0 999 995 0 995 997 0 
		998 1000 0 1000 997 0 997 998 0 997 1000 0 1000 1001 0 1001 997 0 
		999 997 0 997 1001 0 1001 999 0 1001 1000 0 1000 1002 0 1002 1001 0 
		1003 1002 0 1002 1000 0 1000 1003 0 1000 998 0 998 1003 0 1003 1000 0 
		1002 1003 0 1003 1004 0 1004 1002 0 1003 1005 0 1005 1004 0 1004 1003 0 
		1005 1003 0 1003 1006 0 1006 1005 0 1007 1005 0 1005 1006 0 1006 1007 0 
		1008 1003 0 1003 998 0 998 1008 0 1003 1008 0 1008 1006 0 1006 1003 0 
		998 981 0 981 1008 0 1008 998 0 979 1008 0 1008 981 0 981 979 0 
		1008 979 0 979 1009 0 1009 1008 0 1009 1006 0 1006 1008 0 1008 1009 0 
		980 1009 0 1009 979 0 979 980 0 1009 980 0 980 1010 0 1010 1009 0 
		981 998 0 998 983 0 983 981 0 1006 1009 0 1009 1011 0 1011 1006 0 
		1011 1009 0 1009 1010 0 1010 1011 0 1011 1007 0 1007 1006 0 1006 1011 0 
		865 851 0 851 881 0 881 865 0 881 851 0 851 884 0 884 851 0 
		850 884 0 848 884 0 884 850 0 850 848 0 848 895 0 895 884 0 
		884 848 0 896 895 0 895 848 0 848 896 0 896 848 0 845 896 0 
		896 845 0 845 838 0 838 896 0 896 838 0 838 824 0 837 820 0 
		820 824 0 824 837 0 826 820 0 820 837 0 837 826 0 919 1012 0 
		1012 916 0 1013 978 0 978 976 0 976 1013 0 976 972 0 972 1013 0 
		1013 976 0 992 970 0 975 992 0 970 992 0 992 974 0 974 970 0 
		993 974 0 974 992 0 992 993 0 974 993 0 993 973 0 973 974 0 
		991 973 0 973 993 0 993 991 0 973 991 0 991 969 0 969 973 0 
		994 969 0 969 991 0 991 994 0 969 994 0 994 968 0 968 969 0 
		635 1014 0 1014 628 0 628 1014 0 1014 1015 0 1015 628 0 1015 627 0 
		628 1015 0 627 1015 0 1015 637 0 1016 1017 0 1017 1018 0 1018 1016 0 
		1018 1019 0 1019 1016 0 1016 1018 0 1020 1019 0 1019 1018 0 1018 1020 0 
		1020 1018 0 1018 1021 0 1021 1020 0 1021 1022 0 1022 1020 0 1020 1021 0 
		1017 1023 0 1023 1018 0 1018 1017 0 1017 1024 0 1024 1023 0 1023 1017 0 
		1017 1025 0 1025 1024 0 1024 1017 0 1017 1026 0 1026 1025 0 1025 1017 0 
		1017 1027 0 1027 1026 0 1026 1017 0 1016 1027 0 1027 1017 0 1017 1016 0 
		1028 1024 0 1024 1025 0 1025 1028 0 1024 1028 0 1028 1029 0 1029 1024 0 
		1029 1030 0 1030 1024 0 1024 1029 0 1024 1030 0 1030 1023 0 1023 1024 0 
		1023 1030 0 1030 1031 0 1031 1023 0 1032 1023 0 1023 1031 0 1031 1032 0 
		1031 1033 0 1033 1032 0 1032 1031 0 1023 1032 0 1032 1034 0 1034 1023 0 
		1032 1035 0 1035 1034 0 1034 1032 0 1034 1035 0 1035 1021 0 1021 1034 0 
		1032 1036 0 1036 1035 0 1035 1032 0 1031 1037 0 1037 1033 0 1033 1031 0 
		1037 1031 0 1031 1030 0 1030 1037 0 1038 1029 0 1029 1028 0 1028 1038 0 
		1039 1037 0 1037 1030 0 1030 1039 0 1039 1030 0 1030 1029 0 1029 1039 0 
		1029 1040 0 1040 1039 0 1039 1029 0 1040 1029 0 1029 1041 0 1041 1040 0 
		1029 1038 0 1038 1041 0 1041 1029 0 1042 1035 0 1035 1036 0 1036 1042 0 
		1036 1043 0 1043 1042 0 1042 1036 0 1044 1041 0 1041 1038 0 1038 1044 0 
		1044 1040 0 1040 1041 0 1041 1044 0 1042 1043 0 1043 1045 0 1045 1042 0 
		1046 1045 0 1045 1043 0 1043 1046 0 1046 1047 0 1047 1045 0 1045 1046 0 
		1047 1046 0 1046 1048 0 1048 1047 0 1049 1048 0 1048 1046 0 1046 1049 0 
		1049 1046 0 1046 1050 0 1050 1049 0 1051 1049 0 1049 1050 0 1050 1051 0 
		1051 1050 0 1050 1052 0 1052 1051 0 1051 1052 0 1052 1053 0 1053 1051 0 
		1053 1054 0 1054 1051 0 1051 1053 0 1054 1053 0 1053 1055 0 1055 1054 0 
		1055 1056 0 1056 1054 0 1054 1055 0 1057 1054 0 1054 1056 0 1056 1057 0 
		1054 1057 0 1057 1058 0 1058 1054 0 1056 1055 0 1055 1059 0 1059 1056 0 
		1060 1054 0 1054 1058 0 1058 1060 0 1054 1060 0 1060 1051 0 1051 1054 0 
		1051 1060 0 1060 1061 0 1061 1051 0 1051 1061 0 1061 1049 0 1049 1051 0 
		1049 1061 0 1061 1062 0 1062 1049 0 1062 1048 0 1048 1049 0 1049 1062 0 
		1062 1061 0 1061 1063 0 1063 1062 0 1063 1061 0 1061 1064 0 1064 1063 0 
		1064 1065 0 1065 1063 0 1063 1064 0 1063 1065 0 1065 1066 0 1066 1063 0 
		1067 1066 0 1066 1065 0 1065 1067 0 1065 1068 0 1068 1067 0 1067 1065 0 
		1069 1068 0 1068 1065 0 1065 1069 0 1065 1070 0 1070 1069 0 1069 1065 0 
		1065 1064 0 1064 1070 0 1070 1065 0 1071 1068 0 1068 1069 0 1069 1071 0 
		1069 1072 0 1072 1071 0 1071 1069 0 1068 1071 0 1071 1073 0 1073 1068 0 
		1073 1067 0 1067 1068 0 1068 1073 0 1066 1074 0 1074 1063 0 1063 1066 0 
		1074 1062 0 1062 1063 0 1063 1074 0 1066 1067 0 1067 1075 0 1075 1066 0 
		1075 1076 0 1076 1066 0 1066 1075 0 1074 1066 0 1066 1076 0 1076 1074 0 
		1076 1077 0 1077 1074 0 1074 1076 0 1077 1078 0 1078 1074 0 1074 1077 0 
		1067 1073 0 1073 1079 0 1079 1067 0 1079 1075 0 1075 1067 0 1067 1079 0 
		1074 1078 0 1078 1062 0 1062 1074 0 1080 1078 0 1078 1077 0 1077 1080 0 
		1080 1081 0 1081 1078 0 1078 1080 0 1082 1080 0 1080 1077 0 1077 1082 0 
		1077 1083 0 1083 1082 0 1082 1077 0 1084 1082 0 1082 1083 0 1083 1084 0 
		1082 1084 0 1084 1085 0 1085 1082 0 1085 1086 0 1086 1082 0 1082 1085 0 
		1080 1082 0 1082 1086 0 1086 1080 0 1083 1087 0 1087 1084 0 1084 1083 0 
		1088 1084 0 1084 1087 0 1087 1088 0 1087 1089 0 1089 1088 0 1088 1087 0 
		1086 1090 0 1090 1080 0 1080 1086 0 1080 1090 0 1090 1081 0 1081 1080 0 
		1081 1090 0 1090 1091 0 1091 1081 0 1091 1092 0 1092 1081 0 1081 1091 0 
		1093 1092 0 1092 1091 0 1091 1093 0 1091 1094 0 1094 1093 0 1093 1091 0 
		1093 1094 0 1094 1022 0 1022 1093 0 1022 1021 0 1021 1093 0 1093 1022 0 
		1084 1088 0 1088 1095 0 1095 1084 0 1095 1085 0 1085 1084 0 1084 1095 0 
		1096 1091 0 1091 1090 0 1090 1096 0 1091 1096 0 1096 1097 0 1097 1091 0 
		1098 1097 0 1097 1096 0 1096 1098 0 1096 1099 0 1099 1098 0 1098 1096 0 
		1099 1096 0 1096 1100 0 1100 1099 0 1096 1090 0 1090 1100 0 1100 1096 0 
		1100 1101 0 1101 1099 0 1099 1100 0 1102 1099 0 1099 1101 0 1101 1102 0 
		1101 1103 0 1103 1102 0 1102 1101 0 1099 1102 0 1102 1104 0 1104 1099 0 
		1104 1098 0 1098 1099 0 1099 1104 0 1105 1094 0 1094 1091 0 1091 1105 0 
		1022 1094 0 1094 1106 0 1106 1022 0 1094 1105 0 1105 1106 0 1106 1094 0 
		1107 1106 0 1106 1105 0 1105 1107 0 1105 1108 0 1108 1107 0 1107 1105 0 
		1108 1105 0 1105 1109 0 1109 1108 0 1105 1091 0 1091 1109 0 1109 1105 0 
		1109 1110 0 1110 1108 0 1108 1109 0 1111 1108 0 1108 1110 0 1110 1111 0 
		1110 1112 0 1112 1111 0 1111 1110 0 1108 1111 0 1111 1113 0 1113 1108 0 
		1113 1107 0 1107 1108 0 1108 1113 0 1107 1113 0 1113 1114 0 1114 1107 0 
		1114 1115 0 1115 1107 0 1107 1114 0 1115 1114 0 1114 1116 0 1116 1115 0 
		1113 1116 0 1116 1114 0 1114 1113 0 1116 1117 0 1117 1115 0 1115 1116 0 
		1115 1117 0 1117 1118 0 1118 1115 0 1118 1119 0 1119 1115 0 1115 1118 0 
		1107 1115 0 1115 1119 0 1119 1107 0 1119 1106 0 1106 1107 0 1107 1119 0 
		1020 1119 0 1119 1118 0 1118 1020 0 1118 1120 0 1120 1020 0 1020 1118 0 
		1020 1120 0 1120 1121 0 1121 1020 0 1122 1020 0 1020 1121 0 1121 1122 0 
		1122 1121 0 1121 1123 0 1123 1122 0 1123 1124 0 1124 1122 0 1122 1123 0 
		1125 1122 0 1122 1124 0 1124 1125 0 1124 1126 0 1126 1125 0 1125 1124 0 
		1127 1126 0 1126 1124 0 1124 1127 0 1124 1128 0 1128 1127 0 1127 1124 0 
		1128 1124 0 1124 1123 0 1123 1128 0 1019 1122 0 1122 1125 0 1125 1019 0 
		1122 1019 0 1019 1020 0 1020 1122 0 1125 1129 0 1129 1019 0 1019 1125 0 
		1019 1129 0 1129 1130 0 1130 1019 0 1131 1019 0 1019 1130 0 1130 1131 0 
		1131 1130 0 1130 1132 0 1132 1131 0 1132 1133 0 1133 1131 0 1131 1132 0 
		1134 1131 0 1131 1133 0 1133 1134 0 1133 1135 0 1135 1134 0 1134 1133 0 
		1136 1135 0 1135 1133 0 1133 1136 0 1133 1137 0 1137 1136 0 1136 1133 0 
		1137 1133 0 1133 1132 0 1132 1137 0 1016 1131 0 1131 1134 0 1134 1016 0 
		1131 1016 0 1016 1019 0 1019 1131 0 1134 1138 0 1138 1016 0 1016 1134 0 
		1016 1138 0 1138 1139 0 1139 1016 0 1140 1016 0 1016 1139 0 1139 1140 0 
		1140 1139 0 1139 1141 0 1141 1140 0 1141 1142 0 1142 1140 0 1140 1141 0 
		1143 1142 0 1142 1141 0 1141 1143 0 1141 1144 0 1144 1143 0 1143 1141 0 
		1140 1027 0 1027 1016 0 1016 1140 0 1132 1145 0 1145 1137 0 1137 1132 0 
		1145 1136 0 1136 1137 0 1137 1145 0 1144 1146 0 1146 1143 0 1143 1144 0 
		1146 1144 0 1144 1147 0 1147 1146 0 1136 1145 0 1145 1148 0 1148 1136 0 
		1123 1149 0 1149 1128 0 1128 1123 0 1149 1127 0 1127 1128 0 1128 1149 0 
		1127 1149 0 1149 1150 0 1150 1127 0 1119 1020 0 1020 1022 0 1022 1119 0 
		1119 1022 0 1022 1106 0 1106 1119 0 1062 1078 0 1078 1048 0 1048 1062 0 
		1081 1048 0 1048 1078 0 1078 1081 0 1081 1047 0 1047 1048 0 1048 1081 0 
		1045 1047 0 1047 1081 0 1081 1045 0 1045 1081 0 1081 1092 0 1092 1045 0 
		1093 1045 0 1045 1092 0 1092 1093 0 1093 1042 0 1042 1045 0 1045 1093 0 
		1093 1035 0 1035 1042 0 1042 1093 0 1093 1021 0 1021 1035 0 1035 1093 0 
		1034 1021 0 1021 1018 0 1018 1034 0 1023 1034 0 1034 1018 0 1018 1023 0 
		1116 1113 0 1113 1151 0 1151 1116 0 725 1152 0 1152 731 0 731 725 0 
		719 1152 0 1152 725 0 725 719 0 1153 737 0 737 739 0 739 1153 0 
		739 1154 0 1154 1153 0 1153 739 0 737 1153 0 1153 735 0 1153 1155 0 
		1155 735 0 735 1153 0 733 735 0 735 1155 0 1155 733 0 1155 1156 0 
		1156 733 0 733 1155 0 728 733 0 733 1156 0 1156 728 0 1156 726 0 
		726 728 0 728 1156 0 1154 1157 0 1157 1153 0 1153 1154 0 1155 1153 0 
		1153 1157 0 1157 1155 0 1156 1155 0 1155 723 0 723 1156 0 1155 724 0 
		724 723 0 723 1155 0 1157 724 0 724 1155 0 1155 1157 0 723 720 0 
		720 1156 0 1156 723 0 726 1156 0 1156 720 0 720 726 0 1158 1159 0 
		1159 1160 0 1160 1158 0 1158 1160 0 1160 1161 0 1161 1158 0 1162 1160 0 
		1160 1159 0 1159 1162 0 1160 1162 0 1162 1163 0 1163 1160 0 1164 1160 0 
		1160 1163 0 1163 1164 0 1161 1160 0 1160 1164 0 1164 1161 0 1164 1163 0 
		1163 1165 0 1165 1164 0 1161 1164 0 1164 1166 0 1166 1161 0 1161 1166 0 
		1166 1167 0 1167 1161 0 1167 1166 0 1166 1168 0 1168 1167 0 1168 1166 0 
		1166 1169 0 1169 1168 0 1169 1166 0 1166 1164 0 1164 1169 0 1168 1169 0 
		1169 1170 0 1170 1168 0 1167 1168 0 1168 1171 0 1171 1167 0 1169 1164 0 
		1164 1172 0 1172 1169 0 1172 1164 0 1164 1165 0 1165 1172 0 1163 1162 0 
		1162 1173 0 1173 1163 0 1173 1162 0 1162 1174 0 1174 1173 0 1162 1159 0 
		1159 1174 0 1174 1162 0 1174 1159 0 1159 1175 0 1175 1174 0 1163 1173 0 
		1173 1176 0 1176 1163 0 1165 1163 0 1163 1176 0 1176 1165 0 1177 1176 0 
		1176 1173 0 1173 1177 0 1177 1173 0 1173 1178 0 1178 1177 0 1173 1179 0 
		1179 1178 0 1178 1173 0 1173 1174 0 1174 1179 0 1179 1173 0 1179 1174 0 
		1174 1180 0 1180 1179 0 1174 1175 0 1175 1180 0 1180 1174 0 1165 1176 0 
		1176 1181 0 1181 1165 0 1182 1181 0 1181 1176 0 1176 1182 0 1182 1176 0 
		1176 1183 0 1183 1182 0 1183 1176 0 1176 1177 0 1177 1183 0 1184 1181 0 
		1181 1182 0 1182 1184 0 1184 1185 0 1185 1181 0 1181 1184 0 1185 1172 0 
		1172 1165 0 1165 1185 0 1185 1165 0 1165 1181 0 1181 1185 0 1186 1172 0 
		1172 1185 0 1185 1186 0 1186 1169 0 1169 1172 0 1172 1186 0 1170 1169 0 
		1169 1186 0 1186 1170 0 1170 1186 0 1186 1187 0 1187 1170 0 1187 1186 0 
		1186 1188 0 1188 1187 0 1187 1188 0 1188 1189 0 1189 1187 0 1188 1186 0 
		1186 1190 0 1190 1188 0 1190 1186 0 1186 1185 0 1185 1190 0 1190 1185 0 
		1185 1184 0 1184 1190 0 1191 1187 0 1187 1189 0 1189 1191 0 1191 1192 0 
		1192 1187 0 1187 1191 0 1192 1170 0 1170 1187 0 1187 1192 0 1192 1193 0 
		1193 1170 0 1170 1192 0 1193 1168 0 1168 1170 0 1170 1193 0 1193 1194 0 
		1194 1168 0 1168 1193 0 1194 1171 0 1171 1168 0 1168 1194 0 1194 1195 0 
		1195 1171 0 1171 1194 0 1195 1167 0 1167 1171 0 1171 1195 0 1195 1196 0 
		1196 1167 0 1167 1195 0 1196 1161 0 1161 1167 0 1167 1196 0 1196 1197 0 
		1197 1161 0 1161 1196 0 1197 1158 0 1158 1161 0 1161 1197 0 1197 1198 0 
		1198 1158 0 1158 1197 0 1198 1199 0 1199 1158 0 1158 1198 0 1199 1159 0 
		1159 1158 0 1158 1199 0 1200 1159 0 1159 1199 0 1199 1200 0 1200 1175 0 
		1175 1159 0 1159 1200 0 1201 1175 0 1175 1200 0 1200 1201 0 1201 1202 0 
		1202 1175 0 1175 1201 0 1203 1200 0 1200 1199 0 1199 1203 0 1198 1203 0 
		1203 1199 0 1199 1198 0 1203 1204 0 1204 1200 0 1200 1203 0 1204 1201 0 
		1201 1200 0 1200 1204 0 1204 1205 0 1205 1201 0 1201 1204 0 1180 1175 0 
		1175 1202 0 1202 1180 0 1206 1207 0 1207 1208 0 1208 1206 0 1209 1207 0 
		1207 1206 0 1206 1209 0 1208 1207 0 1207 1210 0 1210 1208 0 1210 1207 0 
		1207 1211 0 1211 1210 0 1212 1207 0 1207 1209 0 1209 1212 0 1213 1207 0 
		1207 1212 0 1212 1213 0 1214 1212 0 1212 1209 0 1209 1214 0 1215 1207 0 
		1207 1213 0 1213 1215 0 1216 1207 0 1207 1215 0 1215 1216 0 1216 1217 0 
		1217 1207 0 1207 1216 0 1218 1207 0 1207 1217 0 1217 1218 0 1219 1207 0 
		1207 1218 0 1218 1219 0 1220 1207 0 1207 1219 0 1219 1220 0 1207 1220 0 
		1220 1221 0 1221 1207 0 1207 1221 0 1221 1211 0 1211 1207 0 1222 1223 0 
		1223 1224 0 1224 1222 0 1222 1224 0 1224 1225 0 1225 1222 0 1226 1225 0 
		1225 1224 0 1224 1226 0 1224 1227 0 1227 1226 0 1226 1224 0 1228 1227 0 
		1227 1224 0 1224 1228 0 1223 1228 0 1228 1224 0 1224 1223 0 1228 1229 0 
		1229 1227 0 1227 1228 0 1223 1230 0 1230 1228 0 1228 1223 0 1223 1231 0 
		1231 1230 0 1230 1223 0 1231 1232 0 1232 1230 0 1230 1231 0 1232 1233 0 
		1233 1230 0 1230 1232 0 1233 1228 0 1228 1230 0 1230 1233 0 1232 1234 0 
		1234 1233 0 1233 1232 0 1231 1235 0 1235 1232 0 1232 1231 0 1233 1236 0 
		1236 1228 0 1228 1233 0 1236 1229 0 1229 1228 0 1228 1236 0 1227 1237 0 
		1237 1226 0 1226 1227 0 1237 1238 0 1238 1226 0 1226 1237 0 1226 1238 0 
		1238 1225 0 1225 1226 0 1238 1239 0 1239 1225 0 1225 1238 0 1240 1225 0 
		1225 1239 0 1239 1240 0 1240 1241 0 1241 1225 0 1225 1240 0 1227 1242 0 
		1242 1237 0 1237 1227 0 1243 1237 0 1237 1242 0 1242 1243 0 1243 1244 0 
		1244 1237 0 1237 1243 0 1237 1244 0 1244 1245 0 1245 1237 0 1237 1245 0 
		1245 1238 0 1238 1237 0 1245 1246 0 1246 1238 0 1238 1245 0 1238 1246 0 
		1246 1239 0 1239 1238 0 1247 1236 0 1236 1233 0 1233 1247 0 1234 1247 0 
		1247 1233 0 1233 1234 0 1247 1248 0 1248 1236 0 1236 1247 0 1248 1229 0 
		1229 1236 0 1236 1248 0 1229 1249 0 1249 1242 0 1242 1229 0 1248 1249 0 
		1249 1229 0 1229 1248 0 1250 1242 0 1242 1249 0 1249 1250 0 1250 1251 0 
		1251 1242 0 1242 1250 0 1251 1243 0 1243 1242 0 1242 1251 0 1252 1250 0 
		1250 1249 0 1249 1252 0 1252 1249 0 1249 1248 0 1248 1252 0 1229 1242 0 
		1242 1227 0 1227 1229 0 1253 1248 0 1248 1247 0 1247 1253 0 1253 1252 0 
		1252 1248 0 1248 1253 0 1254 1253 0 1253 1247 0 1247 1254 0 1255 1254 0 
		1254 1247 0 1247 1255 0 1255 1256 0 1256 1254 0 1254 1255 0 1234 1255 0 
		1255 1247 0 1247 1234 0 1257 1256 0 1256 1255 0 1255 1257 0 1257 1255 0 
		1255 1258 0 1258 1257 0 1258 1255 0 1255 1234 0 1234 1258 0 1258 1234 0 
		1234 1259 0 1259 1258 0 1259 1234 0 1234 1232 0 1232 1259 0 1259 1232 0 
		1232 1260 0 1260 1259 0 1260 1232 0 1232 1235 0 1235 1260 0 1260 1235 0 
		1235 1261 0 1261 1260 0 1261 1235 0 1235 1231 0 1231 1261 0 1261 1231 0 
		1231 1262 0 1262 1261 0 1262 1231 0 1231 1223 0 1223 1262 0 1262 1223 0 
		1223 1263 0 1263 1262 0 1263 1223 0 1223 1222 0 1222 1263 0 1263 1222 0 
		1222 1264 0 1264 1263 0 1264 1222 0 1222 1241 0 1241 1264 0 1241 1222 0 
		1222 1225 0 1225 1241 0 1264 1241 0 1241 1265 0 1265 1264 0 1265 1241 0 
		1241 1240 0 1240 1265 0 1265 1240 0 1240 1266 0 1266 1265 0 1266 1240 0 
		1240 1267 0 1267 1266 0 1267 1240 0 1240 1239 0 1239 1267 0 1267 1239 0 
		1239 1268 0 1268 1267 0 1266 1267 0 1267 1269 0 1269 1266 0 1239 1246 0 
		1246 1268 0 1268 1239 0 1270 1271 0 1271 1272 0 1272 1270 0 1270 1273 0 
		1273 1271 0 1271 1270 0 1270 1272 0 1272 1274 0 1274 1270 0 1270 1274 0 
		1274 1275 0 1275 1270 0 1270 1276 0 1276 1273 0 1273 1270 0 1270 1277 0 
		1277 1276 0 1276 1270 0 1276 1278 0 1278 1273 0 1273 1276 0 1270 1279 0 
		1279 1277 0 1277 1270 0 1280 1279 0 1279 1270 0 1270 1280 0 1280 1270 0 
		1270 1281 0 1281 1280 0 1270 1282 0 1282 1281 0 1281 1270 0 1270 1283 0 
		1283 1282 0 1282 1270 0 1270 1284 0 1284 1283 0 1283 1270 0 1284 1270 0 
		1270 1285 0 1285 1284 0 1285 1270 0 1270 1275 0 1275 1285 0 1286 1287 0 
		1287 1288 0 1288 1286 0 1286 1288 0 1288 1289 0 1289 1286 0 1289 1288 0 
		1288 1290 0 1290 1289 0 1289 1290 0 1290 1291 0 1291 1289 0 1291 1290 0 
		1290 1292 0 1292 1291 0 1291 1292 0 1292 1293 0 1293 1291 0 1293 1292 0 
		1292 1294 0 1294 1293 0 1293 1294 0 1294 1295 0 1295 1293 0 1295 1294 0 
		1294 1296 0 1296 1295 0 1295 1296 0 1296 1297 0 1297 1295 0 1297 1296 0 
		1296 1298 0 1298 1297 0 1297 1298 0 1298 1299 0 1299 1297 0 1299 1298 0 
		1298 1300 0 1300 1299 0 1299 1300 0 1300 1301 0 1301 1299 0 1301 1300 0 
		1300 1287 0 1287 1301 0 1301 1287 0 1287 1286 0 1286 1301 0 1287 1302 0 
		1302 1288 0 1288 1287 0 1288 1302 0 1302 1290 0 1290 1288 0 1290 1302 0 
		1302 1292 0 1292 1290 0 1292 1302 0 1302 1294 0 1294 1292 0 1294 1302 0 
		1302 1296 0 1296 1294 0 1296 1302 0 1302 1298 0 1298 1296 0 1298 1302 0 
		1302 1300 0 1300 1298 0 1300 1302 0 1302 1287 0 1287 1300 0 1303 1304 0 
		1304 1305 0 1305 1303 0 1303 1305 0 1305 1306 0 1306 1303 0 1305 1304 0 
		1304 1307 0 1307 1305 0 1305 1307 0 1307 1308 0 1308 1305 0 1308 1307 0 
		1307 1309 0 1309 1308 0 1308 1309 0 1309 1310 0 1310 1308 0 1311 1312 0 
		1312 1313 0 1313 1311 0 1311 1313 0 1313 1314 0 1314 1311 0 1313 1312 0 
		1312 1315 0 1315 1313 0 1313 1315 0 1315 1316 0 1316 1313 0 1316 1315 0 
		1315 1317 0 1317 1316 0 1316 1317 0 1317 1318 0 1318 1316 0 1319 1320 0 
		1320 1321 0 1321 1319 0 1319 1321 0 1321 1322 0 1322 1319 0 1321 1323 0 
		1323 1322 0 1322 1321 0 1321 1324 0 1324 1323 0 1323 1321 0 1324 1325 0 
		1325 1323 0 1323 1324 0 1324 1326 0 1326 1325 0 1325 1324 0 1327 1328 0 
		1328 1329 0 1329 1327 0 1327 1329 0 1329 1330 0 1330 1327 0 1329 1331 0 
		1331 1330 0 1330 1329 0 1329 1332 0 1332 1331 0 1331 1329 0 1332 1333 0 
		1333 1331 0 1331 1332 0 1332 1334 0 1334 1333 0 1333 1332 0 1335 1336 0 
		1336 1337 0 1337 1335 0 1335 1337 0 1337 1338 0 1338 1335 0 1336 1339 0 
		1339 1337 0 1337 1336 0 1336 1340 0 1340 1339 0 1339 1336 0 1340 1341 0 
		1341 1339 0 1339 1340 0 1340 1342 0 1342 1341 0 1341 1340 0 1342 1343 0 
		1343 1341 0 1341 1342 0 1342 1344 0 1344 1343 0 1343 1342 0 1344 1345 0 
		1345 1343 0 1343 1344 0 1344 1346 0 1346 1345 0 1345 1344 0 1346 1347 0 
		1347 1345 0 1345 1346 0 1346 1348 0 1348 1347 0 1347 1346 0 1348 1349 0 
		1349 1347 0 1347 1348 0 1348 1350 0 1350 1349 0 1349 1348 0 1350 1335 0 
		1335 1338 0 1338 1350 0 1350 1338 0 1338 1349 0 1349 1350 0 1338 1337 0 
		1337 1351 0 1351 1338 0 1337 1339 0 1339 1351 0 1351 1337 0 1339 1341 0 
		1341 1351 0 1351 1339 0 1341 1343 0 1343 1351 0 1351 1341 0 1343 1345 0 
		1345 1351 0 1351 1343 0 1345 1347 0 1347 1351 0 1351 1345 0 1347 1349 0 
		1349 1351 0 1351 1347 0 1349 1338 0 1338 1351 0 1351 1349 0 1352 1353 0 
		1353 1354 0 1354 1352 0 1355 1354 0 1354 1353 0 1353 1355 0 1355 1353 0 
		1353 1356 0 1356 1355 0 1355 1357 0 1357 1354 0 1354 1355 0 1358 1355 0 
		1355 1356 0 1356 1358 0 1358 1356 0 1356 1359 0 1359 1358 0 1358 1359 0 
		1359 1360 0 1360 1358 0 1360 1361 0 1361 1358 0 1358 1360 0 1361 1362 0 
		1362 1358 0 1358 1361 0 1358 1362 0 1362 1355 0 1355 1358 0 1355 1362 0 
		1362 1357 0 1357 1355 0 1362 1361 0 1361 1363 0 1363 1362 0 1363 1361 0 
		1361 1360 0 1360 1363 0 1360 1364 0 1364 1363 0 1363 1360 0 1365 1366 0 
		1366 1367 0 1367 1365 0 1365 1367 0 1367 1368 0 1368 1365 0 1369 1367 0 
		1367 1366 0 1366 1369 0 1366 1365 0 1365 1370 0 1370 1366 0 1369 1371 0 
		1371 1367 0 1367 1369 0 1368 1367 0 1367 1371 0 1371 1368 0 1369 1372 0 
		1372 1371 0 1371 1369 0 1371 1372 0 1372 1373 0 1373 1371 0 1374 1373 0 
		1373 1372 0 1372 1374 0 1372 1375 0 1375 1374 0 1374 1372 0 1375 1372 0 
		1372 1369 0 1369 1375 0 1373 1376 0 1376 1371 0 1371 1373 0 1368 1371 0 
		1371 1376 0 1376 1368 0 1377 1378 0 1378 1379 0 1379 1377 0 1377 1379 0 
		1379 1380 0 1380 1377 0 1381 1380 0 1380 1379 0 1379 1381 0 1381 1382 0 
		1382 1380 0 1380 1381 0 1383 1382 0 1382 1381 0 1381 1383 0 1383 1381 0 
		1381 1384 0 1384 1383 0 1379 1378 0 1378 1385 0 1385 1379 0 1379 1385 0 
		1385 1386 0 1386 1379 0 1386 1381 0 1381 1379 0 1379 1386 0 1386 1385 0 
		1385 1387 0 1387 1386 0 1386 1387 0 1387 1388 0 1388 1386 0 1389 1386 0 
		1386 1388 0 1388 1389 0 1389 1381 0 1381 1386 0 1386 1389 0 1384 1381 0 
		1381 1389 0 1389 1384 0 1389 1388 0 1388 1390 0 1390 1389 0 1391 1389 0 
		1389 1390 0 1390 1391 0 1384 1389 0 1389 1391 0 1391 1384 0 1391 1390 0 
		1390 1392 0 1392 1391 0 1388 1387 0 1387 1393 0 1393 1388 0 1388 1393 0 
		1393 1394 0 1394 1388 0 1390 1388 0 1388 1394 0 1394 1390 0 1390 1394 0 
		1394 1395 0 1395 1390 0 1392 1390 0 1390 1395 0 1395 1392 0 1392 1395 0 
		1395 1396 0 1396 1392 0 1394 1393 0 1393 1397 0 1397 1394 0 1394 1397 0 
		1397 1398 0 1398 1394 0 1395 1394 0 1394 1398 0 1398 1395 0 1395 1398 0 
		1398 1399 0 1399 1395 0 1396 1395 0 1395 1399 0 1399 1396 0 1396 1399 0 
		1399 1400 0 1400 1396 0 1398 1397 0 1397 1401 0 1401 1398 0 1398 1401 0 
		1401 1402 0 1402 1398 0 1399 1398 0 1398 1402 0 1402 1399 0 1399 1402 0 
		1402 1403 0 1403 1399 0 1400 1399 0 1399 1403 0 1403 1400 0 1400 1403 0 
		1403 1404 0 1404 1400 0 1391 1392 0 1392 1405 0 1405 1391 0 1391 1405 0 
		1405 1406 0 1406 1391 0 1384 1391 0 1391 1406 0 1406 1384 0 1384 1406 0 
		1406 1407 0 1407 1384 0 1383 1384 0 1384 1407 0 1407 1383 0 1383 1407 0 
		1407 1408 0 1408 1383 0 1396 1400 0 1400 1409 0 1409 1396 0 1400 1404 0 
		1404 1410 0 1410 1400 0 1400 1410 0 1410 1409 0 1409 1400 0 1408 1407 0 
		1407 1411 0 1411 1408 0 1408 1411 0 1411 1412 0 1412 1408 0 1406 1405 0 
		1405 1413 0 1413 1406 0 1406 1413 0 1413 1414 0 1414 1406 0 1407 1406 0 
		1406 1414 0 1414 1407 0 1407 1414 0 1414 1411 0 1411 1407 0 1405 1415 0 
		1415 1413 0 1413 1405 0 1405 1416 0 1416 1415 0 1415 1405 0 1392 1416 0 
		1416 1405 0 1405 1392 0 1392 1396 0 1396 1416 0 1416 1392 0 1396 1409 0 
		1409 1416 0 1416 1396 0 1416 1409 0 1409 1417 0 1417 1416 0 1416 1417 0 
		1417 1415 0 1415 1416 0 1409 1410 0 1410 1418 0 1418 1409 0 1409 1418 0 
		1418 1417 0 1417 1409 0 1419 1420 0 1420 1421 0 1421 1419 0 1419 1421 0 
		1421 1422 0 1422 1419 0 1423 1420 0 1420 1419 0 1419 1423 0 1423 1424 0 
		1424 1420 0 1420 1423 0 1420 1425 0 1425 1421 0 1421 1420 0 1420 1426 0 
		1426 1425 0 1425 1420 0 1424 1426 0 1426 1420 0 1420 1424 0 1424 1427 0 
		1427 1426 0 1426 1424 0 1428 1423 0 1423 1419 0 1419 1428 0 1428 1419 0 
		1419 1429 0 1429 1428 0 1429 1419 0 1419 1422 0 1422 1429 0 1430 1428 0 
		1428 1429 0 1429 1430 0 1430 1429 0 1429 1431 0 1431 1430 0 1432 1430 0 
		1430 1431 0 1431 1432 0 1432 1431 0 1431 1433 0 1433 1432 0 1431 1429 0 
		1429 1434 0 1434 1431 0 1431 1434 0 1434 1433 0 1433 1431 0 1429 1422 0 
		1422 1434 0 1434 1429 0 1435 1436 0 1436 1437 0 1437 1435 0 1435 1437 0 
		1437 1438 0 1438 1435 0 1439 1435 0 1435 1438 0 1438 1439 0 1439 1438 0 
		1438 1440 0 1440 1439 0 1438 1437 0 1437 1441 0 1441 1438 0 1438 1441 0 
		1441 1442 0 1442 1438 0 1440 1438 0 1438 1442 0 1442 1440 0 1440 1442 0 
		1442 1443 0 1443 1440 0 1444 1435 0 1435 1439 0 1439 1444 0 1444 1445 0 
		1445 1435 0 1435 1444 0 1445 1436 0 1436 1435 0 1435 1445 0 1446 1445 0 
		1445 1444 0 1444 1446 0 1446 1447 0 1447 1445 0 1445 1446 0 1448 1447 0 
		1447 1446 0 1446 1448 0 1448 1449 0 1449 1447 0 1447 1448 0 1447 1449 0 
		1449 1450 0 1450 1447 0 1447 1450 0 1450 1445 0 1445 1447 0 1445 1450 0 
		1450 1436 0 1436 1445 0 1451 1452 0 1452 1453 0 1453 1451 0 1451 1453 0 
		1453 1454 0 1454 1451 0 1455 1453 0 1453 1452 0 1452 1455 0 1455 1452 0 
		1452 1456 0 1456 1455 0 1457 1455 0 1455 1456 0 1456 1457 0 1457 1458 0 
		1458 1455 0 1455 1457 0 1453 1459 0 1459 1454 0 1454 1453 0 1453 1460 0 
		1460 1459 0 1459 1453 0 1460 1453 0 1453 1455 0 1455 1460 0 1460 1461 0 
		1461 1459 0 1459 1460 0 1460 1462 0 1462 1461 0 1461 1460 0 1463 1462 0 
		1462 1460 0 1460 1463 0 1463 1460 0 1460 1455 0 1455 1463 0 1458 1463 0 
		1463 1455 0 1455 1458 0 1463 1464 0 1464 1462 0 1462 1463 0 1465 1464 0 
		1464 1463 0 1463 1465 0 1458 1465 0 1465 1463 0 1463 1458 0 1465 1466 0 
		1466 1464 0 1464 1465 0 1462 1467 0 1467 1461 0 1461 1462 0 1462 1468 0 
		1468 1467 0 1467 1462 0 1464 1468 0 1468 1462 0 1462 1464 0 1464 1469 0 
		1469 1468 0 1468 1464 0 1466 1469 0 1469 1464 0 1464 1466 0 1466 1470 0 
		1470 1469 0 1469 1466 0 1468 1471 0 1471 1467 0 1467 1468 0 1468 1472 0 
		1472 1471 0 1471 1468 0 1469 1472 0 1472 1468 0 1468 1469 0 1469 1473 0 
		1473 1472 0 1472 1469 0 1470 1473 0 1473 1469 0 1469 1470 0 1470 1474 0 
		1474 1473 0 1473 1470 0 1472 1475 0 1475 1471 0 1471 1472 0 1472 1476 0 
		1476 1475 0 1475 1472 0 1473 1476 0 1476 1472 0 1472 1473 0 1473 1477 0 
		1477 1476 0 1476 1473 0 1474 1477 0 1477 1473 0 1473 1474 0 1474 1478 0 
		1478 1477 0 1477 1474 0 1465 1479 0 1479 1466 0 1466 1465 0 1465 1480 0 
		1480 1479 0 1479 1465 0 1458 1480 0 1480 1465 0 1465 1458 0 1458 1481 0 
		1481 1480 0 1480 1458 0 1457 1481 0 1481 1458 0 1458 1457 0 1457 1482 0 
		1482 1481 0 1481 1457 0 1470 1483 0 1483 1474 0 1474 1470 0 1474 1483 0 
		1483 1484 0 1484 1474 0 1474 1484 0 1484 1478 0 1478 1474 0 1482 1485 0 
		1485 1481 0 1481 1482 0 1482 1486 0 1486 1485 0 1485 1482 0 1480 1487 0 
		1487 1479 0 1479 1480 0 1480 1488 0 1488 1487 0 1487 1480 0 1481 1485 0 
		1485 1488 0 1488 1481 0 1481 1488 0 1488 1480 0 1480 1481 0 1479 1487 0 
		1487 1489 0 1489 1479 0 1479 1489 0 1489 1490 0 1490 1479 0 1466 1479 0 
		1479 1490 0 1490 1466 0 1466 1490 0 1490 1470 0 1470 1466 0 1470 1490 0 
		1490 1483 0 1483 1470 0 1490 1489 0 1489 1491 0 1491 1490 0 1490 1491 0 
		1491 1483 0 1483 1490 0 1483 1491 0 1491 1492 0 1492 1483 0 1483 1492 0 
		1492 1484 0 1484 1483 0 1493 1494 0 1494 1495 0 1495 1493 0 1493 1495 0 
		1495 1496 0 1496 1493 0 1497 1493 0 1493 1496 0 1496 1497 0 1497 1496 0 
		1496 1498 0 1498 1497 0 1496 1495 0 1495 1499 0 1499 1496 0 1496 1499 0 
		1499 1500 0 1500 1496 0 1498 1496 0 1496 1500 0 1500 1498 0 1498 1500 0 
		1500 1501 0 1501 1498 0 1502 1493 0 1493 1497 0 1497 1502 0 1502 1503 0 
		1503 1493 0 1493 1502 0 1503 1494 0 1494 1493 0 1493 1503 0 1504 1503 0 
		1503 1502 0 1502 1504 0 1504 1505 0 1505 1503 0 1503 1504 0 1506 1505 0 
		1505 1504 0 1504 1506 0 1506 1507 0 1507 1505 0 1505 1506 0 1505 1507 0 
		1507 1508 0 1508 1505 0 1505 1508 0 1508 1503 0 1503 1505 0 1503 1508 0 
		1508 1494 0 1494 1503 0 1509 1510 0 1510 1511 0 1511 1509 0 1509 1511 0 
		1511 1512 0 1512 1509 0 1513 1510 0 1510 1509 0 1509 1513 0 1513 1514 0 
		1514 1510 0 1510 1513 0 1510 1515 0 1515 1511 0 1511 1510 0 1510 1516 0 
		1516 1515 0 1515 1510 0 1514 1516 0 1516 1510 0 1510 1514 0 1514 1517 0 
		1517 1516 0 1516 1514 0 1518 1513 0 1513 1509 0 1509 1518 0 1518 1509 0 
		1509 1519 0 1519 1518 0 1519 1509 0 1509 1512 0 1512 1519 0 1520 1518 0 
		1518 1519 0 1519 1520 0 1520 1519 0 1519 1521 0 1521 1520 0 1522 1520 0 
		1520 1521 0 1521 1522 0 1522 1521 0 1521 1523 0 1523 1522 0 1521 1519 0 
		1519 1524 0 1524 1521 0 1521 1524 0 1524 1523 0 1523 1521 0 1519 1512 0 
		1512 1524 0 1524 1519 0 1525 1526 0 1526 1527 0 1527 1525 0 1528 1529 0 
		1529 1530 0 1530 1528 0 1531 1532 0 1532 1533 0 1533 1531 0 1534 1535 0 
		1535 1536 0 1536 1534 0 1537 1536 0 1536 1535 0 1535 1537 0 1535 1538 0 
		1538 1537 0 1537 1535 0 1539 1537 0 1537 1538 0 1538 1539 0 1536 1540 0 
		1540 1534 0 1534 1536 0 1534 1540 0 1540 1541 0 1541 1534 0 1542 1543 0 
		1543 1544 0 1544 1542 0 1545 1544 0 1544 1543 0 1543 1545 0 1546 1544 0 
		1544 1545 0 1545 1546 0 1547 1546 0 1546 1545 0 1545 1547 0 1548 1546 0 
		1546 1547 0 1547 1548 0 1548 1547 0 1547 1549 0 1549 1548 0 1550 1551 0 
		1551 1552 0 1552 1550 0 1553 1552 0 1552 1551 0 1551 1553 0 1551 1550 0 
		1550 1554 0 1554 1551 0 1555 1554 0 1554 1550 0 1550 1555 0 1556 1552 0 
		1552 1553 0 1553 1556 0 1556 1553 0 1553 1557 0 1557 1556 0 1558 1559 0 
		1559 1560 0 1560 1558 0 1561 1560 0 1560 1559 0 1559 1561 0 1560 1562 0 
		1562 1558 0 1558 1560 0 1562 1563 0 1563 1558 0 1558 1562 0 1562 1564 0 
		1564 1563 0 1563 1562 0 1563 1564 0 1564 1565 0 1565 1563 0 1566 1567 0 
		1567 1568 0 1568 1566 0 1566 1569 0 1569 1567 0 1567 1566 0 1566 1570 0 
		1570 1569 0 1569 1566 0 1571 1570 0 1570 1566 0 1566 1571 0 1571 1572 0 
		1572 1570 0 1570 1571 0 1571 1566 0 1566 1573 0 1573 1571 0 1566 1568 0 
		1568 1573 0 1573 1566 0 1571 1573 0 1573 1574 0 1574 1571 0 1571 1575 0 
		1575 1572 0 1572 1571 0 1571 1576 0 1576 1575 0 1575 1571 0 1576 1577 0 
		1577 1575 0 1575 1576 0 1576 1578 0 1578 1577 0 1577 1576 0 1579 1578 0 
		1578 1576 0 1576 1579 0 1571 1574 0 1574 1579 0 1579 1571 0 1571 1579 0 
		1579 1576 0 1576 1571 0 1579 1580 0 1580 1578 0 1578 1579 0 1581 1578 0 
		1578 1580 0 1580 1581 0 1581 1582 0 1582 1578 0 1578 1581 0 1582 1577 0 
		1577 1578 0 1578 1582 0 1582 1583 0 1583 1577 0 1577 1582 0 1584 1585 0 
		1585 1586 0 1586 1584 0 1587 1585 0 1585 1584 0 1584 1587 0 1587 1588 0 
		1588 1585 0 1585 1587 0 1588 1589 0 1589 1585 0 1585 1588 0 1588 1590 0 
		1590 1589 0 1589 1588 0 1591 1585 0 1585 1589 0 1589 1591 0 1586 1585 0 
		1585 1591 0 1591 1586 0 1591 1589 0 1589 1592 0 1592 1591 0 1593 1589 0 
		1589 1590 0 1590 1593 0 1593 1594 0 1594 1589 0 1589 1593 0 1595 1594 0 
		1594 1593 0 1593 1595 0 1595 1596 0 1596 1594 0 1594 1595 0 1596 1597 0 
		1597 1594 0 1594 1596 0 1597 1592 0 1592 1589 0 1589 1597 0 1597 1589 0 
		1589 1594 0 1594 1597 0 1596 1598 0 1598 1597 0 1597 1596 0 1596 1599 0 
		1599 1598 0 1598 1596 0 1596 1600 0 1600 1599 0 1599 1596 0 1595 1600 0 
		1600 1596 0 1596 1595 0 1595 1601 0 1601 1600 0 1600 1595 0 1602 1603 0 
		1603 1604 0 1604 1602 0 1604 1603 0 1603 1605 0 1605 1604 0 1604 1605 0 
		1605 1606 0 1606 1604 0 1607 1604 0 1604 1606 0 1606 1607 0 1607 1606 0 
		1606 1608 0 1608 1607 0 1607 1609 0 1609 1604 0 1604 1607 0 1609 1602 0 
		1602 1604 0 1604 1609 0 1607 1610 0 1610 1609 0 1609 1607 0 1607 1608 0 
		1608 1611 0 1611 1607 0 1607 1611 0 1611 1612 0 1612 1607 0 1612 1611 0 
		1611 1613 0 1613 1612 0 1612 1613 0 1613 1614 0 1614 1612 0 1615 1612 0 
		1612 1614 0 1614 1615 0 1607 1612 0 1612 1615 0 1615 1607 0 1607 1615 0 
		1615 1610 0 1610 1607 0 1615 1614 0 1614 1616 0 1616 1615 0 1617 1616 0 
		1616 1614 0 1614 1617 0 1617 1614 0 1614 1618 0 1618 1617 0 1618 1614 0 
		1614 1613 0 1613 1618 0 1618 1613 0 1613 1619 0 1619 1618 0 1620 1621 0 
		1621 1622 0 1622 1620 0 1623 1620 0 1620 1622 0 1622 1623 0 1623 1622 0 
		1622 1624 0 1624 1623 0 1624 1622 0 1622 1625 0 1625 1624 0 1624 1625 0 
		1625 1626 0 1626 1624 0 1627 1625 0 1625 1622 0 1622 1627 0 1621 1627 0 
		1627 1622 0 1622 1621 0 1627 1628 0 1628 1625 0 1625 1627 0 1629 1626 0 
		1626 1625 0 1625 1629 0 1629 1625 0 1625 1630 0 1630 1629 0 1631 1629 0 
		1629 1630 0 1630 1631 0 1631 1630 0 1630 1632 0 1632 1631 0 1632 1630 0 
		1630 1633 0 1633 1632 0 1633 1630 0 1630 1625 0 1625 1633 0 1633 1625 0 
		1625 1628 0 1628 1633 0 1632 1633 0 1633 1634 0 1634 1632 0 1632 1634 0 
		1634 1635 0 1635 1632 0 1632 1635 0 1635 1636 0 1636 1632 0 1631 1632 0 
		1632 1636 0 1636 1631 0 1631 1636 0 1636 1637 0 1637 1631 0 ;
	setAttr -s 6672 ".n[0:6671]" -type "float3"
		0.7431025 -0.6638862 0.0839866 0.03845683 -0.9960406 -0.08015104 0.7422725 -0.6687905 -0.04184153
		0.7431025 -0.6638862 0.0839866 0.0007688495 -0.9986771 -0.05141365 0.03845683 -0.9960406 -0.08015104
		0.7431025 -0.6638862 0.0839866 0.7422725 -0.6687905 -0.04184153 0.9943928 0.1052867 -0.009880676
		0.7431025 -0.6638862 0.0839866 0.9943928 0.1052867 -0.009880676 0.9942895 0.02484655 0.1037833
		0.0007688495 -0.9986771 -0.05141365 0.7431025 -0.6638862 0.0839866 0.7717761 -0.6309237 0.07935201
		0.7431025 -0.6638862 0.0839866 0.9942895 0.02484655 0.1037833 0.981431 -0.02711585 0.1898887
		0.981431 -0.02711585 0.1898887 0.7717761 -0.6309237 0.07935201 0.7431025 -0.6638862 0.0839866
		0.8131148 0.5818652 0.01664991 0.981431 -0.02711585 0.1898887 0.9942895 0.02484655 0.1037833
		0.9942895 0.02484655 0.1037833 0.8047864 0.588949 -0.07387677 0.8131148 0.5818652 0.01664991
		0.06585031 0.8250574 -0.5611988 0.8131148 0.5818652 0.01664991 0.8047864 0.588949 -0.07387677
		0.8047864 0.588949 -0.07387677 0.02457546 0.965928 -0.2576416 0.06585031 0.8250574 -0.5611988
		0.02457546 0.965928 -0.2576416 0.8047864 0.588949 -0.07387677 0.7291066 0.6843556 0.007797308
		0.7291066 0.6843556 0.007797308 0.9942895 0.02484655 0.1037833 0.9943928 0.1052867 -0.009880676
		0.7291066 0.6843556 0.007797308 0.8047864 0.588949 -0.07387677 0.9942895 0.02484655 0.1037833
		0.02457546 0.965928 -0.2576416 0.7291066 0.6843556 0.007797308 0.04823178 0.9977926 0.04564621
		0.7970364 0.5708345 0.1971826 0.981431 -0.02711585 0.1898887 0.8131148 0.5818652 0.01664991
		0.8131148 0.5818652 0.01664991 0.2843229 0.9468752 0.1502926 0.7970364 0.5708345 0.1971826
		0.8131148 0.5818652 0.01664991 0.05694542 0.9706537 -0.2336418 0.2843229 0.9468752 0.1502926
		0.05694542 0.9706537 -0.2336418 0.8131148 0.5818652 0.01664991 0.06585031 0.8250574 -0.5611988
		0.2843229 0.9468752 0.1502926 0.05694542 0.9706537 -0.2336418 -1.426465E-07 0.9992361 0.03907927
		-0.4347277 0.8806108 -0.188511 -1.426465E-07 0.9992361 0.03907927 0.05694542 0.9706537 -0.2336418
		0.05694542 0.9706537 -0.2336418 0.06585031 0.8250574 -0.5611988 -0.4347277 0.8806108 -0.188511
		-0.4347277 0.8806108 -0.188511 0.06585031 0.8250574 -0.5611988 -0.6896402 0.405931 -0.5996804
		-0.6896402 0.405931 -0.5996804 0.06585031 0.8250574 -0.5611988 0.02457546 0.965928 -0.2576416
		3.883428E-07 0.8732455 -0.4872805 -0.4347277 0.8806108 -0.188511 -0.6896402 0.405931 -0.5996804
		3.883428E-07 0.8732455 -0.4872805 -1.426465E-07 0.9992361 0.03907927 -0.4347277 0.8806108 -0.188511
		-0.6896402 0.405931 -0.5996804 6.977888E-07 0.3408827 -0.9401059 3.883428E-07 0.8732455 -0.4872805
		0 -0.07727016 -0.9970101 6.977888E-07 0.3408827 -0.9401059 -0.6896402 0.405931 -0.5996804
		-0.6896402 0.405931 -0.5996804 -0.536195 -0.02243347 -0.843796 0 -0.07727016 -0.9970101
		-0.6896402 0.405931 -0.5996804 -0.8583881 0.4031868 -0.3171911 -0.536195 -0.02243347 -0.843796
		-0.6896402 0.405931 -0.5996804 0.02457546 0.965928 -0.2576416 -0.8583881 0.4031868 -0.3171911
		0.08967585 0.9908113 -0.1012483 0.04823178 0.9977926 0.04564621 0.7291066 0.6843556 0.007797308
		-0.536195 -0.02243347 -0.843796 -0.8583881 0.4031868 -0.3171911 -0.7112631 0.7020423 0.035233
		-0.7112631 0.7020423 0.035233 0.02457546 0.965928 -0.2576416 0.04823178 0.9977926 0.04564621
		-0.7112631 0.7020423 0.035233 -0.8583881 0.4031868 -0.3171911 0.02457546 0.965928 -0.2576416
		0.08967585 0.9908113 -0.1012483 -0.7112631 0.7020423 0.035233 0.04823178 0.9977926 0.04564621
		-0.536195 -0.02243347 -0.843796 -0.7112631 0.7020423 0.035233 -0.9897906 0.1425142 0.002080301
		-0.9897906 0.1425142 0.002080301 -0.7112631 0.7020423 0.035233 -0.9221714 0.3681006 -0.1187514
		0.08967585 0.9908113 -0.1012483 -0.9221714 0.3681006 -0.1187514 -0.7112631 0.7020423 0.035233
		-0.8929637 0.4404161 -0.09300211 -0.9221714 0.3681006 -0.1187514 0.08967585 0.9908113 -0.1012483
		-0.8929637 0.4404161 -0.09300211 0.08967585 0.9908113 -0.1012483 0.07930285 0.9952415 -0.05661641
		0.07930285 0.9952415 -0.05661641 0.08967585 0.9908113 -0.1012483 0.9637542 0.2304515 -0.1344248
		0.07930285 0.9952415 -0.05661641 0.9637542 0.2304515 -0.1344248 0.9381562 0.3208623 -0.1300399
		0.7610458 -0.6116241 -0.2161604 0.9381562 0.3208623 -0.1300399 0.9637542 0.2304515 -0.1344248
		0.7610458 -0.6116241 -0.2161604 0.9637542 0.2304515 -0.1344248 0.7343566 -0.6579992 -0.1666054
		0.7610458 -0.6116241 -0.2161604 0.7343566 -0.6579992 -0.1666054 -0.009400695 -0.9854446 -0.1697372
		0.7610458 -0.6116241 -0.2161604 -0.009400695 -0.9854446 -0.1697372 -0.02565721 -0.9749224 -0.2210611
		-0.796865 -0.5762224 -0.1815876 -0.02565721 -0.9749224 -0.2210611 -0.009400695 -0.9854446 -0.1697372
		-0.796865 -0.5762224 -0.1815876 -0.009400695 -0.9854446 -0.1697372 -0.7759873 -0.6053402 -0.1772199
		-0.796865 -0.5762224 -0.1815876 -0.7759873 -0.6053402 -0.1772199 -0.9221714 0.3681006 -0.1187514
		-0.796865 -0.5762224 -0.1815876 -0.9221714 0.3681006 -0.1187514 -0.8929637 0.4404161 -0.09300211
		-0.7877103 -0.6116507 -0.07345738 -0.9221714 0.3681006 -0.1187514 -0.7759873 -0.6053402 -0.1772199
		-0.7877103 -0.6116507 -0.07345738 -0.9897906 0.1425142 0.002080301 -0.9221714 0.3681006 -0.1187514
		-0.5374625 -0.6086462 -0.5836813 -0.9897906 0.1425142 0.002080301 -0.7877103 -0.6116507 -0.07345738
		0.0007688495 -0.9986771 -0.05141365 -0.5374625 -0.6086462 -0.5836813 -0.7877103 -0.6116507 -0.07345738
		-0.5374625 -0.6086462 -0.5836813 -0.536195 -0.02243347 -0.843796 -0.9897906 0.1425142 0.002080301
		0.03845683 -0.9960406 -0.08015104 -0.7759873 -0.6053402 -0.1772199 -0.009400695 -0.9854446 -0.1697372
		0.03845683 -0.9960406 -0.08015104 -0.7877103 -0.6116507 -0.07345738 -0.7759873 -0.6053402 -0.1772199
		0.0007688495 -0.9986771 -0.05141365 -0.7877103 -0.6116507 -0.07345738 0.03845683 -0.9960406 -0.08015104
		0.7422725 -0.6687905 -0.04184153 -0.009400695 -0.9854446 -0.1697372 0.7343566 -0.6579992 -0.1666054
		0.7422725 -0.6687905 -0.04184153 0.03845683 -0.9960406 -0.08015104 -0.009400695 -0.9854446 -0.1697372
		0.9943928 0.1052867 -0.009880676 0.7422725 -0.6687905 -0.04184153 0.7343566 -0.6579992 -0.1666054
		0.9943928 0.1052867 -0.009880676 0.7343566 -0.6579992 -0.1666054 0.9637542 0.2304515 -0.1344248
		0.9637542 0.2304515 -0.1344248 0.7291066 0.6843556 0.007797308 0.9943928 0.1052867 -0.009880676
		-0.8835641 0.4647361 -0.05774816 -0.796865 -0.5762224 -0.1815876 -0.8929637 0.4404161 -0.09300211
		-0.8835641 0.4647361 -0.05774816 -0.7931167 -0.6004791 -0.101934 -0.796865 -0.5762224 -0.1815876
		-0.9065204 0.4177787 -0.06067754 -0.7931167 -0.6004791 -0.101934 -0.8835641 0.4647361 -0.05774816
		-0.9065204 0.4177787 -0.06067754 -0.7874418 -0.6159601 -0.02298697 -0.7931167 -0.6004791 -0.101934
		-0.7874418 -0.6159601 -0.02298697 -0.00493205 -0.9799036 -0.1994106 -0.7931167 -0.6004791 -0.101934
		-0.7874418 -0.6159601 -0.02298697 0.005624349 -0.9973446 -0.07261044 -0.00493205 -0.9799036 -0.1994106
		-0.00493205 -0.9799036 -0.1994106 0.005624349 -0.9973446 -0.07261044 0.7684147 -0.6333463 -0.09171303
		-0.00493205 -0.9799036 -0.1994106 0.7684147 -0.6333463 -0.09171303 0.7750912 -0.5941556 -0.2149713
		0.9312745 0.3524729 -0.09214392 0.7750912 -0.5941556 -0.2149713 0.7684147 -0.6333463 -0.09171303
		0.9312745 0.3524729 -0.09214392 0.9108412 0.3880762 -0.1405886 0.7750912 -0.5941556 -0.2149713
		0.07466031 0.993743 -0.08307009 0.9108412 0.3880762 -0.1405886 0.9312745 0.3524729 -0.09214392
		0.07466031 0.993743 -0.08307009 0.9312745 0.3524729 -0.09214392 0.05907891 0.9964294 -0.06031648
		0.07466031 0.993743 -0.08307009 0.05907891 0.9964294 -0.06031648 -0.9065204 0.4177787 -0.06067754
		0.07466031 0.993743 -0.08307009 -0.9065204 0.4177787 -0.06067754 -0.8835641 0.4647361 -0.05774816
		0.7684147 -0.6333463 -0.09171303 0.005624349 -0.9973446 -0.07261044 0.05662319 -0.9755701 -0.2122658
		0.05662319 -0.9755701 -0.2122658 0.005624349 -0.9973446 -0.07261044 -0.7874418 -0.6159601 -0.02298697
		0.05662319 -0.9755701 -0.2122658 0.8077512 -0.5600733 -0.1839998 0.7684147 -0.6333463 -0.09171303
		0.9312745 0.3524729 -0.09214392 0.7684147 -0.6333463 -0.09171303 0.8077512 -0.5600733 -0.1839998
		0.8077512 -0.5600733 -0.1839998 0.05662319 -0.9755701 -0.2122658 0.0181057 -0.9599758 -0.279497
		0.0181057 -0.9599758 -0.279497 0.8136809 -0.5558116 -0.1702843 0.8077512 -0.5600733 -0.1839998
		0.05907891 0.9964294 -0.06031648 0.9312745 0.3524729 -0.09214392 0.9377828 0.3447897 0.0410297
		0.9377828 0.3447897 0.0410297 0.8077512 -0.5600733 -0.1839998 0.8136809 -0.5558116 -0.1702843
		0.9312745 0.3524729 -0.09214392 0.8077512 -0.5600733 -0.1839998 0.9377828 0.3447897 0.0410297
		0.9377828 0.3447897 0.0410297 0.03789826 0.987914 0.1502983 0.05907891 0.9964294 -0.06031648
		0.0181057 -0.9599758 -0.279497 0.05662319 -0.9755701 -0.2122658 -0.7753201 -0.5851488 -0.2376543
		-0.7753201 -0.5851488 -0.2376543 -0.8451735 -0.4724428 -0.2499592 0.0181057 -0.9599758 -0.279497
		-0.7874418 -0.6159601 -0.02298697 -0.7753201 -0.5851488 -0.2376543 0.05662319 -0.9755701 -0.2122658
		-0.9065204 0.4177787 -0.06067754 -0.7753201 -0.5851488 -0.2376543 -0.7874418 -0.6159601 -0.02298697
		-0.9089713 0.416786 0.007786785 -0.9065204 0.4177787 -0.06067754 0.05907891 0.9964294 -0.06031648
		0.05907891 0.9964294 -0.06031648 0.03789826 0.987914 0.1502983 -0.9089713 0.416786 0.007786785
		-0.8451735 -0.4724428 -0.2499592 -0.7753201 -0.5851488 -0.2376543 -0.9089713 0.416786 0.007786785
		-0.9065204 0.4177787 -0.06067754 -0.9089713 0.416786 0.007786785 -0.7753201 -0.5851488 -0.2376543
		0.03789826 0.987914 0.1502983 0.9377828 0.3447897 0.0410297 0.9321877 0.3333628 0.1410509
		0.9321877 0.3333628 0.1410509 0.9377828 0.3447897 0.0410297 0.8136809 -0.5558116 -0.1702843
		0.03789826 0.987914 0.1502983 0.9321877 0.3333628 0.1410509 0.02121094 0.9862213 0.1640661
		0.03789826 0.987914 0.1502983 -0.9232049 0.3776351 0.07130597 -0.9089713 0.416786 0.007786785
		0.03789826 0.987914 0.1502983 0.02121094 0.9862213 0.1640661 -0.9232049 0.3776351 0.07130597
		0.9501549 0.3062389 -0.05851019 0.02121094 0.9862213 0.1640661 0.9321877 0.3333628 0.1410509
		0.9501549 0.3062389 -0.05851019 -0.007833131 0.9988416 -0.04747738 0.02121094 0.9862213 0.1640661
		-0.9232049 0.3776351 0.07130597 0.02121094 0.9862213 0.1640661 -0.007833131 0.9988416 -0.04747738
		0.7861828 -0.6125019 -0.08220704 0.9501549 0.3062389 -0.05851019 0.9321877 0.3333628 0.1410509
		0.7861828 -0.6125019 -0.08220704 0.9321877 0.3333628 0.1410509 0.7702188 -0.6377744 0.002612474
		0.9321877 0.3333628 0.1410509 0.8136809 -0.5558116 -0.1702843 0.7702188 -0.6377744 0.002612474
		0.0353566 -0.9978204 -0.05571816 0.7861828 -0.6125019 -0.08220704 0.7702188 -0.6377744 0.002612474
		0.0353566 -0.9978204 -0.05571816 0.09443434 -0.9895989 -0.1085184 0.7861828 -0.6125019 -0.08220704
		-0.9232049 0.3776351 0.07130597 -0.007833131 0.9988416 -0.04747738 -0.9297519 0.3628085 -0.0627019
		0.0353566 -0.9978204 -0.05571816 -0.7516503 -0.6529555 -0.0931179 0.09443434 -0.9895989 -0.1085184
		0.0353566 -0.9978204 -0.05571816 -0.7787621 -0.6265161 -0.03173528 -0.7516503 -0.6529555 -0.0931179
		-0.7516503 -0.6529555 -0.0931179 -0.7787621 -0.6265161 -0.03173528 -0.9232049 0.3776351 0.07130597
		-0.7516503 -0.6529555 -0.0931179 -0.9232049 0.3776351 0.07130597 -0.9297519 0.3628085 -0.0627019
		0.7861828 -0.6125019 -0.08220704 0.09443434 -0.9895989 -0.1085184 0.0945162 -0.9888778 -0.1148363
		0.7861828 -0.6125019 -0.08220704 0.0945162 -0.9888778 -0.1148363 0.822534 -0.5551022 -0.1236908
		0.9501549 0.3062389 -0.05851019 0.7861828 -0.6125019 -0.08220704 0.822534 -0.5551022 -0.1236908
		0.822534 -0.5551022 -0.1236908 0.0945162 -0.9888778 -0.1148363 0.09808482 -0.9945333 -0.03581751
		0.822534 -0.5551022 -0.1236908 0.09808482 -0.9945333 -0.03581751 0.8658785 -0.4946799 -0.07447349
		0.9164764 0.3688068 -0.1550895 0.822534 -0.5551022 -0.1236908 0.8658785 -0.4946799 -0.07447349
		-0.007833131 0.9988416 -0.04747738 0.9501549 0.3062389 -0.05851019 0.9164764 0.3688068 -0.1550895
		0.9501549 0.3062389 -0.05851019 0.822534 -0.5551022 -0.1236908 0.9164764 0.3688068 -0.1550895
		0.9164764 0.3688068 -0.1550895 0.8658785 -0.4946799 -0.07447349 0.9174358 0.3810888 -0.1143804
		-0.08310745 0.9898382 -0.1153841 0.9164764 0.3688068 -0.1550895 0.9174358 0.3810888 -0.1143804
		-0.08310745 0.9898382 -0.1153841 0.9174358 0.3810888 -0.1143804 -0.09023985 0.9938116 -0.06477106
		-0.939711 0.3366131 -0.0602878 -0.08310745 0.9898382 -0.1153841 -0.09023985 0.9938116 -0.06477106
		-0.9297519 0.3628085 -0.0627019 -0.08310745 0.9898382 -0.1153841 -0.939711 0.3366131 -0.0602878
		-0.939711 0.3366131 -0.0602878 -0.09023985 0.9938116 -0.06477106 -0.9464828 0.3220973 0.02058177
		0.0945162 -0.9888778 -0.1148363 -0.8271915 -0.5613648 0.02497437 0.09808482 -0.9945333 -0.03581751
		0.0945162 -0.9888778 -0.1148363 -0.8020534 -0.5945541 -0.05670751 -0.8271915 -0.5613648 0.02497437
		-0.8020534 -0.5945541 -0.05670751 -0.9464828 0.3220973 0.02058177 -0.8271915 -0.5613648 0.02497437
		-0.8020534 -0.5945541 -0.05670751 -0.939711 0.3366131 -0.0602878 -0.9464828 0.3220973 0.02058177
		0.09443434 -0.9895989 -0.1085184 -0.8020534 -0.5945541 -0.05670751 0.0945162 -0.9888778 -0.1148363
		0.09443434 -0.9895989 -0.1085184 -0.7516503 -0.6529555 -0.0931179 -0.8020534 -0.5945541 -0.05670751
		-0.7516503 -0.6529555 -0.0931179 -0.939711 0.3366131 -0.0602878 -0.8020534 -0.5945541 -0.05670751
		-0.7516503 -0.6529555 -0.0931179 -0.9297519 0.3628085 -0.0627019 -0.939711 0.3366131 -0.0602878
		-0.007833131 0.9988416 -0.04747738 0.9164764 0.3688068 -0.1550895 -0.08310745 0.9898382 -0.1153841
		-0.9297519 0.3628085 -0.0627019 -0.007833131 0.9988416 -0.04747738 -0.08310745 0.9898382 -0.1153841
		0.9174358 0.3810888 -0.1143804 0.8658785 -0.4946799 -0.07447349 0.8987344 -0.4375607 0.02858499
		0.8658785 -0.4946799 -0.07447349 0.09093828 -0.9926006 0.08046332 0.8987344 -0.4375607 0.02858499
		0.8658785 -0.4946799 -0.07447349 0.09808482 -0.9945333 -0.03581751 0.09093828 -0.9926006 0.08046332
		-0.9464828 0.3220973 0.02058177 -0.09023985 0.9938116 -0.06477106 -0.09237666 0.9707354 0.221674
		-0.09023985 0.9938116 -0.06477106 0.9215537 0.3881219 0.0100026 -0.09237666 0.9707354 0.221674
		0.9174358 0.3810888 -0.1143804 0.8987344 -0.4375607 0.02858499 0.9215537 0.3881219 0.0100026
		-0.09023985 0.9938116 -0.06477106 0.9174358 0.3810888 -0.1143804 0.9215537 0.3881219 0.0100026
		0.09808482 -0.9945333 -0.03581751 -0.822208 -0.5660192 0.05996925 0.09093828 -0.9926006 0.08046332
		0.09808482 -0.9945333 -0.03581751 -0.8271915 -0.5613648 0.02497437 -0.822208 -0.5660192 0.05996925
		-0.8271915 -0.5613648 0.02497437 -0.9344879 0.3093643 0.1761425 -0.822208 -0.5660192 0.05996925
		-0.8271915 -0.5613648 0.02497437 -0.9464828 0.3220973 0.02058177 -0.9344879 0.3093643 0.1761425
		-0.9464828 0.3220973 0.02058177 -0.09237666 0.9707354 0.221674 -0.9344879 0.3093643 0.1761425
		0.007000844 -0.8114617 -0.5843636 -0.2315083 -0.8436896 -0.4843469 0.3489557 -0.937013 -0.01537897
		0.3489557 -0.937013 -0.01537897 0 -0.9818323 -0.1897511 0.007000844 -0.8114617 -0.5843636
		0 -0.9818323 -0.1897511 0.3489557 -0.937013 -0.01537897 0.384048 -0.9233027 -0.00440209
		0.6867132 -0.7013949 0.1909721 0.384048 -0.9233027 -0.00440209 0.3489557 -0.937013 -0.01537897
		0.6867132 -0.7013949 0.1909721 0.6693568 -0.7169938 0.1946315 0.384048 -0.9233027 -0.00440209
		0.384048 -0.9233027 -0.00440209 0.6693568 -0.7169938 0.1946315 0.5343013 -0.8452444 0.009165462
		0.384048 -0.9233027 -0.00440209 0.5343013 -0.8452444 0.009165462 0 -0.9961117 -0.08810002
		0.384048 -0.9233027 -0.00440209 0 -0.9961117 -0.08810002 1.359913E-07 -0.9957864 -0.09170372
		0 -0.9818323 -0.1897511 0.384048 -0.9233027 -0.00440209 1.359913E-07 -0.9957864 -0.09170372
		0.5343013 -0.8452444 0.009165462 0.6693568 -0.7169938 0.1946315 0.8904802 -0.2103062 0.4035053
		0.5773162 -0.8155268 0.04027642 0.5343013 -0.8452444 0.009165462 0.8904802 -0.2103062 0.4035053
		0.5343013 -0.8452444 0.009165462 0.5773162 -0.8155268 0.04027642 0 -0.9961117 -0.08810002
		0 -0.9961117 -0.08810002 0.5773162 -0.8155268 0.04027642 0.001870094 -0.9985127 0.05448773
		0.5773162 -0.8155268 0.04027642 0.8904802 -0.2103062 0.4035053 0.990748 -0.1351919 -0.01189915
		0.5773162 -0.8155268 0.04027642 0.990748 -0.1351919 -0.01189915 0.8476381 -0.1822771 -0.4982818
		0.8476381 -0.1822771 -0.4982818 0.5166847 -0.6990852 -0.4942843 0.5773162 -0.8155268 0.04027642
		0.5166847 -0.6990852 -0.4942843 0.3162116 -0.9358118 0.1557777 0.5773162 -0.8155268 0.04027642
		0.001870094 -0.9985127 0.05448773 0.5773162 -0.8155268 0.04027642 0.3162116 -0.9358118 0.1557777
		0.5166847 -0.6990852 -0.4942843 -0.02189363 -0.9160048 -0.4005695 0.3162116 -0.9358118 0.1557777
		0.9112722 0.152359 -0.3825829 0.8476381 -0.1822771 -0.4982818 0.990748 -0.1351919 -0.01189915
		0.5166847 -0.6990852 -0.4942843 0.8476381 -0.1822771 -0.4982818 0.6942291 -0.1930542 -0.6933802
		0.6942291 -0.1930542 -0.6933802 0.310941 -0.5227497 -0.7937559 0.5166847 -0.6990852 -0.4942843
		0.5166847 -0.6990852 -0.4942843 0.310941 -0.5227497 -0.7937559 -0.002673626 -0.4286913 -0.903447
		-0.002673626 -0.4286913 -0.903447 -0.02189363 -0.9160048 -0.4005695 0.5166847 -0.6990852 -0.4942843
		0.6942291 -0.1930542 -0.6933802 0.8476381 -0.1822771 -0.4982818 0.8200688 0.1724906 -0.5456503
		0.8476381 -0.1822771 -0.4982818 0.9112722 0.152359 -0.3825829 0.8200688 0.1724906 -0.5456503
		0.6531363 0.5566234 -0.5134038 0.9112722 0.152359 -0.3825829 0.990748 -0.1351919 -0.01189915
		0.990748 -0.1351919 -0.01189915 0.6957821 0.713038 0.08639549 0.6531363 0.5566234 -0.5134038
		0.6957821 0.713038 0.08639549 0.990748 -0.1351919 -0.01189915 0.8904802 -0.2103062 0.4035053
		0.6531363 0.5566234 -0.5134038 0.6957821 0.713038 0.08639549 0 0.994288 0.1067302
		0 0.994288 0.1067302 0 0.8666649 -0.4988908 0.6531363 0.5566234 -0.5134038
		-0.03110238 0.6909143 0.7222673 0 0.994288 0.1067302 0.6957821 0.713038 0.08639549
		0.6957821 0.713038 0.08639549 0.5018579 0.5413703 0.674579 -0.03110238 0.6909143 0.7222673
		0.8904802 -0.2103062 0.4035053 0.5018579 0.5413703 0.674579 0.6957821 0.713038 0.08639549
		-0.02189363 -0.9160048 -0.4005695 -0.002673626 -0.4286913 -0.903447 -0.3307701 -0.5732188 -0.7496741
		0.8904802 -0.2103062 0.4035053 0.8387622 -0.08464539 0.5378782 0.5018579 0.5413703 0.674579
		0.6693568 -0.7169938 0.1946315 0.8387622 -0.08464539 0.5378782 0.8904802 -0.2103062 0.4035053
		0.9315692 -0.05523173 0.3593445 0.8387622 -0.08464539 0.5378782 0.6693568 -0.7169938 0.1946315
		0.8387622 -0.08464539 0.5378782 0.9315692 -0.05523173 0.3593445 0.6916718 0.5881681 0.4191043
		0.6916718 0.5881681 0.4191043 0.6329946 0.5736688 0.5198287 0.8387622 -0.08464539 0.5378782
		0.8387622 -0.08464539 0.5378782 0.6329946 0.5736688 0.5198287 0.5018579 0.5413703 0.674579
		0.6329946 0.5736688 0.5198287 0.6916718 0.5881681 0.4191043 0.3497188 0.8186998 0.455442
		0.3497188 0.8186998 0.455442 0.3000287 0.7298165 0.6142887 0.6329946 0.5736688 0.5198287
		0.3000287 0.7298165 0.6142887 0.3212187 0.5399793 0.7779723 0.6329946 0.5736688 0.5198287
		0.3212187 0.5399793 0.7779723 0.5018579 0.5413703 0.674579 0.6329946 0.5736688 0.5198287
		-0.03110238 0.6909143 0.7222673 0.5018579 0.5413703 0.674579 0.3212187 0.5399793 0.7779723
		0.3000287 0.7298165 0.6142887 -0.0281547 0.616693 0.7867002 0.3212187 0.5399793 0.7779723
		-0.0281547 0.616693 0.7867002 -0.03110238 0.6909143 0.7222673 0.3212187 0.5399793 0.7779723
		0.3000287 0.7298165 0.6142887 0.002440402 0.7879189 0.6157742 -0.0281547 0.616693 0.7867002
		0.002440402 0.7879189 0.6157742 0.3000287 0.7298165 0.6142887 0.3497188 0.8186998 0.455442
		0.3497188 0.8186998 0.455442 0.03101595 0.9033699 0.4277393 0.002440402 0.7879189 0.6157742
		0.9315692 -0.05523173 0.3593445 0.6693568 -0.7169938 0.1946315 0.6867132 -0.7013949 0.1909721
		0.007899494 0.9494265 0.3138896 0.03101595 0.9033699 0.4277393 0.3497188 0.8186998 0.455442
		0.3497188 0.8186998 0.455442 0.3566544 0.8832507 0.3044108 0.007899494 0.9494265 0.3138896
		0.6858039 0.634068 0.3572544 0.3497188 0.8186998 0.455442 0.6916718 0.5881681 0.4191043
		0.6858039 0.634068 0.3572544 0.3566544 0.8832507 0.3044108 0.3497188 0.8186998 0.455442
		0.6916718 0.5881681 0.4191043 0.9315692 -0.05523173 0.3593445 0.6858039 0.634068 0.3572544
		-0.02250186 -0.6810964 -0.731848 -0.2970248 -0.803076 -0.5165706 -0.3307701 -0.5732188 -0.7496741
		0.1103958 -0.840333 -0.5307101 -0.2970248 -0.803076 -0.5165706 -0.02250186 -0.6810964 -0.731848
		0.1103958 -0.840333 -0.5307101 -0.02250186 -0.6810964 -0.731848 0.310941 -0.5227497 -0.7937559
		0.310941 -0.5227497 -0.7937559 0.3963824 -0.7565631 -0.5200896 0.1103958 -0.840333 -0.5307101
		0.3963824 -0.7565631 -0.5200896 0.310941 -0.5227497 -0.7937559 0.5729308 -0.5422602 -0.6145764
		0.3963824 -0.7565631 -0.5200896 0.4013496 -0.9072037 -0.1260946 0.1103958 -0.840333 -0.5307101
		0.1103958 -0.840333 -0.5307101 0.4013496 -0.9072037 -0.1260946 0.1005828 -0.9914039 -0.08367418
		0.1005828 -0.9914039 -0.08367418 0.4013496 -0.9072037 -0.1260946 0.4539486 -0.8402858 0.2963959
		0.4539486 -0.8402858 0.2963959 0.4013496 -0.9072037 -0.1260946 0.7623242 -0.6397374 0.09796949
		0.1005828 -0.9914039 -0.08367418 0.4539486 -0.8402858 0.2963959 0.07108585 -0.9136342 0.4002743
		0.07108585 -0.9136342 0.4002743 0.4539486 -0.8402858 0.2963959 0.3832656 -0.6247907 0.680253
		0.3832656 -0.6247907 0.680253 0.4539486 -0.8402858 0.2963959 0.7623242 -0.6397374 0.09796949
		0.07108585 -0.9136342 0.4002743 0.3832656 -0.6247907 0.680253 0.01476333 -0.6950809 0.7187799
		-0.3847732 -0.9228924 0.01481081 0.1005828 -0.9914039 -0.08367418 0.07108585 -0.9136342 0.4002743
		-0.3535987 -0.7645067 0.5389781 -0.3847732 -0.9228924 0.01481081 0.07108585 -0.9136342 0.4002743
		0.01476333 -0.6950809 0.7187799 -0.3535987 -0.7645067 0.5389781 0.07108585 -0.9136342 0.4002743
		-0.3847732 -0.9228924 0.01481081 -0.07852163 -0.9445862 -0.3187338 0.1005828 -0.9914039 -0.08367418
		0.1103958 -0.840333 -0.5307101 0.1005828 -0.9914039 -0.08367418 -0.07852163 -0.9445862 -0.3187338
		-0.07852163 -0.9445862 -0.3187338 -0.2970248 -0.803076 -0.5165706 0.1103958 -0.840333 -0.5307101
		-0.3847732 -0.9228924 0.01481081 -0.2970248 -0.803076 -0.5165706 -0.07852163 -0.9445862 -0.3187338
		-0.1852666 -0.5307638 0.8270225 0.01476333 -0.6950809 0.7187799 0.3832656 -0.6247907 0.680253
		-0.1852666 -0.5307638 0.8270225 -0.3535987 -0.7645067 0.5389781 0.01476333 -0.6950809 0.7187799
		-0.1852666 -0.5307638 0.8270225 0.3832656 -0.6247907 0.680253 0.3203683 -0.4299892 0.8440815
		-0.1852666 -0.5307638 0.8270225 0.3203683 -0.4299892 0.8440815 0.3145308 -0.3544997 0.8805682
		-0.1330944 -0.4481362 0.8840022 -0.1852666 -0.5307638 0.8270225 0.3145308 -0.3544997 0.8805682
		-0.1330944 -0.4481362 0.8840022 0.3145308 -0.3544997 0.8805682 0.479883 -0.3111126 0.8203179
		0.6367228 -0.3658029 0.6788023 0.479883 -0.3111126 0.8203179 0.3145308 -0.3544997 0.8805682
		0.3145308 -0.3544997 0.8805682 0.6162357 -0.1080168 0.7801192 0.6367228 -0.3658029 0.6788023
		0.6162357 -0.1080168 0.7801192 0.3145308 -0.3544997 0.8805682 0.7356745 -0.1654741 0.6568115
		0.3145308 -0.3544997 0.8805682 0.3203683 -0.4299892 0.8440815 0.7356745 -0.1654741 0.6568115
		0.6367228 -0.3658029 0.6788023 0.6162357 -0.1080168 0.7801192 0.9275426 -0.01720013 0.3733214
		0.9275426 -0.01720013 0.3733214 0.6162357 -0.1080168 0.7801192 0.7356745 -0.1654741 0.6568115
		0.9275426 -0.01720013 0.3733214 0.6527866 -0.6677851 0.3576772 0.6367228 -0.3658029 0.6788023
		0.9275426 -0.01720013 0.3733214 0.6310561 -0.69887 -0.3366731 0.6527866 -0.6677851 0.3576772
		0.889477 0.02173086 -0.4564629 0.6310561 -0.69887 -0.3366731 0.9275426 -0.01720013 0.3733214
		0.9690605 0.2464902 -0.01282874 0.889477 0.02173086 -0.4564629 0.9275426 -0.01720013 0.3733214
		0.9275426 -0.01720013 0.3733214 0.9726959 0.08296008 0.2167492 0.9690605 0.2464902 -0.01282874
		0.9726959 0.08296008 0.2167492 0.9275426 -0.01720013 0.3733214 0.7356745 -0.1654741 0.6568115
		0.9094992 -0.1450919 0.3895634 0.9726959 0.08296008 0.2167492 0.7356745 -0.1654741 0.6568115
		0.889477 0.02173086 -0.4564629 0.04915138 -0.08055434 -0.9955376 0.6310561 -0.69887 -0.3366731
		0.3223524 -0.6032165 0.7295333 0.479883 -0.3111126 0.8203179 0.6367228 -0.3658029 0.6788023
		0.001921783 -0.515011 0.8571814 0.479883 -0.3111126 0.8203179 0.3223524 -0.6032165 0.7295333
		0.001921783 -0.515011 0.8571814 -0.1330944 -0.4481362 0.8840022 0.479883 -0.3111126 0.8203179
		0.3223524 -0.6032165 0.7295333 2.097212E-07 -0.7811249 0.6243748 0.001921783 -0.515011 0.8571814
		0.006548334 -0.6715156 0.7409614 -0.1330944 -0.4481362 0.8840022 0.001921783 -0.515011 0.8571814
		-0.1330944 -0.4481362 0.8840022 0.006548334 -0.6715156 0.7409614 -0.5443892 -0.5194026 0.6586815
		-0.51525 -0.460157 0.7230304 -0.1330944 -0.4481362 0.8840022 -0.5443892 -0.5194026 0.6586815
		0.9767652 -0.1738613 -0.1253079 0.9726959 0.08296008 0.2167492 0.9094992 -0.1450919 0.3895634
		0.9767652 -0.1738613 -0.1253079 0.9094992 -0.1450919 0.3895634 0.9002871 -0.3738507 0.222977
		0.889477 0.02173086 -0.4564629 0.4240474 0.6309077 -0.6497225 0.04915138 -0.08055434 -0.9955376
		0.04915138 -0.08055434 -0.9955376 0.4240474 0.6309077 -0.6497225 0.008386678 0.8453008 -0.5342249
		0.008386678 0.8453008 -0.5342249 0.4240474 0.6309077 -0.6497225 0.1567587 0.9861196 -0.0547242
		0.02285981 0.9961818 -0.08425688 0.1567587 0.9861196 -0.0547242 0.4240474 0.6309077 -0.6497225
		0.4240474 0.6309077 -0.6497225 0.0835784 0.8287116 -0.5534001 0.02285981 0.9961818 -0.08425688
		-1.878679E-07 0.9942492 -0.1070909 0.02285981 0.9961818 -0.08425688 0.0835784 0.8287116 -0.5534001
		0.0835784 0.8287116 -0.5534001 -2.522628E-07 0.8533867 -0.5212784 -1.878679E-07 0.9942492 -0.1070909
		0.2509211 0.8378153 0.4848754 0.1567587 0.9861196 -0.0547242 0.02285981 0.9961818 -0.08425688
		0.02285981 0.9961818 -0.08425688 0.2591138 0.8184698 0.5128033 0.2509211 0.8378153 0.4848754
		0.2591138 0.8184698 0.5128033 0.02285981 0.9961818 -0.08425688 -1.878679E-07 0.9942492 -0.1070909
		-1.878679E-07 0.9942492 -0.1070909 -1.039167E-07 0.9852509 0.1711152 0.2591138 0.8184698 0.5128033
		0.2591138 0.8184698 0.5128033 -1.039167E-07 0.9852509 0.1711152 0 0.9657953 0.2593056
		0 0.9657953 0.2593056 0.6696057 0.5626537 0.4848187 0.2591138 0.8184698 0.5128033
		0.3787099 0.03231648 0.9249511 0.2509211 0.8378153 0.4848754 0.2591138 0.8184698 0.5128033
		0.2509211 0.8378153 0.4848754 0.3787099 0.03231648 0.9249511 0.5447972 -0.02971775 0.8380411
		0.5447972 -0.02971775 0.8380411 0.2741776 0.8198977 0.5025877 0.2509211 0.8378153 0.4848754
		0.2591138 0.8184698 0.5128033 0.419771 -0.07144346 0.9048139 0.3787099 0.03231648 0.9249511
		0.2509211 0.8378153 0.4848754 0.2741776 0.8198977 0.5025877 0.1617848 0.9865413 0.02370437
		0.1617848 0.9865413 0.02370437 0.1567587 0.9861196 -0.0547242 0.2509211 0.8378153 0.4848754
		0.1567587 0.9861196 -0.0547242 0.1617848 0.9865413 0.02370437 0.008386678 0.8453008 -0.5342249
		-2.522628E-07 0.8533867 -0.5212784 0.0835784 0.8287116 -0.5534001 0.6531363 0.5566234 -0.5134038
		0.6531363 0.5566234 -0.5134038 0.0835784 0.8287116 -0.5534001 0.4240474 0.6309077 -0.6497225
		0.6531363 0.5566234 -0.5134038 0 0.8666649 -0.4988908 -2.522628E-07 0.8533867 -0.5212784
		0.6531363 0.5566234 -0.5134038 0.4240474 0.6309077 -0.6497225 0.889477 0.02173086 -0.4564629
		0.889477 0.02173086 -0.4564629 0.9112722 0.152359 -0.3825829 0.6531363 0.5566234 -0.5134038
		0.9112722 0.152359 -0.3825829 0.889477 0.02173086 -0.4564629 0.9690605 0.2464902 -0.01282874
		0.9690605 0.2464902 -0.01282874 0.9380717 0.3234011 -0.1242302 0.9112722 0.152359 -0.3825829
		0.9690605 0.2464902 -0.01282874 0.9726959 0.08296008 0.2167492 0.9380717 0.3234011 -0.1242302
		0.8200688 0.1724906 -0.5456503 0.9112722 0.152359 -0.3825829 0.9380717 0.3234011 -0.1242302
		0.9380717 0.3234011 -0.1242302 0.9699004 0.06055437 -0.2358526 0.8200688 0.1724906 -0.5456503
		0.9699004 0.06055437 -0.2358526 0.9380717 0.3234011 -0.1242302 0.9726959 0.08296008 0.2167492
		0.9726959 0.08296008 0.2167492 0.9767652 -0.1738613 -0.1253079 0.9699004 0.06055437 -0.2358526
		0.9699004 0.06055437 -0.2358526 0.6942291 -0.1930542 -0.6933802 0.8200688 0.1724906 -0.5456503
		0.9767652 -0.1738613 -0.1253079 0.6942291 -0.1930542 -0.6933802 0.9699004 0.06055437 -0.2358526
		0.6942291 -0.1930542 -0.6933802 0.9767652 -0.1738613 -0.1253079 0.8379279 -0.3405989 -0.4264611
		0.6942291 -0.1930542 -0.6933802 0.8379279 -0.3405989 -0.4264611 0.5729308 -0.5422602 -0.6145764
		0.310941 -0.5227497 -0.7937559 0.6942291 -0.1930542 -0.6933802 0.5729308 -0.5422602 -0.6145764
		0.8379279 -0.3405989 -0.4264611 0.7367013 -0.6435847 -0.2075333 0.5729308 -0.5422602 -0.6145764
		0.9767652 -0.1738613 -0.1253079 0.7367013 -0.6435847 -0.2075333 0.8379279 -0.3405989 -0.4264611
		0.7367013 -0.6435847 -0.2075333 0.3963824 -0.7565631 -0.5200896 0.5729308 -0.5422602 -0.6145764
		0.7367013 -0.6435847 -0.2075333 0.9767652 -0.1738613 -0.1253079 0.7623242 -0.6397374 0.09796949
		0.4013496 -0.9072037 -0.1260946 0.7367013 -0.6435847 -0.2075333 0.7623242 -0.6397374 0.09796949
		0.7367013 -0.6435847 -0.2075333 0.4013496 -0.9072037 -0.1260946 0.3963824 -0.7565631 -0.5200896
		0.9002871 -0.3738507 0.222977 0.7623242 -0.6397374 0.09796949 0.9767652 -0.1738613 -0.1253079
		0.6284106 -0.5100464 0.5873268 0.7623242 -0.6397374 0.09796949 0.9002871 -0.3738507 0.222977
		0.6284106 -0.5100464 0.5873268 0.3832656 -0.6247907 0.680253 0.7623242 -0.6397374 0.09796949
		0.3203683 -0.4299892 0.8440815 0.3832656 -0.6247907 0.680253 0.6284106 -0.5100464 0.5873268
		0.3203683 -0.4299892 0.8440815 0.6284106 -0.5100464 0.5873268 0.7356745 -0.1654741 0.6568115
		0.9094992 -0.1450919 0.3895634 0.6284106 -0.5100464 0.5873268 0.9002871 -0.3738507 0.222977
		0.6284106 -0.5100464 0.5873268 0.9094992 -0.1450919 0.3895634 0.7356745 -0.1654741 0.6568115
		-0.002673626 -0.4286913 -0.903447 0.310941 -0.5227497 -0.7937559 -0.02250186 -0.6810964 -0.731848
		-0.002673626 -0.4286913 -0.903447 -0.02250186 -0.6810964 -0.731848 -0.3307701 -0.5732188 -0.7496741
		-0.02189363 -0.9160048 -0.4005695 -0.3307701 -0.5732188 -0.7496741 -0.614127 -0.5620559 -0.5540226
		-0.2601591 -0.9189119 -0.2965101 -0.02189363 -0.9160048 -0.4005695 -0.614127 -0.5620559 -0.5540226
		-0.3307701 -0.5732188 -0.7496741 -0.2970248 -0.803076 -0.5165706 -0.614127 -0.5620559 -0.5540226
		-0.2970248 -0.803076 -0.5165706 -0.6367497 -0.7693632 -0.05128239 -0.614127 -0.5620559 -0.5540226
		-0.614127 -0.5620559 -0.5540226 -0.6367497 -0.7693632 -0.05128239 -0.8121857 -0.569313 -0.1274249
		-0.2601591 -0.9189119 -0.2965101 -0.614127 -0.5620559 -0.5540226 -0.8121857 -0.569313 -0.1274249
		-0.0427785 -0.9680751 -0.2469827 -0.2601591 -0.9189119 -0.2965101 -0.8121857 -0.569313 -0.1274249
		-0.0427785 -0.9680751 -0.2469827 0.005307961 -0.9912688 0.1317496 -0.2601591 -0.9189119 -0.2965101
		0.005307961 -0.9912688 0.1317496 -0.02189363 -0.9160048 -0.4005695 -0.2601591 -0.9189119 -0.2965101
		-0.2970248 -0.803076 -0.5165706 -0.3847732 -0.9228924 0.01481081 -0.6367497 -0.7693632 -0.05128239
		-0.3847732 -0.9228924 0.01481081 -0.5846301 -0.6472037 0.4892189 -0.6367497 -0.7693632 -0.05128239
		-0.8121857 -0.569313 -0.1274249 -0.6367497 -0.7693632 -0.05128239 -0.5846301 -0.6472037 0.4892189
		-0.8121857 -0.569313 -0.1274249 -0.5846301 -0.6472037 0.4892189 -0.7072594 -0.536822 0.4600068
		-0.7072594 -0.536822 0.4600068 -0.5846301 -0.6472037 0.4892189 -0.1852666 -0.5307638 0.8270225
		-0.7072594 -0.536822 0.4600068 -0.1852666 -0.5307638 0.8270225 -0.51525 -0.460157 0.7230304
		-0.3847732 -0.9228924 0.01481081 -0.3535987 -0.7645067 0.5389781 -0.5846301 -0.6472037 0.4892189
		-0.5846301 -0.6472037 0.4892189 -0.3535987 -0.7645067 0.5389781 -0.1852666 -0.5307638 0.8270225
		-0.7072594 -0.536822 0.4600068 -0.02306416 -0.7871193 0.6163695 -0.8121857 -0.569313 -0.1274249
		-0.51525 -0.460157 0.7230304 -0.02306416 -0.7871193 0.6163695 -0.7072594 -0.536822 0.4600068
		-0.02306416 -0.7871193 0.6163695 -0.0427785 -0.9680751 -0.2469827 -0.8121857 -0.569313 -0.1274249
		-0.51525 -0.460157 0.7230304 -0.1852666 -0.5307638 0.8270225 -0.1330944 -0.4481362 0.8840022
		-0.5443892 -0.5194026 0.6586815 -0.02306416 -0.7871193 0.6163695 -0.51525 -0.460157 0.7230304
		0.006548334 -0.6715156 0.7409614 -0.02306416 -0.7871193 0.6163695 -0.5443892 -0.5194026 0.6586815
		0.001870094 -0.9985127 0.05448773 0.3162116 -0.9358118 0.1557777 0.005307961 -0.9912688 0.1317496
		0.005307961 -0.9912688 0.1317496 0.3162116 -0.9358118 0.1557777 -0.02189363 -0.9160048 -0.4005695
		-0.5374625 -0.6086462 -0.5836813 0 -0.2151798 -0.9765744 0 -0.07727016 -0.9970101
		-0.5374625 -0.6086462 -0.5836813 0.007000844 -0.8114617 -0.5843636 0 -0.2151798 -0.9765744
		0 -0.07727016 -0.9970101 -0.536195 -0.02243347 -0.843796 -0.5374625 -0.6086462 -0.5836813
		-0.2315083 -0.8436896 -0.4843469 0.007000844 -0.8114617 -0.5843636 -0.5374625 -0.6086462 -0.5836813
		-0.5374625 -0.6086462 -0.5836813 0.0007688495 -0.9986771 -0.05141365 -0.2315083 -0.8436896 -0.4843469
		-0.2315083 -0.8436896 -0.4843469 0.0007688495 -0.9986771 -0.05141365 0.3489557 -0.937013 -0.01537897
		0.0007688495 -0.9986771 -0.05141365 0.7717761 -0.6309237 0.07935201 0.3489557 -0.937013 -0.01537897
		0.8987344 -0.4375607 0.02858499 0.09093828 -0.9926006 0.08046332 -0.01285672 -0.9261045 0.3770478
		-0.01285672 -0.9261045 0.3770478 0.9154595 -0.3436591 0.2093616 0.8987344 -0.4375607 0.02858499
		-0.9060909 -0.3989373 0.1408843 -0.01285672 -0.9261045 0.3770478 0.09093828 -0.9926006 0.08046332
		0.09093828 -0.9926006 0.08046332 -0.822208 -0.5660192 0.05996925 -0.9060909 -0.3989373 0.1408843
		-0.8619756 0.3749093 0.3412348 -0.9060909 -0.3989373 0.1408843 -0.822208 -0.5660192 0.05996925
		-0.822208 -0.5660192 0.05996925 -0.9344879 0.3093643 0.1761425 -0.8619756 0.3749093 0.3412348
		0.004661181 0.9048014 0.4258084 -0.8619756 0.3749093 0.3412348 -0.9344879 0.3093643 0.1761425
		-0.9344879 0.3093643 0.1761425 -0.09237666 0.9707354 0.221674 0.004661181 0.9048014 0.4258084
		0.8987344 -0.4375607 0.02858499 0.9154595 -0.3436591 0.2093616 0.8520852 0.4702805 0.2297541
		0.8520852 0.4702805 0.2297541 0.9215537 0.3881219 0.0100026 0.8987344 -0.4375607 0.02858499
		0.9215537 0.3881219 0.0100026 0.8520852 0.4702805 0.2297541 0.004661181 0.9048014 0.4258084
		0.004661181 0.9048014 0.4258084 -0.09237666 0.9707354 0.221674 0.9215537 0.3881219 0.0100026
		0.8295372 0.5411015 0.1381212 0.8520852 0.4702805 0.2297541 0.9154595 -0.3436591 0.2093616
		-0.0357899 0.9769853 0.2102826 0.8520852 0.4702805 0.2297541 0.8295372 0.5411015 0.1381212
		-0.0357899 0.9769853 0.2102826 0.004661181 0.9048014 0.4258084 0.8520852 0.4702805 0.2297541
		-0.01285672 -0.9261045 0.3770478 -0.9060909 -0.3989373 0.1408843 -0.903232 -0.3763368 0.2062585
		-0.903232 -0.3763368 0.2062585 0.006917362 -0.8152922 0.5790084 -0.01285672 -0.9261045 0.3770478
		-0.9062226 0.4084801 0.1091087 -0.9060909 -0.3989373 0.1408843 -0.8619756 0.3749093 0.3412348
		-0.9889168 -0.1414937 -0.04497863 -0.903232 -0.3763368 0.2062585 -0.9060909 -0.3989373 0.1408843
		-0.9062226 0.4084801 0.1091087 -0.9889168 -0.1414937 -0.04497863 -0.9060909 -0.3989373 0.1408843
		-0.8989605 -0.3111963 0.3082642 0.006917362 -0.8152922 0.5790084 -0.903232 -0.3763368 0.2062585
		-0.774131 0.412663 -0.4800319 -0.8989605 -0.3111963 0.3082642 -0.903232 -0.3763368 0.2062585
		-0.774131 0.412663 -0.4800319 -0.903232 -0.3763368 0.2062585 -0.9889168 -0.1414937 -0.04497863
		-0.8989605 -0.3111963 0.3082642 -0.774131 0.412663 -0.4800319 -0.5951117 0.407352 -0.6927528
		-0.8989605 -0.3111963 0.3082642 -0.5951117 0.407352 -0.6927528 -0.7882984 -0.07858279 -0.6102543
		-0.7882984 -0.07858279 -0.6102543 -0.7062028 -0.3906184 -0.5905039 -0.8989605 -0.3111963 0.3082642
		0.02696058 -0.6544463 0.7556276 0.006917362 -0.8152922 0.5790084 -0.8989605 -0.3111963 0.3082642
		0.02696058 -0.6544463 0.7556276 -0.8989605 -0.3111963 0.3082642 -0.8223239 -0.4485809 0.3500835
		-0.8223239 -0.4485809 0.3500835 -0.8989605 -0.3111963 0.3082642 -0.7062028 -0.3906184 -0.5905039
		-0.8223239 -0.4485809 0.3500835 -0.001897163 -0.7767227 0.6298398 0.02696058 -0.6544463 0.7556276
		-0.7062028 -0.3906184 -0.5905039 -0.001897163 -0.7767227 0.6298398 -0.8223239 -0.4485809 0.3500835
		-0.7062028 -0.3906184 -0.5905039 0.05564891 -0.9270321 -0.3708298 -0.001897163 -0.7767227 0.6298398
		0.6647746 -0.4138507 -0.6219342 -0.001897163 -0.7767227 0.6298398 0.05564891 -0.9270321 -0.3708298
		0.7852859 -0.430326 0.4451354 -0.001897163 -0.7767227 0.6298398 0.6647746 -0.4138507 -0.6219342
		0.02696058 -0.6544463 0.7556276 -0.001897163 -0.7767227 0.6298398 0.7852859 -0.430326 0.4451354
		0.7852859 -0.430326 0.4451354 0.6647746 -0.4138507 -0.6219342 0.8184469 -0.1075134 -0.5644338
		0.7852859 -0.430326 0.4451354 0.8184469 -0.1075134 -0.5644338 0.9773124 0.03844182 0.2082848
		0.9773124 0.03844182 0.2082848 0.8184469 -0.1075134 -0.5644338 0.6606945 0.4052879 -0.6318422
		0.9773124 0.03844182 0.2082848 0.6606945 0.4052879 -0.6318422 0.7178487 0.5790816 -0.3864683
		0.9773124 0.03844182 0.2082848 0.7178487 0.5790816 -0.3864683 0.8987384 -0.165214 0.4061692
		0.7852859 -0.430326 0.4451354 0.9773124 0.03844182 0.2082848 0.8987384 -0.165214 0.4061692
		0.7852859 -0.430326 0.4451354 0.8987384 -0.165214 0.4061692 0.02696058 -0.6544463 0.7556276
		0.8987384 -0.165214 0.4061692 0.7178487 0.5790816 -0.3864683 0.9156038 -0.2795985 0.2889539
		0.8987384 -0.165214 0.4061692 0.006917362 -0.8152922 0.5790084 0.02696058 -0.6544463 0.7556276
		0.8987384 -0.165214 0.4061692 0.9156038 -0.2795985 0.2889539 0.006917362 -0.8152922 0.5790084
		-0.01285672 -0.9261045 0.3770478 0.006917362 -0.8152922 0.5790084 0.9156038 -0.2795985 0.2889539
		0.9156038 -0.2795985 0.2889539 0.9154595 -0.3436591 0.2093616 -0.01285672 -0.9261045 0.3770478
		0.9154595 -0.3436591 0.2093616 0.9156038 -0.2795985 0.2889539 0.9976975 -0.005319801 0.06761105
		0.9976975 -0.005319801 0.06761105 0.9156038 -0.2795985 0.2889539 0.7178487 0.5790816 -0.3864683
		0.8152689 0.5418982 -0.2041641 0.9976975 -0.005319801 0.06761105 0.7178487 0.5790816 -0.3864683
		0.6053572 0.3221832 -0.7278328 0.8152689 0.5418982 -0.2041641 0.7178487 0.5790816 -0.3864683
		0.6053572 0.3221832 -0.7278328 0.6840128 0.6173292 -0.3886273 0.8152689 0.5418982 -0.2041641
		0.6840128 0.6173292 -0.3886273 -0.01136204 0.9648882 -0.2624151 0.8152689 0.5418982 -0.2041641
		0.6840128 0.6173292 -0.3886273 -0.03107627 0.9116206 -0.4098563 -0.01136204 0.9648882 -0.2624151
		0.8152689 0.5418982 -0.2041641 0.8295372 0.5411015 0.1381212 0.9976975 -0.005319801 0.06761105
		-0.01136204 0.9648882 -0.2624151 0.8295372 0.5411015 0.1381212 0.8152689 0.5418982 -0.2041641
		0.8295372 0.5411015 0.1381212 0.9154595 -0.3436591 0.2093616 0.9976975 -0.005319801 0.06761105
		-0.01136204 0.9648882 -0.2624151 -0.0357899 0.9769853 0.2102826 0.8295372 0.5411015 0.1381212
		-0.7882984 -0.07858279 -0.6102543 0.8184469 -0.1075134 -0.5644338 0.6647746 -0.4138507 -0.6219342
		-0.7882984 -0.07858279 -0.6102543 0.6647746 -0.4138507 -0.6219342 0.05564891 -0.9270321 -0.3708298
		0.05564891 -0.9270321 -0.3708298 -0.7062028 -0.3906184 -0.5905039 -0.7882984 -0.07858279 -0.6102543
		-0.5951117 0.407352 -0.6927528 0.8184469 -0.1075134 -0.5644338 -0.7882984 -0.07858279 -0.6102543
		-0.5951117 0.407352 -0.6927528 0.6606945 0.4052879 -0.6318422 0.8184469 -0.1075134 -0.5644338
		-0.774131 0.412663 -0.4800319 0.6606945 0.4052879 -0.6318422 -0.5951117 0.407352 -0.6927528
		0.6606945 0.4052879 -0.6318422 -0.774131 0.412663 -0.4800319 0.7178487 0.5790816 -0.3864683
		-0.6251444 0.1460641 -0.7667201 0.7178487 0.5790816 -0.3864683 -0.774131 0.412663 -0.4800319
		-0.6251444 0.1460641 -0.7667201 0.6053572 0.3221832 -0.7278328 0.7178487 0.5790816 -0.3864683
		-0.591827 -0.7992436 -0.1046437 0.6053572 0.3221832 -0.7278328 -0.6251444 0.1460641 -0.7667201
		-0.591827 -0.7992436 -0.1046437 0.7355654 -0.662243 -0.1427504 0.6053572 0.3221832 -0.7278328
		-0.4270964 -0.663306 -0.6145028 0.7355654 -0.662243 -0.1427504 -0.591827 -0.7992436 -0.1046437
		-0.4270964 -0.663306 -0.6145028 0.5698781 -0.5165462 -0.6390767 0.7355654 -0.662243 -0.1427504
		0.6682644 0.3719104 -0.6442866 0.5698781 -0.5165462 -0.6390767 -0.4270964 -0.663306 -0.6145028
		-0.4270964 -0.663306 -0.6145028 -0.7729688 0.1895307 -0.6054729 0.6682644 0.3719104 -0.6442866
		0.6682644 0.3719104 -0.6442866 -0.7729688 0.1895307 -0.6054729 -0.06829876 0.7605993 -0.6456191
		-0.8619756 0.3749093 0.3412348 -0.0357899 0.9769853 0.2102826 -0.9062226 0.4084801 0.1091087
		-0.8619756 0.3749093 0.3412348 0.004661181 0.9048014 0.4258084 -0.0357899 0.9769853 0.2102826
		-0.9062226 0.4084801 0.1091087 -0.0357899 0.9769853 0.2102826 -0.01136204 0.9648882 -0.2624151
		-0.9062226 0.4084801 0.1091087 -0.01136204 0.9648882 -0.2624151 -0.8702495 0.4047445 -0.2807983
		-0.03107627 0.9116206 -0.4098563 -0.8702495 0.4047445 -0.2807983 -0.01136204 0.9648882 -0.2624151
		-0.03107627 0.9116206 -0.4098563 -0.7374484 0.5091151 -0.4438151 -0.8702495 0.4047445 -0.2807983
		-0.7374484 0.5091151 -0.4438151 -0.774131 0.412663 -0.4800319 -0.8702495 0.4047445 -0.2807983
		-0.7374484 0.5091151 -0.4438151 -0.6251444 0.1460641 -0.7667201 -0.774131 0.412663 -0.4800319
		-0.8702495 0.4047445 -0.2807983 -0.9889168 -0.1414937 -0.04497863 -0.9062226 0.4084801 0.1091087
		-0.774131 0.412663 -0.4800319 -0.9889168 -0.1414937 -0.04497863 -0.8702495 0.4047445 -0.2807983
		0.07930285 0.9952415 -0.05661641 -0.8835641 0.4647361 -0.05774816 -0.8929637 0.4404161 -0.09300211
		0.07930285 0.9952415 -0.05661641 0.07466031 0.993743 -0.08307009 -0.8835641 0.4647361 -0.05774816
		0.07930285 0.9952415 -0.05661641 0.9108412 0.3880762 -0.1405886 0.07466031 0.993743 -0.08307009
		0.07930285 0.9952415 -0.05661641 0.9381562 0.3208623 -0.1300399 0.9108412 0.3880762 -0.1405886
		0.7750912 -0.5941556 -0.2149713 0.9108412 0.3880762 -0.1405886 0.9381562 0.3208623 -0.1300399
		0.7750912 -0.5941556 -0.2149713 0.9381562 0.3208623 -0.1300399 0.7610458 -0.6116241 -0.2161604
		-0.02565721 -0.9749224 -0.2210611 0.7750912 -0.5941556 -0.2149713 0.7610458 -0.6116241 -0.2161604
		-0.02565721 -0.9749224 -0.2210611 -0.00493205 -0.9799036 -0.1994106 0.7750912 -0.5941556 -0.2149713
		-0.7931167 -0.6004791 -0.101934 -0.00493205 -0.9799036 -0.1994106 -0.02565721 -0.9749224 -0.2210611
		-0.7931167 -0.6004791 -0.101934 -0.02565721 -0.9749224 -0.2210611 -0.796865 -0.5762224 -0.1815876
		0.0181057 -0.9599758 -0.279497 0.7702188 -0.6377744 0.002612474 0.8136809 -0.5558116 -0.1702843
		0.0181057 -0.9599758 -0.279497 0.0353566 -0.9978204 -0.05571816 0.7702188 -0.6377744 0.002612474
		0.0181057 -0.9599758 -0.279497 -0.7787621 -0.6265161 -0.03173528 0.0353566 -0.9978204 -0.05571816
		0.0181057 -0.9599758 -0.279497 -0.8451735 -0.4724428 -0.2499592 -0.7787621 -0.6265161 -0.03173528
		-0.9232049 0.3776351 0.07130597 -0.7787621 -0.6265161 -0.03173528 -0.8451735 -0.4724428 -0.2499592
		-0.9232049 0.3776351 0.07130597 -0.8451735 -0.4724428 -0.2499592 -0.9089713 0.416786 0.007786785
		0.08967585 0.9908113 -0.1012483 0.7291066 0.6843556 0.007797308 0.9637542 0.2304515 -0.1344248
		0.6682644 0.3719104 -0.6442866 -0.08029292 0.9916722 -0.1006936 0.8939673 0.4323051 -0.1180462
		0.6682644 0.3719104 -0.6442866 -0.06829876 0.7605993 -0.6456191 -0.08029292 0.9916722 -0.1006936
		-0.06829876 0.7605993 -0.6456191 -0.9721673 0.2168542 -0.0886842 -0.08029292 0.9916722 -0.1006936
		-0.06829876 0.7605993 -0.6456191 -0.7729688 0.1895307 -0.6054729 -0.9721673 0.2168542 -0.0886842
		-0.7729688 0.1895307 -0.6054729 -0.591827 -0.7992436 -0.1046437 -0.9721673 0.2168542 -0.0886842
		-0.7729688 0.1895307 -0.6054729 -0.4270964 -0.663306 -0.6145028 -0.591827 -0.7992436 -0.1046437
		0.5698781 -0.5165462 -0.6390767 0.6682644 0.3719104 -0.6442866 0.8939673 0.4323051 -0.1180462
		0.5698781 -0.5165462 -0.6390767 0.8939673 0.4323051 -0.1180462 0.7355654 -0.662243 -0.1427504
		0.8939673 0.4323051 -0.1180462 -0.08029292 0.9916722 -0.1006936 -0.03107627 0.9116206 -0.4098563
		0.8939673 0.4323051 -0.1180462 -0.03107627 0.9116206 -0.4098563 0.6840128 0.6173292 -0.3886273
		0.7355654 -0.662243 -0.1427504 0.8939673 0.4323051 -0.1180462 0.6840128 0.6173292 -0.3886273
		-0.08029292 0.9916722 -0.1006936 -0.7374484 0.5091151 -0.4438151 -0.03107627 0.9116206 -0.4098563
		-0.08029292 0.9916722 -0.1006936 -0.9721673 0.2168542 -0.0886842 -0.7374484 0.5091151 -0.4438151
		-0.9721673 0.2168542 -0.0886842 -0.6251444 0.1460641 -0.7667201 -0.7374484 0.5091151 -0.4438151
		-0.9721673 0.2168542 -0.0886842 -0.591827 -0.7992436 -0.1046437 -0.6251444 0.1460641 -0.7667201
		0.7355654 -0.662243 -0.1427504 0.6840128 0.6173292 -0.3886273 0.6053572 0.3221832 -0.7278328
		0.7494363 -0.6613529 -0.03094361 0.5503485 -0.8253518 -0.1261379 0.01286754 -0.9839457 -0.1780037
		0.01286754 -0.9839457 -0.1780037 -0.002385163 -0.9987063 -0.05079297 0.7494363 -0.6613529 -0.03094361
		0.9488196 -0.2533041 -0.1886223 0.5503485 -0.8253518 -0.1261379 0.7494363 -0.6613529 -0.03094361
		0.7494363 -0.6613529 -0.03094361 0.9341388 0.3127536 -0.1719588 0.9488196 -0.2533041 -0.1886223
		0.7494363 -0.6613529 -0.03094361 0.9981811 0.0580045 0.01643246 0.9341388 0.3127536 -0.1719588
		0.9981811 0.0580045 0.01643246 0.7494363 -0.6613529 -0.03094361 0.5893813 -0.7075436 0.3898869
		0.5893813 -0.7075436 0.3898869 0.7494363 -0.6613529 -0.03094361 -0.002385163 -0.9987063 -0.05079297
		-0.002385163 -0.9987063 -0.05079297 2.388042E-07 -0.9766296 0.2149294 0.5893813 -0.7075436 0.3898869
		0.5893813 -0.7075436 0.3898869 0.9255131 -0.06046469 0.3738578 0.9981811 0.0580045 0.01643246
		0.6369274 -0.2014299 0.7441435 0.9255131 -0.06046469 0.3738578 0.5893813 -0.7075436 0.3898869
		0.5893813 -0.7075436 0.3898869 2.388042E-07 -0.9766296 0.2149294 2.097212E-07 -0.7811249 0.6243748
		2.097212E-07 -0.7811249 0.6243748 0.3223524 -0.6032165 0.7295333 0.5893813 -0.7075436 0.3898869
		0.5893813 -0.7075436 0.3898869 0.3223524 -0.6032165 0.7295333 0.419771 -0.07144346 0.9048139
		0.5893813 -0.7075436 0.3898869 0.419771 -0.07144346 0.9048139 0.6369274 -0.2014299 0.7441435
		0.3787099 0.03231648 0.9249511 0.419771 -0.07144346 0.9048139 0.3223524 -0.6032165 0.7295333
		0.3223524 -0.6032165 0.7295333 0.2299845 -0.6856057 0.6906894 0.3787099 0.03231648 0.9249511
		0.3787099 0.03231648 0.9249511 0.2299845 -0.6856057 0.6906894 0.3051229 -0.7256073 0.616761
		0.3051229 -0.7256073 0.616761 0.5447972 -0.02971775 0.8380411 0.3787099 0.03231648 0.9249511
		0.6367228 -0.3658029 0.6788023 0.2299845 -0.6856057 0.6906894 0.3223524 -0.6032165 0.7295333
		0.6527866 -0.6677851 0.3576772 0.3051229 -0.7256073 0.616761 0.2299845 -0.6856057 0.6906894
		0.2299845 -0.6856057 0.6906894 0.6367228 -0.3658029 0.6788023 0.6527866 -0.6677851 0.3576772
		0.9255131 -0.06046469 0.3738578 0.6369274 -0.2014299 0.7441435 0.6696057 0.5626537 0.4848187
		0.9255131 -0.06046469 0.3738578 0.6696057 0.5626537 0.4848187 0.7425884 0.6563107 0.1334872
		0.7425884 0.6563107 0.1334872 0.9981811 0.0580045 0.01643246 0.9255131 -0.06046469 0.3738578
		0.9981811 0.0580045 0.01643246 0.7425884 0.6563107 0.1334872 0.5980057 0.7969317 -0.08537684
		0.5980057 0.7969317 -0.08537684 0.9341388 0.3127536 -0.1719588 0.9981811 0.0580045 0.01643246
		0.00433342 0.9988114 -0.04854912 0.5980057 0.7969317 -0.08537684 0.7425884 0.6563107 0.1334872
		0.7425884 0.6563107 0.1334872 -0.002285277 0.9973993 0.07203837 0.00433342 0.9988114 -0.04854912
		-0.002285277 0.9973993 0.07203837 0.7425884 0.6563107 0.1334872 0.6696057 0.5626537 0.4848187
		0.6696057 0.5626537 0.4848187 0 0.9657953 0.2593056 -0.002285277 0.9973993 0.07203837
		0.6369274 -0.2014299 0.7441435 0.6885108 0.07437243 0.7214025 0.6696057 0.5626537 0.4848187
		0.2591138 0.8184698 0.5128033 0.6696057 0.5626537 0.4848187 0.6885108 0.07437243 0.7214025
		0.3489557 -0.937013 -0.01537897 0.7084443 -0.661208 0.2468008 0.6867132 -0.7013949 0.1909721
		0.3489557 -0.937013 -0.01537897 0.5100471 -0.836812 0.1989914 0.7084443 -0.661208 0.2468008
		0.9425942 -0.02807745 0.3327579 0.6867132 -0.7013949 0.1909721 0.7084443 -0.661208 0.2468008
		0.9425942 -0.02807745 0.3327579 0.9315692 -0.05523173 0.3593445 0.6867132 -0.7013949 0.1909721
		0.6858039 0.634068 0.3572544 0.9315692 -0.05523173 0.3593445 0.9425942 -0.02807745 0.3327579
		0.6858039 0.634068 0.3572544 0.9425942 -0.02807745 0.3327579 0.6877441 0.6318607 0.3574356
		0.7084443 -0.661208 0.2468008 0.5100471 -0.836812 0.1989914 0.5088651 -0.8247879 0.2465388
		0.7084443 -0.661208 0.2468008 0.5088651 -0.8247879 0.2465388 0.7399282 -0.6029134 0.2983314
		0.7399282 -0.6029134 0.2983314 0.9425942 -0.02807745 0.3327579 0.7084443 -0.661208 0.2468008
		0.7399282 -0.6029134 0.2983314 0.5088651 -0.8247879 0.2465388 0.5293607 -0.8163368 0.2310229
		0.7399282 -0.6029134 0.2983314 0.5293607 -0.8163368 0.2310229 0.7485902 -0.5991073 0.2840478
		0.9304717 -0.004324818 0.3663381 0.7399282 -0.6029134 0.2983314 0.7485902 -0.5991073 0.2840478
		0.9304717 -0.004324818 0.3663381 0.9425942 -0.02807745 0.3327579 0.7399282 -0.6029134 0.2983314
		0.6877441 0.6318607 0.3574356 0.9425942 -0.02807745 0.3327579 0.9304717 -0.004324818 0.3663381
		0.9304717 -0.004324818 0.3663381 0.7485902 -0.5991073 0.2840478 0.9366737 -0.006240205 0.3501478
		0.6763333 0.6153735 0.4048317 0.9304717 -0.004324818 0.3663381 0.9366737 -0.006240205 0.3501478
		0.6877441 0.6318607 0.3574356 0.9304717 -0.004324818 0.3663381 0.6763333 0.6153735 0.4048317
		0.6763333 0.6153735 0.4048317 0.9366737 -0.006240205 0.3501478 0.7025419 0.6099988 0.3665192
		0.7485902 -0.5991073 0.2840478 0.5293607 -0.8163368 0.2310229 0.5493863 -0.8102458 0.2041484
		0.7485902 -0.5991073 0.2840478 0.5493863 -0.8102458 0.2041484 0.7577541 -0.5961692 0.2653135
		0.9366737 -0.006240205 0.3501478 0.7485902 -0.5991073 0.2840478 0.7577541 -0.5961692 0.2653135
		0.9366737 -0.006240205 0.3501478 0.7577541 -0.5961692 0.2653135 0.9442656 -0.004318662 0.3291562
		0.7025419 0.6099988 0.3665192 0.9366737 -0.006240205 0.3501478 0.9442656 -0.004318662 0.3291562
		0.7025419 0.6099988 0.3665192 0.9442656 -0.004318662 0.3291562 0.7233684 0.6024164 0.337391
		0.7577541 -0.5961692 0.2653135 0.5493863 -0.8102458 0.2041484 0.5676304 -0.8095288 0.1498635
		0.7577541 -0.5961692 0.2653135 0.5676304 -0.8095288 0.1498635 0.7796111 -0.5917234 0.2051094
		0.9442656 -0.004318662 0.3291562 0.7577541 -0.5961692 0.2653135 0.7796111 -0.5917234 0.2051094
		0.9442656 -0.004318662 0.3291562 0.7796111 -0.5917234 0.2051094 0.9627292 0.01802098 0.2698663
		0.7233684 0.6024164 0.337391 0.9442656 -0.004318662 0.3291562 0.9627292 0.01802098 0.2698663
		0.7233684 0.6024164 0.337391 0.9627292 0.01802098 0.2698663 0.7412263 0.6110829 0.2777793
		0.7796111 -0.5917234 0.2051094 0.5676304 -0.8095288 0.1498635 0.5765527 -0.8070118 0.1277454
		0.7796111 -0.5917234 0.2051094 0.5765527 -0.8070118 0.1277454 0.7562501 -0.6345416 0.1595079
		0.9627292 0.01802098 0.2698663 0.7796111 -0.5917234 0.2051094 0.7562501 -0.6345416 0.1595079
		0.9627292 0.01802098 0.2698663 0.7562501 -0.6345416 0.1595079 0.9761934 0.02014998 0.2159636
		0.7412263 0.6110829 0.2777793 0.9627292 0.01802098 0.2698663 0.9761934 0.02014998 0.2159636
		0.7412263 0.6110829 0.2777793 0.9761934 0.02014998 0.2159636 0.7471402 0.6249479 0.2263218
		0.6763333 0.6153735 0.4048317 0.7025419 0.6099988 0.3665192 0.3351392 0.8801455 0.3361927
		0.6763333 0.6153735 0.4048317 0.3351392 0.8801455 0.3361927 0.3184086 0.8800609 0.3522906
		0.6877441 0.6318607 0.3574356 0.6763333 0.6153735 0.4048317 0.3184086 0.8800609 0.3522906
		0.6877441 0.6318607 0.3574356 0.3184086 0.8800609 0.3522906 0.3356705 0.8913028 0.304803
		0.6858039 0.634068 0.3572544 0.6877441 0.6318607 0.3574356 0.3356705 0.8913028 0.304803
		0.6858039 0.634068 0.3572544 0.3356705 0.8913028 0.304803 0.3566544 0.8832507 0.3044108
		0.7233684 0.6024164 0.337391 0.7412263 0.6110829 0.2777793 0.4028305 0.8721887 0.2775151
		0.7412263 0.6110829 0.2777793 0.4029223 0.8863338 0.2281797 0.4028305 0.8721887 0.2775151
		0.7412263 0.6110829 0.2777793 0.7471402 0.6249479 0.2263218 0.4029223 0.8863338 0.2281797
		0.3566544 0.8832507 0.3044108 0.3356705 0.8913028 0.304803 0.2297188 0.9401762 0.2515909
		0.3566544 0.8832507 0.3044108 0.2297188 0.9401762 0.2515909 0.007899494 0.9494265 0.3138896
		0.3184086 0.8800609 0.3522906 0.3351392 0.8801455 0.3361927 0.2418176 0.9079077 0.3423854
		0.3184086 0.8800609 0.3522906 0.2418176 0.9079077 0.3423854 0.2402863 0.9114779 0.333872
		0.3356705 0.8913028 0.304803 0.2402863 0.9114779 0.333872 0.2297188 0.9401762 0.2515909
		0.3356705 0.8913028 0.304803 0.3184086 0.8800609 0.3522906 0.2402863 0.9114779 0.333872
		0.3351392 0.8801455 0.3361927 0.2636318 0.9054098 0.3327633 0.2418176 0.9079077 0.3423854
		0.3351392 0.8801455 0.3361927 0.3709142 0.8696464 0.3257881 0.2636318 0.9054098 0.3327633
		0.7025419 0.6099988 0.3665192 0.3709142 0.8696464 0.3257881 0.3351392 0.8801455 0.3361927
		0.7025419 0.6099988 0.3665192 0.7233684 0.6024164 0.337391 0.3709142 0.8696464 0.3257881
		0.7233684 0.6024164 0.337391 0.4028305 0.8721887 0.2775151 0.3709142 0.8696464 0.3257881
		0.3709142 0.8696464 0.3257881 0.2619701 0.9223018 0.2841322 0.2636318 0.9054098 0.3327633
		0.3709142 0.8696464 0.3257881 0.4028305 0.8721887 0.2775151 0.2619701 0.9223018 0.2841322
		0.4028305 0.8721887 0.2775151 0.2501942 0.9402243 0.2310436 0.2619701 0.9223018 0.2841322
		0.4028305 0.8721887 0.2775151 0.4029223 0.8863338 0.2281797 0.2501942 0.9402243 0.2310436
		-0.7431024 -0.6638864 0.0839865 -0.03773641 -0.9961881 -0.07864591 0.001501061 -0.9987063 -0.05082686
		-0.7431024 -0.6638864 0.0839865 -0.7422724 -0.6687906 -0.0418417 -0.03773641 -0.9961881 -0.07864591
		-0.7431024 -0.6638864 0.0839865 -0.9943928 0.1052867 -0.009880706 -0.7422724 -0.6687906 -0.0418417
		-0.7431024 -0.6638864 0.0839865 -0.9942895 0.02484657 0.1037833 -0.9943928 0.1052867 -0.009880706
		0.001501061 -0.9987063 -0.05082686 -0.7717764 -0.6309236 0.07935189 -0.7431024 -0.6638864 0.0839865
		-0.7431024 -0.6638864 0.0839865 -0.981431 -0.02711572 0.1898887 -0.9942895 0.02484657 0.1037833
		-0.981431 -0.02711572 0.1898887 -0.7431024 -0.6638864 0.0839865 -0.7717764 -0.6309236 0.07935189
		-0.8131146 0.5818653 0.01664996 -0.9942895 0.02484657 0.1037833 -0.981431 -0.02711572 0.1898887
		-0.9942895 0.02484657 0.1037833 -0.8131146 0.5818653 0.01664996 -0.8047864 0.588949 -0.07387689
		-0.06585047 0.8250575 -0.5611986 -0.8047864 0.588949 -0.07387689 -0.8131146 0.5818653 0.01664996
		-0.8047864 0.588949 -0.07387689 -0.06585047 0.8250575 -0.5611986 -0.01242059 0.9660641 -0.2580039
		-0.01242059 0.9660641 -0.2580039 -0.7291067 0.6843556 0.007797204 -0.8047864 0.588949 -0.07387689
		-0.7291067 0.6843556 0.007797204 -0.9942895 0.02484657 0.1037833 -0.8047864 0.588949 -0.07387689
		-0.7291067 0.6843556 0.007797204 -0.9943928 0.1052867 -0.009880706 -0.9942895 0.02484657 0.1037833
		-0.01242059 0.9660641 -0.2580039 -0.03862201 0.9987061 0.03308496 -0.7291067 0.6843556 0.007797204
		-0.7970365 0.5708344 0.1971826 -0.8131146 0.5818653 0.01664996 -0.981431 -0.02711572 0.1898887
		-0.8131146 0.5818653 0.01664996 -0.7970365 0.5708344 0.1971826 -0.2843233 0.946875 0.1502929
		-0.8131146 0.5818653 0.01664996 -0.2843233 0.946875 0.1502929 -0.05694581 0.9706538 -0.2336413
		-0.05694581 0.9706538 -0.2336413 -0.06585047 0.8250575 -0.5611986 -0.8131146 0.5818653 0.01664996
		-0.2843233 0.946875 0.1502929 -1.426465E-07 0.9992361 0.03907927 -0.05694581 0.9706538 -0.2336413
		0.4347284 0.8806103 -0.1885117 -0.05694581 0.9706538 -0.2336413 -1.426465E-07 0.9992361 0.03907927
		-0.05694581 0.9706538 -0.2336413 0.4347284 0.8806103 -0.1885117 -0.06585047 0.8250575 -0.5611986
		0.4347284 0.8806103 -0.1885117 0.6494378 0.2957212 -0.7005566 -0.06585047 0.8250575 -0.5611986
		0.6494378 0.2957212 -0.7005566 -0.01242059 0.9660641 -0.2580039 -0.06585047 0.8250575 -0.5611986
		3.883428E-07 0.8732455 -0.4872805 0.6494378 0.2957212 -0.7005566 0.4347284 0.8806103 -0.1885117
		3.883428E-07 0.8732455 -0.4872805 0.4347284 0.8806103 -0.1885117 -1.426465E-07 0.9992361 0.03907927
		0.6494378 0.2957212 -0.7005566 3.883428E-07 0.8732455 -0.4872805 6.977888E-07 0.3408827 -0.9401059
		0 -0.07727016 -0.9970101 0.6494378 0.2957212 -0.7005566 6.977888E-07 0.3408827 -0.9401059
		0.6494378 0.2957212 -0.7005566 0 -0.07727016 -0.9970101 0.5152852 0.02470078 -0.8566628
		0.6494378 0.2957212 -0.7005566 0.5152852 0.02470078 -0.8566628 0.6221611 0.2055891 -0.7554128
		0.6494378 0.2957212 -0.7005566 0.6221611 0.2055891 -0.7554128 -0.01242059 0.9660641 -0.2580039
		-0.08876114 0.9914521 -0.09562457 -0.7291067 0.6843556 0.007797204 -0.03862201 0.9987061 0.03308496
		0.5152852 0.02470078 -0.8566628 0.7036478 0.7097946 0.03273004 0.6221611 0.2055891 -0.7554128
		0.7036478 0.7097946 0.03273004 -0.01242059 0.9660641 -0.2580039 0.6221611 0.2055891 -0.7554128
		0.7036478 0.7097946 0.03273004 -0.03862201 0.9987061 0.03308496 -0.01242059 0.9660641 -0.2580039
		-0.08876114 0.9914521 -0.09562457 -0.03862201 0.9987061 0.03308496 0.7036478 0.7097946 0.03273004
		0.5152852 0.02470078 -0.8566628 0.9877224 0.1550046 0.01944348 0.7036478 0.7097946 0.03273004
		0.9877224 0.1550046 0.01944348 0.9223138 0.3729991 -0.1010401 0.7036478 0.7097946 0.03273004
		-0.08876114 0.9914521 -0.09562457 0.7036478 0.7097946 0.03273004 0.9223138 0.3729991 -0.1010401
		0.8898052 0.4444849 -0.1033442 -0.08876114 0.9914521 -0.09562457 0.9223138 0.3729991 -0.1010401
		0.8898052 0.4444849 -0.1033442 -0.08130358 0.9949397 -0.05903213 -0.08876114 0.9914521 -0.09562457
		-0.08130358 0.9949397 -0.05903213 -0.9637542 0.2304515 -0.1344248 -0.08876114 0.9914521 -0.09562457
		-0.08130358 0.9949397 -0.05903213 -0.9381561 0.3208624 -0.13004 -0.9637542 0.2304515 -0.1344248
		-0.7610458 -0.6116241 -0.2161604 -0.9637542 0.2304515 -0.1344248 -0.9381561 0.3208624 -0.13004
		-0.7610458 -0.6116241 -0.2161604 -0.7343566 -0.6579992 -0.1666056 -0.9637542 0.2304515 -0.1344248
		-0.7610458 -0.6116241 -0.2161604 0.006892641 -0.9855496 -0.1692468 -0.7343566 -0.6579992 -0.1666056
		-0.7610458 -0.6116241 -0.2161604 0.02347807 -0.9746364 -0.222559 0.006892641 -0.9855496 -0.1692468
		0.7925196 -0.578824 -0.1920297 0.006892641 -0.9855496 -0.1692468 0.02347807 -0.9746364 -0.222559
		0.7925196 -0.578824 -0.1920297 0.7797984 -0.6021659 -0.1712034 0.006892641 -0.9855496 -0.1692468
		0.7925196 -0.578824 -0.1920297 0.9223138 0.3729991 -0.1010401 0.7797984 -0.6021659 -0.1712034
		0.7925196 -0.578824 -0.1920297 0.8898052 0.4444849 -0.1033442 0.9223138 0.3729991 -0.1010401
		0.7852397 -0.6159835 -0.06295357 0.7797984 -0.6021659 -0.1712034 0.9223138 0.3729991 -0.1010401
		0.7852397 -0.6159835 -0.06295357 0.9223138 0.3729991 -0.1010401 0.9877224 0.1550046 0.01944348
		0.5367637 -0.6000166 -0.5931819 0.7852397 -0.6159835 -0.06295357 0.9877224 0.1550046 0.01944348
		0.001501061 -0.9987063 -0.05082686 0.7852397 -0.6159835 -0.06295357 0.5367637 -0.6000166 -0.5931819
		0.5367637 -0.6000166 -0.5931819 0.9877224 0.1550046 0.01944348 0.5152852 0.02470078 -0.8566628
		-0.03773641 -0.9961881 -0.07864591 0.7797984 -0.6021659 -0.1712034 0.7852397 -0.6159835 -0.06295357
		-0.03773641 -0.9961881 -0.07864591 0.006892641 -0.9855496 -0.1692468 0.7797984 -0.6021659 -0.1712034
		0.001501061 -0.9987063 -0.05082686 -0.03773641 -0.9961881 -0.07864591 0.7852397 -0.6159835 -0.06295357
		-0.7422724 -0.6687906 -0.0418417 0.006892641 -0.9855496 -0.1692468 -0.03773641 -0.9961881 -0.07864591
		-0.7422724 -0.6687906 -0.0418417 -0.7343566 -0.6579992 -0.1666056 0.006892641 -0.9855496 -0.1692468
		-0.9943928 0.1052867 -0.009880706 -0.7343566 -0.6579992 -0.1666056 -0.7422724 -0.6687906 -0.0418417
		-0.9943928 0.1052867 -0.009880706 -0.9637542 0.2304515 -0.1344248 -0.7343566 -0.6579992 -0.1666056
		-0.9637542 0.2304515 -0.1344248 -0.9943928 0.1052867 -0.009880706 -0.7291067 0.6843556 0.007797204
		0.883564 0.4647362 -0.05774819 0.8898052 0.4444849 -0.1033442 0.7925196 -0.578824 -0.1920297
		0.883564 0.4647362 -0.05774819 0.7925196 -0.578824 -0.1920297 0.7931167 -0.6004792 -0.1019338
		0.9065204 0.4177786 -0.06067754 0.883564 0.4647362 -0.05774819 0.7931167 -0.6004792 -0.1019338
		0.9065204 0.4177786 -0.06067754 0.7931167 -0.6004792 -0.1019338 0.7874418 -0.6159602 -0.02298705
		0.7874418 -0.6159602 -0.02298705 0.7931167 -0.6004792 -0.1019338 0.004931833 -0.9799036 -0.1994105
		0.7874418 -0.6159602 -0.02298705 0.004931833 -0.9799036 -0.1994105 -0.005624298 -0.9973446 -0.07261062
		0.004931833 -0.9799036 -0.1994105 -0.7684146 -0.6333466 -0.09171318 -0.005624298 -0.9973446 -0.07261062
		0.004931833 -0.9799036 -0.1994105 -0.7750912 -0.5941556 -0.2149713 -0.7684146 -0.6333466 -0.09171318
		-0.9312747 0.3524729 -0.09214388 -0.7684146 -0.6333466 -0.09171318 -0.7750912 -0.5941556 -0.2149713
		-0.9312747 0.3524729 -0.09214388 -0.7750912 -0.5941556 -0.2149713 -0.9108413 0.3880761 -0.1405887
		-0.07466037 0.993743 -0.08307016 -0.9312747 0.3524729 -0.09214388 -0.9108413 0.3880761 -0.1405887
		-0.07466037 0.993743 -0.08307016 -0.05907894 0.9964294 -0.06031645 -0.9312747 0.3524729 -0.09214388
		-0.07466037 0.993743 -0.08307016 0.9065204 0.4177786 -0.06067754 -0.05907894 0.9964294 -0.06031645
		-0.07466037 0.993743 -0.08307016 0.883564 0.4647362 -0.05774819 0.9065204 0.4177786 -0.06067754
		-0.7684146 -0.6333466 -0.09171318 -0.05662328 -0.97557 -0.2122666 -0.005624298 -0.9973446 -0.07261062
		-0.05662328 -0.97557 -0.2122666 0.7874418 -0.6159602 -0.02298705 -0.005624298 -0.9973446 -0.07261062
		-0.05662328 -0.97557 -0.2122666 -0.7684146 -0.6333466 -0.09171318 -0.8077512 -0.5600733 -0.1839997
		-0.9312747 0.3524729 -0.09214388 -0.8077512 -0.5600733 -0.1839997 -0.7684146 -0.6333466 -0.09171318
		-0.8077512 -0.5600733 -0.1839997 -0.01810557 -0.9599758 -0.2794968 -0.05662328 -0.97557 -0.2122666
		-0.01810557 -0.9599758 -0.2794968 -0.8077512 -0.5600733 -0.1839997 -0.8136809 -0.5558117 -0.1702846
		-0.05907894 0.9964294 -0.06031645 -0.9377829 0.3447896 0.0410297 -0.9312747 0.3524729 -0.09214388
		-0.9377829 0.3447896 0.0410297 -0.8136809 -0.5558117 -0.1702846 -0.8077512 -0.5600733 -0.1839997
		-0.9312747 0.3524729 -0.09214388 -0.9377829 0.3447896 0.0410297 -0.8077512 -0.5600733 -0.1839997
		-0.9377829 0.3447896 0.0410297 -0.05907894 0.9964294 -0.06031645 -0.03789835 0.987914 0.1502982
		-0.01810557 -0.9599758 -0.2794968 0.7753202 -0.5851485 -0.2376547 -0.05662328 -0.97557 -0.2122666
		0.7753202 -0.5851485 -0.2376547 -0.01810557 -0.9599758 -0.2794968 0.8451735 -0.4724424 -0.2499599
		0.7874418 -0.6159602 -0.02298705 -0.05662328 -0.97557 -0.2122666 0.7753202 -0.5851485 -0.2376547
		0.9065204 0.4177786 -0.06067754 0.7874418 -0.6159602 -0.02298705 0.7753202 -0.5851485 -0.2376547
		0.9089713 0.416786 0.007786798 -0.05907894 0.9964294 -0.06031645 0.9065204 0.4177786 -0.06067754
		-0.05907894 0.9964294 -0.06031645 0.9089713 0.416786 0.007786798 -0.03789835 0.987914 0.1502982
		0.8451735 -0.4724424 -0.2499599 0.9089713 0.416786 0.007786798 0.7753202 -0.5851485 -0.2376547
		0.9065204 0.4177786 -0.06067754 0.7753202 -0.5851485 -0.2376547 0.9089713 0.416786 0.007786798
		-0.03789835 0.987914 0.1502982 -0.9321878 0.3333625 0.1410508 -0.9377829 0.3447896 0.0410297
		-0.9321878 0.3333625 0.1410508 -0.8136809 -0.5558117 -0.1702846 -0.9377829 0.3447896 0.0410297
		-0.03789835 0.987914 0.1502982 -0.02121087 0.9862213 0.1640662 -0.9321878 0.3333625 0.1410508
		-0.03789835 0.987914 0.1502982 0.9232049 0.377635 0.07130594 -0.02121087 0.9862213 0.1640662
		-0.03789835 0.987914 0.1502982 0.9089713 0.416786 0.007786798 0.9232049 0.377635 0.07130594
		-0.9501549 0.3062389 -0.05851027 -0.9321878 0.3333625 0.1410508 -0.02121087 0.9862213 0.1640662
		-0.9501549 0.3062389 -0.05851027 -0.02121087 0.9862213 0.1640662 0.007833165 0.9988416 -0.04747737
		0.9232049 0.377635 0.07130594 0.007833165 0.9988416 -0.04747737 -0.02121087 0.9862213 0.1640662
		-0.7861827 -0.612502 -0.08220702 -0.9321878 0.3333625 0.1410508 -0.9501549 0.3062389 -0.05851027
		-0.7861827 -0.612502 -0.08220702 -0.7702187 -0.6377744 0.002612471 -0.9321878 0.3333625 0.1410508
		-0.9321878 0.3333625 0.1410508 -0.7702187 -0.6377744 0.002612471 -0.8136809 -0.5558117 -0.1702846
		-0.03535667 -0.9978204 -0.05571805 -0.7702187 -0.6377744 0.002612471 -0.7861827 -0.612502 -0.08220702
		-0.03535667 -0.9978204 -0.05571805 -0.7861827 -0.612502 -0.08220702 -0.0944344 -0.9895989 -0.1085183
		0.9232049 0.377635 0.07130594 0.9297519 0.3628085 -0.06270193 0.007833165 0.9988416 -0.04747737
		-0.03535667 -0.9978204 -0.05571805 -0.0944344 -0.9895989 -0.1085183 0.7516502 -0.6529555 -0.09311791
		-0.03535667 -0.9978204 -0.05571805 0.7516502 -0.6529555 -0.09311791 0.7787621 -0.6265162 -0.03173525
		0.7516502 -0.6529555 -0.09311791 0.9232049 0.377635 0.07130594 0.7787621 -0.6265162 -0.03173525
		0.7516502 -0.6529555 -0.09311791 0.9297519 0.3628085 -0.06270193 0.9232049 0.377635 0.07130594
		-0.7861827 -0.612502 -0.08220702 -0.094516 -0.9888778 -0.1148363 -0.0944344 -0.9895989 -0.1085183
		-0.7861827 -0.612502 -0.08220702 -0.8225339 -0.5551022 -0.1236907 -0.094516 -0.9888778 -0.1148363
		-0.9501549 0.3062389 -0.05851027 -0.8225339 -0.5551022 -0.1236907 -0.7861827 -0.612502 -0.08220702
		-0.8225339 -0.5551022 -0.1236907 -0.09808447 -0.9945333 -0.0358174 -0.094516 -0.9888778 -0.1148363
		-0.8225339 -0.5551022 -0.1236907 -0.8658785 -0.4946798 -0.07447349 -0.09808447 -0.9945333 -0.0358174
		-0.9164762 0.368807 -0.1550895 -0.8658785 -0.4946798 -0.07447349 -0.8225339 -0.5551022 -0.1236907
		0.007833165 0.9988416 -0.04747737 -0.9164762 0.368807 -0.1550895 -0.9501549 0.3062389 -0.05851027
		-0.9501549 0.3062389 -0.05851027 -0.9164762 0.368807 -0.1550895 -0.8225339 -0.5551022 -0.1236907
		-0.9164762 0.368807 -0.1550895 -0.9174357 0.3810892 -0.1143803 -0.8658785 -0.4946798 -0.07447349
		0.08310763 0.9898382 -0.1153841 -0.9174357 0.3810892 -0.1143803 -0.9164762 0.368807 -0.1550895
		0.08310763 0.9898382 -0.1153841 0.09023986 0.9938116 -0.06477099 -0.9174357 0.3810892 -0.1143803
		0.9397112 0.3366132 -0.06028777 0.09023986 0.9938116 -0.06477099 0.08310763 0.9898382 -0.1153841
		0.9297519 0.3628085 -0.06270193 0.9397112 0.3366132 -0.06028777 0.08310763 0.9898382 -0.1153841
		0.9397112 0.3366132 -0.06028777 0.9464828 0.3220974 0.02058169 0.09023986 0.9938116 -0.06477099
		-0.094516 -0.9888778 -0.1148363 -0.09808447 -0.9945333 -0.0358174 0.8271915 -0.5613649 0.02497438
		-0.094516 -0.9888778 -0.1148363 0.8271915 -0.5613649 0.02497438 0.8020534 -0.5945542 -0.05670746
		0.8020534 -0.5945542 -0.05670746 0.8271915 -0.5613649 0.02497438 0.9464828 0.3220974 0.02058169
		0.8020534 -0.5945542 -0.05670746 0.9464828 0.3220974 0.02058169 0.9397112 0.3366132 -0.06028777
		-0.0944344 -0.9895989 -0.1085183 -0.094516 -0.9888778 -0.1148363 0.8020534 -0.5945542 -0.05670746
		-0.0944344 -0.9895989 -0.1085183 0.8020534 -0.5945542 -0.05670746 0.7516502 -0.6529555 -0.09311791
		0.7516502 -0.6529555 -0.09311791 0.8020534 -0.5945542 -0.05670746 0.9397112 0.3366132 -0.06028777
		0.7516502 -0.6529555 -0.09311791 0.9397112 0.3366132 -0.06028777 0.9297519 0.3628085 -0.06270193
		0.007833165 0.9988416 -0.04747737 0.08310763 0.9898382 -0.1153841 -0.9164762 0.368807 -0.1550895
		0.9297519 0.3628085 -0.06270193 0.08310763 0.9898382 -0.1153841 0.007833165 0.9988416 -0.04747737
		-0.9174357 0.3810892 -0.1143803 -0.8987345 -0.4375606 0.02858493 -0.8658785 -0.4946798 -0.07447349
		-0.9174357 0.3810892 -0.1143803 -0.9215537 0.3881223 0.01000251 -0.8987345 -0.4375606 0.02858493
		0.09023986 0.9938116 -0.06477099 -0.9215537 0.3881223 0.01000251 -0.9174357 0.3810892 -0.1143803
		0.09023986 0.9938116 -0.06477099 0.09237637 0.9707355 0.2216734 -0.9215537 0.3881223 0.01000251
		0.9464828 0.3220974 0.02058169 0.09237637 0.9707355 0.2216734 0.09023986 0.9938116 -0.06477099
		0.9464828 0.3220974 0.02058169 0.934488 0.3093642 0.1761421 0.09237637 0.9707355 0.2216734
		0.8271915 -0.5613649 0.02497438 0.934488 0.3093642 0.1761421 0.9464828 0.3220974 0.02058169
		0.8271915 -0.5613649 0.02497438 0.822208 -0.5660193 0.05996898 0.934488 0.3093642 0.1761421
		-0.09808447 -0.9945333 -0.0358174 0.822208 -0.5660193 0.05996898 0.8271915 -0.5613649 0.02497438
		-0.09808447 -0.9945333 -0.0358174 -0.09093818 -0.9926006 0.08046322 0.822208 -0.5660193 0.05996898
		-0.8658785 -0.4946798 -0.07447349 -0.09093818 -0.9926006 0.08046322 -0.09808447 -0.9945333 -0.0358174
		-0.8658785 -0.4946798 -0.07447349 -0.8987345 -0.4375606 0.02858493 -0.09093818 -0.9926006 0.08046322
		0.007000844 -0.8114617 -0.5843636 -0.3494376 -0.9368366 -0.01518378 0.2651766 -0.8449136 -0.4645454
		-0.3494376 -0.9368366 -0.01518378 0.007000844 -0.8114617 -0.5843636 0 -0.9818323 -0.1897511
		0 -0.9818323 -0.1897511 -0.3840481 -0.9233025 -0.004402003 -0.3494376 -0.9368366 -0.01518378
		-0.6867133 -0.7013947 0.190972 -0.3494376 -0.9368366 -0.01518378 -0.3840481 -0.9233025 -0.004402003
		-0.6867133 -0.7013947 0.190972 -0.3840481 -0.9233025 -0.004402003 -0.6684949 -0.716332 0.1999575
		-0.3840481 -0.9233025 -0.004402003 -0.5402468 -0.8413965 0.01361602 -0.6684949 -0.716332 0.1999575
		-0.3840481 -0.9233025 -0.004402003 0 -0.9961117 -0.08810002 -0.5402468 -0.8413965 0.01361602
		-0.3840481 -0.9233025 -0.004402003 1.359913E-07 -0.9957864 -0.09170372 0 -0.9961117 -0.08810002
		0 -0.9818323 -0.1897511 1.359913E-07 -0.9957864 -0.09170372 -0.3840481 -0.9233025 -0.004402003
		-0.5402468 -0.8413965 0.01361602 -0.894906 -0.1753486 0.410361 -0.6684949 -0.716332 0.1999575
		-0.5794427 -0.8139727 0.04116752 -0.894906 -0.1753486 0.410361 -0.5402468 -0.8413965 0.01361602
		-0.5402468 -0.8413965 0.01361602 0 -0.9961117 -0.08810002 -0.5794427 -0.8139727 0.04116752
		0 -0.9961117 -0.08810002 0.001870094 -0.9985127 0.05448773 -0.5794427 -0.8139727 0.04116752
		-0.5794427 -0.8139727 0.04116752 -0.9931458 -0.1160136 -0.01422391 -0.894906 -0.1753486 0.410361
		-0.5794427 -0.8139727 0.04116752 -0.8462873 -0.1807717 -0.5011182 -0.9931458 -0.1160136 -0.01422391
		-0.8462873 -0.1807717 -0.5011182 -0.5794427 -0.8139727 0.04116752 -0.5227838 -0.6963759 -0.4916885
		-0.5794427 -0.8139727 0.04116752 -0.3141643 -0.9353693 0.1624347 -0.5227838 -0.6963759 -0.4916885
		-0.3141643 -0.9353693 0.1624347 -0.5794427 -0.8139727 0.04116752 0.001870094 -0.9985127 0.05448773
		-0.9118553 0.1520514 -0.3813138 -0.9931458 -0.1160136 -0.01422391 -0.8462873 -0.1807717 -0.5011182
		-0.6523105 0.5588067 -0.5120801 -0.9931458 -0.1160136 -0.01422391 -0.9118553 0.1520514 -0.3813138
		-0.9931458 -0.1160136 -0.01422391 -0.6523105 0.5588067 -0.5120801 -0.688765 0.7216839 0.06910239
		-0.688765 0.7216839 0.06910239 -0.894906 -0.1753486 0.410361 -0.9931458 -0.1160136 -0.01422391
		-0.6523105 0.5588067 -0.5120801 0 0.994288 0.1067302 -0.688765 0.7216839 0.06910239
		0 0.994288 0.1067302 -0.6523105 0.5588067 -0.5120801 0 0.8666649 -0.4988908
		-0.894906 -0.1753486 0.410361 -0.688765 0.7216839 0.06910239 -0.5015016 0.5665134 0.6538798
		-0.688765 0.7216839 0.06910239 -0.03110238 0.6909143 0.7222673 -0.5015016 0.5665134 0.6538798
		-0.03110238 0.6909143 0.7222673 -0.688765 0.7216839 0.06910239 0 0.994288 0.1067302
		-0.894906 -0.1753486 0.410361 -0.5015016 0.5665134 0.6538798 -0.8276721 -0.07788403 0.5557814
		-0.6684949 -0.716332 0.1999575 -0.894906 -0.1753486 0.410361 -0.8276721 -0.07788403 0.5557814
		-0.9335665 -0.06193683 0.3530118 -0.6684949 -0.716332 0.1999575 -0.8276721 -0.07788403 0.5557814
		-0.8276721 -0.07788403 0.5557814 -0.6615016 0.6009822 0.4485935 -0.9335665 -0.06193683 0.3530118
		-0.6615016 0.6009822 0.4485935 -0.8276721 -0.07788403 0.5557814 -0.5862069 0.5166876 0.6240156
		-0.5015016 0.5665134 0.6538798 -0.5862069 0.5166876 0.6240156 -0.8276721 -0.07788403 0.5557814
		-0.5862069 0.5166876 0.6240156 -0.3451781 0.8132304 0.4685172 -0.6615016 0.6009822 0.4485935
		-0.3451781 0.8132304 0.4685172 -0.5862069 0.5166876 0.6240156 -0.3357638 0.6695523 0.6625423
		-0.3357638 0.6695523 0.6625423 -0.5862069 0.5166876 0.6240156 -0.3566507 0.5416061 0.7612247
		-0.5862069 0.5166876 0.6240156 -0.5015016 0.5665134 0.6538798 -0.3566507 0.5416061 0.7612247
		-0.3566507 0.5416061 0.7612247 -0.5015016 0.5665134 0.6538798 -0.03110238 0.6909143 0.7222673
		-0.3357638 0.6695523 0.6625423 -0.3566507 0.5416061 0.7612247 -0.0281547 0.616693 0.7867002
		-0.3566507 0.5416061 0.7612247 -0.03110238 0.6909143 0.7222673 -0.0281547 0.616693 0.7867002
		-0.3357638 0.6695523 0.6625423 -0.0281547 0.616693 0.7867002 0.002440402 0.7879189 0.6157742
		0.002440402 0.7879189 0.6157742 -0.3451781 0.8132304 0.4685172 -0.3357638 0.6695523 0.6625423
		-0.3451781 0.8132304 0.4685172 0.002440402 0.7879189 0.6157742 0.03101595 0.9033699 0.4277393
		-0.9335665 -0.06193683 0.3530118 -0.6867133 -0.7013947 0.190972 -0.6684949 -0.716332 0.1999575
		0.007899494 0.9494265 0.3138896 -0.3451781 0.8132304 0.4685172 0.03101595 0.9033699 0.4277393
		-0.3451781 0.8132304 0.4685172 0.007899494 0.9494265 0.3138896 -0.3587243 0.8923981 0.2737564
		-0.6962544 0.6365772 0.3316615 -0.3451781 0.8132304 0.4685172 -0.3587243 0.8923981 0.2737564
		-0.6962544 0.6365772 0.3316615 -0.6615016 0.6009822 0.4485935 -0.3451781 0.8132304 0.4685172
		-0.6615016 0.6009822 0.4485935 -0.6962544 0.6365772 0.3316615 -0.9335665 -0.06193683 0.3530118
		0.5367637 -0.6000166 -0.5931819 0 -0.07727016 -0.9970101 0 -0.2151798 -0.9765744
		0.5367637 -0.6000166 -0.5931819 0 -0.2151798 -0.9765744 0.007000844 -0.8114617 -0.5843636
		0 -0.07727016 -0.9970101 0.5367637 -0.6000166 -0.5931819 0.5152852 0.02470078 -0.8566628
		0.5367637 -0.6000166 -0.5931819 0.007000844 -0.8114617 -0.5843636 0.2651766 -0.8449136 -0.4645454
		0.5367637 -0.6000166 -0.5931819 0.2651766 -0.8449136 -0.4645454 0.001501061 -0.9987063 -0.05082686
		-0.3494376 -0.9368366 -0.01518378 0.001501061 -0.9987063 -0.05082686 0.2651766 -0.8449136 -0.4645454
		0.001501061 -0.9987063 -0.05082686 -0.3494376 -0.9368366 -0.01518378 -0.7717764 -0.6309236 0.07935189
		-0.8987345 -0.4375606 0.02858493 0.01285666 -0.9261045 0.3770477 -0.09093818 -0.9926006 0.08046322
		0.01285666 -0.9261045 0.3770477 -0.8987345 -0.4375606 0.02858493 -0.9154597 -0.3436589 0.2093615
		0.9060909 -0.3989374 0.1408841 -0.09093818 -0.9926006 0.08046322 0.01285666 -0.9261045 0.3770477
		-0.09093818 -0.9926006 0.08046322 0.9060909 -0.3989374 0.1408841 0.822208 -0.5660193 0.05996898
		0.8619754 0.3749093 0.3412349 0.822208 -0.5660193 0.05996898 0.9060909 -0.3989374 0.1408841
		0.822208 -0.5660193 0.05996898 0.8619754 0.3749093 0.3412349 0.934488 0.3093642 0.1761421
		-0.004661226 0.9048015 0.4258083 0.934488 0.3093642 0.1761421 0.8619754 0.3749093 0.3412349
		0.934488 0.3093642 0.1761421 -0.004661226 0.9048015 0.4258083 0.09237637 0.9707355 0.2216734
		-0.8987345 -0.4375606 0.02858493 -0.8520852 0.4702805 0.2297539 -0.9154597 -0.3436589 0.2093615
		-0.8520852 0.4702805 0.2297539 -0.8987345 -0.4375606 0.02858493 -0.9215537 0.3881223 0.01000251
		-0.9215537 0.3881223 0.01000251 -0.004661226 0.9048015 0.4258083 -0.8520852 0.4702805 0.2297539
		-0.004661226 0.9048015 0.4258083 -0.9215537 0.3881223 0.01000251 0.09237637 0.9707355 0.2216734
		-0.829537 0.5411016 0.1381215 -0.9154597 -0.3436589 0.2093615 -0.8520852 0.4702805 0.2297539
		0.03579022 0.9769853 0.2102829 -0.8520852 0.4702805 0.2297539 -0.004661226 0.9048015 0.4258083
		0.03579022 0.9769853 0.2102829 -0.829537 0.5411016 0.1381215 -0.8520852 0.4702805 0.2297539
		0.01285666 -0.9261045 0.3770477 0.903232 -0.3763369 0.2062587 0.9060909 -0.3989374 0.1408841
		0.903232 -0.3763369 0.2062587 0.01285666 -0.9261045 0.3770477 -0.006917387 -0.8152922 0.5790084
		0.9062226 0.4084801 0.1091089 0.8619754 0.3749093 0.3412349 0.9060909 -0.3989374 0.1408841
		0.9889168 -0.1414937 -0.04497834 0.9060909 -0.3989374 0.1408841 0.903232 -0.3763369 0.2062587
		0.9062226 0.4084801 0.1091089 0.9060909 -0.3989374 0.1408841 0.9889168 -0.1414937 -0.04497834
		0.8989605 -0.3111963 0.3082641 0.903232 -0.3763369 0.2062587 -0.006917387 -0.8152922 0.5790084
		0.7741312 0.4126627 -0.4800317 0.903232 -0.3763369 0.2062587 0.8989605 -0.3111963 0.3082641
		0.7741312 0.4126627 -0.4800317 0.9889168 -0.1414937 -0.04497834 0.903232 -0.3763369 0.2062587
		0.8989605 -0.3111963 0.3082641 0.5951116 0.4073519 -0.6927529 0.7741312 0.4126627 -0.4800317
		0.8989605 -0.3111963 0.3082641 0.7882984 -0.07858271 -0.6102543 0.5951116 0.4073519 -0.6927529
		0.7882984 -0.07858271 -0.6102543 0.8989605 -0.3111963 0.3082641 0.7062027 -0.3906184 -0.5905041
		-0.02696051 -0.6544464 0.7556276 0.8989605 -0.3111963 0.3082641 -0.006917387 -0.8152922 0.5790084
		-0.02696051 -0.6544464 0.7556276 0.822324 -0.448581 0.3500834 0.8989605 -0.3111963 0.3082641
		0.822324 -0.448581 0.3500834 0.7062027 -0.3906184 -0.5905041 0.8989605 -0.3111963 0.3082641
		0.822324 -0.448581 0.3500834 -0.02696051 -0.6544464 0.7556276 0.001897408 -0.7767227 0.6298398
		0.7062027 -0.3906184 -0.5905041 0.822324 -0.448581 0.3500834 0.001897408 -0.7767227 0.6298398
		0.7062027 -0.3906184 -0.5905041 0.001897408 -0.7767227 0.6298398 -0.05564927 -0.9270324 -0.3708293
		-0.6647748 -0.4138508 -0.6219341 -0.05564927 -0.9270324 -0.3708293 0.001897408 -0.7767227 0.6298398
		-0.7852858 -0.4303261 0.4451355 -0.6647748 -0.4138508 -0.6219341 0.001897408 -0.7767227 0.6298398
		-0.02696051 -0.6544464 0.7556276 -0.7852858 -0.4303261 0.4451355 0.001897408 -0.7767227 0.6298398
		-0.7852858 -0.4303261 0.4451355 -0.8184469 -0.1075134 -0.5644338 -0.6647748 -0.4138508 -0.6219341
		-0.7852858 -0.4303261 0.4451355 -0.9773124 0.03844192 0.2082847 -0.8184469 -0.1075134 -0.5644338
		-0.9773124 0.03844192 0.2082847 -0.6606943 0.4052878 -0.6318424 -0.8184469 -0.1075134 -0.5644338
		-0.9773124 0.03844192 0.2082847 -0.7178486 0.5790816 -0.3864683 -0.6606943 0.4052878 -0.6318424
		-0.9773124 0.03844192 0.2082847 -0.8987384 -0.165214 0.4061694 -0.7178486 0.5790816 -0.3864683
		-0.7852858 -0.4303261 0.4451355 -0.8987384 -0.165214 0.4061694 -0.9773124 0.03844192 0.2082847
		-0.7852858 -0.4303261 0.4451355 -0.02696051 -0.6544464 0.7556276 -0.8987384 -0.165214 0.4061694
		-0.8987384 -0.165214 0.4061694 -0.9156039 -0.2795984 0.2889539 -0.7178486 0.5790816 -0.3864683
		-0.8987384 -0.165214 0.4061694 -0.006917387 -0.8152922 0.5790084 -0.9156039 -0.2795984 0.2889539
		-0.8987384 -0.165214 0.4061694 -0.02696051 -0.6544464 0.7556276 -0.006917387 -0.8152922 0.5790084
		0.01285666 -0.9261045 0.3770477 -0.9156039 -0.2795984 0.2889539 -0.006917387 -0.8152922 0.5790084
		-0.9156039 -0.2795984 0.2889539 0.01285666 -0.9261045 0.3770477 -0.9154597 -0.3436589 0.2093615
		-0.9154597 -0.3436589 0.2093615 -0.9976975 -0.005319581 0.06761088 -0.9156039 -0.2795984 0.2889539
		-0.9976975 -0.005319581 0.06761088 -0.7178486 0.5790816 -0.3864683 -0.9156039 -0.2795984 0.2889539
		-0.8152691 0.5418981 -0.2041638 -0.7178486 0.5790816 -0.3864683 -0.9976975 -0.005319581 0.06761088
		-0.6053571 0.322183 -0.727833 -0.7178486 0.5790816 -0.3864683 -0.8152691 0.5418981 -0.2041638
		-0.6053571 0.322183 -0.727833 -0.8152691 0.5418981 -0.2041638 -0.6840127 0.6173292 -0.3886275
		-0.6840127 0.6173292 -0.3886275 -0.8152691 0.5418981 -0.2041638 0.01136174 0.9648882 -0.2624149
		-0.6840127 0.6173292 -0.3886275 0.01136174 0.9648882 -0.2624149 0.03107632 0.9116205 -0.4098565
		-0.8152691 0.5418981 -0.2041638 -0.9976975 -0.005319581 0.06761088 -0.829537 0.5411016 0.1381215
		0.01136174 0.9648882 -0.2624149 -0.8152691 0.5418981 -0.2041638 -0.829537 0.5411016 0.1381215
		-0.829537 0.5411016 0.1381215 -0.9976975 -0.005319581 0.06761088 -0.9154597 -0.3436589 0.2093615
		0.01136174 0.9648882 -0.2624149 -0.829537 0.5411016 0.1381215 0.03579022 0.9769853 0.2102829
		0.7882984 -0.07858271 -0.6102543 -0.6647748 -0.4138508 -0.6219341 -0.8184469 -0.1075134 -0.5644338
		0.7882984 -0.07858271 -0.6102543 -0.05564927 -0.9270324 -0.3708293 -0.6647748 -0.4138508 -0.6219341
		-0.05564927 -0.9270324 -0.3708293 0.7882984 -0.07858271 -0.6102543 0.7062027 -0.3906184 -0.5905041
		0.5951116 0.4073519 -0.6927529 0.7882984 -0.07858271 -0.6102543 -0.8184469 -0.1075134 -0.5644338
		0.5951116 0.4073519 -0.6927529 -0.8184469 -0.1075134 -0.5644338 -0.6606943 0.4052878 -0.6318424
		0.7741312 0.4126627 -0.4800317 0.5951116 0.4073519 -0.6927529 -0.6606943 0.4052878 -0.6318424
		-0.6606943 0.4052878 -0.6318424 -0.7178486 0.5790816 -0.3864683 0.7741312 0.4126627 -0.4800317
		0.6251446 0.1460642 -0.7667201 0.7741312 0.4126627 -0.4800317 -0.7178486 0.5790816 -0.3864683
		0.6251446 0.1460642 -0.7667201 -0.7178486 0.5790816 -0.3864683 -0.6053571 0.322183 -0.727833
		0.5918265 -0.7992441 -0.1046436 0.6251446 0.1460642 -0.7667201 -0.6053571 0.322183 -0.727833
		0.5918265 -0.7992441 -0.1046436 -0.6053571 0.322183 -0.727833 -0.7355655 -0.6622429 -0.1427503
		0.4270956 -0.6633065 -0.6145029 0.5918265 -0.7992441 -0.1046436 -0.7355655 -0.6622429 -0.1427503
		0.4270956 -0.6633065 -0.6145029 -0.7355655 -0.6622429 -0.1427503 -0.5698779 -0.5165461 -0.6390769
		-0.6682646 0.3719112 -0.644286 0.4270956 -0.6633065 -0.6145029 -0.5698779 -0.5165461 -0.6390769
		0.4270956 -0.6633065 -0.6145029 -0.6682646 0.3719112 -0.644286 0.7729692 0.1895305 -0.6054722
		-0.6682646 0.3719112 -0.644286 0.0682988 0.7605988 -0.6456196 0.7729692 0.1895305 -0.6054722
		0.8619754 0.3749093 0.3412349 0.03579022 0.9769853 0.2102829 -0.004661226 0.9048015 0.4258083
		0.8619754 0.3749093 0.3412349 0.9062226 0.4084801 0.1091089 0.03579022 0.9769853 0.2102829
		0.9062226 0.4084801 0.1091089 0.01136174 0.9648882 -0.2624149 0.03579022 0.9769853 0.2102829
		0.9062226 0.4084801 0.1091089 0.8702496 0.4047444 -0.280798 0.01136174 0.9648882 -0.2624149
		0.03107632 0.9116205 -0.4098565 0.01136174 0.9648882 -0.2624149 0.8702496 0.4047444 -0.280798
		0.03107632 0.9116205 -0.4098565 0.8702496 0.4047444 -0.280798 0.7374482 0.5091153 -0.4438151
		0.7374482 0.5091153 -0.4438151 0.8702496 0.4047444 -0.280798 0.7741312 0.4126627 -0.4800317
		0.7374482 0.5091153 -0.4438151 0.7741312 0.4126627 -0.4800317 0.6251446 0.1460642 -0.7667201
		0.8702496 0.4047444 -0.280798 0.9062226 0.4084801 0.1091089 0.9889168 -0.1414937 -0.04497834
		0.7741312 0.4126627 -0.4800317 0.8702496 0.4047444 -0.280798 0.9889168 -0.1414937 -0.04497834
		-0.08130358 0.9949397 -0.05903213 0.883564 0.4647362 -0.05774819 -0.07466037 0.993743 -0.08307016
		-0.08130358 0.9949397 -0.05903213 0.8898052 0.4444849 -0.1033442 0.883564 0.4647362 -0.05774819
		-0.08130358 0.9949397 -0.05903213 -0.07466037 0.993743 -0.08307016 -0.9108413 0.3880761 -0.1405887
		-0.08130358 0.9949397 -0.05903213 -0.9108413 0.3880761 -0.1405887 -0.9381561 0.3208624 -0.13004
		-0.7750912 -0.5941556 -0.2149713 -0.9381561 0.3208624 -0.13004 -0.9108413 0.3880761 -0.1405887
		-0.7750912 -0.5941556 -0.2149713 -0.7610458 -0.6116241 -0.2161604 -0.9381561 0.3208624 -0.13004
		0.02347807 -0.9746364 -0.222559 -0.7610458 -0.6116241 -0.2161604 -0.7750912 -0.5941556 -0.2149713
		0.02347807 -0.9746364 -0.222559 -0.7750912 -0.5941556 -0.2149713 0.004931833 -0.9799036 -0.1994105
		0.7931167 -0.6004792 -0.1019338 0.02347807 -0.9746364 -0.222559 0.004931833 -0.9799036 -0.1994105
		0.7931167 -0.6004792 -0.1019338 0.7925196 -0.578824 -0.1920297 0.02347807 -0.9746364 -0.222559
		-0.01810557 -0.9599758 -0.2794968 -0.7702187 -0.6377744 0.002612471 -0.03535667 -0.9978204 -0.05571805
		-0.01810557 -0.9599758 -0.2794968 -0.8136809 -0.5558117 -0.1702846 -0.7702187 -0.6377744 0.002612471
		-0.01810557 -0.9599758 -0.2794968 -0.03535667 -0.9978204 -0.05571805 0.7787621 -0.6265162 -0.03173525
		-0.01810557 -0.9599758 -0.2794968 0.7787621 -0.6265162 -0.03173525 0.8451735 -0.4724424 -0.2499599
		0.9232049 0.377635 0.07130594 0.8451735 -0.4724424 -0.2499599 0.7787621 -0.6265162 -0.03173525
		0.9232049 0.377635 0.07130594 0.9089713 0.416786 0.007786798 0.8451735 -0.4724424 -0.2499599
		-0.08876114 0.9914521 -0.09562457 -0.9637542 0.2304515 -0.1344248 -0.7291067 0.6843556 0.007797204
		-0.6682646 0.3719112 -0.644286 0.08029301 0.9916722 -0.1006935 0.0682988 0.7605988 -0.6456196
		-0.6682646 0.3719112 -0.644286 -0.8939671 0.4323054 -0.1180461 0.08029301 0.9916722 -0.1006935
		0.0682988 0.7605988 -0.6456196 0.08029301 0.9916722 -0.1006935 0.9721674 0.216854 -0.0886842
		0.0682988 0.7605988 -0.6456196 0.9721674 0.216854 -0.0886842 0.7729692 0.1895305 -0.6054722
		0.7729692 0.1895305 -0.6054722 0.9721674 0.216854 -0.0886842 0.5918265 -0.7992441 -0.1046436
		0.7729692 0.1895305 -0.6054722 0.5918265 -0.7992441 -0.1046436 0.4270956 -0.6633065 -0.6145029
		-0.5698779 -0.5165461 -0.6390769 -0.8939671 0.4323054 -0.1180461 -0.6682646 0.3719112 -0.644286
		-0.5698779 -0.5165461 -0.6390769 -0.7355655 -0.6622429 -0.1427503 -0.8939671 0.4323054 -0.1180461
		-0.8939671 0.4323054 -0.1180461 0.03107632 0.9116205 -0.4098565 0.08029301 0.9916722 -0.1006935
		-0.8939671 0.4323054 -0.1180461 -0.6840127 0.6173292 -0.3886275 0.03107632 0.9116205 -0.4098565
		-0.7355655 -0.6622429 -0.1427503 -0.6840127 0.6173292 -0.3886275 -0.8939671 0.4323054 -0.1180461
		0.08029301 0.9916722 -0.1006935 0.7374482 0.5091153 -0.4438151 0.9721674 0.216854 -0.0886842
		0.08029301 0.9916722 -0.1006935 0.03107632 0.9116205 -0.4098565 0.7374482 0.5091153 -0.4438151
		0.9721674 0.216854 -0.0886842 0.6251446 0.1460642 -0.7667201 0.5918265 -0.7992441 -0.1046436
		0.9721674 0.216854 -0.0886842 0.7374482 0.5091153 -0.4438151 0.6251446 0.1460642 -0.7667201
		-0.7355655 -0.6622429 -0.1427503 -0.6053571 0.322183 -0.727833 -0.6840127 0.6173292 -0.3886275
		0.005307961 -0.9912688 0.1317496 -0.0427785 -0.9680751 -0.2469827 0.2089168 -0.9403727 -0.2684268
		0.2089168 -0.9403727 -0.2684268 0.04204071 -0.8928652 -0.4483572 0.005307961 -0.9912688 0.1317496
		0.04204071 -0.8928652 -0.4483572 -0.3141643 -0.9353693 0.1624347 0.005307961 -0.9912688 0.1317496
		-0.3141643 -0.9353693 0.1624347 0.001870094 -0.9985127 0.05448773 0.005307961 -0.9912688 0.1317496
		-0.3141643 -0.9353693 0.1624347 0.04204071 -0.8928652 -0.4483572 -0.5227838 -0.6963759 -0.4916885
		0.01882488 -0.4176295 -0.9084224 -0.5227838 -0.6963759 -0.4916885 0.04204071 -0.8928652 -0.4483572
		-0.5227838 -0.6963759 -0.4916885 0.01882488 -0.4176295 -0.9084224 -0.311864 -0.520955 -0.7945732
		-0.6977112 -0.2009291 -0.6876239 -0.5227838 -0.6963759 -0.4916885 -0.311864 -0.520955 -0.7945732
		-0.5227838 -0.6963759 -0.4916885 -0.6977112 -0.2009291 -0.6876239 -0.8462873 -0.1807717 -0.5011182
		-0.6977112 -0.2009291 -0.6876239 -0.8200687 0.1724908 -0.5456502 -0.8462873 -0.1807717 -0.5011182
		0.04204071 -0.8928652 -0.4483572 0.362539 -0.5422829 -0.7579544 0.01882488 -0.4176295 -0.9084224
		0.2089168 -0.9403727 -0.2684268 0.362539 -0.5422829 -0.7579544 0.04204071 -0.8928652 -0.4483572
		-0.8462873 -0.1807717 -0.5011182 -0.8200687 0.1724908 -0.5456502 -0.9118553 0.1520514 -0.3813138
		-0.8200687 0.1724908 -0.5456502 -0.9295611 0.3373415 -0.1487169 -0.9118553 0.1520514 -0.3813138
		-0.9295611 0.3373415 -0.1487169 -0.8200687 0.1724908 -0.5456502 -0.9633173 0.06120858 -0.261292
		-0.9633173 0.06120858 -0.261292 -0.8200687 0.1724908 -0.5456502 -0.6977112 -0.2009291 -0.6876239
		-0.968628 0.2280822 -0.09868295 -0.9118553 0.1520514 -0.3813138 -0.9295611 0.3373415 -0.1487169
		-0.9118553 0.1520514 -0.3813138 -0.968628 0.2280822 -0.09868295 -0.8860701 0.02720327 -0.4627523
		-0.8860701 0.02720327 -0.4627523 -0.6523105 0.5588067 -0.5120801 -0.9118553 0.1520514 -0.3813138
		-0.6523105 0.5588067 -0.5120801 -0.8860701 0.02720327 -0.4627523 -0.4240473 0.6309075 -0.6497226
		-0.6523105 0.5588067 -0.5120801 -0.4240473 0.6309075 -0.6497226 -0.08357886 0.8287116 -0.5534
		-0.4240473 0.6309075 -0.6497226 -0.02285966 0.9961818 -0.08425695 -0.08357886 0.8287116 -0.5534
		-1.878679E-07 0.9942492 -0.1070909 -0.08357886 0.8287116 -0.5534 -0.02285966 0.9961818 -0.08425695
		-0.08357886 0.8287116 -0.5534 -1.878679E-07 0.9942492 -0.1070909 -2.522628E-07 0.8533867 -0.5212784
		-2.522628E-07 0.8533867 -0.5212784 -0.6523105 0.5588067 -0.5120801 -0.08357886 0.8287116 -0.5534
		-0.02285966 0.9961818 -0.08425695 -0.4240473 0.6309075 -0.6497226 -0.156758 0.9861196 -0.05472594
		-0.2509209 0.8378153 0.4848753 -0.02285966 0.9961818 -0.08425695 -0.156758 0.9861196 -0.05472594
		-0.02285966 0.9961818 -0.08425695 -0.2509209 0.8378153 0.4848753 -0.25958 0.8180755 0.5131965
		-0.25958 0.8180755 0.5131965 -1.878679E-07 0.9942492 -0.1070909 -0.02285966 0.9961818 -0.08425695
		-1.878679E-07 0.9942492 -0.1070909 -0.25958 0.8180755 0.5131965 -1.039167E-07 0.9852509 0.1711152
		-0.25958 0.8180755 0.5131965 0 0.9657953 0.2593056 -1.039167E-07 0.9852509 0.1711152
		0 0.9657953 0.2593056 -0.25958 0.8180755 0.5131965 -0.6604035 0.5670092 0.4923085
		-0.3787093 0.03231544 0.9249513 -0.25958 0.8180755 0.5131965 -0.2509209 0.8378153 0.4848753
		-0.2509209 0.8378153 0.4848753 -0.5447971 -0.02971749 0.8380411 -0.3787093 0.03231544 0.9249513
		-0.25958 0.8180755 0.5131965 -0.3787093 0.03231544 0.9249513 -0.4140611 -0.06875321 0.9076489
		-0.008386717 0.8453006 -0.5342253 -0.156758 0.9861196 -0.05472594 -0.4240473 0.6309075 -0.6497226
		-0.0491513 -0.08055419 -0.9955376 -0.008386717 0.8453006 -0.5342253 -0.4240473 0.6309075 -0.6497226
		-0.8860701 0.02720327 -0.4627523 -0.0491513 -0.08055419 -0.9955376 -0.4240473 0.6309075 -0.6497226
		-0.8860701 0.02720327 -0.4627523 -0.6496422 -0.6815617 -0.3368067 -0.0491513 -0.08055419 -0.9955376
		-0.8860701 0.02720327 -0.4627523 -0.9328759 -0.01894982 0.359699 -0.6496422 -0.6815617 -0.3368067
		-0.9328759 -0.01894982 0.359699 -0.6534383 -0.6545311 0.3802728 -0.6496422 -0.6815617 -0.3368067
		-0.9328759 -0.01894982 0.359699 -0.6255883 -0.3571106 0.6936219 -0.6534383 -0.6545311 0.3802728
		-0.2299829 -0.6856071 0.6906887 -0.6534383 -0.6545311 0.3802728 -0.6255883 -0.3571106 0.6936219
		-0.6255883 -0.3571106 0.6936219 -0.322353 -0.6032165 0.7295329 -0.2299829 -0.6856071 0.6906887
		-0.322353 -0.6032165 0.7295329 -0.3787093 0.03231544 0.9249513 -0.2299829 -0.6856071 0.6906887
		-0.3787093 0.03231544 0.9249513 -0.322353 -0.6032165 0.7295329 -0.4140611 -0.06875321 0.9076489
		-0.5893602 -0.7077287 0.3895828 -0.4140611 -0.06875321 0.9076489 -0.322353 -0.6032165 0.7295329
		-0.3787093 0.03231544 0.9249513 -0.3051205 -0.7256076 0.6167617 -0.2299829 -0.6856071 0.6906887
		-0.6534383 -0.6545311 0.3802728 -0.2299829 -0.6856071 0.6906887 -0.3051205 -0.7256076 0.6167617
		-0.3051205 -0.7256076 0.6167617 -0.3787093 0.03231544 0.9249513 -0.5447971 -0.02971749 0.8380411
		-0.322353 -0.6032165 0.7295329 -0.6255883 -0.3571106 0.6936219 -0.4821514 -0.3071394 0.8204848
		0.001921783 -0.515011 0.8571814 -0.322353 -0.6032165 0.7295329 -0.4821514 -0.3071394 0.8204848
		-0.322353 -0.6032165 0.7295329 0.001921783 -0.515011 0.8571814 2.097212E-07 -0.7811249 0.6243748
		2.097212E-07 -0.7811249 0.6243748 -0.5893602 -0.7077287 0.3895828 -0.322353 -0.6032165 0.7295329
		-0.5893602 -0.7077287 0.3895828 2.097212E-07 -0.7811249 0.6243748 2.388042E-07 -0.9766296 0.2149294
		-0.002385163 -0.9987063 -0.05079297 -0.5893602 -0.7077287 0.3895828 2.388042E-07 -0.9766296 0.2149294
		-0.5893602 -0.7077287 0.3895828 -0.002385163 -0.9987063 -0.05079297 -0.7457818 -0.6661428 -0.007955736
		-0.9979074 0.05183126 0.03865797 -0.5893602 -0.7077287 0.3895828 -0.7457818 -0.6661428 -0.007955736
		-0.7457818 -0.6661428 -0.007955736 -0.9438742 0.3032964 -0.1308166 -0.9979074 0.05183126 0.03865797
		-0.9438742 0.3032964 -0.1308166 -0.7457818 -0.6661428 -0.007955736 -0.9451423 -0.2993543 -0.1307403
		-0.5893602 -0.7077287 0.3895828 -0.9979074 0.05183126 0.03865797 -0.9138042 -0.06891404 0.4002659
		-0.5893602 -0.7077287 0.3895828 -0.9138042 -0.06891404 0.4002659 -0.6118666 -0.205144 0.7638949
		-0.6118666 -0.205144 0.7638949 -0.4140611 -0.06875321 0.9076489 -0.5893602 -0.7077287 0.3895828
		0.001921783 -0.515011 0.8571814 -0.4821514 -0.3071394 0.8204848 0.1263947 -0.4655652 0.8759414
		0.006548334 -0.6715156 0.7409614 0.001921783 -0.515011 0.8571814 0.1263947 -0.4655652 0.8759414
		0.1263947 -0.4655652 0.8759414 0.5537316 -0.5230971 0.6478817 0.006548334 -0.6715156 0.7409614
		0.515898 -0.4905927 0.7022592 0.5537316 -0.5230971 0.6478817 0.1263947 -0.4655652 0.8759414
		0.1263947 -0.4655652 0.8759414 -0.4821514 -0.3071394 0.8204848 -0.3186952 -0.3503364 0.880737
		-0.6255883 -0.3571106 0.6936219 -0.3186952 -0.3503364 0.880737 -0.4821514 -0.3071394 0.8204848
		-0.3186952 -0.3503364 0.880737 -0.6255883 -0.3571106 0.6936219 -0.6093095 -0.1374936 0.7809209
		0.1263947 -0.4655652 0.8759414 -0.3186952 -0.3503364 0.880737 0.1797845 -0.5467814 0.8177454
		0.515898 -0.4905927 0.7022592 0.1263947 -0.4655652 0.8759414 0.1797845 -0.5467814 0.8177454
		-0.6093095 -0.1374936 0.7809209 -0.7285921 -0.2003064 0.6550046 -0.3186952 -0.3503364 0.880737
		-0.6255883 -0.3571106 0.6936219 -0.9328759 -0.01894982 0.359699 -0.6093095 -0.1374936 0.7809209
		-0.9328759 -0.01894982 0.359699 -0.7285921 -0.2003064 0.6550046 -0.6093095 -0.1374936 0.7809209
		-0.9816983 0.06107327 0.180384 -0.7285921 -0.2003064 0.6550046 -0.9328759 -0.01894982 0.359699
		-0.9030663 -0.1689038 0.394896 -0.7285921 -0.2003064 0.6550046 -0.9816983 0.06107327 0.180384
		-0.9328759 -0.01894982 0.359699 -0.968628 0.2280822 -0.09868295 -0.9816983 0.06107327 0.180384
		-0.968628 0.2280822 -0.09868295 -0.9328759 -0.01894982 0.359699 -0.8860701 0.02720327 -0.4627523
		-0.969028 -0.1974622 -0.1483015 -0.9030663 -0.1689038 0.394896 -0.9816983 0.06107327 0.180384
		-0.969028 -0.1974622 -0.1483015 -0.8999538 -0.3746644 0.2229569 -0.9030663 -0.1689038 0.394896
		-0.9816983 0.06107327 0.180384 -0.9633173 0.06120858 -0.261292 -0.969028 -0.1974622 -0.1483015
		-0.968628 0.2280822 -0.09868295 -0.9295611 0.3373415 -0.1487169 -0.9816983 0.06107327 0.180384
		-0.9633173 0.06120858 -0.261292 -0.9816983 0.06107327 0.180384 -0.9295611 0.3373415 -0.1487169
		-0.969028 -0.1974622 -0.1483015 -0.9633173 0.06120858 -0.261292 -0.6977112 -0.2009291 -0.6876239
		0.1797845 -0.5467814 0.8177454 -0.3186952 -0.3503364 0.880737 -0.3208944 -0.4150694 0.8513191
		-0.3186952 -0.3503364 0.880737 -0.7285921 -0.2003064 0.6550046 -0.3208944 -0.4150694 0.8513191
		0.1797845 -0.5467814 0.8177454 -0.3208944 -0.4150694 0.8513191 -0.3904001 -0.6374466 0.6642662
		-0.3208944 -0.4150694 0.8513191 -0.7285921 -0.2003064 0.6550046 -0.6483387 -0.489455 0.5831729
		-0.3208944 -0.4150694 0.8513191 -0.6483387 -0.489455 0.5831729 -0.3904001 -0.6374466 0.6642662
		-0.9030663 -0.1689038 0.394896 -0.8999538 -0.3746644 0.2229569 -0.6483387 -0.489455 0.5831729
		-0.6483387 -0.489455 0.5831729 -0.7285921 -0.2003064 0.6550046 -0.9030663 -0.1689038 0.394896
		0.1797845 -0.5467814 0.8177454 -0.3904001 -0.6374466 0.6642662 0.01124859 -0.7550156 0.6556103
		-0.06735364 -0.9353194 0.347334 0.01124859 -0.7550156 0.6556103 -0.3904001 -0.6374466 0.6642662
		-0.06735364 -0.9353194 0.347334 -0.3904001 -0.6374466 0.6642662 -0.4391117 -0.8642415 0.2454944
		-0.09668797 -0.992609 -0.07334025 -0.06735364 -0.9353194 0.347334 -0.4391117 -0.8642415 0.2454944
		-0.09668797 -0.992609 -0.07334025 -0.4391117 -0.8642415 0.2454944 -0.3980332 -0.9091767 -0.1223403
		-0.4391117 -0.8642415 0.2454944 -0.7527121 -0.6530855 0.08308966 -0.3980332 -0.9091767 -0.1223403
		-0.6483387 -0.489455 0.5831729 -0.7527121 -0.6530855 0.08308966 -0.3904001 -0.6374466 0.6642662
		-0.8999538 -0.3746644 0.2229569 -0.969028 -0.1974622 -0.1483015 -0.7527121 -0.6530855 0.08308966
		-0.6483387 -0.489455 0.5831729 -0.8999538 -0.3746644 0.2229569 -0.7527121 -0.6530855 0.08308966
		-0.3904001 -0.6374466 0.6642662 -0.7527121 -0.6530855 0.08308966 -0.4391117 -0.8642415 0.2454944
		-0.1351656 -0.8493472 -0.510235 -0.09668797 -0.992609 -0.07334025 -0.3980332 -0.9091767 -0.1223403
		0.4211605 -0.9066412 0.02501168 -0.06735364 -0.9353194 0.347334 -0.09668797 -0.992609 -0.07334025
		0.3884871 -0.7691533 0.5074259 -0.06735364 -0.9353194 0.347334 0.4211605 -0.9066412 0.02501168
		0.01124859 -0.7550156 0.6556103 -0.06735364 -0.9353194 0.347334 0.3884871 -0.7691533 0.5074259
		0.1797845 -0.5467814 0.8177454 0.01124859 -0.7550156 0.6556103 0.3884871 -0.7691533 0.5074259
		-0.3977155 -0.7741177 -0.4925081 -0.1351656 -0.8493472 -0.510235 -0.3980332 -0.9091767 -0.1223403
		-0.311864 -0.520955 -0.7945732 -0.1351656 -0.8493472 -0.510235 -0.3977155 -0.7741177 -0.4925081
		-0.1351656 -0.8493472 -0.510235 -0.311864 -0.520955 -0.7945732 0.0244968 -0.6804422 -0.7323921
		-0.3977155 -0.7741177 -0.4925081 -0.5838399 -0.5358356 -0.6099272 -0.311864 -0.520955 -0.7945732
		-0.1351656 -0.8493472 -0.510235 0.0244968 -0.6804422 -0.7323921 0.3328862 -0.8066574 -0.4883549
		0.4211605 -0.9066412 0.02501168 0.1113443 -0.9312365 -0.3469887 0.3328862 -0.8066574 -0.4883549
		0.4211605 -0.9066412 0.02501168 -0.09668797 -0.992609 -0.07334025 0.1113443 -0.9312365 -0.3469887
		0.1113443 -0.9312365 -0.3469887 -0.1351656 -0.8493472 -0.510235 0.3328862 -0.8066574 -0.4883549
		-0.09668797 -0.992609 -0.07334025 -0.1351656 -0.8493472 -0.510235 0.1113443 -0.9312365 -0.3469887
		0.0244968 -0.6804422 -0.7323921 0.362539 -0.5422829 -0.7579544 0.3328862 -0.8066574 -0.4883549
		0.01882488 -0.4176295 -0.9084224 0.0244968 -0.6804422 -0.7323921 -0.311864 -0.520955 -0.7945732
		0.362539 -0.5422829 -0.7579544 0.0244968 -0.6804422 -0.7323921 0.01882488 -0.4176295 -0.9084224
		-0.3980332 -0.9091767 -0.1223403 -0.7527121 -0.6530855 0.08308966 -0.7198113 -0.6638136 -0.2030349
		-0.7198113 -0.6638136 -0.2030349 -0.5838399 -0.5358356 -0.6099272 -0.3977155 -0.7741177 -0.4925081
		-0.7198113 -0.6638136 -0.2030349 -0.3977155 -0.7741177 -0.4925081 -0.3980332 -0.9091767 -0.1223403
		-0.7198113 -0.6638136 -0.2030349 -0.7527121 -0.6530855 0.08308966 -0.969028 -0.1974622 -0.1483015
		-0.311864 -0.520955 -0.7945732 -0.5838399 -0.5358356 -0.6099272 -0.6977112 -0.2009291 -0.6876239
		-0.6977112 -0.2009291 -0.6876239 -0.5838399 -0.5358356 -0.6099272 -0.8221376 -0.3629085 -0.4386198
		-0.6977112 -0.2009291 -0.6876239 -0.8221376 -0.3629085 -0.4386198 -0.969028 -0.1974622 -0.1483015
		-0.8221376 -0.3629085 -0.4386198 -0.5838399 -0.5358356 -0.6099272 -0.7198113 -0.6638136 -0.2030349
		-0.969028 -0.1974622 -0.1483015 -0.8221376 -0.3629085 -0.4386198 -0.7198113 -0.6638136 -0.2030349
		0.6251652 -0.6336138 0.4557433 0.3884871 -0.7691533 0.5074259 0.4211605 -0.9066412 0.02501168
		0.6251652 -0.6336138 0.4557433 0.1797845 -0.5467814 0.8177454 0.3884871 -0.7691533 0.5074259
		0.6251652 -0.6336138 0.4557433 0.4211605 -0.9066412 0.02501168 0.6488412 -0.7591372 -0.05211297
		0.6488412 -0.7591372 -0.05211297 0.4211605 -0.9066412 0.02501168 0.3328862 -0.8066574 -0.4883549
		0.77203 -0.6244904 -0.1182426 0.6251652 -0.6336138 0.4557433 0.6488412 -0.7591372 -0.05211297
		0.6017005 -0.6037246 -0.5229466 0.77203 -0.6244904 -0.1182426 0.6488412 -0.7591372 -0.05211297
		0.6488412 -0.7591372 -0.05211297 0.3328862 -0.8066574 -0.4883549 0.6017005 -0.6037246 -0.5229466
		0.362539 -0.5422829 -0.7579544 0.6017005 -0.6037246 -0.5229466 0.3328862 -0.8066574 -0.4883549
		0.2089168 -0.9403727 -0.2684268 0.77203 -0.6244904 -0.1182426 0.6017005 -0.6037246 -0.5229466
		0.2089168 -0.9403727 -0.2684268 0.6017005 -0.6037246 -0.5229466 0.362539 -0.5422829 -0.7579544
		-0.0427785 -0.9680751 -0.2469827 0.77203 -0.6244904 -0.1182426 0.2089168 -0.9403727 -0.2684268
		0.77203 -0.6244904 -0.1182426 0.711618 -0.559508 0.4249125 0.6251652 -0.6336138 0.4557433
		0.711618 -0.559508 0.4249125 0.515898 -0.4905927 0.7022592 0.6251652 -0.6336138 0.4557433
		0.711618 -0.559508 0.4249125 0.77203 -0.6244904 -0.1182426 -0.02306416 -0.7871193 0.6163695
		0.515898 -0.4905927 0.7022592 0.711618 -0.559508 0.4249125 -0.02306416 -0.7871193 0.6163695
		0.77203 -0.6244904 -0.1182426 -0.0427785 -0.9680751 -0.2469827 -0.02306416 -0.7871193 0.6163695
		0.5537316 -0.5230971 0.6478817 0.515898 -0.4905927 0.7022592 -0.02306416 -0.7871193 0.6163695
		0.006548334 -0.6715156 0.7409614 0.5537316 -0.5230971 0.6478817 -0.02306416 -0.7871193 0.6163695
		0.515898 -0.4905927 0.7022592 0.1797845 -0.5467814 0.8177454 0.6251652 -0.6336138 0.4557433
		-0.7457818 -0.6661428 -0.007955736 0.01286754 -0.9839457 -0.1780037 -0.5316476 -0.841821 -0.09321148
		0.01286754 -0.9839457 -0.1780037 -0.7457818 -0.6661428 -0.007955736 -0.002385163 -0.9987063 -0.05079297
		-0.5316476 -0.841821 -0.09321148 -0.9451423 -0.2993543 -0.1307403 -0.7457818 -0.6661428 -0.007955736
		-0.9138042 -0.06891404 0.4002659 -0.6604035 0.5670092 0.4923085 -0.6118666 -0.205144 0.7638949
		-0.9138042 -0.06891404 0.4002659 -0.7437983 0.6513468 0.1500385 -0.6604035 0.5670092 0.4923085
		-0.7437983 0.6513468 0.1500385 -0.9138042 -0.06891404 0.4002659 -0.9979074 0.05183126 0.03865797
		-0.9979074 0.05183126 0.03865797 -0.5949652 0.8014419 -0.06088742 -0.7437983 0.6513468 0.1500385
		-0.5949652 0.8014419 -0.06088742 -0.9979074 0.05183126 0.03865797 -0.9438742 0.3032964 -0.1308166
		0.00433342 0.9988114 -0.04854912 -0.7437983 0.6513468 0.1500385 -0.5949652 0.8014419 -0.06088742
		-0.7437983 0.6513468 0.1500385 0.00433342 0.9988114 -0.04854912 -0.002285277 0.9973993 0.07203837
		-0.002285277 0.9973993 0.07203837 -0.6604035 0.5670092 0.4923085 -0.7437983 0.6513468 0.1500385
		-0.6604035 0.5670092 0.4923085 -0.002285277 0.9973993 0.07203837 0 0.9657953 0.2593056
		-0.6604035 0.5670092 0.4923085 -0.6525764 0.09440864 0.7518185 -0.6118666 -0.205144 0.7638949
		-0.6604035 0.5670092 0.4923085 -0.25958 0.8180755 0.5131965 -0.6525764 0.09440864 0.7518185
		-0.6523105 0.5588067 -0.5120801 -2.522628E-07 0.8533867 -0.5212784 0 0.8666649 -0.4988908
		-0.6534383 -0.6545311 0.3802728 -0.3051205 -0.7256076 0.6167617 -0.5081793 -0.7422646 0.4368034
		-0.6496422 -0.6815617 -0.3368067 -0.6534383 -0.6545311 0.3802728 -0.5081793 -0.7422646 0.4368034
		-0.3051205 -0.7256076 0.6167617 -0.7435998 -0.01819324 0.6683775 -0.5081793 -0.7422646 0.4368034
		-0.7435998 -0.01819324 0.6683775 -0.3051205 -0.7256076 0.6167617 -0.5447971 -0.02971749 0.8380411
		-0.2741776 0.8198977 0.5025877 -0.7435998 -0.01819324 0.6683775 -0.5447971 -0.02971749 0.8380411
		-0.7435998 -0.01819324 0.6683775 -0.2741776 0.8198977 0.5025877 -0.4283284 0.7779405 0.4597211
		-0.1617843 0.9865414 0.02370423 -0.4283284 0.7779405 0.4597211 -0.2741776 0.8198977 0.5025877
		-0.5081793 -0.7422646 0.4368034 0.3238708 -0.8530204 -0.4092236 -0.6496422 -0.6815617 -0.3368067
		0.3238708 -0.8530204 -0.4092236 -0.5081793 -0.7422646 0.4368034 -0.4481118 -0.8415973 0.3015127
		-0.7435998 -0.01819324 0.6683775 -0.4481118 -0.8415973 0.3015127 -0.5081793 -0.7422646 0.4368034
		-0.4481118 -0.8415973 0.3015127 0.2340914 -0.9085858 -0.3459376 0.3238708 -0.8530204 -0.4092236
		0.2340914 -0.9085858 -0.3459376 -0.4481118 -0.8415973 0.3015127 -0.4365193 -0.8502601 0.2941236
		-0.4365193 -0.8502601 0.2941236 0.3486699 -0.8957086 -0.2759266 0.2340914 -0.9085858 -0.3459376
		0.7402949 -0.1869216 -0.6457737 0.2340914 -0.9085858 -0.3459376 0.3486699 -0.8957086 -0.2759266
		0.2340914 -0.9085858 -0.3459376 0.7402949 -0.1869216 -0.6457737 0.6756934 -0.1597133 -0.7196736
		0.6756934 -0.1597133 -0.7196736 0.3238708 -0.8530204 -0.4092236 0.2340914 -0.9085858 -0.3459376
		0.3486699 -0.8957086 -0.2759266 -0.4365193 -0.8502601 0.2941236 -0.393342 -0.8557477 0.3361219
		-0.7470186 -0.06113367 0.6619863 -0.393342 -0.8557477 0.3361219 -0.4365193 -0.8502601 0.2941236
		-0.393342 -0.8557477 0.3361219 -0.7470186 -0.06113367 0.6619863 -0.6792998 -0.09313896 0.7279265
		-0.4475888 0.7973146 0.4049121 -0.6792998 -0.09313896 0.7279265 -0.7470186 -0.06113367 0.6619863
		-0.6792998 -0.09313896 0.7279265 -0.4475888 0.7973146 0.4049121 -0.4159819 0.8200028 0.3931343
		0.3834248 0.8523253 -0.3557066 -0.4159819 0.8200028 0.3931343 -0.4475888 0.7973146 0.4049121
		-0.4159819 0.8200028 0.3931343 0.3834248 0.8523253 -0.3557066 0.3952602 0.8273752 -0.3990234
		0.6756934 -0.1597133 -0.7196736 0.3952602 0.8273752 -0.3990234 0.3834248 0.8523253 -0.3557066
		0.3952602 0.8273752 -0.3990234 0.6756934 -0.1597133 -0.7196736 0.7402949 -0.1869216 -0.6457737
		0.3157521 0.8782809 -0.3590589 0.3952602 0.8273752 -0.3990234 0.7402949 -0.1869216 -0.6457737
		-0.4159819 0.8200028 0.3931343 0.3952602 0.8273752 -0.3990234 0.3157521 0.8782809 -0.3590589
		-0.4159819 0.8200028 0.3931343 -0.6096696 -0.1253205 0.7826863 -0.6792998 -0.09313896 0.7279265
		-0.6096696 -0.1253205 0.7826863 -0.4159819 0.8200028 0.3931343 -0.4321335 0.8286837 0.3557304
		0.3157521 0.8782809 -0.3590589 -0.4321335 0.8286837 0.3557304 -0.4159819 0.8200028 0.3931343
		0.3486699 -0.8957086 -0.2759266 0.3903819 -0.9040183 -0.1742207 0.7402949 -0.1869216 -0.6457737
		0.3157521 0.8782809 -0.3590589 0.7402949 -0.1869216 -0.6457737 0.7778684 -0.1582198 -0.6081835
		-0.6792998 -0.09313896 0.7279265 -0.2107868 -0.8951396 0.392803 -0.393342 -0.8557477 0.3361219
		-0.2107868 -0.8951396 0.392803 -0.6792998 -0.09313896 0.7279265 -0.6096696 -0.1253205 0.7826863
		-0.2107868 -0.8951396 0.392803 0.3486699 -0.8957086 -0.2759266 -0.393342 -0.8557477 0.3361219
		0.3486699 -0.8957086 -0.2759266 -0.2107868 -0.8951396 0.392803 0.3903819 -0.9040183 -0.1742207
		-0.2107868 -0.8951396 0.392803 0.3761272 -0.891529 -0.2523974 0.3903819 -0.9040183 -0.1742207
		0.3761272 -0.891529 -0.2523974 -0.2107868 -0.8951396 0.392803 -0.278507 -0.8792214 0.3865277
		-0.6096696 -0.1253205 0.7826863 -0.278507 -0.8792214 0.3865277 -0.2107868 -0.8951396 0.392803
		-0.278507 -0.8792214 0.3865277 0.4321216 -0.870594 -0.2352386 0.3761272 -0.891529 -0.2523974
		-0.278507 -0.8792214 0.3865277 -0.3718298 -0.8494394 0.3744266 0.4321216 -0.870594 -0.2352386
		-0.3718298 -0.8494394 0.3744266 0.6173921 -0.784849 0.053282 0.4321216 -0.870594 -0.2352386
		-0.3718298 -0.8494394 0.3744266 -0.3949466 -0.815366 0.423315 0.6173921 -0.784849 0.053282
		-0.7870512 -0.03396782 0.6159518 -0.3949466 -0.815366 0.423315 -0.3718298 -0.8494394 0.3744266
		-0.7870512 -0.03396782 0.6159518 -0.8130023 -0.09981565 0.5736409 -0.3949466 -0.815366 0.423315
		-0.5254526 0.8041781 0.2778437 -0.8130023 -0.09981565 0.5736409 -0.7870512 -0.03396782 0.6159518
		-0.5254526 0.8041781 0.2778437 -0.5624272 0.7430491 0.3627034 -0.8130023 -0.09981565 0.5736409
		0.2468661 0.9140764 -0.3217476 -0.5624272 0.7430491 0.3627034 -0.5254526 0.8041781 0.2778437
		0.2468661 0.9140764 -0.3217476 0.4210876 0.8690627 -0.2596444 -0.5624272 0.7430491 0.3627034
		0.7813056 0.0954141 -0.6168126 0.4210876 0.8690627 -0.2596444 0.2468661 0.9140764 -0.3217476
		0.7813056 0.0954141 -0.6168126 0.8808372 0.2503189 -0.4018287 0.4210876 0.8690627 -0.2596444
		0.4321216 -0.870594 -0.2352386 0.6173921 -0.784849 0.053282 0.8808372 0.2503189 -0.4018287
		0.4321216 -0.870594 -0.2352386 0.8808372 0.2503189 -0.4018287 0.7813056 0.0954141 -0.6168126
		0.7277234 -0.03861635 -0.6847828 0.7813056 0.0954141 -0.6168126 0.2468661 0.9140764 -0.3217476
		0.7277234 -0.03861635 -0.6847828 0.2468661 0.9140764 -0.3217476 0.2789894 0.8766077 -0.3920765
		0.2789894 0.8766077 -0.3920765 0.2468661 0.9140764 -0.3217476 -0.5254526 0.8041781 0.2778437
		0.7277234 -0.03861635 -0.6847828 0.4321216 -0.870594 -0.2352386 0.7813056 0.0954141 -0.6168126
		0.7277234 -0.03861635 -0.6847828 0.3761272 -0.891529 -0.2523974 0.4321216 -0.870594 -0.2352386
		-0.7236918 -0.0349834 0.689236 -0.5254526 0.8041781 0.2778437 -0.7870512 -0.03396782 0.6159518
		-0.7236918 -0.0349834 0.689236 -0.456403 0.8381632 0.298628 -0.5254526 0.8041781 0.2778437
		0.2789894 0.8766077 -0.3920765 -0.5254526 0.8041781 0.2778437 -0.456403 0.8381632 0.298628
		-0.7236918 -0.0349834 0.689236 -0.4321335 0.8286837 0.3557304 -0.456403 0.8381632 0.298628
		-0.4321335 0.8286837 0.3557304 -0.7236918 -0.0349834 0.689236 -0.6096696 -0.1253205 0.7826863
		-0.278507 -0.8792214 0.3865277 -0.6096696 -0.1253205 0.7826863 -0.7236918 -0.0349834 0.689236
		-0.7236918 -0.0349834 0.689236 -0.3718298 -0.8494394 0.3744266 -0.278507 -0.8792214 0.3865277
		-0.7236918 -0.0349834 0.689236 -0.7870512 -0.03396782 0.6159518 -0.3718298 -0.8494394 0.3744266
		-0.456403 0.8381632 0.298628 0.3157521 0.8782809 -0.3590589 0.2789894 0.8766077 -0.3920765
		0.3157521 0.8782809 -0.3590589 -0.456403 0.8381632 0.298628 -0.4321335 0.8286837 0.3557304
		0.7778684 -0.1582198 -0.6081835 0.2789894 0.8766077 -0.3920765 0.3157521 0.8782809 -0.3590589
		0.2789894 0.8766077 -0.3920765 0.7778684 -0.1582198 -0.6081835 0.7277234 -0.03861635 -0.6847828
		0.7277234 -0.03861635 -0.6847828 0.3903819 -0.9040183 -0.1742207 0.3761272 -0.891529 -0.2523974
		0.3903819 -0.9040183 -0.1742207 0.7277234 -0.03861635 -0.6847828 0.7778684 -0.1582198 -0.6081835
		0.7778684 -0.1582198 -0.6081835 0.7402949 -0.1869216 -0.6457737 0.3903819 -0.9040183 -0.1742207
		-0.3494376 -0.9368366 -0.01518378 -0.7084444 -0.6612079 0.2468008 -0.510047 -0.836812 0.1989914
		-0.3494376 -0.9368366 -0.01518378 -0.6867133 -0.7013947 0.190972 -0.7084444 -0.6612079 0.2468008
		-0.9425942 -0.02807769 0.3327577 -0.7084444 -0.6612079 0.2468008 -0.6867133 -0.7013947 0.190972
		-0.9425942 -0.02807769 0.3327577 -0.6867133 -0.7013947 0.190972 -0.9335665 -0.06193683 0.3530118
		-0.6962544 0.6365772 0.3316615 -0.9425942 -0.02807769 0.3327577 -0.9335665 -0.06193683 0.3530118
		-0.6962544 0.6365772 0.3316615 -0.6863069 0.6327479 0.3586264 -0.9425942 -0.02807769 0.3327577
		-0.7084444 -0.6612079 0.2468008 -0.5088649 -0.8247879 0.2465388 -0.510047 -0.836812 0.1989914
		-0.7084444 -0.6612079 0.2468008 -0.7399282 -0.6029135 0.2983313 -0.5088649 -0.8247879 0.2465388
		-0.7399282 -0.6029135 0.2983313 -0.7084444 -0.6612079 0.2468008 -0.9425942 -0.02807769 0.3327577
		-0.7399282 -0.6029135 0.2983313 -0.5293608 -0.8163367 0.231023 -0.5088649 -0.8247879 0.2465388
		-0.7399282 -0.6029135 0.2983313 -0.7485902 -0.5991073 0.2840478 -0.5293608 -0.8163367 0.231023
		-0.9304719 -0.004325142 0.3663377 -0.7485902 -0.5991073 0.2840478 -0.7399282 -0.6029135 0.2983313
		-0.9304719 -0.004325142 0.3663377 -0.7399282 -0.6029135 0.2983313 -0.9425942 -0.02807769 0.3327577
		-0.6863069 0.6327479 0.3586264 -0.9304719 -0.004325142 0.3663377 -0.9425942 -0.02807769 0.3327577
		-0.9304719 -0.004325142 0.3663377 -0.9366737 -0.006240241 0.3501476 -0.7485902 -0.5991073 0.2840478
		-0.6763335 0.6153736 0.4048313 -0.9366737 -0.006240241 0.3501476 -0.9304719 -0.004325142 0.3663377
		-0.6863069 0.6327479 0.3586264 -0.6763335 0.6153736 0.4048313 -0.9304719 -0.004325142 0.3663377
		-0.6763335 0.6153736 0.4048313 -0.7025419 0.6099988 0.366519 -0.9366737 -0.006240241 0.3501476
		-0.7485902 -0.5991073 0.2840478 -0.5493863 -0.8102457 0.2041486 -0.5293608 -0.8163367 0.231023
		-0.7485902 -0.5991073 0.2840478 -0.7577541 -0.5961691 0.2653136 -0.5493863 -0.8102457 0.2041486
		-0.9366737 -0.006240241 0.3501476 -0.7577541 -0.5961691 0.2653136 -0.7485902 -0.5991073 0.2840478
		-0.9366737 -0.006240241 0.3501476 -0.9442656 -0.004318541 0.3291563 -0.7577541 -0.5961691 0.2653136
		-0.7025419 0.6099988 0.366519 -0.9442656 -0.004318541 0.3291563 -0.9366737 -0.006240241 0.3501476
		-0.7025419 0.6099988 0.366519 -0.7233683 0.6024165 0.337391 -0.9442656 -0.004318541 0.3291563
		-0.7577541 -0.5961691 0.2653136 -0.5676302 -0.8095288 0.1498635 -0.5493863 -0.8102457 0.2041486
		-0.7577541 -0.5961691 0.2653136 -0.7796112 -0.5917234 0.2051094 -0.5676302 -0.8095288 0.1498635
		-0.9442656 -0.004318541 0.3291563 -0.7796112 -0.5917234 0.2051094 -0.7577541 -0.5961691 0.2653136
		-0.9442656 -0.004318541 0.3291563 -0.9627292 0.01802112 0.2698663 -0.7796112 -0.5917234 0.2051094
		-0.7233683 0.6024165 0.337391 -0.9627292 0.01802112 0.2698663 -0.9442656 -0.004318541 0.3291563
		-0.7233683 0.6024165 0.337391 -0.7412264 0.6110827 0.2777793 -0.9627292 0.01802112 0.2698663
		-0.7796112 -0.5917234 0.2051094 -0.5765525 -0.807012 0.1277452 -0.5676302 -0.8095288 0.1498635
		-0.7796112 -0.5917234 0.2051094 -0.7562501 -0.6345416 0.1595078 -0.5765525 -0.807012 0.1277452
		-0.9627292 0.01802112 0.2698663 -0.7562501 -0.6345416 0.1595078 -0.7796112 -0.5917234 0.2051094
		-0.9627292 0.01802112 0.2698663 -0.9761934 0.02015017 0.2159635 -0.7562501 -0.6345416 0.1595078
		-0.7412264 0.6110827 0.2777793 -0.9761934 0.02015017 0.2159635 -0.9627292 0.01802112 0.2698663
		-0.7412264 0.6110827 0.2777793 -0.7471405 0.6249477 0.2263218 -0.9761934 0.02015017 0.2159635
		-0.6763335 0.6153736 0.4048313 -0.3351392 0.8801456 0.3361925 -0.7025419 0.6099988 0.366519
		-0.6763335 0.6153736 0.4048313 -0.3184085 0.8800611 0.3522902 -0.3351392 0.8801456 0.3361925
		-0.6863069 0.6327479 0.3586264 -0.3184085 0.8800611 0.3522902 -0.6763335 0.6153736 0.4048313
		-0.6863069 0.6327479 0.3586264 -0.3355453 0.89068 0.3067548 -0.3184085 0.8800611 0.3522902
		-0.6962544 0.6365772 0.3316615 -0.3355453 0.89068 0.3067548 -0.6863069 0.6327479 0.3586264
		-0.6962544 0.6365772 0.3316615 -0.3587243 0.8923981 0.2737564 -0.3355453 0.89068 0.3067548
		-0.7233683 0.6024165 0.337391 -0.4028305 0.8721886 0.2775152 -0.7412264 0.6110827 0.2777793
		-0.7412264 0.6110827 0.2777793 -0.4029225 0.8863337 0.2281798 -0.7471405 0.6249477 0.2263218
		-0.7412264 0.6110827 0.2777793 -0.4028305 0.8721886 0.2775152 -0.4029225 0.8863337 0.2281798
		-0.3587243 0.8923981 0.2737564 -0.2382077 0.9366834 0.2566737 -0.3355453 0.89068 0.3067548
		-0.3587243 0.8923981 0.2737564 0.007899494 0.9494265 0.3138896 -0.2382077 0.9366834 0.2566737
		-0.3184085 0.8800611 0.3522902 -0.2418178 0.9079077 0.3423853 -0.3351392 0.8801456 0.3361925
		-0.3184085 0.8800611 0.3522902 -0.2402862 0.911478 0.3338719 -0.2418178 0.9079077 0.3423853
		-0.3355453 0.89068 0.3067548 -0.2402862 0.911478 0.3338719 -0.3184085 0.8800611 0.3522902
		-0.3355453 0.89068 0.3067548 -0.2382077 0.9366834 0.2566737 -0.2402862 0.911478 0.3338719
		-0.3351392 0.8801456 0.3361925 -0.2418178 0.9079077 0.3423853 -0.2636319 0.9054097 0.3327636
		-0.3351392 0.8801456 0.3361925 -0.2636319 0.9054097 0.3327636 -0.3709142 0.8696463 0.3257883
		-0.7025419 0.6099988 0.366519 -0.3351392 0.8801456 0.3361925 -0.3709142 0.8696463 0.3257883
		-0.7025419 0.6099988 0.366519 -0.3709142 0.8696463 0.3257883 -0.7233683 0.6024165 0.337391
		-0.7233683 0.6024165 0.337391 -0.3709142 0.8696463 0.3257883 -0.4028305 0.8721886 0.2775152
		-0.3709142 0.8696463 0.3257883 -0.2619699 0.9223017 0.2841325 -0.4028305 0.8721886 0.2775152
		-0.3709142 0.8696463 0.3257883 -0.2636319 0.9054097 0.3327636 -0.2619699 0.9223017 0.2841325
		-0.4028305 0.8721886 0.2775152 -0.2501938 0.9402243 0.2310436 -0.4029225 0.8863337 0.2281798
		-0.4028305 0.8721886 0.2775152 -0.2619699 0.9223017 0.2841325 -0.2501938 0.9402243 0.2310436
		0.419771 -0.07144346 0.9048139 0.2591138 0.8184698 0.5128033 0.6885108 0.07437243 0.7214025
		0.6369274 -0.2014299 0.7441435 0.419771 -0.07144346 0.9048139 0.6885108 0.07437243 0.7214025
		-0.6525764 0.09440864 0.7518185 -0.4140611 -0.06875321 0.9076489 -0.6118666 -0.205144 0.7638949
		-0.25958 0.8180755 0.5131965 -0.4140611 -0.06875321 0.9076489 -0.6525764 0.09440864 0.7518185
		-0.8959589 -0.06662419 -0.4391114 -0.4966673 0.1910462 -0.846654 -0.809799 0.1021224 -0.5777513
		-0.809799 0.1021224 -0.5777513 -0.929585 -0.1313291 -0.3444186 -0.8959589 -0.06662419 -0.4391114
		-0.9542467 -0.1604607 -0.2523203 -0.929585 -0.1313291 -0.3444186 -0.809799 0.1021224 -0.5777513
		-0.9542467 -0.1604607 -0.2523203 -0.809799 0.1021224 -0.5777513 -0.5829449 0.7964757 -0.160629
		-0.5829449 0.7964757 -0.160629 -0.7419128 0.665727 0.07983094 -0.9542467 -0.1604607 -0.2523203
		-0.4966673 0.1910462 -0.846654 -0.4099942 0.7016779 -0.5827116 -0.809799 0.1021224 -0.5777513
		-0.4966673 0.1910462 -0.846654 0.2888917 0.7212242 -0.6295851 -0.4099942 0.7016779 -0.5827116
		-0.4966673 0.1910462 -0.846654 0.6884443 -0.4499658 -0.5688367 0.2888917 0.7212242 -0.6295851
		-0.4966673 0.1910462 -0.846654 -0.286714 -0.8282542 -0.4814458 0.6884443 -0.4499658 -0.5688367
		-0.4966673 0.1910462 -0.846654 -0.7185686 -0.5439134 -0.4333791 -0.286714 -0.8282542 -0.4814458
		-0.8959589 -0.06662419 -0.4391114 -0.7185686 -0.5439134 -0.4333791 -0.4966673 0.1910462 -0.846654
		0.9954512 0.05976126 -0.07420092 0.2888917 0.7212242 -0.6295851 0.6884443 -0.4499658 -0.5688367
		0.2888917 0.7212242 -0.6295851 0.9954512 0.05976126 -0.07420092 -0.1115403 0.9461414 -0.3039327
		-0.1115403 0.9461414 -0.3039327 -0.6232035 0.7010387 -0.3466444 0.2888917 0.7212242 -0.6295851
		0.2888917 0.7212242 -0.6295851 -0.6232035 0.7010387 -0.3466444 -0.4099942 0.7016779 -0.5827116
		-0.4099942 0.7016779 -0.5827116 -0.6232035 0.7010387 -0.3466444 -0.8918776 0.4151913 -0.1793616
		-0.8808369 0.250319 -0.4018292 -0.4099942 0.7016779 -0.5827116 -0.8918776 0.4151913 -0.1793616
		-0.8918776 0.4151913 -0.1793616 -0.6173921 -0.784849 0.05328165 -0.8808369 0.250319 -0.4018292
		-0.4099942 0.7016779 -0.5827116 -0.8808369 0.250319 -0.4018292 -0.6989471 0.5124104 -0.4989074
		-0.8808369 0.250319 -0.4018292 -0.5046745 0.8376214 -0.2090314 -0.6989471 0.5124104 -0.4989074
		-0.6989471 0.5124104 -0.4989074 -0.5046745 0.8376214 -0.2090314 -0.5829449 0.7964757 -0.160629
		-0.8808369 0.250319 -0.4018292 -0.4210888 0.8690619 -0.2596451 -0.5046745 0.8376214 -0.2090314
		-0.8918776 0.4151913 -0.1793616 -0.9446245 -0.3271471 -0.02567619 -0.6173921 -0.784849 0.05328165
		-0.9446245 -0.3271471 -0.02567619 -0.8918776 0.4151913 -0.1793616 -0.6232035 0.7010387 -0.3466444
		0.9798679 0.05438191 -0.192098 -0.1115403 0.9461414 -0.3039327 0.9954512 0.05976126 -0.07420092
		-0.932287 -0.3092251 -0.1876726 -0.9446245 -0.3271471 -0.02567619 -0.6232035 0.7010387 -0.3466444
		-0.932287 -0.3092251 -0.1876726 -0.6232035 0.7010387 -0.3466444 -0.1115403 0.9461414 -0.3039327
		-0.1115403 0.9461414 -0.3039327 -0.5832934 -0.06329057 -0.809792 -0.932287 -0.3092251 -0.1876726
		-0.5832934 -0.06329057 -0.809792 -0.1115403 0.9461414 -0.3039327 0.0804273 0.7732285 -0.6290065
		-0.1115403 0.9461414 -0.3039327 0.9798679 0.05438191 -0.192098 0.0804273 0.7732285 -0.6290065
		0.3981767 0.8531575 0.3370126 -0.5046745 0.8376214 -0.2090314 -0.4210888 0.8690619 -0.2596451
		-0.4210888 0.8690619 -0.2596451 0.5624262 0.7430494 0.3627042 0.3981767 0.8531575 0.3370126
		0.2530423 -0.7310296 -0.6336918 0.0804273 0.7732285 -0.6290065 0.9798679 0.05438191 -0.192098
		0.2530423 -0.7310296 -0.6336918 -0.5832934 -0.06329057 -0.809792 0.0804273 0.7732285 -0.6290065
		0.3981767 0.8531575 0.3370126 0.5624262 0.7430494 0.3627042 0.7617304 0.4768342 0.4386297
		0.8130013 -0.09981636 0.5736423 0.7617304 0.4768342 0.4386297 0.5624262 0.7430494 0.3627042
		0.8130013 -0.09981636 0.5736423 0.863826 0.2330949 0.4466221 0.7617304 0.4768342 0.4386297
		0.863826 0.2330949 0.4466221 0.8130013 -0.09981636 0.5736423 0.8344008 -0.2474384 0.4924934
		0.3973594 -0.8611683 0.317009 0.8344008 -0.2474384 0.4924934 0.8130013 -0.09981636 0.5736423
		0.3973594 -0.8611683 0.317009 0.8130013 -0.09981636 0.5736423 0.394946 -0.8153656 0.4233162
		-0.09712791 -0.987353 0.125301 0.3973594 -0.8611683 0.317009 0.394946 -0.8153656 0.4233162
		-0.09712791 -0.987353 0.125301 0.394946 -0.8153656 0.4233162 -0.6173921 -0.784849 0.05328165
		-0.09712791 -0.987353 0.125301 -0.6173921 -0.784849 0.05328165 -0.9446245 -0.3271471 -0.02567619
		-0.9446245 -0.3271471 -0.02567619 0.1593012 -0.9862527 0.04391752 -0.09712791 -0.987353 0.125301
		0.1593012 -0.9862527 0.04391752 -0.9446245 -0.3271471 -0.02567619 -0.932287 -0.3092251 -0.1876726
		-0.932287 -0.3092251 -0.1876726 0.2530423 -0.7310296 -0.6336918 0.1593012 -0.9862527 0.04391752
		0.9798679 0.05438191 -0.192098 0.1593012 -0.9862527 0.04391752 0.2530423 -0.7310296 -0.6336918
		0.1593012 -0.9862527 0.04391752 0.9798679 0.05438191 -0.192098 0.9954512 0.05976126 -0.07420092
		0.2530423 -0.7310296 -0.6336918 -0.932287 -0.3092251 -0.1876726 -0.5832934 -0.06329057 -0.809792
		0.6884443 -0.4499658 -0.5688367 0.1593012 -0.9862527 0.04391752 0.9954512 0.05976126 -0.07420092
		0.1593012 -0.9862527 0.04391752 0.6884443 -0.4499658 -0.5688367 -0.09712791 -0.987353 0.125301
		-0.09712791 -0.987353 0.125301 -0.286714 -0.8282542 -0.4814458 0.3973594 -0.8611683 0.317009
		-0.09712791 -0.987353 0.125301 0.6884443 -0.4499658 -0.5688367 -0.286714 -0.8282542 -0.4814458
		0.3973594 -0.8611683 0.317009 -0.286714 -0.8282542 -0.4814458 0.5252568 -0.8021098 0.2841217
		0.5252568 -0.8021098 0.2841217 0.8344008 -0.2474384 0.4924934 0.3973594 -0.8611683 0.317009
		0.5252568 -0.8021098 0.2841217 -0.286714 -0.8282542 -0.4814458 0.3156095 -0.9466367 0.06534202
		0.3156095 -0.9466367 0.06534202 -0.286714 -0.8282542 -0.4814458 -0.7185686 -0.5439134 -0.4333791
		-0.7185686 -0.5439134 -0.4333791 0.1608756 -0.9860883 0.04181981 0.3156095 -0.9466367 0.06534202
		0.3156095 -0.9466367 0.06534202 0.1608756 -0.9860883 0.04181981 0.9744101 0.1034946 0.1995338
		0.9876872 0.1401545 0.06950419 0.9744101 0.1034946 0.1995338 0.1608756 -0.9860883 0.04181981
		0.1608756 -0.9860883 0.04181981 0.218977 -0.9743368 0.05212329 0.9876872 0.1401545 0.06950419
		-0.9698995 -0.2161032 -0.1122252 0.218977 -0.9743368 0.05212329 0.1608756 -0.9860883 0.04181981
		0.1608756 -0.9860883 0.04181981 -0.8824891 -0.3219906 -0.3428339 -0.9698995 -0.2161032 -0.1122252
		0.1608756 -0.9860883 0.04181981 -0.7185686 -0.5439134 -0.4333791 -0.8824891 -0.3219906 -0.3428339
		0.0200291 -0.8085025 -0.5881518 0.218977 -0.9743368 0.05212329 -0.9698995 -0.2161032 -0.1122252
		-0.9698995 -0.2161032 -0.1122252 -0.9378519 -0.1635603 -0.3060748 0.0200291 -0.8085025 -0.5881518
		0.218977 -0.9743368 0.05212329 0.0200291 -0.8085025 -0.5881518 0.8003039 0.01496887 -0.5994078
		0.8003039 0.01496887 -0.5994078 0.9876872 0.1401545 0.06950419 0.218977 -0.9743368 0.05212329
		0.9744101 0.1034946 0.1995338 0.9708377 -0.2025801 0.1282017 0.3156095 -0.9466367 0.06534202
		0.9708377 -0.2025801 0.1282017 0.5252568 -0.8021098 0.2841217 0.3156095 -0.9466367 0.06534202
		0.9744101 0.1034946 0.1995338 0.9876872 0.1401545 0.06950419 -0.1477373 0.9815142 -0.1216698
		-0.1477373 0.9815142 -0.1216698 -0.1693355 0.9288779 -0.3294106 0.9744101 0.1034946 0.1995338
		0.9708377 -0.2025801 0.1282017 0.9744101 0.1034946 0.1995338 -0.1693355 0.9288779 -0.3294106
		-0.1693355 0.9288779 -0.3294106 0.9838879 -0.102113 -0.1467574 0.9708377 -0.2025801 0.1282017
		0.9838879 -0.102113 -0.1467574 0.9313943 -0.175754 0.3187714 0.9708377 -0.2025801 0.1282017
		0.9876872 0.1401545 0.06950419 0.8003039 0.01496887 -0.5994078 -0.1673446 0.6992298 -0.6950349
		-0.1673446 0.6992298 -0.6950349 -0.1477373 0.9815142 -0.1216698 0.9876872 0.1401545 0.06950419
		0.9708377 -0.2025801 0.1282017 0.9313943 -0.175754 0.3187714 0.5252568 -0.8021098 0.2841217
		0.9973935 0.01845125 -0.06975567 0.9313943 -0.175754 0.3187714 0.9838879 -0.102113 -0.1467574
		0.9973935 0.01845125 -0.06975567 0.927869 0.2919582 0.23199 0.9313943 -0.175754 0.3187714
		0.9556379 0.2331817 -0.1799514 0.9973935 0.01845125 -0.06975567 0.9838879 -0.102113 -0.1467574
		0.9838879 -0.102113 -0.1467574 0.4107825 -0.8980944 -0.1571116 0.9556379 0.2331817 -0.1799514
		0.8778996 0.1337734 -0.4597794 0.9556379 0.2331817 -0.1799514 0.4107825 -0.8980944 -0.1571116
		0.9556379 0.2331817 -0.1799514 0.8778996 0.1337734 -0.4597794 -0.1873082 0.9805477 -0.05866691
		-0.1873082 0.9805477 -0.05866691 -0.04211871 0.9861209 -0.1605973 0.9556379 0.2331817 -0.1799514
		0.9973935 0.01845125 -0.06975567 0.9556379 0.2331817 -0.1799514 -0.04211871 0.9861209 -0.1605973
		0.4107825 -0.8980944 -0.1571116 0.1676882 -0.9780785 -0.1234627 0.8778996 0.1337734 -0.4597794
		0.4713835 0.1090233 -0.8751637 0.8778996 0.1337734 -0.4597794 0.1676882 -0.9780785 -0.1234627
		0.1676882 -0.9780785 -0.1234627 -0.3492275 -0.747215 -0.5654289 0.4713835 0.1090233 -0.8751637
		-0.04211871 0.9861209 -0.1605973 0.8780178 0.4554826 -0.1470391 0.9973935 0.01845125 -0.06975567
		0.9973935 0.01845125 -0.06975567 0.8780178 0.4554826 -0.1470391 0.927869 0.2919582 0.23199
		0.927869 0.2919582 0.23199 0.8780178 0.4554826 -0.1470391 0.8705178 0.4869038 -0.07157873
		0.8705178 0.4869038 -0.07157873 0.8219056 0.536203 0.1922437 0.927869 0.2919582 0.23199
		0.5140038 0.8118614 0.276914 0.8219056 0.536203 0.1922437 0.8705178 0.4869038 -0.07157873
		0.8705178 0.4869038 -0.07157873 0.5039061 0.8502536 0.1521431 0.5140038 0.8118614 0.276914
		0.5140038 0.8118614 0.276914 0.5039061 0.8502536 0.1521431 -0.7419128 0.665727 0.07983094
		-0.7419128 0.665727 0.07983094 -0.5829449 0.7964757 -0.160629 0.5140038 0.8118614 0.276914
		0.8778996 0.1337734 -0.4597794 0.4713835 0.1090233 -0.8751637 -0.5504802 0.6984906 -0.4572553
		-0.5504802 0.6984906 -0.4572553 -0.1873082 0.9805477 -0.05866691 0.8778996 0.1337734 -0.4597794
		0.9054062 0.2512666 -0.3422054 0.8705178 0.4869038 -0.07157873 0.8780178 0.4554826 -0.1470391
		0.8705178 0.4869038 -0.07157873 0.9054062 0.2512666 -0.3422054 -0.06409396 0.9947997 -0.07915552
		-0.2478833 0.9630799 0.105028 -0.06409396 0.9947997 -0.07915552 0.9054062 0.2512666 -0.3422054
		0.9054062 0.2512666 -0.3422054 0.7527512 0.2418538 -0.6122683 -0.2478833 0.9630799 0.105028
		0.7527512 0.2418538 -0.6122683 0.9054062 0.2512666 -0.3422054 0.3324869 -0.8969753 -0.2913552
		0.9054062 0.2512666 -0.3422054 0.8780178 0.4554826 -0.1470391 0.3324869 -0.8969753 -0.2913552
		0.3324869 -0.8969753 -0.2913552 0.2325348 -0.9401326 -0.2491547 0.7527512 0.2418538 -0.6122683
		0.1765375 0.2317878 -0.9566132 0.7527512 0.2418538 -0.6122683 0.2325348 -0.9401326 -0.2491547
		0.2325348 -0.9401326 -0.2491547 -0.4290927 -0.7364212 -0.5230327 0.1765375 0.2317878 -0.9566132
		0.7527512 0.2418538 -0.6122683 0.1765375 0.2317878 -0.9566132 -0.694988 0.6912265 -0.1979841
		-0.694988 0.6912265 -0.1979841 -0.2478833 0.9630799 0.105028 0.7527512 0.2418538 -0.6122683
		0.8788911 0.2487276 -0.4070441 0.5039061 0.8502536 0.1521431 0.8705178 0.4869038 -0.07157873
		-0.7419128 0.665727 0.07983094 0.5039061 0.8502536 0.1521431 0.008552343 0.9998847 0.01254516
		0.5039061 0.8502536 0.1521431 0.8788911 0.2487276 -0.4070441 0.008552343 0.9998847 0.01254516
		-0.2361238 0.9551198 0.1788621 0.008552343 0.9998847 0.01254516 0.8788911 0.2487276 -0.4070441
		0.8788911 0.2487276 -0.4070441 0.6756298 0.2912154 -0.6772873 -0.2361238 0.9551198 0.1788621
		0.6756298 0.2912154 -0.6772873 0.8788911 0.2487276 -0.4070441 0.2736569 -0.8762164 -0.3966821
		0.8788911 0.2487276 -0.4070441 0.8705178 0.4869038 -0.07157873 0.2736569 -0.8762164 -0.3966821
		0.2736569 -0.8762164 -0.3966821 0.2116017 -0.9021198 -0.376038 0.6756298 0.2912154 -0.6772873
		0.07482556 0.2337157 -0.9694215 0.6756298 0.2912154 -0.6772873 0.2116017 -0.9021198 -0.376038
		0.2116017 -0.9021198 -0.376038 -0.4918987 -0.7129071 -0.499799 0.07482556 0.2337157 -0.9694215
		0.6756298 0.2912154 -0.6772873 0.07482556 0.2337157 -0.9694215 -0.7209436 0.672852 -0.1658629
		-0.7209436 0.672852 -0.1658629 -0.2361238 0.9551198 0.1788621 0.6756298 0.2912154 -0.6772873
		-0.2361238 0.9551198 0.1788621 -0.7209436 0.672852 -0.1658629 -0.6958693 -0.3301193 0.6377987
		-0.6958693 -0.3301193 0.6377987 -0.6693056 -0.5081853 0.5420127 -0.2361238 0.9551198 0.1788621
		-0.6693056 -0.5081853 0.5420127 -0.6958693 -0.3301193 0.6377987 -0.4918987 -0.7129071 -0.499799
		-0.7209436 0.672852 -0.1658629 -0.4918987 -0.7129071 -0.499799 -0.6958693 -0.3301193 0.6377987
		-0.4918987 -0.7129071 -0.499799 0.2116017 -0.9021198 -0.376038 -0.6693056 -0.5081853 0.5420127
		-0.6693056 -0.5081853 0.5420127 0.2116017 -0.9021198 -0.376038 0.2736569 -0.8762164 -0.3966821
		0.2736569 -0.8762164 -0.3966821 -0.9584925 -0.2699925 0.09163177 -0.6693056 -0.5081853 0.5420127
		-0.2361238 0.9551198 0.1788621 -0.6693056 -0.5081853 0.5420127 -0.9584925 -0.2699925 0.09163177
		-0.9584925 -0.2699925 0.09163177 0.008552343 0.9998847 0.01254516 -0.2361238 0.9551198 0.1788621
		-0.9542467 -0.1604607 -0.2523203 -0.9584925 -0.2699925 0.09163177 0.2736569 -0.8762164 -0.3966821
		0.2736569 -0.8762164 -0.3966821 0.8705178 0.4869038 -0.07157873 -0.9542467 -0.1604607 -0.2523203
		-0.9542467 -0.1604607 -0.2523203 0.8705178 0.4869038 -0.07157873 -0.06409396 0.9947997 -0.07915552
		-0.9391808 -0.3267756 0.1056272 -0.9542467 -0.1604607 -0.2523203 -0.06409396 0.9947997 -0.07915552
		-0.9391808 -0.3267756 0.1056272 -0.06409396 0.9947997 -0.07915552 -0.2478833 0.9630799 0.105028
		-0.2478833 0.9630799 0.105028 -0.6843326 -0.4288552 0.589722 -0.9391808 -0.3267756 0.1056272
		0.3324869 -0.8969753 -0.2913552 -0.9391808 -0.3267756 0.1056272 -0.6843326 -0.4288552 0.589722
		-0.6843326 -0.4288552 0.589722 0.2325348 -0.9401326 -0.2491547 0.3324869 -0.8969753 -0.2913552
		-0.4290927 -0.7364212 -0.5230327 0.2325348 -0.9401326 -0.2491547 -0.6843326 -0.4288552 0.589722
		-0.6843326 -0.4288552 0.589722 -0.7623231 -0.3265676 0.5587639 -0.4290927 -0.7364212 -0.5230327
		-0.7623231 -0.3265676 0.5587639 -0.6843326 -0.4288552 0.589722 -0.2478833 0.9630799 0.105028
		-0.929585 -0.1313291 -0.3444186 -0.9391808 -0.3267756 0.1056272 0.3324869 -0.8969753 -0.2913552
		-0.9391808 -0.3267756 0.1056272 -0.929585 -0.1313291 -0.3444186 -0.9542467 -0.1604607 -0.2523203
		0.3324869 -0.8969753 -0.2913552 0.8780178 0.4554826 -0.1470391 -0.929585 -0.1313291 -0.3444186
		-0.929585 -0.1313291 -0.3444186 0.8780178 0.4554826 -0.1470391 -0.04211871 0.9861209 -0.1605973
		-0.9488351 -0.2922615 -0.1195621 -0.929585 -0.1313291 -0.3444186 -0.04211871 0.9861209 -0.1605973
		-0.9488351 -0.2922615 -0.1195621 -0.04211871 0.9861209 -0.1605973 -0.1873082 0.9805477 -0.05866691
		-0.1873082 0.9805477 -0.05866691 -0.8690726 -0.3140567 0.3822059 -0.9488351 -0.2922615 -0.1195621
		0.4107825 -0.8980944 -0.1571116 -0.9488351 -0.2922615 -0.1195621 -0.8690726 -0.3140567 0.3822059
		-0.8690726 -0.3140567 0.3822059 0.1676882 -0.9780785 -0.1234627 0.4107825 -0.8980944 -0.1571116
		-0.3492275 -0.747215 -0.5654289 0.1676882 -0.9780785 -0.1234627 -0.8690726 -0.3140567 0.3822059
		-0.8690726 -0.3140567 0.3822059 -0.9230506 -0.1614854 0.3491418 -0.3492275 -0.747215 -0.5654289
		-0.9230506 -0.1614854 0.3491418 -0.8690726 -0.3140567 0.3822059 -0.1873082 0.9805477 -0.05866691
		-0.8959589 -0.06662419 -0.4391114 -0.9488351 -0.2922615 -0.1195621 0.4107825 -0.8980944 -0.1571116
		-0.9488351 -0.2922615 -0.1195621 -0.8959589 -0.06662419 -0.4391114 -0.929585 -0.1313291 -0.3444186
		0.4107825 -0.8980944 -0.1571116 0.9838879 -0.102113 -0.1467574 -0.8959589 -0.06662419 -0.4391114
		-0.8959589 -0.06662419 -0.4391114 0.9838879 -0.102113 -0.1467574 -0.1693355 0.9288779 -0.3294106
		-0.8824891 -0.3219906 -0.3428339 -0.8959589 -0.06662419 -0.4391114 -0.1693355 0.9288779 -0.3294106
		-0.8824891 -0.3219906 -0.3428339 -0.1693355 0.9288779 -0.3294106 -0.1477373 0.9815142 -0.1216698
		-0.1477373 0.9815142 -0.1216698 -0.9698995 -0.2161032 -0.1122252 -0.8824891 -0.3219906 -0.3428339
		-0.9378519 -0.1635603 -0.3060748 -0.9698995 -0.2161032 -0.1122252 -0.1477373 0.9815142 -0.1216698
		-0.1477373 0.9815142 -0.1216698 -0.1673446 0.6992298 -0.6950349 -0.9378519 -0.1635603 -0.3060748
		-0.8824891 -0.3219906 -0.3428339 -0.7185686 -0.5439134 -0.4333791 -0.8959589 -0.06662419 -0.4391114
		-0.1873082 0.9805477 -0.05866691 -0.5504802 0.6984906 -0.4572553 -0.9230506 -0.1614854 0.3491418
		-0.5504802 0.6984906 -0.4572553 -0.3492275 -0.747215 -0.5654289 -0.9230506 -0.1614854 0.3491418
		-0.1673446 0.6992298 -0.6950349 0.0200291 -0.8085025 -0.5881518 -0.9378519 -0.1635603 -0.3060748
		0.0200291 -0.8085025 -0.5881518 -0.1673446 0.6992298 -0.6950349 0.8003039 0.01496887 -0.5994078
		-0.3492275 -0.747215 -0.5654289 -0.5504802 0.6984906 -0.4572553 0.4713835 0.1090233 -0.8751637
		-0.2478833 0.9630799 0.105028 -0.694988 0.6912265 -0.1979841 -0.7623231 -0.3265676 0.5587639
		-0.694988 0.6912265 -0.1979841 -0.4290927 -0.7364212 -0.5230327 -0.7623231 -0.3265676 0.5587639
		-0.4290927 -0.7364212 -0.5230327 -0.694988 0.6912265 -0.1979841 0.1765375 0.2317878 -0.9566132
		-0.9584925 -0.2699925 0.09163177 -0.9542467 -0.1604607 -0.2523203 -0.7419128 0.665727 0.07983094
		-0.9584925 -0.2699925 0.09163177 -0.7419128 0.665727 0.07983094 0.008552343 0.9998847 0.01254516
		0.3718288 -0.8494394 0.3744276 -0.6173921 -0.784849 0.05328165 0.394946 -0.8153656 0.4233162
		0.3718288 -0.8494394 0.3744276 -0.4321206 -0.8705944 -0.2352384 -0.6173921 -0.784849 0.05328165
		0.7870497 -0.03396774 0.6159536 0.3718288 -0.8494394 0.3744276 0.394946 -0.8153656 0.4233162
		0.7870497 -0.03396774 0.6159536 0.394946 -0.8153656 0.4233162 0.8130013 -0.09981636 0.5736423
		0.5254517 0.8041784 0.2778446 0.7870497 -0.03396774 0.6159536 0.8130013 -0.09981636 0.5736423
		0.5254517 0.8041784 0.2778446 0.8130013 -0.09981636 0.5736423 0.5624262 0.7430494 0.3627042
		-0.2468675 0.9140755 -0.3217491 0.5254517 0.8041784 0.2778446 0.5624262 0.7430494 0.3627042
		-0.2468675 0.9140755 -0.3217491 0.5624262 0.7430494 0.3627042 -0.4210888 0.8690619 -0.2596451
		-0.7813048 0.09541272 -0.6168138 -0.2468675 0.9140755 -0.3217491 -0.4210888 0.8690619 -0.2596451
		-0.7813048 0.09541272 -0.6168138 -0.4210888 0.8690619 -0.2596451 -0.8808369 0.250319 -0.4018292
		-0.4321206 -0.8705944 -0.2352384 -0.8808369 0.250319 -0.4018292 -0.6173921 -0.784849 0.05328165
		-0.4321206 -0.8705944 -0.2352384 -0.7813048 0.09541272 -0.6168138 -0.8808369 0.250319 -0.4018292
		-0.7277235 -0.03861643 -0.6847826 -0.2468675 0.9140755 -0.3217491 -0.7813048 0.09541272 -0.6168138
		-0.7277235 -0.03861643 -0.6847826 -0.2789894 0.8766078 -0.3920761 -0.2468675 0.9140755 -0.3217491
		-0.2789894 0.8766078 -0.3920761 0.5254517 0.8041784 0.2778446 -0.2468675 0.9140755 -0.3217491
		0.2785068 -0.8792214 0.3865275 -0.4321206 -0.8705944 -0.2352384 0.3718288 -0.8494394 0.3744276
		0.2785068 -0.8792214 0.3865275 -0.3761261 -0.8915297 -0.2523962 -0.4321206 -0.8705944 -0.2352384
		-0.7277235 -0.03861643 -0.6847826 -0.4321206 -0.8705944 -0.2352384 -0.3761261 -0.8915297 -0.2523962
		-0.7277235 -0.03861643 -0.6847826 -0.7813048 0.09541272 -0.6168138 -0.4321206 -0.8705944 -0.2352384
		-0.2789894 0.8766078 -0.3920761 0.456403 0.8381634 0.2986275 0.5254517 0.8041784 0.2778446
		0.723692 -0.03498394 0.6892358 0.5254517 0.8041784 0.2778446 0.456403 0.8381634 0.2986275
		0.723692 -0.03498394 0.6892358 0.2785068 -0.8792214 0.3865275 0.3718288 -0.8494394 0.3744276
		0.723692 -0.03498394 0.6892358 0.7870497 -0.03396774 0.6159536 0.5254517 0.8041784 0.2778446
		0.723692 -0.03498394 0.6892358 0.3718288 -0.8494394 0.3744276 0.7870497 -0.03396774 0.6159536
		-0.3761261 -0.8915297 -0.2523962 0.2785068 -0.8792214 0.3865275 0.2107866 -0.8951398 0.3928026
		0.2107866 -0.8951398 0.3928026 -0.3903822 -0.904018 -0.1742214 -0.3761261 -0.8915297 -0.2523962
		-0.7277235 -0.03861643 -0.6847826 -0.3761261 -0.8915297 -0.2523962 -0.3903822 -0.904018 -0.1742214
		-0.3486702 -0.8957086 -0.2759261 -0.3903822 -0.904018 -0.1742214 0.2107866 -0.8951398 0.3928026
		-0.3486702 -0.8957086 -0.2759261 -0.7402955 -0.1869205 -0.6457734 -0.3903822 -0.904018 -0.1742214
		-0.7402955 -0.1869205 -0.6457734 -0.3486702 -0.8957086 -0.2759261 -0.2340914 -0.9085863 -0.3459368
		-0.2340914 -0.9085863 -0.3459368 -0.6756942 -0.1597132 -0.7196729 -0.7402955 -0.1869205 -0.6457734
		0.4365184 -0.8502607 0.2941232 -0.2340914 -0.9085863 -0.3459368 -0.3486702 -0.8957086 -0.2759261
		-0.3486702 -0.8957086 -0.2759261 0.3933424 -0.8557479 0.3361211 0.4365184 -0.8502607 0.2941232
		0.2107866 -0.8951398 0.3928026 0.3933424 -0.8557479 0.3361211 -0.3486702 -0.8957086 -0.2759261
		0.7470188 -0.06113379 0.6619862 0.4365184 -0.8502607 0.2941232 0.3933424 -0.8557479 0.3361211
		0.3933424 -0.8557479 0.3361211 0.6793006 -0.09313861 0.7279258 0.7470188 -0.06113379 0.6619862
		0.6793006 -0.09313861 0.7279258 0.3933424 -0.8557479 0.3361211 0.2107866 -0.8951398 0.3928026
		0.4475883 0.7973155 0.4049107 0.7470188 -0.06113379 0.6619862 0.6793006 -0.09313861 0.7279258
		0.6793006 -0.09313861 0.7279258 0.4159817 0.8200029 0.3931341 0.4475883 0.7973155 0.4049107
		-0.3834251 0.8523251 -0.3557063 0.4475883 0.7973155 0.4049107 0.4159817 0.8200029 0.3931341
		0.4159817 0.8200029 0.3931341 -0.3952602 0.8273758 -0.3990223 -0.3834251 0.8523251 -0.3557063
		-0.6756942 -0.1597132 -0.7196729 -0.3834251 0.8523251 -0.3557063 -0.3952602 0.8273758 -0.3990223
		-0.3952602 0.8273758 -0.3990223 -0.7402955 -0.1869205 -0.6457734 -0.6756942 -0.1597132 -0.7196729
		-0.3157513 0.8782812 -0.3590587 -0.7402955 -0.1869205 -0.6457734 -0.3952602 0.8273758 -0.3990223
		0.4159817 0.8200029 0.3931341 -0.3157513 0.8782812 -0.3590587 -0.3952602 0.8273758 -0.3990223
		0.4159817 0.8200029 0.3931341 0.6793006 -0.09313861 0.7279258 0.6096695 -0.125321 0.7826862
		0.6096695 -0.125321 0.7826862 0.4321339 0.8286834 0.3557305 0.4159817 0.8200029 0.3931341
		-0.3157513 0.8782812 -0.3590587 0.4159817 0.8200029 0.3931341 0.4321339 0.8286834 0.3557305
		-0.3157513 0.8782812 -0.3590587 -0.7778687 -0.1582185 -0.6081836 -0.7402955 -0.1869205 -0.6457734
		0.2107866 -0.8951398 0.3928026 0.6096695 -0.125321 0.7826862 0.6793006 -0.09313861 0.7279258
		-0.4378036 0.753878 -0.4898938 -0.3834251 0.8523251 -0.3557063 -0.6756942 -0.1597132 -0.7196729
		0.4475883 0.7973155 0.4049107 -0.3834251 0.8523251 -0.3557063 -0.4378036 0.753878 -0.4898938
		-0.6756942 -0.1597132 -0.7196729 0.04915138 -0.08055434 -0.9955376 -0.4378036 0.753878 -0.4898938
		-0.4378036 0.753878 -0.4898938 0.4078379 0.8724169 0.2693639 0.4475883 0.7973155 0.4049107
		0.7470188 -0.06113379 0.6619862 0.4475883 0.7973155 0.4049107 0.4078379 0.8724169 0.2693639
		0.4078379 0.8724169 0.2693639 0.8196181 0.02479954 0.5723732 0.7470188 -0.06113379 0.6619862
		0.04915138 -0.08055434 -0.9955376 0.008386678 0.8453008 -0.5342249 -0.4378036 0.753878 -0.4898938
		0.4078379 0.8724169 0.2693639 -0.4378036 0.753878 -0.4898938 0.008386678 0.8453008 -0.5342249
		0.8196181 0.02479954 0.5723732 0.4078379 0.8724169 0.2693639 0.4283287 0.7779404 0.4597209
		0.4078379 0.8724169 0.2693639 0.1617848 0.9865413 0.02370437 0.4283287 0.7779404 0.4597209
		0.008386678 0.8453008 -0.5342249 0.1617848 0.9865413 0.02370437 0.4078379 0.8724169 0.2693639
		0.1617848 0.9865413 0.02370437 0.2741776 0.8198977 0.5025877 0.4283287 0.7779404 0.4597209
		0.7435998 -0.01819298 0.6683775 0.4283287 0.7779404 0.4597209 0.2741776 0.8198977 0.5025877
		0.4283287 0.7779404 0.4597209 0.7435998 -0.01819298 0.6683775 0.8196181 0.02479954 0.5723732
		0.2741776 0.8198977 0.5025877 0.5447972 -0.02971775 0.8380411 0.7435998 -0.01819298 0.6683775
		0.7435998 -0.01819298 0.6683775 0.5447972 -0.02971775 0.8380411 0.3051229 -0.7256073 0.616761
		0.3051229 -0.7256073 0.616761 0.5081793 -0.7422644 0.4368037 0.7435998 -0.01819298 0.6683775
		0.6527866 -0.6677851 0.3576772 0.5081793 -0.7422644 0.4368037 0.3051229 -0.7256073 0.616761
		0.4481118 -0.8415973 0.3015125 0.8196181 0.02479954 0.5723732 0.7435998 -0.01819298 0.6683775
		0.7435998 -0.01819298 0.6683775 0.5081793 -0.7422644 0.4368037 0.4481118 -0.8415973 0.3015125
		0.8196181 0.02479954 0.5723732 0.4481118 -0.8415973 0.3015125 0.4365184 -0.8502607 0.2941232
		-0.2340914 -0.9085863 -0.3459368 0.4365184 -0.8502607 0.2941232 0.4481118 -0.8415973 0.3015125
		0.4481118 -0.8415973 0.3015125 -0.3238709 -0.8530203 -0.4092237 -0.2340914 -0.9085863 -0.3459368
		-0.3238709 -0.8530203 -0.4092237 0.4481118 -0.8415973 0.3015125 0.5081793 -0.7422644 0.4368037
		-0.6756942 -0.1597132 -0.7196729 -0.2340914 -0.9085863 -0.3459368 -0.3238709 -0.8530203 -0.4092237
		-0.3238709 -0.8530203 -0.4092237 0.04915138 -0.08055434 -0.9955376 -0.6756942 -0.1597132 -0.7196729
		0.4365184 -0.8502607 0.2941232 0.7470188 -0.06113379 0.6619862 0.8196181 0.02479954 0.5723732
		0.5081793 -0.7422644 0.4368037 0.6310561 -0.69887 -0.3366731 -0.3238709 -0.8530203 -0.4092237
		0.6310561 -0.69887 -0.3366731 0.04915138 -0.08055434 -0.9955376 -0.3238709 -0.8530203 -0.4092237
		0.6310561 -0.69887 -0.3366731 0.5081793 -0.7422644 0.4368037 0.6527866 -0.6677851 0.3576772
		0.5252568 -0.8021098 0.2841217 0.9313943 -0.175754 0.3187714 0.8344008 -0.2474384 0.4924934
		0.927869 0.2919582 0.23199 0.8344008 -0.2474384 0.4924934 0.9313943 -0.175754 0.3187714
		0.927869 0.2919582 0.23199 0.863826 0.2330949 0.4466221 0.8344008 -0.2474384 0.4924934
		0.7617304 0.4768342 0.4386297 0.863826 0.2330949 0.4466221 0.927869 0.2919582 0.23199
		0.7617304 0.4768342 0.4386297 0.927869 0.2919582 0.23199 0.8219056 0.536203 0.1922437
		0.5140038 0.8118614 0.276914 0.7617304 0.4768342 0.4386297 0.8219056 0.536203 0.1922437
		0.5140038 0.8118614 0.276914 0.3981767 0.8531575 0.3370126 0.7617304 0.4768342 0.4386297
		0.5140038 0.8118614 0.276914 -0.5046745 0.8376214 -0.2090314 0.3981767 0.8531575 0.3370126
		0.5140038 0.8118614 0.276914 -0.5829449 0.7964757 -0.160629 -0.5046745 0.8376214 -0.2090314
		-0.6989471 0.5124104 -0.4989074 -0.5829449 0.7964757 -0.160629 -0.809799 0.1021224 -0.5777513
		-0.4099942 0.7016779 -0.5827116 -0.6989471 0.5124104 -0.4989074 -0.809799 0.1021224 -0.5777513
		-0.4918987 -0.7129071 -0.499799 -0.7209436 0.672852 -0.1658629 0.07482556 0.2337157 -0.9694215
		-0.7778687 -0.1582185 -0.6081836 -0.3903822 -0.904018 -0.1742214 -0.7402955 -0.1869205 -0.6457734
		-0.3903822 -0.904018 -0.1742214 -0.7778687 -0.1582185 -0.6081836 -0.7277235 -0.03861643 -0.6847826
		0.6096695 -0.125321 0.7826862 0.2107866 -0.8951398 0.3928026 0.2785068 -0.8792214 0.3865275
		0.2785068 -0.8792214 0.3865275 0.723692 -0.03498394 0.6892358 0.6096695 -0.125321 0.7826862
		0.4321339 0.8286834 0.3557305 0.6096695 -0.125321 0.7826862 0.723692 -0.03498394 0.6892358
		0.723692 -0.03498394 0.6892358 0.456403 0.8381634 0.2986275 0.4321339 0.8286834 0.3557305
		-0.3157513 0.8782812 -0.3590587 0.4321339 0.8286834 0.3557305 0.456403 0.8381634 0.2986275
		0.456403 0.8381634 0.2986275 -0.2789894 0.8766078 -0.3920761 -0.3157513 0.8782812 -0.3590587
		-0.7778687 -0.1582185 -0.6081836 -0.3157513 0.8782812 -0.3590587 -0.2789894 0.8766078 -0.3920761
		-0.2789894 0.8766078 -0.3920761 -0.7277235 -0.03861643 -0.6847826 -0.7778687 -0.1582185 -0.6081836
		-0.5447971 -0.02971749 0.8380411 -0.2509209 0.8378153 0.4848753 -0.2741776 0.8198977 0.5025877
		-0.2509209 0.8378153 0.4848753 -0.1617843 0.9865414 0.02370423 -0.2741776 0.8198977 0.5025877
		-0.1617843 0.9865414 0.02370423 -0.2509209 0.8378153 0.4848753 -0.156758 0.9861196 -0.05472594
		-0.156758 0.9861196 -0.05472594 -0.008386717 0.8453006 -0.5342253 -0.1617843 0.9865414 0.02370423
		0.8959585 -0.06662513 -0.4391119 0.8097991 0.1021238 -0.577751 0.4966678 0.1910452 -0.846654
		0.8097991 0.1021238 -0.577751 0.8959585 -0.06662513 -0.4391119 0.9295852 -0.1313299 -0.344418
		0.954247 -0.16046 -0.2523198 0.8097991 0.1021238 -0.577751 0.9295852 -0.1313299 -0.344418
		0.954247 -0.16046 -0.2523198 0.5829442 0.7964767 -0.1606265 0.8097991 0.1021238 -0.577751
		0.5829442 0.7964767 -0.1606265 0.954247 -0.16046 -0.2523198 0.7419131 0.6657266 0.07983093
		0.4966678 0.1910452 -0.846654 0.8097991 0.1021238 -0.577751 0.409995 0.7016775 -0.5827116
		0.4966678 0.1910452 -0.846654 0.409995 0.7016775 -0.5827116 -0.2888916 0.7212244 -0.6295848
		0.4966678 0.1910452 -0.846654 -0.2888916 0.7212244 -0.6295848 -0.6884433 -0.4499657 -0.5688381
		0.4966678 0.1910452 -0.846654 -0.6884433 -0.4499657 -0.5688381 0.286714 -0.8282552 -0.4814441
		0.4966678 0.1910452 -0.846654 0.286714 -0.8282552 -0.4814441 0.7185687 -0.5439123 -0.4333803
		0.8959585 -0.06662513 -0.4391119 0.4966678 0.1910452 -0.846654 0.7185687 -0.5439123 -0.4333803
		-0.995451 0.05976256 -0.07420066 -0.6884433 -0.4499657 -0.5688381 -0.2888916 0.7212244 -0.6295848
		-0.2888916 0.7212244 -0.6295848 0.111541 0.9461415 -0.3039323 -0.995451 0.05976256 -0.07420066
		0.111541 0.9461415 -0.3039323 -0.2888916 0.7212244 -0.6295848 0.6232037 0.7010387 -0.3466437
		-0.2888916 0.7212244 -0.6295848 0.409995 0.7016775 -0.5827116 0.6232037 0.7010387 -0.3466437
		0.409995 0.7016775 -0.5827116 0.8918774 0.4151913 -0.1793624 0.6232037 0.7010387 -0.3466437
		0.8808372 0.2503189 -0.4018287 0.8918774 0.4151913 -0.1793624 0.409995 0.7016775 -0.5827116
		0.8918774 0.4151913 -0.1793624 0.8808372 0.2503189 -0.4018287 0.6173921 -0.784849 0.053282
		0.409995 0.7016775 -0.5827116 0.6989477 0.5124097 -0.4989071 0.8808372 0.2503189 -0.4018287
		0.8808372 0.2503189 -0.4018287 0.6989477 0.5124097 -0.4989071 0.5046737 0.837622 -0.2090302
		0.6989477 0.5124097 -0.4989071 0.5829442 0.7964767 -0.1606265 0.5046737 0.837622 -0.2090302
		0.8808372 0.2503189 -0.4018287 0.5046737 0.837622 -0.2090302 0.4210876 0.8690627 -0.2596444
		0.8918774 0.4151913 -0.1793624 0.6173921 -0.784849 0.053282 0.9446244 -0.3271476 -0.02567524
		0.9446244 -0.3271476 -0.02567524 0.6232037 0.7010387 -0.3466437 0.8918774 0.4151913 -0.1793624
		-0.9798669 0.05438165 -0.1921032 -0.995451 0.05976256 -0.07420066 0.111541 0.9461415 -0.3039323
		0.9322869 -0.3092258 -0.1876715 0.6232037 0.7010387 -0.3466437 0.9446244 -0.3271476 -0.02567524
		0.9322869 -0.3092258 -0.1876715 0.111541 0.9461415 -0.3039323 0.6232037 0.7010387 -0.3466437
		0.111541 0.9461415 -0.3039323 0.9322869 -0.3092258 -0.1876715 0.583296 -0.06329232 -0.80979
		0.583296 -0.06329232 -0.80979 -0.08042879 0.7732269 -0.6290083 0.111541 0.9461415 -0.3039323
		0.111541 0.9461415 -0.3039323 -0.08042879 0.7732269 -0.6290083 -0.9798669 0.05438165 -0.1921032
		-0.39818 0.853155 0.3370154 0.4210876 0.8690627 -0.2596444 0.5046737 0.837622 -0.2090302
		0.4210876 0.8690627 -0.2596444 -0.39818 0.853155 0.3370154 -0.5624272 0.7430491 0.3627034
		-0.2530394 -0.7310321 -0.63369 -0.9798669 0.05438165 -0.1921032 -0.08042879 0.7732269 -0.6290083
		-0.2530394 -0.7310321 -0.63369 -0.08042879 0.7732269 -0.6290083 0.583296 -0.06329232 -0.80979
		-0.39818 0.853155 0.3370154 -0.7617307 0.4768329 0.4386306 -0.5624272 0.7430491 0.3627034
		-0.8130023 -0.09981565 0.5736409 -0.5624272 0.7430491 0.3627034 -0.7617307 0.4768329 0.4386306
		-0.8130023 -0.09981565 0.5736409 -0.7617307 0.4768329 0.4386306 -0.8638258 0.2330957 0.4466222
		-0.8638258 0.2330957 0.4466222 -0.8344001 -0.2474392 0.492494 -0.8130023 -0.09981565 0.5736409
		-0.3973588 -0.8611684 0.3170093 -0.8130023 -0.09981565 0.5736409 -0.8344001 -0.2474392 0.492494
		-0.3973588 -0.8611684 0.3170093 -0.3949466 -0.815366 0.423315 -0.8130023 -0.09981565 0.5736409
		0.09712793 -0.9873528 0.1253015 -0.3949466 -0.815366 0.423315 -0.3973588 -0.8611684 0.3170093
		0.09712793 -0.9873528 0.1253015 0.6173921 -0.784849 0.053282 -0.3949466 -0.815366 0.423315
		0.09712793 -0.9873528 0.1253015 0.9446244 -0.3271476 -0.02567524 0.6173921 -0.784849 0.053282
		0.9446244 -0.3271476 -0.02567524 0.09712793 -0.9873528 0.1253015 -0.1593018 -0.9862526 0.04391717
		-0.1593018 -0.9862526 0.04391717 0.9322869 -0.3092258 -0.1876715 0.9446244 -0.3271476 -0.02567524
		0.9322869 -0.3092258 -0.1876715 -0.1593018 -0.9862526 0.04391717 -0.2530394 -0.7310321 -0.63369
		-0.9798669 0.05438165 -0.1921032 -0.2530394 -0.7310321 -0.63369 -0.1593018 -0.9862526 0.04391717
		-0.1593018 -0.9862526 0.04391717 -0.995451 0.05976256 -0.07420066 -0.9798669 0.05438165 -0.1921032
		-0.2530394 -0.7310321 -0.63369 0.583296 -0.06329232 -0.80979 0.9322869 -0.3092258 -0.1876715
		-0.6884433 -0.4499657 -0.5688381 -0.995451 0.05976256 -0.07420066 -0.1593018 -0.9862526 0.04391717
		-0.1593018 -0.9862526 0.04391717 0.09712793 -0.9873528 0.1253015 -0.6884433 -0.4499657 -0.5688381
		0.09712793 -0.9873528 0.1253015 0.286714 -0.8282552 -0.4814441 -0.6884433 -0.4499657 -0.5688381
		0.09712793 -0.9873528 0.1253015 -0.3973588 -0.8611684 0.3170093 0.286714 -0.8282552 -0.4814441
		-0.3973588 -0.8611684 0.3170093 -0.5252562 -0.8021097 0.284123 0.286714 -0.8282552 -0.4814441
		-0.5252562 -0.8021097 0.284123 -0.3973588 -0.8611684 0.3170093 -0.8344001 -0.2474392 0.492494
		-0.5252562 -0.8021097 0.284123 -0.3156073 -0.9466375 0.06534149 0.286714 -0.8282552 -0.4814441
		-0.3156073 -0.9466375 0.06534149 0.7185687 -0.5439123 -0.4333803 0.286714 -0.8282552 -0.4814441
		0.7185687 -0.5439123 -0.4333803 -0.3156073 -0.9466375 0.06534149 -0.1608735 -0.9860887 0.04181858
		-0.3156073 -0.9466375 0.06534149 -0.9744102 0.1034927 0.1995345 -0.1608735 -0.9860887 0.04181858
		-0.9876874 0.1401531 0.06950349 -0.1608735 -0.9860887 0.04181858 -0.9744102 0.1034927 0.1995345
		-0.1608735 -0.9860887 0.04181858 -0.9876874 0.1401531 0.06950349 -0.2189762 -0.974337 0.0521237
		0.9699 -0.2161025 -0.1122217 -0.1608735 -0.9860887 0.04181858 -0.2189762 -0.974337 0.0521237
		-0.1608735 -0.9860887 0.04181858 0.9699 -0.2161025 -0.1122217 0.8824888 -0.3219917 -0.3428335
		-0.1608735 -0.9860887 0.04181858 0.8824888 -0.3219917 -0.3428335 0.7185687 -0.5439123 -0.4333803
		-0.02002286 -0.8085025 -0.5881521 0.9699 -0.2161025 -0.1122217 -0.2189762 -0.974337 0.0521237
		0.9699 -0.2161025 -0.1122217 -0.02002286 -0.8085025 -0.5881521 0.9378552 -0.1635598 -0.3060648
		-0.2189762 -0.974337 0.0521237 -0.8003041 0.01496803 -0.5994075 -0.02002286 -0.8085025 -0.5881521
		-0.8003041 0.01496803 -0.5994075 -0.2189762 -0.974337 0.0521237 -0.9876874 0.1401531 0.06950349
		-0.9744102 0.1034927 0.1995345 -0.3156073 -0.9466375 0.06534149 -0.9708377 -0.2025799 0.1282018
		-0.9708377 -0.2025799 0.1282018 -0.3156073 -0.9466375 0.06534149 -0.5252562 -0.8021097 0.284123
		-0.9744102 0.1034927 0.1995345 0.1477355 0.9815146 -0.1216689 -0.9876874 0.1401531 0.06950349
		0.1477355 0.9815146 -0.1216689 -0.9744102 0.1034927 0.1995345 0.1693386 0.9288772 -0.3294109
		-0.9708377 -0.2025799 0.1282018 0.1693386 0.9288772 -0.3294109 -0.9744102 0.1034927 0.1995345
		0.1693386 0.9288772 -0.3294109 -0.9708377 -0.2025799 0.1282018 -0.9838877 -0.1021116 -0.1467593
		-0.9838877 -0.1021116 -0.1467593 -0.9708377 -0.2025799 0.1282018 -0.9313946 -0.1757534 0.3187708
		-0.9876874 0.1401531 0.06950349 0.1673483 0.6992273 -0.6950365 -0.8003041 0.01496803 -0.5994075
		0.1673483 0.6992273 -0.6950365 -0.9876874 0.1401531 0.06950349 0.1477355 0.9815146 -0.1216689
		-0.9708377 -0.2025799 0.1282018 -0.5252562 -0.8021097 0.284123 -0.9313946 -0.1757534 0.3187708
		-0.9973934 0.01845017 -0.06975637 -0.9838877 -0.1021116 -0.1467593 -0.9313946 -0.1757534 0.3187708
		-0.9973934 0.01845017 -0.06975637 -0.9313946 -0.1757534 0.3187708 -0.927869 0.2919584 0.23199
		-0.9556379 0.2331821 -0.1799503 -0.9838877 -0.1021116 -0.1467593 -0.9973934 0.01845017 -0.06975637
		-0.9838877 -0.1021116 -0.1467593 -0.9556379 0.2331821 -0.1799503 -0.4107854 -0.8980933 -0.1571108
		-0.8778996 0.1337741 -0.459779 -0.4107854 -0.8980933 -0.1571108 -0.9556379 0.2331821 -0.1799503
		-0.9556379 0.2331821 -0.1799503 0.1873068 0.9805479 -0.05866795 -0.8778996 0.1337741 -0.459779
		0.1873068 0.9805479 -0.05866795 -0.9556379 0.2331821 -0.1799503 0.04211645 0.9861209 -0.1605982
		-0.9973934 0.01845017 -0.06975637 0.04211645 0.9861209 -0.1605982 -0.9556379 0.2331821 -0.1799503
		-0.4107854 -0.8980933 -0.1571108 -0.8778996 0.1337741 -0.459779 -0.1676909 -0.9780779 -0.1234645
		-0.4713859 0.1090234 -0.8751624 -0.1676909 -0.9780779 -0.1234645 -0.8778996 0.1337741 -0.459779
		-0.1676909 -0.9780779 -0.1234645 -0.4713859 0.1090234 -0.8751624 0.3492239 -0.7472151 -0.5654311
		0.04211645 0.9861209 -0.1605982 -0.9973934 0.01845017 -0.06975637 -0.8780189 0.4554806 -0.1470384
		-0.9973934 0.01845017 -0.06975637 -0.927869 0.2919584 0.23199 -0.8780189 0.4554806 -0.1470384
		-0.927869 0.2919584 0.23199 -0.8705176 0.4869042 -0.07157777 -0.8780189 0.4554806 -0.1470384
		-0.8705176 0.4869042 -0.07157777 -0.927869 0.2919584 0.23199 -0.8219054 0.5362027 0.192245
		-0.5140046 0.8118601 0.2769159 -0.8705176 0.4869042 -0.07157777 -0.8219054 0.5362027 0.192245
		-0.8705176 0.4869042 -0.07157777 -0.5140046 0.8118601 0.2769159 -0.503906 0.8502535 0.1521437
		-0.5140046 0.8118601 0.2769159 0.7419131 0.6657266 0.07983093 -0.503906 0.8502535 0.1521437
		0.7419131 0.6657266 0.07983093 -0.5140046 0.8118601 0.2769159 0.5829442 0.7964767 -0.1606265
		-0.8778996 0.1337741 -0.459779 0.5504788 0.6984904 -0.4572573 -0.4713859 0.1090234 -0.8751624
		0.5504788 0.6984904 -0.4572573 -0.8778996 0.1337741 -0.459779 0.1873068 0.9805479 -0.05866795
		-0.9054058 0.2512684 -0.3422054 -0.8780189 0.4554806 -0.1470384 -0.8705176 0.4869042 -0.07157777
		-0.8705176 0.4869042 -0.07157777 0.06409559 0.9947996 -0.07915539 -0.9054058 0.2512684 -0.3422054
		0.2478851 0.9630795 0.1050286 -0.9054058 0.2512684 -0.3422054 0.06409559 0.9947996 -0.07915539
		-0.9054058 0.2512684 -0.3422054 0.2478851 0.9630795 0.1050286 -0.7527509 0.2418558 -0.6122679
		-0.7527509 0.2418558 -0.6122679 -0.3324887 -0.8969743 -0.2913565 -0.9054058 0.2512684 -0.3422054
		-0.9054058 0.2512684 -0.3422054 -0.3324887 -0.8969743 -0.2913565 -0.8780189 0.4554806 -0.1470384
		-0.3324887 -0.8969743 -0.2913565 -0.7527509 0.2418558 -0.6122679 -0.232535 -0.9401326 -0.2491551
		-0.176533 0.2317877 -0.9566141 -0.232535 -0.9401326 -0.2491551 -0.7527509 0.2418558 -0.6122679
		-0.232535 -0.9401326 -0.2491551 -0.176533 0.2317877 -0.9566141 0.4290945 -0.7364221 -0.52303
		-0.7527509 0.2418558 -0.6122679 0.6949874 0.6912277 -0.1979816 -0.176533 0.2317877 -0.9566141
		0.6949874 0.6912277 -0.1979816 -0.7527509 0.2418558 -0.6122679 0.2478851 0.9630795 0.1050286
		-0.8788913 0.2487262 -0.4070446 -0.8705176 0.4869042 -0.07157777 -0.503906 0.8502535 0.1521437
		0.7419131 0.6657266 0.07983093 -0.008555858 0.9998847 0.01254431 -0.503906 0.8502535 0.1521437
		-0.503906 0.8502535 0.1521437 -0.008555858 0.9998847 0.01254431 -0.8788913 0.2487262 -0.4070446
		0.2361244 0.9551196 0.1788624 -0.8788913 0.2487262 -0.4070446 -0.008555858 0.9998847 0.01254431
		-0.8788913 0.2487262 -0.4070446 0.2361244 0.9551196 0.1788624 -0.6756294 0.2912159 -0.6772874
		-0.6756294 0.2912159 -0.6772874 -0.2736549 -0.8762172 -0.3966819 -0.8788913 0.2487262 -0.4070446
		-0.8788913 0.2487262 -0.4070446 -0.2736549 -0.8762172 -0.3966819 -0.8705176 0.4869042 -0.07157777
		-0.2736549 -0.8762172 -0.3966819 -0.6756294 0.2912159 -0.6772874 -0.2116021 -0.9021194 -0.3760387
		-0.07482777 0.2337164 -0.9694212 -0.2116021 -0.9021194 -0.3760387 -0.6756294 0.2912159 -0.6772874
		-0.2116021 -0.9021194 -0.3760387 -0.07482777 0.2337164 -0.9694212 0.4918997 -0.7129069 -0.4997984
		-0.6756294 0.2912159 -0.6772874 0.7209443 0.6728514 -0.1658623 -0.07482777 0.2337164 -0.9694212
		0.7209443 0.6728514 -0.1658623 -0.6756294 0.2912159 -0.6772874 0.2361244 0.9551196 0.1788624
		0.2361244 0.9551196 0.1788624 0.6958687 -0.3301195 0.6377992 0.7209443 0.6728514 -0.1658623
		0.6958687 -0.3301195 0.6377992 0.2361244 0.9551196 0.1788624 0.6693057 -0.5081852 0.5420126
		0.6693057 -0.5081852 0.5420126 0.4918997 -0.7129069 -0.4997984 0.6958687 -0.3301195 0.6377992
		0.7209443 0.6728514 -0.1658623 0.6958687 -0.3301195 0.6377992 0.4918997 -0.7129069 -0.4997984
		0.4918997 -0.7129069 -0.4997984 0.6693057 -0.5081852 0.5420126 -0.2116021 -0.9021194 -0.3760387
		0.6693057 -0.5081852 0.5420126 -0.2736549 -0.8762172 -0.3966819 -0.2116021 -0.9021194 -0.3760387
		-0.2736549 -0.8762172 -0.3966819 0.6693057 -0.5081852 0.5420126 0.958493 -0.2699899 0.09163283
		0.2361244 0.9551196 0.1788624 0.958493 -0.2699899 0.09163283 0.6693057 -0.5081852 0.5420126
		0.958493 -0.2699899 0.09163283 0.2361244 0.9551196 0.1788624 -0.008555858 0.9998847 0.01254431
		0.954247 -0.16046 -0.2523198 -0.2736549 -0.8762172 -0.3966819 0.958493 -0.2699899 0.09163283
		-0.2736549 -0.8762172 -0.3966819 0.954247 -0.16046 -0.2523198 -0.8705176 0.4869042 -0.07157777
		0.954247 -0.16046 -0.2523198 0.06409559 0.9947996 -0.07915539 -0.8705176 0.4869042 -0.07157777
		0.9391803 -0.3267768 0.1056276 0.06409559 0.9947996 -0.07915539 0.954247 -0.16046 -0.2523198
		0.9391803 -0.3267768 0.1056276 0.2478851 0.9630795 0.1050286 0.06409559 0.9947996 -0.07915539
		0.2478851 0.9630795 0.1050286 0.9391803 -0.3267768 0.1056276 0.6843296 -0.4288586 0.5897229
		-0.3324887 -0.8969743 -0.2913565 0.6843296 -0.4288586 0.5897229 0.9391803 -0.3267768 0.1056276
		0.6843296 -0.4288586 0.5897229 -0.3324887 -0.8969743 -0.2913565 -0.232535 -0.9401326 -0.2491551
		0.4290945 -0.7364221 -0.52303 0.6843296 -0.4288586 0.5897229 -0.232535 -0.9401326 -0.2491551
		0.6843296 -0.4288586 0.5897229 0.4290945 -0.7364221 -0.52303 0.7623236 -0.3265679 0.5587631
		0.7623236 -0.3265679 0.5587631 0.2478851 0.9630795 0.1050286 0.6843296 -0.4288586 0.5897229
		0.9295852 -0.1313299 -0.344418 -0.3324887 -0.8969743 -0.2913565 0.9391803 -0.3267768 0.1056276
		0.9391803 -0.3267768 0.1056276 0.954247 -0.16046 -0.2523198 0.9295852 -0.1313299 -0.344418
		-0.3324887 -0.8969743 -0.2913565 0.9295852 -0.1313299 -0.344418 -0.8780189 0.4554806 -0.1470384
		0.9295852 -0.1313299 -0.344418 0.04211645 0.9861209 -0.1605982 -0.8780189 0.4554806 -0.1470384
		0.9488353 -0.292261 -0.1195626 0.04211645 0.9861209 -0.1605982 0.9295852 -0.1313299 -0.344418
		0.9488353 -0.292261 -0.1195626 0.1873068 0.9805479 -0.05866795 0.04211645 0.9861209 -0.1605982
		0.1873068 0.9805479 -0.05866795 0.9488353 -0.292261 -0.1195626 0.869072 -0.3140589 0.3822052
		-0.4107854 -0.8980933 -0.1571108 0.869072 -0.3140589 0.3822052 0.9488353 -0.292261 -0.1195626
		0.869072 -0.3140589 0.3822052 -0.4107854 -0.8980933 -0.1571108 -0.1676909 -0.9780779 -0.1234645
		0.3492239 -0.7472151 -0.5654311 0.869072 -0.3140589 0.3822052 -0.1676909 -0.9780779 -0.1234645
		0.869072 -0.3140589 0.3822052 0.3492239 -0.7472151 -0.5654311 0.9230518 -0.1614855 0.3491385
		0.9230518 -0.1614855 0.3491385 0.1873068 0.9805479 -0.05866795 0.869072 -0.3140589 0.3822052
		0.8959585 -0.06662513 -0.4391119 -0.4107854 -0.8980933 -0.1571108 0.9488353 -0.292261 -0.1195626
		0.9488353 -0.292261 -0.1195626 0.9295852 -0.1313299 -0.344418 0.8959585 -0.06662513 -0.4391119
		-0.4107854 -0.8980933 -0.1571108 0.8959585 -0.06662513 -0.4391119 -0.9838877 -0.1021116 -0.1467593
		0.8959585 -0.06662513 -0.4391119 0.1693386 0.9288772 -0.3294109 -0.9838877 -0.1021116 -0.1467593
		0.8824888 -0.3219917 -0.3428335 0.1693386 0.9288772 -0.3294109 0.8959585 -0.06662513 -0.4391119
		0.8824888 -0.3219917 -0.3428335 0.1477355 0.9815146 -0.1216689 0.1693386 0.9288772 -0.3294109
		0.1477355 0.9815146 -0.1216689 0.8824888 -0.3219917 -0.3428335 0.9699 -0.2161025 -0.1122217
		0.9378552 -0.1635598 -0.3060648 0.1477355 0.9815146 -0.1216689 0.9699 -0.2161025 -0.1122217
		0.1477355 0.9815146 -0.1216689 0.9378552 -0.1635598 -0.3060648 0.1673483 0.6992273 -0.6950365
		0.8824888 -0.3219917 -0.3428335 0.8959585 -0.06662513 -0.4391119 0.7185687 -0.5439123 -0.4333803
		0.1873068 0.9805479 -0.05866795 0.9230518 -0.1614855 0.3491385 0.5504788 0.6984904 -0.4572573
		0.5504788 0.6984904 -0.4572573 0.9230518 -0.1614855 0.3491385 0.3492239 -0.7472151 -0.5654311
		0.1673483 0.6992273 -0.6950365 0.9378552 -0.1635598 -0.3060648 -0.02002286 -0.8085025 -0.5881521
		-0.02002286 -0.8085025 -0.5881521 -0.8003041 0.01496803 -0.5994075 0.1673483 0.6992273 -0.6950365
		0.3492239 -0.7472151 -0.5654311 -0.4713859 0.1090234 -0.8751624 0.5504788 0.6984904 -0.4572573
		0.2478851 0.9630795 0.1050286 0.7623236 -0.3265679 0.5587631 0.6949874 0.6912277 -0.1979816
		0.6949874 0.6912277 -0.1979816 0.7623236 -0.3265679 0.5587631 0.4290945 -0.7364221 -0.52303
		0.4290945 -0.7364221 -0.52303 -0.176533 0.2317877 -0.9566141 0.6949874 0.6912277 -0.1979816
		0.958493 -0.2699899 0.09163283 0.7419131 0.6657266 0.07983093 0.954247 -0.16046 -0.2523198
		0.958493 -0.2699899 0.09163283 -0.008555858 0.9998847 0.01254431 0.7419131 0.6657266 0.07983093
		-0.5252562 -0.8021097 0.284123 -0.8344001 -0.2474392 0.492494 -0.9313946 -0.1757534 0.3187708
		-0.927869 0.2919584 0.23199 -0.9313946 -0.1757534 0.3187708 -0.8344001 -0.2474392 0.492494
		-0.927869 0.2919584 0.23199 -0.8344001 -0.2474392 0.492494 -0.8638258 0.2330957 0.4466222
		-0.7617307 0.4768329 0.4386306 -0.927869 0.2919584 0.23199 -0.8638258 0.2330957 0.4466222
		-0.7617307 0.4768329 0.4386306 -0.8219054 0.5362027 0.192245 -0.927869 0.2919584 0.23199
		-0.5140046 0.8118601 0.2769159 -0.8219054 0.5362027 0.192245 -0.7617307 0.4768329 0.4386306
		-0.5140046 0.8118601 0.2769159 -0.7617307 0.4768329 0.4386306 -0.39818 0.853155 0.3370154
		-0.5140046 0.8118601 0.2769159 -0.39818 0.853155 0.3370154 0.5046737 0.837622 -0.2090302
		-0.5140046 0.8118601 0.2769159 0.5046737 0.837622 -0.2090302 0.5829442 0.7964767 -0.1606265
		0.6989477 0.5124097 -0.4989071 0.8097991 0.1021238 -0.577751 0.5829442 0.7964767 -0.1606265
		0.409995 0.7016775 -0.5827116 0.8097991 0.1021238 -0.577751 0.6989477 0.5124097 -0.4989071
		0.4918997 -0.7129069 -0.4997984 -0.07482777 0.2337164 -0.9694212 0.7209443 0.6728514 -0.1658623
		0.3238708 -0.8530204 -0.4092236 0.6756934 -0.1597133 -0.7196736 -0.0491513 -0.08055419 -0.9955376
		-0.6496422 -0.6815617 -0.3368067 0.3238708 -0.8530204 -0.4092236 -0.0491513 -0.08055419 -0.9955376
		0.4378036 0.7538782 -0.4898935 0.6756934 -0.1597133 -0.7196736 0.3834248 0.8523253 -0.3557066
		0.6756934 -0.1597133 -0.7196736 0.4378036 0.7538782 -0.4898935 -0.0491513 -0.08055419 -0.9955376
		-0.4475888 0.7973146 0.4049121 0.4378036 0.7538782 -0.4898935 0.3834248 0.8523253 -0.3557066
		0.4378036 0.7538782 -0.4898935 -0.4475888 0.7973146 0.4049121 -0.4078383 0.8724167 0.2693638
		-0.7470186 -0.06113367 0.6619863 -0.4078383 0.8724167 0.2693638 -0.4475888 0.7973146 0.4049121
		-0.4078383 0.8724167 0.2693638 -0.7470186 -0.06113367 0.6619863 -0.8196183 0.0247994 0.572373
		-0.4365193 -0.8502601 0.2941236 -0.8196183 0.0247994 0.572373 -0.7470186 -0.06113367 0.6619863
		-0.8196183 0.0247994 0.572373 -0.4365193 -0.8502601 0.2941236 -0.4481118 -0.8415973 0.3015127
		-0.0491513 -0.08055419 -0.9955376 0.4378036 0.7538782 -0.4898935 -0.008386717 0.8453006 -0.5342253
		-0.4078383 0.8724167 0.2693638 -0.008386717 0.8453006 -0.5342253 0.4378036 0.7538782 -0.4898935
		-0.8196183 0.0247994 0.572373 -0.4283284 0.7779405 0.4597211 -0.4078383 0.8724167 0.2693638
		-0.4078383 0.8724167 0.2693638 -0.4283284 0.7779405 0.4597211 -0.1617843 0.9865414 0.02370423
		-0.008386717 0.8453006 -0.5342253 -0.4078383 0.8724167 0.2693638 -0.1617843 0.9865414 0.02370423
		-0.4283284 0.7779405 0.4597211 -0.8196183 0.0247994 0.572373 -0.7435998 -0.01819324 0.6683775
		-0.4481118 -0.8415973 0.3015127 -0.7435998 -0.01819324 0.6683775 -0.8196183 0.0247994 0.572373
		-0.4527117 -0.8905454 0.04450827 0.2380437 -0.9655468 0.1051401 0.005702203 -0.9088631 0.4170556
		-0.4527117 -0.8905454 0.04450827 -0.2801904 -0.9148632 -0.2907209 0.2380437 -0.9655468 0.1051401
		0.4117223 -0.8715748 0.2661618 0.005702203 -0.9088631 0.4170556 0.2380437 -0.9655468 0.1051401
		0.2380437 -0.9655468 0.1051401 0.6358325 -0.7716351 0.01721744 0.4117223 -0.8715748 0.2661618
		0.2164559 -0.9719777 0.09168505 0.6358325 -0.7716351 0.01721744 0.2380437 -0.9655468 0.1051401
		-0.2801904 -0.9148632 -0.2907209 0.2164559 -0.9719777 0.09168505 0.2380437 -0.9655468 0.1051401
		0.2164559 -0.9719777 0.09168505 0.4393108 -0.7993099 0.4100119 0.6358325 -0.7716351 0.01721744
		-0.2801904 -0.9148632 -0.2907209 0.1766875 -0.9667908 0.1846538 0.2164559 -0.9719777 0.09168505
		-0.2801904 -0.9148632 -0.2907209 -0.2249674 -0.9691087 0.1010836 0.1766875 -0.9667908 0.1846538
		-0.2249674 -0.9691087 0.1010836 0.2335168 -0.9723333 0.006157187 0.1766875 -0.9667908 0.1846538
		0.2335168 -0.9723333 0.006157187 0.4565995 -0.876601 0.1519458 0.1766875 -0.9667908 0.1846538
		0.4565995 -0.876601 0.1519458 0.2164559 -0.9719777 0.09168505 0.1766875 -0.9667908 0.1846538
		0.2335168 -0.9723333 0.006157187 0.4181506 -0.9039699 -0.08937834 0.4565995 -0.876601 0.1519458
		-0.2249674 -0.9691087 0.1010836 -0.3205369 -0.9462076 -0.04412726 0.2335168 -0.9723333 0.006157187
		0.4565995 -0.876601 0.1519458 0.3680422 -0.8940816 0.2552705 0.2164559 -0.9719777 0.09168505
		0.3680422 -0.8940816 0.2552705 0.4393108 -0.7993099 0.4100119 0.2164559 -0.9719777 0.09168505
		0.6358325 -0.7716351 0.01721744 0.6406577 -0.6243947 0.4468658 0.4117223 -0.8715748 0.2661618
		0.6406577 -0.6243947 0.4468658 0.05258897 -0.6085547 0.7917674 0.4117223 -0.8715748 0.2661618
		0.4117223 -0.8715748 0.2661618 0.05258897 -0.6085547 0.7917674 0.005702203 -0.9088631 0.4170556
		0.05258897 -0.6085547 0.7917674 -0.3163957 -0.4922791 0.8108977 0.005702203 -0.9088631 0.4170556
		0.6358325 -0.7716351 0.01721744 0.8774353 -0.4735283 0.0766701 0.6406577 -0.6243947 0.4468658
		0.4393108 -0.7993099 0.4100119 0.8774353 -0.4735283 0.0766701 0.6358325 -0.7716351 0.01721744
		0.8735598 0.07151275 -0.4814344 0.6406577 -0.6243947 0.4468658 0.8774353 -0.4735283 0.0766701
		0.8735598 0.07151275 -0.4814344 0.8986474 0.07356645 0.4324588 0.6406577 -0.6243947 0.4468658
		0.6406577 -0.6243947 0.4468658 0.8986474 0.07356645 0.4324588 0.2734984 0.02238967 0.9616118
		0.6406577 -0.6243947 0.4468658 0.2734984 0.02238967 0.9616118 0.05258897 -0.6085547 0.7917674
		0.2734984 0.02238967 0.9616118 -0.1138155 -0.01254307 0.9934227 0.05258897 -0.6085547 0.7917674
		0.05258897 -0.6085547 0.7917674 -0.1138155 -0.01254307 0.9934227 -0.3163957 -0.4922791 0.8108977
		0.4393108 -0.7993099 0.4100119 0.6791989 -0.4678138 0.5655432 0.8774353 -0.4735283 0.0766701
		0.736724 0.06031135 0.6734986 0.8774353 -0.4735283 0.0766701 0.6791989 -0.4678138 0.5655432
		0.736724 0.06031135 0.6734986 0.9356022 0.07659191 -0.3446477 0.8774353 -0.4735283 0.0766701
		0.9356022 0.07659191 -0.3446477 0.8735598 0.07151275 -0.4814344 0.8774353 -0.4735283 0.0766701
		0.7509339 0.06147452 0.6575099 0.736724 0.06031135 0.6734986 0.6791989 -0.4678138 0.5655432
		0.7509339 0.06147452 0.6575099 0.6791989 -0.4678138 0.5655432 0.6421998 -0.6532972 0.4009765
		0.6421998 -0.6532972 0.4009765 0.4393108 -0.7993099 0.4100119 0.3680422 -0.8940816 0.2552705
		0.6421998 -0.6532972 0.4009765 0.6791989 -0.4678138 0.5655432 0.4393108 -0.7993099 0.4100119
		0.7443332 -0.6500769 0.1528661 0.6421998 -0.6532972 0.4009765 0.3680422 -0.8940816 0.2552705
		0.7443332 -0.6500769 0.1528661 0.3680422 -0.8940816 0.2552705 0.4565995 -0.876601 0.1519458
		0.4181506 -0.9039699 -0.08937834 0.7443332 -0.6500769 0.1528661 0.4565995 -0.876601 0.1519458
		0.4181506 -0.9039699 -0.08937834 0.6530359 -0.7492445 -0.1103492 0.7443332 -0.6500769 0.1528661
		0.6530359 -0.7492445 -0.1103492 0.9796191 0.08019528 0.1841605 0.7443332 -0.6500769 0.1528661
		0.6530359 -0.7492445 -0.1103492 0.975465 0.07985553 -0.2051611 0.9796191 0.08019528 0.1841605
		0.9796191 0.08019528 0.1841605 0.9692329 0.07934459 0.2330065 0.7443332 -0.6500769 0.1528661
		0.9692329 0.07934459 0.2330065 0.6421998 -0.6532972 0.4009765 0.7443332 -0.6500769 0.1528661
		0.9692329 0.07934459 0.2330065 0.7509339 0.06147452 0.6575099 0.6421998 -0.6532972 0.4009765
		0.1530565 0.01252941 -0.988138 0.975465 0.07985553 -0.2051611 0.6530359 -0.7492445 -0.1103492
		0.1530565 0.01252941 -0.988138 0.6530359 -0.7492445 -0.1103492 -0.1120271 -0.1575653 -0.9811336
		-0.1120271 -0.1575653 -0.9811336 0.6530359 -0.7492445 -0.1103492 0.4181506 -0.9039699 -0.08937834
		-0.1120271 -0.1575653 -0.9811336 0.4181506 -0.9039699 -0.08937834 -0.1982473 0.02368192 -0.9798658
		-0.1982473 0.02368192 -0.9798658 0.4181506 -0.9039699 -0.08937834 0.2335168 -0.9723333 0.006157187
		-0.1982473 0.02368192 -0.9798658 0.2335168 -0.9723333 0.006157187 0.277751 0.08911377 -0.9565109
		0.277751 0.08911377 -0.9565109 0.2335168 -0.9723333 0.006157187 -0.3205369 -0.9462076 -0.04412726
		0.277751 0.08911377 -0.9565109 -0.3205369 -0.9462076 -0.04412726 -0.5583095 -0.06719591 -0.826907
		-0.5583095 -0.06719591 -0.826907 -0.3205369 -0.9462076 -0.04412726 -0.2249674 -0.9691087 0.1010836
		-0.5583095 -0.06719591 -0.826907 -0.2249674 -0.9691087 0.1010836 -0.6205646 0.6078926 -0.4953444
		-0.6205646 0.6078926 -0.4953444 -0.2249674 -0.9691087 0.1010836 -0.2801904 -0.9148632 -0.2907209
		-0.6205646 0.6078926 -0.4953444 -0.2801904 -0.9148632 -0.2907209 -0.7562264 0.2245101 -0.6145868
		-0.7562264 0.2245101 -0.6145868 -0.2801904 -0.9148632 -0.2907209 -0.4527117 -0.8905454 0.04450827
		-0.7562264 0.2245101 -0.6145868 -0.4527117 -0.8905454 0.04450827 -0.9288205 0.2492761 -0.2741419
		-0.9288205 0.2492761 -0.2741419 -0.4527117 -0.8905454 0.04450827 -0.5125209 -0.7761166 0.3673765
		-0.5125209 -0.7761166 0.3673765 -0.4527117 -0.8905454 0.04450827 0.005702203 -0.9088631 0.4170556
		-0.6964325 -0.4950018 0.519572 -0.5125209 -0.7761166 0.3673765 0.005702203 -0.9088631 0.4170556
		-0.6964325 -0.4950018 0.519572 0.005702203 -0.9088631 0.4170556 -0.3163957 -0.4922791 0.8108977
		-0.770344 -0.09625546 0.6303215 -0.6964325 -0.4950018 0.519572 -0.3163957 -0.4922791 0.8108977
		-0.770344 -0.09625546 0.6303215 -0.3163957 -0.4922791 0.8108977 -0.4376919 -0.04565942 0.897965
		-0.9071767 0.2032581 -0.3683971 -0.5125209 -0.7761166 0.3673765 -0.6964325 -0.4950018 0.519572
		-0.9288205 0.2492761 -0.2741419 -0.5125209 -0.7761166 0.3673765 -0.9071767 0.2032581 -0.3683971
		-0.9071767 0.2032581 -0.3683971 -0.6964325 -0.4950018 0.519572 -0.9153627 0.06984495 -0.396526
		-0.9153627 0.06984495 -0.396526 -0.6964325 -0.4950018 0.519572 -0.770344 -0.09625546 0.6303215
		-0.9153627 0.06984495 -0.396526 -0.770344 -0.09625546 0.6303215 -0.8749958 -0.1429822 -0.4625347
		-0.1138155 -0.01254307 0.9934227 -0.4376919 -0.04565942 0.897965 -0.3163957 -0.4922791 0.8108977
		-0.7562264 0.2245101 -0.6145868 -0.9288205 0.2492761 -0.2741419 -0.3726635 0.7686207 -0.5199463
		-0.6205646 0.6078926 -0.4953444 -0.7562264 0.2245101 -0.6145868 -0.3726635 0.7686207 -0.5199463
		-0.9288205 0.2492761 -0.2741419 -0.9071767 0.2032581 -0.3683971 -0.3726635 0.7686207 -0.5199463
		-0.9071767 0.2032581 -0.3683971 -0.9153627 0.06984495 -0.396526 -0.3726635 0.7686207 -0.5199463
		0.277751 0.08911377 -0.9565109 -0.6205646 0.6078926 -0.4953444 -0.3726635 0.7686207 -0.5199463
		-0.1982473 0.02368192 -0.9798658 0.277751 0.08911377 -0.9565109 -0.3726635 0.7686207 -0.5199463
		-0.5583095 -0.06719591 -0.826907 -0.6205646 0.6078926 -0.4953444 0.277751 0.08911377 -0.9565109
		-0.1120271 -0.1575653 -0.9811336 -0.1982473 0.02368192 -0.9798658 -0.3726635 0.7686207 -0.5199463
		0.1530565 0.01252941 -0.988138 -0.1120271 -0.1575653 -0.9811336 -0.3726635 0.7686207 -0.5199463
		0.1530565 0.01252941 -0.988138 -0.3726635 0.7686207 -0.5199463 -0.8526281 -0.06979923 -0.5178353
		-0.9307361 -0.07619419 -0.3576659 -0.8526281 -0.06979923 -0.5178353 -0.3726635 0.7686207 -0.5199463
		-0.7351156 -0.06017892 -0.6752655 -0.9307361 -0.07619419 -0.3576659 -0.3726635 0.7686207 -0.5199463
		0.2522447 0.01536618 -0.9675415 -0.7351156 -0.06017892 -0.6752655 -0.3726635 0.7686207 -0.5199463
		-0.3726635 0.7686207 -0.5199463 -0.8749958 -0.1429822 -0.4625347 0.2522447 0.01536618 -0.9675415
		-0.3726635 0.7686207 -0.5199463 -0.9153627 0.06984495 -0.396526 -0.8749958 -0.1429822 -0.4625347
		-0.5915199 0.8050611 0.04450735 0.0778408 0.9914064 0.1051391 -0.4252508 0.8571126 -0.2907224
		-0.5915199 0.8050611 0.04450735 -0.1317133 0.9091595 0.3950701 0.0778408 0.9914064 0.1051391
		0.2644903 0.9269322 0.2661612 0.0778408 0.9914064 0.1051391 -0.1317133 0.9091595 0.3950701
		0.0778408 0.9914064 0.1051391 0.2644903 0.9269322 0.2661612 0.5018717 0.8647707 0.01721627
		0.05549379 0.9942406 0.09168492 0.0778408 0.9914064 0.1051391 0.5018717 0.8647707 0.01721627
		-0.4252508 0.8571126 -0.2907224 0.0778408 0.9914064 0.1051391 0.05549379 0.9942406 0.09168492
		0.05549379 0.9942406 0.09168492 0.5018717 0.8647707 0.01721627 0.3034649 0.8601164 0.4100109
		-0.4252508 0.8571126 -0.2907224 0.05549379 0.9942406 0.09168492 0.01709841 0.9826549 0.1846537
		-0.4252508 0.8571126 -0.2907224 0.01709841 0.9826549 0.1846537 -0.3795856 0.9196178 0.1010837
		-0.3795856 0.9196178 0.1010837 0.01709841 0.9826549 0.1846537 0.0722712 0.997366 0.006153567
		0.0722712 0.997366 0.006153567 0.01709841 0.9826549 0.1846537 0.3079515 0.9391904 0.1519451
		0.3079515 0.9391904 0.1519451 0.01709841 0.9826549 0.1846537 0.05549379 0.9942406 0.09168492
		0.0722712 0.997366 0.006153567 0.3079515 0.9391904 0.1519451 0.2655641 0.9599411 -0.08937988
		-0.3795856 0.9196178 0.1010837 0.0722712 0.997366 0.006153567 -0.4701561 0.8814793 -0.04413074
		0.3079515 0.9391904 0.1519451 0.05549379 0.9942406 0.09168492 0.2177314 0.942035 0.2552705
		0.2177314 0.942035 0.2552705 0.05549379 0.9942406 0.09168492 0.3034649 0.8601164 0.4100109
		0.5018717 0.8647707 0.01721627 0.2644903 0.9269322 0.2661612 0.5305782 0.7202761 0.4468658
		0.5305782 0.7202761 0.4468658 0.2644903 0.9269322 0.2661612 -0.02777857 0.6114192 0.7908191
		0.2644903 0.9269322 0.2661612 -0.1317133 0.9091595 0.3950701 -0.02777857 0.6114192 0.7908191
		-0.02777857 0.6114192 0.7908191 -0.1317133 0.9091595 0.3950701 -0.3536134 0.4826847 0.8012322
		-0.8088635 0.3701669 0.4568549 -0.3536134 0.4826847 0.8012322 -0.1317133 0.9091595 0.3950701
		-0.8088635 0.3701669 0.4568549 -0.1317133 0.9091595 0.3950701 -0.6047587 0.729767 0.3189156
		0.5018717 0.8647707 0.01721627 0.5305782 0.7202761 0.4468658 0.7887399 0.6099272 0.07666954
		0.8735598 0.07151275 -0.4814344 0.7887399 0.6099272 0.07666954 0.5305782 0.7202761 0.4468658
		0.8735598 0.07151275 -0.4814344 0.5305782 0.7202761 0.4468658 0.8986474 0.07356645 0.4324588
		0.5305782 0.7202761 0.4468658 0.2734984 0.02238967 0.9616118 0.8986474 0.07356645 0.4324588
		0.5305782 0.7202761 0.4468658 -0.02777857 0.6114192 0.7908191 0.2734984 0.02238967 0.9616118
		0.2734984 0.02238967 0.9616118 -0.02777857 0.6114192 0.7908191 -0.1138155 -0.01254307 0.9934227
		-0.02777857 0.6114192 0.7908191 -0.3536134 0.4826847 0.8012322 -0.1138155 -0.01254307 0.9934227
		0.6286962 0.7624783 0.1528655 0.3079515 0.9391904 0.1519451 0.2177314 0.942035 0.2552705
		0.2655641 0.9599411 -0.08937988 0.3079515 0.9391904 0.1519451 0.6286962 0.7624783 0.1528655
		0.6286962 0.7624783 0.1528655 0.2177314 0.942035 0.2552705 0.5273992 0.7490453 0.4009755
		0.5273992 0.7490453 0.4009755 0.2177314 0.942035 0.2552705 0.3034649 0.8601164 0.4100109
		0.3034649 0.8601164 0.4100109 0.7887399 0.6099272 0.07666954 0.5940731 0.5720487 0.5655418
		0.5273992 0.7490453 0.4009755 0.3034649 0.8601164 0.4100109 0.5940731 0.5720487 0.5655418
		0.736724 0.06031135 0.6734986 0.5940731 0.5720487 0.5655418 0.7887399 0.6099272 0.07666954
		0.736724 0.06031135 0.6734986 0.7887399 0.6099272 0.07666954 0.9356022 0.07659191 -0.3446477
		0.9356022 0.07659191 -0.3446477 0.7887399 0.6099272 0.07666954 0.8735598 0.07151275 -0.4814344
		0.7509339 0.06147452 0.6575099 0.5940731 0.5720487 0.5655418 0.736724 0.06031135 0.6734986
		0.7509339 0.06147452 0.6575099 0.5273992 0.7490453 0.4009755 0.5940731 0.5720487 0.5655418
		0.3034649 0.8601164 0.4100109 0.5018717 0.8647707 0.01721627 0.7887399 0.6099272 0.07666954
		0.9692329 0.07934459 0.2330065 0.6286962 0.7624783 0.1528655 0.5273992 0.7490453 0.4009755
		0.9692329 0.07934459 0.2330065 0.5273992 0.7490453 0.4009755 0.7509339 0.06147452 0.6575099
		0.9796191 0.08019528 0.1841605 0.6286962 0.7624783 0.1528655 0.9692329 0.07934459 0.2330065
		0.5224854 0.8454772 -0.1103508 0.6286962 0.7624783 0.1528655 0.9796191 0.08019528 0.1841605
		0.5224854 0.8454772 -0.1103508 0.9796191 0.08019528 0.1841605 0.975465 0.07985553 -0.2051611
		0.2655641 0.9599411 -0.08937988 0.6286962 0.7624783 0.1528655 0.5224854 0.8454772 -0.1103508
		0.1530565 0.01252941 -0.988138 0.5224854 0.8454772 -0.1103508 0.975465 0.07985553 -0.2051611
		0.1530565 0.01252941 -0.988138 -0.1361617 0.1372475 -0.9811336 0.5224854 0.8454772 -0.1103508
		-0.1361617 0.1372475 -0.9811336 0.2655641 0.9599411 -0.08937988 0.5224854 0.8454772 -0.1103508
		-0.1361617 0.1372475 -0.9811336 -0.1917562 -0.05561077 -0.9798658 0.2655641 0.9599411 -0.08937988
		-0.1917562 -0.05561077 -0.9798658 0.0722712 0.997366 0.006153567 0.2655641 0.9599411 -0.08937988
		-0.1917562 -0.05561077 -0.9798658 0.2885452 -0.04275731 -0.9565111 0.0722712 0.997366 0.006153567
		0.2885452 -0.04275731 -0.9565111 -0.4701561 0.8814793 -0.04413074 0.0722712 0.997366 0.006153567
		0.2885452 -0.04275731 -0.9565111 -0.5618052 -0.02450225 -0.8269066 -0.4701561 0.8814793 -0.04413074
		-0.5618052 -0.02450225 -0.8269066 -0.3795856 0.9196178 0.1010837 -0.4701561 0.8814793 -0.04413074
		-0.5618052 -0.02450225 -0.8269066 -0.5134345 -0.7007253 -0.4953473 -0.3795856 0.9196178 0.1010837
		-0.5134345 -0.7007253 -0.4953473 -0.4252508 0.8571126 -0.2907224 -0.3795856 0.9196178 0.1010837
		-0.5134345 -0.7007253 -0.4953473 -0.7096437 -0.3445109 -0.6145878 -0.4252508 0.8571126 -0.2907224
		-0.7096437 -0.3445109 -0.6145878 -0.5915199 0.8050611 0.04450735 -0.4252508 0.8571126 -0.2907224
		-0.7096437 -0.3445109 -0.6145878 -0.8759126 -0.3970175 -0.2741424 -0.5915199 0.8050611 0.04450735
		-0.8759126 -0.3970175 -0.2741424 -0.6047587 0.729767 0.3189156 -0.5915199 0.8050611 0.04450735
		-0.6047587 0.729767 0.3189156 -0.1317133 0.9091595 0.3950701 -0.5915199 0.8050611 0.04450735
		-0.8759126 -0.3970175 -0.2741424 -0.8245372 -0.2917756 -0.4847736 -0.6047587 0.729767 0.3189156
		-0.8245372 -0.2917756 -0.4847736 -0.8088635 0.3701669 0.4568549 -0.6047587 0.729767 0.3189156
		-0.8245372 -0.2917756 -0.4847736 -0.8914562 -0.1938518 -0.4095453 -0.8088635 0.3701669 0.4568549
		-0.8914562 -0.1938518 -0.4095453 -0.770344 -0.09625546 0.6303215 -0.8088635 0.3701669 0.4568549
		-0.770344 -0.09625546 0.6303215 -0.3536134 0.4826847 0.8012322 -0.8088635 0.3701669 0.4568549
		-0.770344 -0.09625546 0.6303215 -0.4376919 -0.04565942 0.897965 -0.3536134 0.4826847 0.8012322
		-0.8914562 -0.1938518 -0.4095453 -0.8749958 -0.1429822 -0.4625347 -0.770344 -0.09625546 0.6303215
		-0.3536134 0.4826847 0.8012322 -0.4376919 -0.04565942 0.897965 -0.1138155 -0.01254307 0.9934227
		-0.2405904 -0.8186933 -0.5213996 -0.8759126 -0.3970175 -0.2741424 -0.7096437 -0.3445109 -0.6145878
		-0.2405904 -0.8186933 -0.5213996 -0.7096437 -0.3445109 -0.6145878 -0.5134345 -0.7007253 -0.4953473
		-0.2405904 -0.8186933 -0.5213996 -0.8245372 -0.2917756 -0.4847736 -0.8759126 -0.3970175 -0.2741424
		-0.2405904 -0.8186933 -0.5213996 -0.8914562 -0.1938518 -0.4095453 -0.8245372 -0.2917756 -0.4847736
		-0.2405904 -0.8186933 -0.5213996 -0.5134345 -0.7007253 -0.4953473 0.2885452 -0.04275731 -0.9565111
		-0.2405904 -0.8186933 -0.5213996 0.2885452 -0.04275731 -0.9565111 -0.1917562 -0.05561077 -0.9798658
		0.2885452 -0.04275731 -0.9565111 -0.5134345 -0.7007253 -0.4953473 -0.5618052 -0.02450225 -0.8269066
		-0.2405904 -0.8186933 -0.5213996 -0.1917562 -0.05561077 -0.9798658 -0.1361617 0.1372475 -0.9811336
		0.1530565 0.01252941 -0.988138 -0.2405904 -0.8186933 -0.5213996 -0.1361617 0.1372475 -0.9811336
		0.1530565 0.01252941 -0.988138 -0.8526281 -0.06979923 -0.5178353 -0.2405904 -0.8186933 -0.5213996
		-0.2405904 -0.8186933 -0.5213996 -0.8526281 -0.06979923 -0.5178353 -0.9307361 -0.07619419 -0.3576659
		-0.2405904 -0.8186933 -0.5213996 -0.9307361 -0.07619419 -0.3576659 -0.7351156 -0.06017892 -0.6752655
		-0.2405904 -0.8186933 -0.5213996 -0.7351156 -0.06017892 -0.6752655 0.2522447 0.01536618 -0.9675415
		0.2522447 0.01536618 -0.9675415 -0.8749958 -0.1429822 -0.4625347 -0.2405904 -0.8186933 -0.5213996
		-0.8749958 -0.1429822 -0.4625347 -0.8914562 -0.1938518 -0.4095453 -0.2405904 -0.8186933 -0.5213996
		0.6520169 -0.415134 0.6344585 0.09701554 -0.7116221 0.6958318 0.5442099 -0.6650352 0.5114331
		0.6520169 -0.415134 0.6344585 0.06406725 -0.4763815 0.8769014 0.09701554 -0.7116221 0.6958318
		0.06406725 -0.4763815 0.8769014 -0.3452457 -0.7881495 0.5095348 0.09701554 -0.7116221 0.6958318
		0.06406725 -0.4763815 0.8769014 -0.517395 -0.5769995 0.6319604 -0.3452457 -0.7881495 0.5095348
		-0.517395 -0.5769995 0.6319604 -0.523495 -0.8497945 0.06166305 -0.3452457 -0.7881495 0.5095348
		-0.517395 -0.5769995 0.6319604 -0.7517418 -0.6580448 0.04314219 -0.523495 -0.8497945 0.06166305
		-0.7517418 -0.6580448 0.04314219 -0.3333271 -0.860438 -0.3854082 -0.523495 -0.8497945 0.06166305
		-0.7517418 -0.6580448 0.04314219 -0.5017247 -0.6720355 -0.5446473 -0.3333271 -0.860438 -0.3854082
		-0.5017247 -0.6720355 -0.5446473 0.1138642 -0.8138532 -0.5698051 -0.3333271 -0.860438 -0.3854082
		-0.5017247 -0.6720355 -0.5446473 0.08622038 -0.6107922 -0.7870826 0.1138642 -0.8138532 -0.5698051
		0.08622038 -0.6107922 -0.7870826 0.5561246 -0.7373273 -0.3835021 0.1138642 -0.8138532 -0.5698051
		0.08622038 -0.6107922 -0.7870826 0.6676733 -0.5101843 -0.5421478 0.5561246 -0.7373273 -0.3835021
		0.6676733 -0.5101843 -0.5421478 0.7343757 -0.6756854 0.06435587 0.5561246 -0.7373273 -0.3835021
		0.6676733 -0.5101843 -0.5421478 0.9020316 -0.4291392 0.046675 0.7343757 -0.6756854 0.06435587
		0.9020316 -0.4291392 0.046675 0.5442099 -0.6650352 0.5114331 0.7343757 -0.6756854 0.06435587
		0.9020316 -0.4291392 0.046675 0.6520169 -0.415134 0.6344585 0.5442099 -0.6650352 0.5114331
		0.5442099 -0.6650352 0.5114331 0.09701554 -0.7116221 0.6958318 0.1364821 -0.9872791 0.08156352
		0.09701554 -0.7116221 0.6958318 -0.3452457 -0.7881495 0.5095348 0.1364821 -0.9872791 0.08156352
		-0.3452457 -0.7881495 0.5095348 -0.523495 -0.8497945 0.06166305 0.1364821 -0.9872791 0.08156352
		-0.523495 -0.8497945 0.06166305 -0.3333271 -0.860438 -0.3854082 0.1364821 -0.9872791 0.08156352
		-0.3333271 -0.860438 -0.3854082 0.1138642 -0.8138532 -0.5698051 0.1364821 -0.9872791 0.08156352
		0.1138642 -0.8138532 -0.5698051 0.5561246 -0.7373273 -0.3835021 0.1364821 -0.9872791 0.08156352
		0.5561246 -0.7373273 -0.3835021 0.7343757 -0.6756854 0.06435587 0.1364821 -0.9872791 0.08156352
		0.7343757 -0.6756854 0.06435587 0.5442099 -0.6650352 0.5114331 0.1364821 -0.9872791 0.08156352
		-0.8897169 -0.4564734 0.005991854 -0.5656678 -0.8172386 0.1101866 -0.5639251 -0.818388 0.1105873
		-0.8897169 -0.4564734 0.005991854 -0.8897169 -0.4564734 0.005991855 -0.5656678 -0.8172386 0.1101866
		-0.5656678 -0.8172386 0.1101866 0.06068905 -0.9844978 0.1645626 -0.5639251 -0.818388 0.1105873
		-0.5656678 -0.8172386 0.1101866 0.06159598 -0.984463 0.1644341 0.06068905 -0.9844978 0.1645626
		0.06159598 -0.984463 0.1644341 0.2336449 -0.962567 0.137386 0.06068905 -0.9844978 0.1645626
		0.06159598 -0.984463 0.1644341 0.2336449 -0.9625669 0.137386 0.2336449 -0.962567 0.137386
		-0.6938087 -0.4362347 -0.5729997 -0.407416 -0.8162224 -0.4096257 -0.411518 -0.8128438 -0.4122353
		-0.6938087 -0.4362347 -0.5729997 -0.6938087 -0.4362347 -0.5729997 -0.407416 -0.8162224 -0.4096257
		-0.407416 -0.8162224 -0.4096257 0.204822 -0.9772428 0.05517733 -0.411518 -0.8128438 -0.4122353
		-0.407416 -0.8162224 -0.4096257 0.1768331 -0.9837865 0.02990218 0.204822 -0.9772428 0.05517733
		0.1768331 -0.9837865 0.02990218 0.3979276 -0.8867276 0.2353036 0.204822 -0.9772428 0.05517733
		0.1768331 -0.9837865 0.02990218 0.3979276 -0.8867276 0.2353036 0.3979276 -0.8867276 0.2353036
		-0.9521104 0.3056957 0.005989933 -0.6910518 0.7143575 0.1101853 -0.9521104 0.3056956 0.005989933
		-0.9521104 0.3056957 0.005989933 -0.6895169 0.7157772 0.1105866 -0.6910518 0.7143575 0.1101853
		-0.6910518 0.7143575 0.1101853 -0.6895169 0.7157772 0.1105866 -0.100236 0.9812602 0.1645632
		-0.6910518 0.7143575 0.1101853 -0.100236 0.9812602 0.1645632 -0.09933705 0.9813731 0.164435
		-0.09933705 0.9813731 0.164435 -0.100236 0.9812602 0.1645632 0.07398398 0.9877506 0.1373874
		-0.09933705 0.9813731 0.164435 0.07398398 0.9877506 0.1373874 0.07398398 0.9877506 0.1373874
		-0.7555217 0.3175884 -0.5729961 -0.5347446 0.7390903 -0.4096265 -0.7555217 0.3175884 -0.5729961
		-0.7555217 0.3175884 -0.5729961 -0.5382396 0.7350928 -0.4122338 -0.5347446 0.7390903 -0.4096265
		-0.5347446 0.7390903 -0.4096265 -0.5382396 0.7350928 -0.4122338 0.04315354 0.9975438 0.05517386
		-0.5347446 0.7390903 -0.4096265 0.04315354 0.9975438 0.05517386 0.01447942 0.9994479 0.0299042
		0.01447942 0.9994479 0.0299042 0.04315354 0.9975438 0.05517386 0.2484138 0.9396394 0.235305
		0.01447942 0.9994479 0.0299042 0.2484138 0.9396394 0.235305 0.2484138 0.9396394 0.235305
		0.5758186 0.5156494 0.6344593 -0.02001321 0.7179264 0.6958313 -0.01426431 0.4804583 0.8769016
		0.5758186 0.5156494 0.6344593 0.4288042 0.7446904 0.5114325 -0.02001321 0.7179264 0.6958313
		-0.01426431 0.4804583 0.8769016 -0.02001321 0.7179264 0.6958313 -0.4688315 0.7215062 0.5095348
		-0.01426431 0.4804583 0.8769016 -0.4688315 0.7215062 0.5095348 -0.6043476 0.4851705 0.63196
		-0.6043476 0.4851705 0.63196 -0.4688315 0.7215062 0.5095348 -0.654733 0.7533408 0.06166372
		-0.6043476 0.4851705 0.63196 -0.654733 0.7533408 0.06166372 -0.8487554 0.5270229 0.04314204
		-0.8487554 0.5270229 0.04314204 -0.654733 0.7533408 0.06166372 -0.4688287 0.7947707 -0.3854079
		-0.8487554 0.5270229 0.04314204 -0.4688287 0.7947707 -0.3854079 -0.6043433 0.5814883 -0.5446473
		-0.6043433 0.5814883 -0.5446473 -0.4688287 0.7947707 -0.3854079 -0.0200149 0.8215365 -0.5698044
		-0.6043433 0.5814883 -0.5446473 -0.0200149 0.8215365 -0.5698044 -0.01426557 0.6166829 -0.7870824
		-0.01426557 0.6166829 -0.7870824 -0.0200149 0.8215365 -0.5698044 0.4288024 0.8179583 -0.3835006
		-0.01426557 0.6166829 -0.7870824 0.4288024 0.8179583 -0.3835006 0.5758086 0.6119823 -0.5421458
		0.5758086 0.6119823 -0.5421458 0.4288024 0.8179583 -0.3835006 0.6147057 0.7861266 0.06435627
		0.5758086 0.6119823 -0.5421458 0.6147057 0.7861266 0.06435627 0.8202265 0.5701315 0.04667543
		0.8202265 0.5701315 0.04667543 0.4288042 0.7446904 0.5114325 0.5758186 0.5156494 0.6344593
		0.8202265 0.5701315 0.04667543 0.6147057 0.7861266 0.06435627 0.4288042 0.7446904 0.5114325
		0.4288042 0.7446904 0.5114325 -0.02590368 0.9963315 0.08156374 -0.02001321 0.7179264 0.6958313
		-0.02001321 0.7179264 0.6958313 -0.02590368 0.9963315 0.08156374 -0.4688315 0.7215062 0.5095348
		-0.4688315 0.7215062 0.5095348 -0.02590368 0.9963315 0.08156374 -0.654733 0.7533408 0.06166372
		-0.654733 0.7533408 0.06166372 -0.02590368 0.9963315 0.08156374 -0.4688287 0.7947707 -0.3854079
		-0.4688287 0.7947707 -0.3854079 -0.02590368 0.9963315 0.08156374 -0.0200149 0.8215365 -0.5698044
		-0.0200149 0.8215365 -0.5698044 -0.02590368 0.9963315 0.08156374 0.4288024 0.8179583 -0.3835006
		0.4288024 0.8179583 -0.3835006 -0.02590368 0.9963315 0.08156374 0.6147057 0.7861266 0.06435627
		0.6147057 0.7861266 0.06435627 -0.02590368 0.9963315 0.08156374 0.4288042 0.7446904 0.5114325
		-0.02153859 -0.005130115 0.9997548 -0.06451531 0.7008631 0.7103723 -0.05915175 0.03610117 0.997596
		-0.1778923 0.7734272 0.6084116 -0.05915175 0.03610117 0.997596 -0.06451531 0.7008631 0.7103723
		-0.1778923 0.7734272 0.6084116 -0.1782707 0.04907706 0.9827569 -0.05915175 0.03610117 0.997596
		-0.1778923 0.7734272 0.6084116 -0.06451531 0.7008631 0.7103723 -0.1770107 0.9644518 0.196214
		-0.5557222 0.7630754 0.3299831 -0.1782707 0.04907706 0.9827569 -0.1778923 0.7734272 0.6084116
		-0.5557222 0.7630754 0.3299831 -0.8679239 0.06124103 0.4929075 -0.1782707 0.04907706 0.9827569
		-0.5557222 0.7630754 0.3299831 -0.9994318 0.03368522 -0.00110484 -0.8679239 0.06124103 0.4929075
		-0.9994318 0.03368522 -0.00110484 -0.5557222 0.7630754 0.3299831 -0.6501486 0.7598056 -0.001507503
		-0.6501486 0.7598056 -0.001507503 -0.5557222 0.7630754 0.3299831 -0.3104631 0.9495325 0.04472756
		-0.5557222 0.7630754 0.3299831 -0.1778923 0.7734272 0.6084116 -0.3104631 0.9495325 0.04472756
		-0.1778923 0.7734272 0.6084116 -0.1770107 0.9644518 0.196214 -0.3104631 0.9495325 0.04472756
		-0.3104631 0.9495325 0.04472756 -0.6598213 0.7288564 0.1827677 -0.6501486 0.7598056 -0.001507503
		-0.6598213 0.7288564 0.1827677 -0.9994318 0.03368522 -0.00110484 -0.6501486 0.7598056 -0.001507503
		-0.9994318 0.03368522 -0.00110484 -0.6598213 0.7288564 0.1827677 -0.9505216 0.06105775 0.304599
		-0.05915175 0.03610117 0.997596 -0.1743279 -0.6967839 0.6957743 -0.1416947 -0.7089022 0.6909271
		-0.05915175 0.03610117 0.997596 -0.1782707 0.04907706 0.9827569 -0.1743279 -0.6967839 0.6957743
		-0.3289981 -0.932427 0.1494658 -0.1416947 -0.7089022 0.6909271 -0.1743279 -0.6967839 0.6957743
		-0.1416947 -0.7089022 0.6909271 -0.02153859 -0.005130115 0.9997548 -0.05915175 0.03610117 0.997596
		-0.3289981 -0.932427 0.1494658 -0.1743279 -0.6967839 0.6957743 -0.6210254 -0.6707091 0.4055574
		-0.1782707 0.04907706 0.9827569 -0.6210254 -0.6707091 0.4055574 -0.1743279 -0.6967839 0.6957743
		-0.3289981 -0.932427 0.1494658 -0.6210254 -0.6707091 0.4055574 -0.7020763 -0.7117645 -0.02191336
		-0.6210254 -0.6707091 0.4055574 -0.9994318 0.03368522 -0.00110484 -0.7020763 -0.7117645 -0.02191336
		-0.9505216 0.06105775 0.304599 -0.7020763 -0.7117645 -0.02191336 -0.9994318 0.03368522 -0.00110484
		-0.7020763 -0.7117645 -0.02191336 -0.9505216 0.06105775 0.304599 -0.7512648 -0.6297307 0.1975867
		-0.7512648 -0.6297307 0.1975867 -0.3289981 -0.932427 0.1494658 -0.7020763 -0.7117645 -0.02191336
		-0.9994318 0.03368522 -0.00110484 -0.6210254 -0.6707091 0.4055574 -0.8679239 0.06124103 0.4929075
		-0.1782707 0.04907706 0.9827569 -0.8679239 0.06124103 0.4929075 -0.6210254 -0.6707091 0.4055574
		-0.4991898 0.8446025 -0.1935358 -0.7068093 0.6415557 -0.2980387 -0.5011782 0.8353952 -0.2256884
		-0.4991898 0.8446025 -0.1935358 -0.684821 0.6831102 -0.2537336 -0.7068093 0.6415557 -0.2980387
		-0.910121 0.01733683 -0.4139797 -0.7068093 0.6415557 -0.2980387 -0.684821 0.6831102 -0.2537336
		-0.910121 0.01733683 -0.4139797 -0.684821 0.6831102 -0.2537336 -0.9071543 0.1018183 -0.4082942
		-0.6664954 -0.5856984 -0.4612391 -0.910121 0.01733683 -0.4139797 -0.9071543 0.1018183 -0.4082942
		-0.6664954 -0.5856984 -0.4612391 -0.6629267 -0.6091191 -0.4353186 -0.910121 0.01733683 -0.4139797
		-0.7068093 0.6415557 -0.2980387 -0.5064794 0.8263869 -0.2460962 -0.5011782 0.8353952 -0.2256884
		-0.7068093 0.6415557 -0.2980387 -0.7391509 0.6040392 -0.2979805 -0.5064794 0.8263869 -0.2460962
		-0.7391509 0.6040392 -0.2979805 -0.7068093 0.6415557 -0.2980387 -0.910121 0.01733683 -0.4139797
		-0.7391509 0.6040392 -0.2979805 -0.5272281 0.8178432 -0.2305713 -0.5064794 0.8263869 -0.2460962
		-0.7391509 0.6040392 -0.2979805 -0.7477403 0.6002241 -0.2839285 -0.5272281 0.8178432 -0.2305713
		-0.9305161 0.004618403 -0.3662218 -0.7477403 0.6002241 -0.2839285 -0.7391509 0.6040392 -0.2979805
		-0.9305161 0.004618403 -0.3662218 -0.7391509 0.6040392 -0.2979805 -0.910121 0.01733683 -0.4139797
		-0.6629267 -0.6091191 -0.4353186 -0.9305161 0.004618403 -0.3662218 -0.910121 0.01733683 -0.4139797
		-0.9305161 0.004618403 -0.3662218 -0.9391024 -0.002185365 -0.3436306 -0.7477403 0.6002241 -0.2839285
		-0.6756135 -0.6161501 -0.4048525 -0.9391024 -0.002185365 -0.3436306 -0.9305161 0.004618403 -0.3662218
		-0.6629267 -0.6091191 -0.4353186 -0.6756135 -0.6161501 -0.4048525 -0.9305161 0.004618403 -0.3662218
		-0.6756135 -0.6161501 -0.4048525 -0.7062474 -0.6128978 -0.3543599 -0.9391024 -0.002185365 -0.3436306
		-0.7477403 0.6002241 -0.2839285 -0.5476111 0.8115316 -0.20381 -0.5272281 0.8178432 -0.2305713
		-0.7477403 0.6002241 -0.2839285 -0.756964 0.5972165 -0.265213 -0.5476111 0.8115316 -0.20381
		-0.9391024 -0.002185365 -0.3436306 -0.756964 0.5972165 -0.265213 -0.7477403 0.6002241 -0.2839285
		-0.9391024 -0.002185365 -0.3436306 -0.9437054 -0.009753207 -0.3306433 -0.756964 0.5972165 -0.265213
		-0.7062474 -0.6128978 -0.3543599 -0.9437054 -0.009753207 -0.3306433 -0.9391024 -0.002185365 -0.3436306
		-0.7062474 -0.6128978 -0.3543599 -0.7122099 -0.6164609 -0.3357575 -0.9437054 -0.009753207 -0.3306433
		-0.756964 0.5972165 -0.265213 -0.5663302 0.8104946 -0.1495611 -0.5476111 0.8115316 -0.20381
		-0.756964 0.5972165 -0.265213 -0.778901 0.5926875 -0.2050238 -0.5663302 0.8104946 -0.1495611
		-0.9437054 -0.009753207 -0.3306433 -0.778901 0.5926875 -0.2050238 -0.756964 0.5972165 -0.265213
		-0.9437054 -0.009753207 -0.3306433 -0.9604719 -0.02318828 -0.2774094 -0.778901 0.5926875 -0.2050238
		-0.7122099 -0.6164609 -0.3357575 -0.9604719 -0.02318828 -0.2774094 -0.9437054 -0.009753207 -0.3306433
		-0.7122099 -0.6164609 -0.3357575 -0.7415925 -0.6076037 -0.2843558 -0.9604719 -0.02318828 -0.2774094
		-0.778901 0.5926875 -0.2050238 -0.5755104 0.8077987 -0.127472 -0.5663302 0.8104946 -0.1495611
		-0.778901 0.5926875 -0.2050238 -0.7554485 0.6355264 -0.159386 -0.5755104 0.8077987 -0.127472
		-0.9604719 -0.02318828 -0.2774094 -0.7554485 0.6355264 -0.159386 -0.778901 0.5926875 -0.2050238
		-0.9604719 -0.02318828 -0.2774094 -0.9766338 -0.01850729 -0.2141118 -0.7554485 0.6355264 -0.159386
		-0.7415925 -0.6076037 -0.2843558 -0.9766338 -0.01850729 -0.2141118 -0.9604719 -0.02318828 -0.2774094
		-0.7415925 -0.6076037 -0.2843558 -0.7466471 -0.6262409 -0.2243665 -0.9766338 -0.01850729 -0.2141118
		-0.6756135 -0.6161501 -0.4048525 -0.3384339 -0.8800465 -0.3331377 -0.7062474 -0.6128978 -0.3543599
		-0.6756135 -0.6161501 -0.4048525 -0.3235635 -0.8799374 -0.347875 -0.3384339 -0.8800465 -0.3331377
		-0.6629267 -0.6091191 -0.4353186 -0.3235635 -0.8799374 -0.347875 -0.6756135 -0.6161501 -0.4048525
		-0.6629267 -0.6091191 -0.4353186 -0.3710474 -0.8606895 -0.3486223 -0.3235635 -0.8799374 -0.347875
		-0.6664954 -0.5856984 -0.4612391 -0.3710474 -0.8606895 -0.3486223 -0.6629267 -0.6091191 -0.4353186
		-0.6664954 -0.5856984 -0.4612391 -0.4160156 -0.8374555 -0.3544 -0.3710474 -0.8606895 -0.3486223
		-0.7122099 -0.6164609 -0.3357575 -0.4044794 -0.8704214 -0.2806475 -0.7415925 -0.6076037 -0.2843558
		-0.7415925 -0.6076037 -0.2843558 -0.4022359 -0.8867311 -0.2278469 -0.7466471 -0.6262409 -0.2243665
		-0.7415925 -0.6076037 -0.2843558 -0.4044794 -0.8704214 -0.2806475 -0.4022359 -0.8867311 -0.2278469
		-0.4160156 -0.8374555 -0.3544 -0.3509249 -0.883854 -0.3092796 -0.3710474 -0.8606895 -0.3486223
		-0.4160156 -0.8374555 -0.3544 0 -0.9375389 -0.3478806 -0.3509249 -0.883854 -0.3092796
		-0.3235635 -0.8799374 -0.347875 -0.2417097 -0.9079326 -0.3423957 -0.3384339 -0.8800465 -0.3331377
		-0.3235635 -0.8799374 -0.347875 -0.2565439 -0.9105417 -0.3241898 -0.2417097 -0.9079326 -0.3423957
		-0.3710474 -0.8606895 -0.3486223 -0.2565439 -0.9105417 -0.3241898 -0.3235635 -0.8799374 -0.347875
		-0.3710474 -0.8606895 -0.3486223 -0.3509249 -0.883854 -0.3092796 -0.2565439 -0.9105417 -0.3241898
		-0.3384339 -0.8800465 -0.3331377 -0.2417097 -0.9079326 -0.3423957 -0.2634585 -0.9054391 -0.3328209
		-0.3384339 -0.8800465 -0.3331377 -0.2634585 -0.9054391 -0.3328209 -0.3766509 -0.8669097 -0.326499
		-0.7062474 -0.6128978 -0.3543599 -0.3384339 -0.8800465 -0.3331377 -0.3766509 -0.8669097 -0.326499
		-0.7062474 -0.6128978 -0.3543599 -0.3766509 -0.8669097 -0.326499 -0.7122099 -0.6164609 -0.3357575
		-0.7122099 -0.6164609 -0.3357575 -0.3766509 -0.8669097 -0.326499 -0.4044794 -0.8704214 -0.2806475
		-0.3766509 -0.8669097 -0.326499 -0.2616476 -0.9223922 -0.2841354 -0.4044794 -0.8704214 -0.2806475
		-0.3766509 -0.8669097 -0.326499 -0.2634585 -0.9054391 -0.3328209 -0.2616476 -0.9223922 -0.2841354
		-0.4044794 -0.8704214 -0.2806475 -0.2497513 -0.9403546 -0.2309928 -0.4022359 -0.8867311 -0.2278469
		-0.4044794 -0.8704214 -0.2806475 -0.2616476 -0.9223922 -0.2841354 -0.2497513 -0.9403546 -0.2309928
		0.4149387 -0.8859277 0.207263 0.1039855 -0.990945 0.08494124 0.4269034 -0.8742336 0.2312339
		0.4149387 -0.8859277 0.207263 0.1442124 -0.9827223 0.1160156 0.1039855 -0.990945 0.08494124
		0.9534312 -0.03279363 0.2998224 0.4149387 -0.8859277 0.207263 0.4269034 -0.8742336 0.2312339
		0.9534312 -0.03279363 0.2998224 0.4269034 -0.8742336 0.2312339 0.9408913 -0.02873408 0.3374875
		0.4269034 -0.8742336 0.2312339 0.1039855 -0.990945 0.08494124 0.07746109 -0.9883979 0.1306495
		0.4269034 -0.8742336 0.2312339 0.07746109 -0.9883979 0.1306495 0.4466064 -0.8376436 0.3144775
		0.9408913 -0.02873408 0.3374875 0.4269034 -0.8742336 0.2312339 0.4466064 -0.8376436 0.3144775
		0.9408913 -0.02873408 0.3374875 0.4466064 -0.8376436 0.3144775 0.8905672 -9.561097E-05 0.4548517
		0.8719394 -0.01122876 0.489485 0.4149387 -0.8859277 0.207263 0.9534312 -0.03279363 0.2998224
		0.8719394 -0.01122876 0.489485 0.4064929 -0.8377733 0.3645537 0.4149387 -0.8859277 0.207263
		0.4064929 -0.8377733 0.3645537 0.1442124 -0.9827223 0.1160156 0.4149387 -0.8859277 0.207263
		0.7574758 0.01297623 0.6527343 0.4064929 -0.8377733 0.3645537 0.8719394 -0.01122876 0.489485
		0.7574758 0.01297623 0.6527343 0.3731858 -0.7727383 0.5134275 0.4064929 -0.8377733 0.3645537
		0.6542091 0.03038384 0.7557032 0.3731858 -0.7727383 0.5134275 0.7574758 0.01297623 0.6527343
		0.6542091 0.03038384 0.7557032 0.1777092 -0.8876404 0.4248695 0.3731858 -0.7727383 0.5134275
		0.3731858 -0.7727383 0.5134275 0.1765661 -0.9518143 0.2507468 0.4064929 -0.8377733 0.3645537
		0.3731858 -0.7727383 0.5134275 0.1777092 -0.8876404 0.4248695 0.1765661 -0.9518143 0.2507468
		0.4064929 -0.8377733 0.3645537 0.1765661 -0.9518143 0.2507468 0.1442124 -0.9827223 0.1160156
		0.534091 0.8452285 0.01831917 0.2499675 0.9586018 -0.1363783 0.2831008 0.9540746 -0.09795783
		0.534091 0.8452285 0.01831917 0.546284 0.836225 0.04797475 0.2499675 0.9586018 -0.1363783
		0.9534312 -0.03279363 0.2998224 0.546284 0.836225 0.04797475 0.534091 0.8452285 0.01831917
		0.9534312 -0.03279363 0.2998224 0.9408913 -0.02873408 0.3374875 0.546284 0.836225 0.04797475
		0.546284 0.836225 0.04797475 0.2254483 0.9721316 -0.06428998 0.2499675 0.9586018 -0.1363783
		0.546284 0.836225 0.04797475 0.5512895 0.8211167 0.1478084 0.2254483 0.9721316 -0.06428998
		0.9408913 -0.02873408 0.3374875 0.5512895 0.8211167 0.1478084 0.546284 0.836225 0.04797475
		0.9408913 -0.02873408 0.3374875 0.8905672 -9.561097E-05 0.4548517 0.5512895 0.8211167 0.1478084
		0.8719394 -0.01122876 0.489485 0.9534312 -0.03279363 0.2998224 0.534091 0.8452285 0.01831917
		0.8719394 -0.01122876 0.489485 0.534091 0.8452285 0.01831917 0.5215012 0.8299735 0.1979401
		0.5215012 0.8299735 0.1979401 0.534091 0.8452285 0.01831917 0.2831008 0.9540746 -0.09795783
		0.7574758 0.01297623 0.6527343 0.8719394 -0.01122876 0.489485 0.5215012 0.8299735 0.1979401
		0.7574758 0.01297623 0.6527343 0.5215012 0.8299735 0.1979401 0.4816885 0.8006691 0.3562376
		0.6542091 0.03038384 0.7557032 0.7574758 0.01297623 0.6527343 0.4816885 0.8006691 0.3562376
		0.6542091 0.03038384 0.7557032 0.4816885 0.8006691 0.3562376 0.3024594 0.9213642 0.2441436
		0.4816885 0.8006691 0.3562376 0.307683 0.9495448 0.06079258 0.3024594 0.9213642 0.2441436
		0.4816885 0.8006691 0.3562376 0.5215012 0.8299735 0.1979401 0.307683 0.9495448 0.06079258
		0.5215012 0.8299735 0.1979401 0.2831008 0.9540746 -0.09795783 0.307683 0.9495448 0.06079258
		0.4991898 0.8446025 -0.1935358 0.7068095 0.6415554 -0.2980389 0.684821 0.6831102 -0.2537337
		0.4991898 0.8446025 -0.1935358 0.5011783 0.8353951 -0.2256885 0.7068095 0.6415554 -0.2980389
		0.9101209 0.01733657 -0.4139798 0.684821 0.6831102 -0.2537337 0.7068095 0.6415554 -0.2980389
		0.9101209 0.01733657 -0.4139798 0.9071542 0.101818 -0.4082944 0.684821 0.6831102 -0.2537337
		0.6664952 -0.5856983 -0.4612392 0.9071542 0.101818 -0.4082944 0.9101209 0.01733657 -0.4139798
		0.6664952 -0.5856983 -0.4612392 0.9101209 0.01733657 -0.4139798 0.6629266 -0.609119 -0.4353186
		0.7068095 0.6415554 -0.2980389 0.5011783 0.8353951 -0.2256885 0.5064799 0.8263865 -0.2460965
		0.7068095 0.6415554 -0.2980389 0.5064799 0.8263865 -0.2460965 0.7391512 0.6040391 -0.2979806
		0.7391512 0.6040391 -0.2979806 0.9101209 0.01733657 -0.4139798 0.7068095 0.6415554 -0.2980389
		0.7391512 0.6040391 -0.2979806 0.5064799 0.8263865 -0.2460965 0.5272287 0.8178428 -0.2305713
		0.7391512 0.6040391 -0.2979806 0.5272287 0.8178428 -0.2305713 0.7477406 0.6002239 -0.2839285
		0.9305161 0.004618413 -0.3662219 0.7391512 0.6040391 -0.2979806 0.7477406 0.6002239 -0.2839285
		0.9305161 0.004618413 -0.3662219 0.9101209 0.01733657 -0.4139798 0.7391512 0.6040391 -0.2979806
		0.6629266 -0.609119 -0.4353186 0.9101209 0.01733657 -0.4139798 0.9305161 0.004618413 -0.3662219
		0.9305161 0.004618413 -0.3662219 0.7477406 0.6002239 -0.2839285 0.9391024 -0.002185475 -0.3436305
		0.6756133 -0.6161503 -0.4048524 0.9305161 0.004618413 -0.3662219 0.9391024 -0.002185475 -0.3436305
		0.6629266 -0.609119 -0.4353186 0.9305161 0.004618413 -0.3662219 0.6756133 -0.6161503 -0.4048524
		0.6756133 -0.6161503 -0.4048524 0.9391024 -0.002185475 -0.3436305 0.7062474 -0.6128978 -0.35436
		0.7477406 0.6002239 -0.2839285 0.5272287 0.8178428 -0.2305713 0.5476115 0.8115314 -0.2038098
		0.7477406 0.6002239 -0.2839285 0.5476115 0.8115314 -0.2038098 0.7569641 0.5972164 -0.2652128
		0.9391024 -0.002185475 -0.3436305 0.7477406 0.6002239 -0.2839285 0.7569641 0.5972164 -0.2652128
		0.9391024 -0.002185475 -0.3436305 0.7569641 0.5972164 -0.2652128 0.9437054 -0.009753125 -0.3306431
		0.7062474 -0.6128978 -0.35436 0.9391024 -0.002185475 -0.3436305 0.9437054 -0.009753125 -0.3306431
		0.7062474 -0.6128978 -0.35436 0.9437054 -0.009753125 -0.3306431 0.7122101 -0.6164606 -0.3357575
		0.7569641 0.5972164 -0.2652128 0.5476115 0.8115314 -0.2038098 0.5663306 0.8104945 -0.1495611
		0.7569641 0.5972164 -0.2652128 0.5663306 0.8104945 -0.1495611 0.7789011 0.5926874 -0.2050238
		0.9437054 -0.009753125 -0.3306431 0.7569641 0.5972164 -0.2652128 0.7789011 0.5926874 -0.2050238
		0.9437054 -0.009753125 -0.3306431 0.7789011 0.5926874 -0.2050238 0.9604719 -0.02318804 -0.2774093
		0.7122101 -0.6164606 -0.3357575 0.9437054 -0.009753125 -0.3306431 0.9604719 -0.02318804 -0.2774093
		0.7122101 -0.6164606 -0.3357575 0.9604719 -0.02318804 -0.2774093 0.7415927 -0.6076035 -0.2843559
		0.7789011 0.5926874 -0.2050238 0.5663306 0.8104945 -0.1495611 0.5755106 0.8077984 -0.127472
		0.7789011 0.5926874 -0.2050238 0.5755106 0.8077984 -0.127472 0.7554486 0.6355262 -0.1593861
		0.9604719 -0.02318804 -0.2774093 0.7789011 0.5926874 -0.2050238 0.7554486 0.6355262 -0.1593861
		0.9604719 -0.02318804 -0.2774093 0.7554486 0.6355262 -0.1593861 0.9766338 -0.0185071 -0.2141117
		0.7415927 -0.6076035 -0.2843559 0.9604719 -0.02318804 -0.2774093 0.9766338 -0.0185071 -0.2141117
		0.7415927 -0.6076035 -0.2843559 0.9766338 -0.0185071 -0.2141117 0.7466472 -0.6262408 -0.2243665
		0.6756133 -0.6161503 -0.4048524 0.7062474 -0.6128978 -0.35436 0.3384329 -0.8800467 -0.3331379
		0.6756133 -0.6161503 -0.4048524 0.3384329 -0.8800467 -0.3331379 0.3235629 -0.8799376 -0.3478749
		0.6629266 -0.609119 -0.4353186 0.6756133 -0.6161503 -0.4048524 0.3235629 -0.8799376 -0.3478749
		0.6629266 -0.609119 -0.4353186 0.3235629 -0.8799376 -0.3478749 0.3710473 -0.8606895 -0.3486222
		0.6664952 -0.5856983 -0.4612392 0.6629266 -0.609119 -0.4353186 0.3710473 -0.8606895 -0.3486222
		0.6664952 -0.5856983 -0.4612392 0.3710473 -0.8606895 -0.3486222 0.4160156 -0.8374555 -0.3544001
		0.7122101 -0.6164606 -0.3357575 0.7415927 -0.6076035 -0.2843559 0.4044794 -0.8704213 -0.2806477
		0.7415927 -0.6076035 -0.2843559 0.4022361 -0.886731 -0.2278472 0.4044794 -0.8704213 -0.2806477
		0.7415927 -0.6076035 -0.2843559 0.7466472 -0.6262408 -0.2243665 0.4022361 -0.886731 -0.2278472
		0.4160156 -0.8374555 -0.3544001 0.3710473 -0.8606895 -0.3486222 0.3509247 -0.8838541 -0.3092793
		0.4160156 -0.8374555 -0.3544001 0.3509247 -0.8838541 -0.3092793 0 -0.9375389 -0.3478806
		0.3235629 -0.8799376 -0.3478749 0.3384329 -0.8800467 -0.3331379 0.2417079 -0.907933 -0.3423959
		0.3235629 -0.8799376 -0.3478749 0.2417079 -0.907933 -0.3423959 0.2565428 -0.9105421 -0.3241893
		0.3710473 -0.8606895 -0.3486222 0.2565428 -0.9105421 -0.3241893 0.3509247 -0.8838541 -0.3092793
		0.3710473 -0.8606895 -0.3486222 0.3235629 -0.8799376 -0.3478749 0.2565428 -0.9105421 -0.3241893
		0.3384329 -0.8800467 -0.3331379 0.2634572 -0.9054393 -0.3328212 0.2417079 -0.907933 -0.3423959
		0.3384329 -0.8800467 -0.3331379 0.3766505 -0.8669099 -0.3264994 0.2634572 -0.9054393 -0.3328212
		0.7062474 -0.6128978 -0.35436 0.3766505 -0.8669099 -0.3264994 0.3384329 -0.8800467 -0.3331379
		0.7062474 -0.6128978 -0.35436 0.7122101 -0.6164606 -0.3357575 0.3766505 -0.8669099 -0.3264994
		0.7122101 -0.6164606 -0.3357575 0.4044794 -0.8704213 -0.2806477 0.3766505 -0.8669099 -0.3264994
		0.3766505 -0.8669099 -0.3264994 0.2616475 -0.9223922 -0.2841356 0.2634572 -0.9054393 -0.3328212
		0.3766505 -0.8669099 -0.3264994 0.4044794 -0.8704213 -0.2806477 0.2616475 -0.9223922 -0.2841356
		0.4044794 -0.8704213 -0.2806477 0.2497517 -0.9403543 -0.2309931 0.2616475 -0.9223922 -0.2841356
		0.4044794 -0.8704213 -0.2806477 0.4022361 -0.886731 -0.2278472 0.2497517 -0.9403543 -0.2309931
		-0.4137684 -0.8837107 0.2187492 -0.1016854 -0.9902577 0.09513009 -0.1415509 -0.9815794 0.1283169
		-0.4137684 -0.8837107 0.2187492 -0.4387029 -0.8659728 0.2400645 -0.1016854 -0.9902577 0.09513009
		-0.9519635 -0.02777346 0.3049496 -0.4387029 -0.8659728 0.2400645 -0.4137684 -0.8837107 0.2187492
		-0.9519635 -0.02777346 0.3049496 -0.9405631 -0.01626037 0.3392294 -0.4387029 -0.8659728 0.2400645
		-0.4387029 -0.8659728 0.2400645 -0.08097517 -0.9895775 0.1190767 -0.1016854 -0.9902577 0.09513009
		-0.4387029 -0.8659728 0.2400645 -0.4596579 -0.8335818 0.3063591 -0.08097517 -0.9895775 0.1190767
		-0.9405631 -0.01626037 0.3392294 -0.4596579 -0.8335818 0.3063591 -0.4387029 -0.8659728 0.2400645
		-0.9405631 -0.01626037 0.3392294 -0.8938347 0.01151018 0.4482489 -0.4596579 -0.8335818 0.3063591
		-0.8719404 -0.01122895 0.4894831 -0.9519635 -0.02777346 0.3049496 -0.4137684 -0.8837107 0.2187492
		-0.8719404 -0.01122895 0.4894831 -0.4137684 -0.8837107 0.2187492 -0.4064942 -0.8377731 0.3645528
		-0.4064942 -0.8377731 0.3645528 -0.4137684 -0.8837107 0.2187492 -0.1415509 -0.9815794 0.1283169
		-0.7574762 0.01297592 0.6527338 -0.8719404 -0.01122895 0.4894831 -0.4064942 -0.8377731 0.3645528
		-0.7574762 0.01297592 0.6527338 -0.4064942 -0.8377731 0.3645528 -0.3731867 -0.7727384 0.5134267
		-0.654209 0.03038308 0.7557033 -0.7574762 0.01297592 0.6527338 -0.3731867 -0.7727384 0.5134267
		-0.654209 0.03038308 0.7557033 -0.3731867 -0.7727384 0.5134267 -0.1777108 -0.8876402 0.4248692
		-0.3731867 -0.7727384 0.5134267 -0.1765676 -0.9518141 0.2507466 -0.1777108 -0.8876402 0.4248692
		-0.3731867 -0.7727384 0.5134267 -0.4064942 -0.8377731 0.3645528 -0.1765676 -0.9518141 0.2507466
		-0.4064942 -0.8377731 0.3645528 -0.1415509 -0.9815794 0.1283169 -0.1765676 -0.9518141 0.2507466
		-0.5340917 0.845228 0.01831944 -0.2499678 0.9586017 -0.1363782 -0.5462843 0.8362247 0.04797504
		-0.5340917 0.845228 0.01831944 -0.2831008 0.9540746 -0.09795779 -0.2499678 0.9586017 -0.1363782
		-0.9519635 -0.02777346 0.3049496 -0.5340917 0.845228 0.01831944 -0.5462843 0.8362247 0.04797504
		-0.9519635 -0.02777346 0.3049496 -0.5462843 0.8362247 0.04797504 -0.9405631 -0.01626037 0.3392294
		-0.5462843 0.8362247 0.04797504 -0.2499678 0.9586017 -0.1363782 -0.2254485 0.9721316 -0.0642898
		-0.5462843 0.8362247 0.04797504 -0.2254485 0.9721316 -0.0642898 -0.5512895 0.8211166 0.1478091
		-0.9405631 -0.01626037 0.3392294 -0.5462843 0.8362247 0.04797504 -0.5512895 0.8211166 0.1478091
		-0.9405631 -0.01626037 0.3392294 -0.5512895 0.8211166 0.1478091 -0.8938347 0.01151018 0.4482489
		-0.8719404 -0.01122895 0.4894831 -0.5340917 0.845228 0.01831944 -0.9519635 -0.02777346 0.3049496
		-0.8719404 -0.01122895 0.4894831 -0.5215015 0.8299736 0.1979395 -0.5340917 0.845228 0.01831944
		-0.5215015 0.8299736 0.1979395 -0.2831008 0.9540746 -0.09795779 -0.5340917 0.845228 0.01831944
		-0.7574762 0.01297592 0.6527338 -0.5215015 0.8299736 0.1979395 -0.8719404 -0.01122895 0.4894831
		-0.7574762 0.01297592 0.6527338 -0.4816878 0.8006698 0.3562369 -0.5215015 0.8299736 0.1979395
		-0.654209 0.03038308 0.7557033 -0.4816878 0.8006698 0.3562369 -0.7574762 0.01297592 0.6527338
		-0.654209 0.03038308 0.7557033 -0.3024579 0.9213652 0.2441424 -0.4816878 0.8006698 0.3562369
		-0.4816878 0.8006698 0.3562369 -0.3076828 0.9495449 0.06079253 -0.5215015 0.8299736 0.1979395
		-0.4816878 0.8006698 0.3562369 -0.3024579 0.9213652 0.2441424 -0.3076828 0.9495449 0.06079253
		-0.5215015 0.8299736 0.1979395 -0.3076828 0.9495449 0.06079253 -0.2831008 0.9540746 -0.09795779
		0.115332 -0.3529579 -0.9285038 0.02605445 -0.7641335 0.6445317 0.115332 -0.3529579 -0.9285038
		0.02605445 -0.7641335 0.6445317 -0.003459395 -0.6252459 0.7804201 0 -0.6252496 0.7804248
		0 -0.6252496 0.7804248 0.003465614 -0.6252459 0.7804201 0.02605445 -0.7641335 0.6445317
		-0.9793491 0.2019942 0.008585578 -0.8531724 0.5214635 0.01313613 -0.7152503 0.6979883 -0.03506142
		-0.4836683 0.8728247 0.06513084 -0.7152503 0.6979883 -0.03506142 -0.8531724 0.5214635 0.01313613
		-0.7152503 0.6979883 -0.03506142 -0.4836683 0.8728247 0.06513084 0 0.9986171 0.05257318
		0 0.991568 0.1295871 0 0.9986171 0.05257318 -0.4836683 0.8728247 0.06513084
		-0.8531724 0.5214635 0.01313613 -0.9793491 0.2019942 0.008585578 -0.9902596 0.1309187 0.04739319
		-0.9793491 0.2019942 0.008585578 -0.9974319 0.07161698 -0.0007551208 -0.9902596 0.1309187 0.04739319
		0.0001260791 0.9742199 0.2256005 -0.5298706 0.7991507 0.2838934 0.0002302598 0.9393653 0.342918
		-0.6815859 0.6628847 0.3098781 0.0002302598 0.9393653 0.342918 -0.5298706 0.7991507 0.2838934
		-0.8748657 0.458246 0.1569098 -0.6815859 0.6628847 0.3098781 -0.5298706 0.7991507 0.2838934
		-0.9660712 0.2542111 0.0456412 -0.6815859 0.6628847 0.3098781 -0.8748657 0.458246 0.1569098
		-0.9879326 0.1528417 -0.0250691 -0.9660712 0.2542111 0.0456412 -0.8748657 0.458246 0.1569098
		-0.9879326 0.1528417 -0.0250691 -0.9967406 0.072932 0.03448314 -0.9660712 0.2542111 0.0456412
		0.4839514 0.8726612 0.06521965 0.8533427 0.5211716 0.01365191 0.7154455 0.6978044 -0.03474116
		0.9794201 0.2016282 0.009073132 0.7154455 0.6978044 -0.03474116 0.8533427 0.5211716 0.01365191
		0.7154455 0.6978044 -0.03474116 0 0.9986171 0.05257318 0.4839514 0.8726612 0.06521965
		0 0.991568 0.1295871 0.4839514 0.8726612 0.06521965 0 0.9986171 0.05257318
		0.990297 0.1304843 0.04780819 0.9794201 0.2016282 0.009073132 0.8533427 0.5211716 0.01365191
		0.990297 0.1304843 0.04780819 0.9975007 0.0706517 -0.0007636874 0.9794201 0.2016282 0.009073132
		0.6815895 0.6629481 0.3097348 0.5299931 0.7990967 0.2838166 0.0002302598 0.9393653 0.342918
		0.0001260791 0.9742199 0.2256005 0.0002302598 0.9393653 0.342918 0.5299931 0.7990967 0.2838166
		0.5299931 0.7990967 0.2838166 0.6815895 0.6629481 0.3097348 0.8747801 0.4585006 0.1566425
		0.8747801 0.4585006 0.1566425 0.6815895 0.6629481 0.3097348 0.9660513 0.2543964 0.04502624
		0.8747801 0.4585006 0.1566425 0.9660513 0.2543964 0.04502624 0.9879026 0.152914 -0.02580155
		0.9660513 0.2543964 0.04502624 0.9967632 0.07294505 0.03379284 0.9879026 0.152914 -0.02580155
		0.8129221 -0.0913295 0.5751665 0.6516244 -0.2888726 0.7013832 0.786846 -0.06486683 0.613731
		0.8129221 -0.0913295 0.5751665 0.786846 -0.06486683 0.613731 0.9096171 0.02052673 0.4149403
		0.8129221 -0.0913295 0.5751665 0.9096171 0.02052673 0.4149403 0.9070325 0.0405209 0.4191062
		0.8441934 -0.2442557 0.4771546 0.8129221 -0.0913295 0.5751665 0.9070325 0.0405209 0.4191062
		0.8441934 -0.2442557 0.4771546 0.9070325 0.0405209 0.4191062 0.8951871 -0.1182356 0.4297211
		0.8441934 -0.2442557 0.4771546 0.7460482 -0.2559572 0.6147341 0.8129221 -0.0913295 0.5751665
		0.8129221 -0.0913295 0.5751665 0.7460482 -0.2559572 0.6147341 0.6516244 -0.2888726 0.7013832
		0.8441934 -0.2442557 0.4771546 0.8020823 -0.2841344 0.5252921 0.7460482 -0.2559572 0.6147341
		0.8441934 -0.2442557 0.4771546 0.8951871 -0.1182356 0.4297211 0.6907508 -0.6102732 0.3878528
		0.8441934 -0.2442557 0.4771546 0.6907508 -0.6102732 0.3878528 0.6203975 -0.6743703 0.4004143
		0.6203975 -0.6743703 0.4004143 0.6907508 -0.6102732 0.3878528 0.2988995 -0.9053192 0.3017554
		0.6203975 -0.6743703 0.4004143 0.2988995 -0.9053192 0.3017554 0.2976951 -0.8844175 0.3594209
		0.603609 -0.6739308 0.4259971 0.6203975 -0.6743703 0.4004143 0.2976951 -0.8844175 0.3594209
		0.8441934 -0.2442557 0.4771546 0.603609 -0.6739308 0.4259971 0.8020823 -0.2841344 0.5252921
		0.8441934 -0.2442557 0.4771546 0.6203975 -0.6743703 0.4004143 0.603609 -0.6739308 0.4259971
		0.603609 -0.6739308 0.4259971 0.2976951 -0.8844175 0.3594209 0.2968921 -0.8653288 0.4038084
		-1.321178E-07 -0.9095313 0.4156354 0.2968921 -0.8653288 0.4038084 0.2976951 -0.8844175 0.3594209
		-1.321178E-07 -0.9095313 0.4156354 0.2976951 -0.8844175 0.3594209 0 -0.9248244 0.3803945
		0 -0.9248244 0.3803945 0.2976951 -0.8844175 0.3594209 0.2988995 -0.9053192 0.3017554
		0 -0.9248244 0.3803945 0.2988995 -0.9053192 0.3017554 0 -0.9417021 0.336448
		-0.7872014 0.06813672 -0.6129203 -0.652599 0.2880677 -0.7008078 -0.8114953 0.09393756 -0.576759
		-0.9078898 -0.01548277 -0.4189229 -0.7872014 0.06813672 -0.6129203 -0.8114953 0.09393756 -0.576759
		-0.9078898 -0.01548277 -0.4189229 -0.8114953 0.09393756 -0.576759 -0.904847 -0.03614694 -0.4241994
		-0.904847 -0.03614694 -0.4241994 -0.8114953 0.09393756 -0.576759 -0.84143 0.2469888 -0.4806164
		-0.904847 -0.03614694 -0.4241994 -0.84143 0.2469888 -0.4806164 -0.8914359 0.1214426 -0.4365704
		-0.7461229 0.2550103 -0.615037 -0.84143 0.2469888 -0.4806164 -0.8114953 0.09393756 -0.576759
		-0.652599 0.2880677 -0.7008078 -0.7461229 0.2550103 -0.615037 -0.8114953 0.09393756 -0.576759
		-0.7461229 0.2550103 -0.615037 -0.8016344 0.2860135 -0.5249558 -0.84143 0.2469888 -0.4806164
		-0.6896242 0.5980353 -0.4083775 -0.8914359 0.1214426 -0.4365704 -0.84143 0.2469888 -0.4806164
		-0.6896242 0.5980353 -0.4083775 -0.84143 0.2469888 -0.4806164 -0.6337575 0.6589775 -0.4050926
		-0.2954898 0.8868276 -0.3552781 -0.6896242 0.5980353 -0.4083775 -0.6337575 0.6589775 -0.4050926
		-0.2954898 0.8868276 -0.3552781 -0.6337575 0.6589775 -0.4050926 -0.2951919 0.8812131 -0.3692222
		-0.2951919 0.8812131 -0.3692222 -0.6337575 0.6589775 -0.4050926 -0.6268036 0.6629156 -0.4094631
		-0.6268036 0.6629156 -0.4094631 -0.84143 0.2469888 -0.4806164 -0.8016344 0.2860135 -0.5249558
		-0.6268036 0.6629156 -0.4094631 -0.6337575 0.6589775 -0.4050926 -0.84143 0.2469888 -0.4806164
		-0.2951919 0.8812131 -0.3692222 -0.6268036 0.6629156 -0.4094631 -0.3072178 0.8746158 -0.3750526
		-0.2951919 0.8812131 -0.3692222 -0.3072178 0.8746158 -0.3750526 0 0.9258271 -0.3779474
		-0.2951919 0.8812131 -0.3692222 0 0.9258271 -0.3779474 0 0.9239789 -0.3824438
		-0.2954898 0.8868276 -0.3552781 -0.2951919 0.8812131 -0.3692222 0 0.9239789 -0.3824438
		-0.2954898 0.8868276 -0.3552781 0 0.9239789 -0.3824438 0 0.9217963 -0.3876745
		-0.6516259 -0.288874 0.7013811 -0.8126724 -0.09087285 0.5755917 -0.786153 -0.06366605 0.6147441
		-0.8126724 -0.09087285 0.5755917 -0.9086533 0.02255069 0.4169421 -0.786153 -0.06366605 0.6147441
		-0.8126724 -0.09087285 0.5755917 -0.9064967 0.04158507 0.4201601 -0.9086533 0.02255069 0.4169421
		-0.8441933 -0.2442561 0.4771546 -0.9064967 0.04158507 0.4201601 -0.8126724 -0.09087285 0.5755917
		-0.8441933 -0.2442561 0.4771546 -0.8951871 -0.1182359 0.4297212 -0.9064967 0.04158507 0.4201601
		-0.8441933 -0.2442561 0.4771546 -0.8126724 -0.09087285 0.5755917 -0.746048 -0.255957 0.6147345
		-0.746048 -0.255957 0.6147345 -0.8126724 -0.09087285 0.5755917 -0.6516259 -0.288874 0.7013811
		-0.8441933 -0.2442561 0.4771546 -0.746048 -0.255957 0.6147345 -0.8020821 -0.2841351 0.5252917
		-0.8441933 -0.2442561 0.4771546 -0.6907511 -0.6102729 0.3878528 -0.8951871 -0.1182359 0.4297212
		-0.8441933 -0.2442561 0.4771546 -0.6203977 -0.6743701 0.4004143 -0.6907511 -0.6102729 0.3878528
		-0.6203977 -0.6743701 0.4004143 -0.2988999 -0.905319 0.3017554 -0.6907511 -0.6102729 0.3878528
		-0.6203977 -0.6743701 0.4004143 -0.2976954 -0.8844173 0.3594208 -0.2988999 -0.905319 0.3017554
		-0.6036091 -0.6739308 0.425997 -0.2976954 -0.8844173 0.3594208 -0.6203977 -0.6743701 0.4004143
		-0.8441933 -0.2442561 0.4771546 -0.6036091 -0.6739308 0.425997 -0.6203977 -0.6743701 0.4004143
		-0.8441933 -0.2442561 0.4771546 -0.8020821 -0.2841351 0.5252917 -0.6036091 -0.6739308 0.425997
		-0.6036091 -0.6739308 0.425997 -0.2968922 -0.8653287 0.4038084 -0.2976954 -0.8844173 0.3594208
		-1.321178E-07 -0.9095313 0.4156354 -0.2976954 -0.8844173 0.3594208 -0.2968922 -0.8653287 0.4038084
		-1.321178E-07 -0.9095313 0.4156354 0 -0.9248244 0.3803945 -0.2976954 -0.8844173 0.3594208
		0 -0.9248244 0.3803945 -0.2988999 -0.905319 0.3017554 -0.2976954 -0.8844173 0.3594208
		0 -0.9248244 0.3803945 0 -0.9417021 0.336448 -0.2988999 -0.905319 0.3017554
		0.7865016 0.06694335 -0.6139494 0.8112449 0.09348732 -0.5771844 0.652599 0.288068 -0.7008076
		0.9069216 -0.01748225 -0.4209368 0.8112449 0.09348732 -0.5771844 0.7865016 0.06694335 -0.6139494
		0.9069216 -0.01748225 -0.4209368 0.9043062 -0.03720005 -0.4252604 0.8112449 0.09348732 -0.5771844
		0.9043062 -0.03720005 -0.4252604 0.84143 0.2469887 -0.4806165 0.8112449 0.09348732 -0.5771844
		0.9043062 -0.03720005 -0.4252604 0.8914358 0.1214429 -0.4365704 0.84143 0.2469887 -0.4806165
		0.746123 0.2550105 -0.6150367 0.8112449 0.09348732 -0.5771844 0.84143 0.2469887 -0.4806165
		0.652599 0.288068 -0.7008076 0.8112449 0.09348732 -0.5771844 0.746123 0.2550105 -0.6150367
		0.746123 0.2550105 -0.6150367 0.84143 0.2469887 -0.4806165 0.8016345 0.2860133 -0.5249558
		0.6896243 0.5980352 -0.4083775 0.84143 0.2469887 -0.4806165 0.8914358 0.1214429 -0.4365704
		0.6896243 0.5980352 -0.4083775 0.6337574 0.6589774 -0.4050927 0.84143 0.2469887 -0.4806165
		0.2954898 0.8868276 -0.3552781 0.6337574 0.6589774 -0.4050927 0.6896243 0.5980352 -0.4083775
		0.2954898 0.8868276 -0.3552781 0.2951918 0.8812132 -0.3692222 0.6337574 0.6589774 -0.4050927
		0.2951918 0.8812132 -0.3692222 0.6268035 0.6629156 -0.4094634 0.6337574 0.6589774 -0.4050927
		0.6268035 0.6629156 -0.4094634 0.84143 0.2469887 -0.4806165 0.6337574 0.6589774 -0.4050927
		0.6268035 0.6629156 -0.4094634 0.8016345 0.2860133 -0.5249558 0.84143 0.2469887 -0.4806165
		0.2951918 0.8812132 -0.3692222 0.3072176 0.8746159 -0.3750526 0.6268035 0.6629156 -0.4094634
		0.2951918 0.8812132 -0.3692222 0 0.9258271 -0.3779474 0.3072176 0.8746159 -0.3750526
		0.2951918 0.8812132 -0.3692222 0 0.9239789 -0.3824438 0 0.9258271 -0.3779474
		0.2954898 0.8868276 -0.3552781 0 0.9239789 -0.3824438 0.2951918 0.8812132 -0.3692222
		0.2954898 0.8868276 -0.3552781 0 0.9217963 -0.3876745 0 0.9239789 -0.3824438;
	setAttr -s 2224 ".fc[0:2223]" -type "polyFaces"
		f 3 2 1 0
		mu 0 3 0 2 1
		f 3 4 3 2
		mu 0 3 0 3 2
		f 3 0 6 5
		mu 0 3 0 1 4
		f 3 9 8 7
		mu 0 3 0 4 5
		f 3 12 11 10
		mu 0 3 3 0 6
		f 3 7 14 13
		mu 0 3 0 5 7
		f 3 16 11 15
		mu 0 3 7 6 0
		f 3 19 18 17
		mu 0 3 8 7 5
		f 3 21 20 17
		mu 0 3 5 9 8
		f 3 23 20 22
		mu 0 3 10 8 9
		f 3 26 25 24
		mu 0 3 9 11 10
		f 3 29 28 27
		mu 0 3 11 9 12
		f 3 32 31 30
		mu 0 3 12 5 4
		f 3 35 34 33
		mu 0 3 12 9 5
		f 3 38 37 36
		mu 0 3 11 12 13
		f 3 40 19 39
		mu 0 3 14 7 8
		f 3 43 42 41
		mu 0 3 8 15 14
		f 3 46 45 44
		mu 0 3 8 16 15
		f 3 48 23 47
		mu 0 3 16 8 10
		f 3 51 50 49
		mu 0 3 15 16 17
		f 3 54 53 52
		mu 0 3 18 17 16
		f 3 57 56 55
		mu 0 3 16 10 18
		f 3 60 59 58
		mu 0 3 18 10 19
		f 3 63 62 61
		mu 0 3 19 10 11
		f 3 66 65 64
		mu 0 3 20 18 19
		f 3 68 54 67
		mu 0 3 20 17 18
		f 3 71 70 69
		mu 0 3 19 21 20
		f 3 73 71 72
		mu 0 3 22 21 19
		f 3 75 74 72
		mu 0 3 19 23 22
		f 3 77 76 75
		mu 0 3 19 24 23
		f 3 61 78 77
		mu 0 3 19 11 24
		f 3 81 80 79
		mu 0 3 25 13 12
		f 3 84 83 82
		mu 0 3 23 24 26
		f 3 87 86 85
		mu 0 3 26 11 13
		f 3 90 89 88
		mu 0 3 26 24 11
		f 3 93 92 91
		mu 0 3 25 26 13
		f 3 96 95 94
		mu 0 3 23 26 27
		f 3 95 98 97
		mu 0 3 27 26 28
		f 3 99 98 93
		mu 0 3 25 28 26
		f 3 101 99 100
		mu 0 3 29 28 25
		f 3 100 103 102
		mu 0 3 29 25 30
		f 3 103 105 104
		mu 0 3 30 25 31
		f 3 104 107 106
		mu 0 3 30 31 32
		f 3 109 107 108
		mu 0 3 33 32 31
		f 3 108 111 110
		mu 0 3 33 31 34
		f 3 110 113 112
		mu 0 3 33 34 35
		f 3 112 115 114
		mu 0 3 33 35 36
		f 3 117 115 116
		mu 0 3 37 36 35
		f 3 116 119 118
		mu 0 3 37 35 38
		f 3 118 121 120
		mu 0 3 37 38 39
		f 3 120 123 122
		mu 0 3 37 39 40
		f 3 125 121 124
		mu 0 3 41 39 38
		f 3 128 127 126
		mu 0 3 41 42 39
		f 3 130 128 129
		mu 0 3 43 42 41
		f 3 132 129 131
		mu 0 3 3 43 41
		f 3 134 133 130
		mu 0 3 43 44 42
		f 3 137 136 135
		mu 0 3 2 38 35
		f 3 140 139 138
		mu 0 3 2 41 38
		f 3 143 142 141
		mu 0 3 3 41 2
		f 3 146 145 144
		mu 0 3 1 35 34
		f 3 1 148 147
		mu 0 3 1 2 35
		f 3 151 150 149
		mu 0 3 4 1 34
		f 3 154 153 152
		mu 0 3 4 34 31
		f 3 156 155 152
		mu 0 3 31 12 4
		f 3 159 158 157
		mu 0 3 45 37 40
		f 3 162 161 160
		mu 0 3 45 46 37
		f 3 164 162 163
		mu 0 3 47 46 45
		f 3 167 166 165
		mu 0 3 47 48 46
		f 3 170 169 168
		mu 0 3 48 49 46
		f 3 172 171 170
		mu 0 3 48 50 49
		f 3 171 174 173
		mu 0 3 49 50 51
		f 3 177 176 175
		mu 0 3 49 51 52
		f 3 179 176 178
		mu 0 3 53 52 51
		f 3 182 181 180
		mu 0 3 53 54 52
		f 3 184 182 183
		mu 0 3 55 54 53
		f 3 187 186 185
		mu 0 3 55 53 56
		f 3 190 189 188
		mu 0 3 55 56 57
		f 3 193 192 191
		mu 0 3 55 57 58
		f 3 196 195 194
		mu 0 3 51 50 59
		f 3 195 198 197
		mu 0 3 59 50 48
		f 3 201 200 199
		mu 0 3 59 60 51
		f 3 178 203 202
		mu 0 3 53 51 60
		f 3 206 205 204
		mu 0 3 60 59 61
		f 3 208 207 204
		mu 0 3 61 62 60
		f 3 211 210 209
		mu 0 3 56 53 63
		f 3 214 213 212
		mu 0 3 63 60 62
		f 3 217 216 215
		mu 0 3 53 60 63
		f 3 220 219 218
		mu 0 3 63 64 56
		f 3 223 222 221
		mu 0 3 61 59 65
		f 3 226 225 224
		mu 0 3 65 66 61
		f 3 228 222 227
		mu 0 3 48 65 59
		f 3 229 228 167
		mu 0 3 47 65 48
		f 3 232 231 230
		mu 0 3 67 57 56
		f 3 235 234 233
		mu 0 3 56 64 67
		f 3 226 237 236
		mu 0 3 66 65 68
		f 3 239 237 238
		mu 0 3 47 68 65
		f 3 220 241 240
		mu 0 3 64 63 69
		f 3 241 212 242
		mu 0 3 69 63 62
		f 3 245 244 243
		mu 0 3 64 69 70
		f 3 248 247 246
		mu 0 3 64 71 67
		f 3 250 249 248
		mu 0 3 64 70 71
		f 3 252 244 251
		mu 0 3 72 70 69
		f 3 255 254 253
		mu 0 3 72 73 70
		f 3 249 257 256
		mu 0 3 71 70 73
		f 3 260 259 258
		mu 0 3 74 72 69
		f 3 258 262 261
		mu 0 3 74 69 75
		f 3 264 263 262
		mu 0 3 69 62 75
		f 3 266 261 265
		mu 0 3 76 74 75
		f 3 269 268 267
		mu 0 3 76 77 74
		f 3 256 271 270
		mu 0 3 71 73 78
		f 3 273 272 269
		mu 0 3 76 79 77
		f 3 275 274 273
		mu 0 3 76 80 79
		f 3 274 277 276
		mu 0 3 79 80 81
		f 3 280 279 278
		mu 0 3 79 81 82
		f 3 283 282 281
		mu 0 3 74 77 83
		f 3 286 285 284
		mu 0 3 74 83 84
		f 3 289 288 287
		mu 0 3 72 74 84
		f 3 292 291 290
		mu 0 3 84 83 85
		f 3 290 294 293
		mu 0 3 84 85 86
		f 3 297 296 295
		mu 0 3 87 84 86
		f 3 300 299 298
		mu 0 3 73 72 87
		f 3 302 301 299
		mu 0 3 72 84 87
		f 3 295 304 303
		mu 0 3 87 86 88
		f 3 306 303 305
		mu 0 3 89 87 88
		f 3 309 308 307
		mu 0 3 89 88 90
		f 3 311 307 310
		mu 0 3 91 89 90
		f 3 314 313 312
		mu 0 3 78 89 91
		f 3 317 316 315
		mu 0 3 91 90 92
		f 3 320 319 318
		mu 0 3 83 93 85
		f 3 322 321 320
		mu 0 3 83 94 93
		f 3 324 323 321
		mu 0 3 94 95 93
		f 3 326 325 324
		mu 0 3 94 96 95
		f 3 328 322 327
		mu 0 3 77 94 83
		f 3 331 330 329
		mu 0 3 77 79 94
		f 3 334 333 332
		mu 0 3 79 96 94
		f 3 336 335 334
		mu 0 3 79 82 96
		f 3 339 338 337
		mu 0 3 73 87 89
		f 3 271 341 340
		mu 0 3 78 73 89
		f 3 304 343 342
		mu 0 3 88 86 97
		f 3 345 344 343
		mu 0 3 86 98 97
		f 3 347 346 345
		mu 0 3 86 85 98
		f 3 350 349 348
		mu 0 3 92 90 99
		f 3 352 351 349
		mu 0 3 90 100 99
		f 3 355 354 353
		mu 0 3 88 97 100
		f 3 308 357 356
		mu 0 3 90 88 100
		f 3 359 358 346
		mu 0 3 85 101 98
		f 3 362 361 360
		mu 0 3 85 93 101
		f 3 365 364 363
		mu 0 3 93 102 101
		f 3 368 367 366
		mu 0 3 93 95 102
		f 3 371 370 369
		mu 0 3 92 99 103
		f 3 374 373 372
		mu 0 3 104 106 105
		f 3 377 376 375
		mu 0 3 105 107 104
		f 3 380 379 378
		mu 0 3 107 105 108
		f 3 383 382 381
		mu 0 3 109 108 105
		f 3 386 385 384
		mu 0 3 109 110 108
		f 3 389 388 387
		mu 0 3 108 110 111
		f 3 392 391 390
		mu 0 3 108 111 112
		f 3 395 394 393
		mu 0 3 108 112 113
		f 3 398 397 396
		mu 0 3 107 108 113
		f 3 401 400 399
		mu 0 3 111 110 114
		f 3 404 403 402
		mu 0 3 115 111 114
		f 3 407 406 405
		mu 0 3 111 115 112
		f 3 410 409 408
		mu 0 3 112 115 116
		f 3 413 412 411
		mu 0 3 115 114 117
		f 3 416 415 414
		mu 0 3 115 117 118
		f 3 419 418 417
		mu 0 3 118 119 115
		f 3 422 421 420
		mu 0 3 119 120 115
		f 3 425 424 423
		mu 0 3 116 115 120
		f 3 428 427 426
		mu 0 3 119 121 120
		f 3 431 430 429
		mu 0 3 122 118 117
		f 3 434 433 432
		mu 0 3 119 118 123
		f 3 437 436 435
		mu 0 3 123 124 119
		f 3 440 439 438
		mu 0 3 119 124 125
		f 3 443 442 441
		mu 0 3 125 121 119
		f 3 446 445 444
		mu 0 3 123 118 126
		f 3 449 448 447
		mu 0 3 118 122 126
		f 3 452 451 450
		mu 0 3 127 122 117
		f 3 455 454 453
		mu 0 3 117 128 127
		f 3 458 457 456
		mu 0 3 128 117 114
		f 3 461 460 459
		mu 0 3 127 128 129
		f 3 464 463 462
		mu 0 3 129 130 127
		f 3 467 466 465
		mu 0 3 131 129 128
		f 3 470 469 468
		mu 0 3 128 132 131
		f 3 473 472 471
		mu 0 3 114 132 128
		f 3 476 475 474
		mu 0 3 121 125 133
		f 3 479 478 477
		mu 0 3 114 134 132
		f 3 482 481 480
		mu 0 3 110 134 114
		f 3 485 484 483
		mu 0 3 135 134 110
		f 3 488 487 486
		mu 0 3 134 135 136
		f 3 491 490 489
		mu 0 3 136 137 134
		f 3 494 493 492
		mu 0 3 134 137 132
		f 3 497 496 495
		mu 0 3 137 136 138
		f 3 500 499 498
		mu 0 3 138 139 137
		f 3 503 502 501
		mu 0 3 139 140 137
		f 3 506 505 504
		mu 0 3 140 132 137
		f 3 509 508 507
		mu 0 3 131 132 140
		f 3 512 511 510
		mu 0 3 139 141 140
		f 3 515 514 513
		mu 0 3 141 131 140
		f 3 518 517 516
		mu 0 3 139 142 141
		f 3 521 520 519
		mu 0 3 142 139 138
		f 3 524 523 522
		mu 0 3 138 143 142
		f 3 527 526 525
		mu 0 3 135 110 109
		f 3 530 529 528
		mu 0 3 144 143 138
		f 3 533 532 531
		mu 0 3 138 145 144
		f 3 536 535 534
		mu 0 3 146 138 136
		f 3 539 538 537
		mu 0 3 146 145 138
		f 3 542 541 540
		mu 0 3 136 135 146
		f 3 545 544 543
		mu 0 3 147 148 133
		f 3 548 547 546
		mu 0 3 149 148 147
		f 3 551 550 549
		mu 0 3 149 147 124
		f 3 554 553 552
		mu 0 3 124 150 149
		f 3 557 556 555
		mu 0 3 150 124 151
		f 3 560 559 558
		mu 0 3 150 152 149
		f 3 563 562 561
		mu 0 3 149 152 153
		f 3 566 565 564
		mu 0 3 153 152 154
		f 3 569 568 567
		mu 0 3 154 152 155
		f 3 572 571 570
		mu 0 3 153 154 156
		f 3 575 574 573
		mu 0 3 156 154 157
		f 3 578 577 576
		mu 0 3 157 154 155
		f 3 581 580 579
		mu 0 3 156 157 158
		f 3 584 583 582
		mu 0 3 159 153 156
		f 3 587 586 585
		mu 0 3 160 159 156
		f 3 590 589 588
		mu 0 3 158 160 156
		f 3 593 592 591
		mu 0 3 159 161 153
		f 3 596 595 594
		mu 0 3 149 153 161
		f 3 599 598 597
		mu 0 3 161 148 149
		f 3 602 601 600
		mu 0 3 159 148 161
		f 3 605 604 603
		mu 0 3 162 158 157
		f 3 608 607 606
		mu 0 3 162 160 158
		f 3 611 610 609
		mu 0 3 162 157 163
		f 3 614 613 612
		mu 0 3 162 163 164
		f 3 617 616 615
		mu 0 3 165 162 164
		f 3 620 619 618
		mu 0 3 165 164 166
		f 3 623 622 621
		mu 0 3 167 166 164
		f 3 626 625 624
		mu 0 3 164 168 167
		f 3 629 628 627
		mu 0 3 168 164 169
		f 3 632 631 630
		mu 0 3 164 163 169
		f 3 635 634 633
		mu 0 3 167 168 170
		f 3 638 637 636
		mu 0 3 170 168 169
		f 3 641 640 639
		mu 0 3 170 171 167
		f 3 644 643 642
		mu 0 3 170 172 171
		f 3 647 646 645
		mu 0 3 173 172 170
		f 3 650 649 648
		mu 0 3 174 173 170
		f 3 653 652 651
		mu 0 3 170 175 174
		f 3 656 655 654
		mu 0 3 175 170 169
		f 3 659 658 657
		mu 0 3 176 175 169
		f 3 662 661 660
		mu 0 3 173 177 172
		f 3 665 664 663
		mu 0 3 178 166 167
		f 3 668 667 666
		mu 0 3 179 166 178
		f 3 671 670 669
		mu 0 3 179 165 166
		f 3 674 673 672
		mu 0 3 178 180 179
		f 3 677 676 675
		mu 0 3 181 165 179
		f 3 680 679 678
		mu 0 3 165 181 182
		f 3 683 682 681
		mu 0 3 183 165 182
		f 3 686 685 684
		mu 0 3 184 175 176
		f 3 689 688 687
		mu 0 3 184 176 185
		f 3 692 691 690
		mu 0 3 173 186 177
		f 3 695 694 693
		mu 0 3 177 186 187
		f 3 698 697 696
		mu 0 3 187 186 188
		f 3 701 700 699
		mu 0 3 189 188 186
		f 3 704 703 702
		mu 0 3 186 190 189
		f 3 706 703 705
		mu 0 3 191 189 190
		f 3 709 708 707
		mu 0 3 190 192 191
		f 3 712 711 710
		mu 0 3 193 188 189
		f 3 715 714 713
		mu 0 3 189 194 193
		f 3 718 717 716
		mu 0 3 194 189 195
		f 3 720 719 716
		mu 0 3 195 196 194
		f 3 723 722 721
		mu 0 3 194 196 197
		f 3 725 724 721
		mu 0 3 197 198 194
		f 3 728 727 726
		mu 0 3 199 193 194
		f 3 731 730 729
		mu 0 3 193 199 200
		f 3 734 733 732
		mu 0 3 200 201 193
		f 3 737 736 735
		mu 0 3 194 202 199
		f 3 740 739 738
		mu 0 3 193 201 203
		f 3 743 742 741
		mu 0 3 203 188 193
		f 3 746 745 744
		mu 0 3 188 203 187
		f 3 749 748 747
		mu 0 3 192 190 127
		f 3 751 704 750
		mu 0 3 127 190 186
		f 3 754 753 752
		mu 0 3 127 130 192
		f 3 757 756 755
		mu 0 3 127 186 173
		f 3 760 759 758
		mu 0 3 173 122 127
		f 3 763 762 761
		mu 0 3 122 173 174
		f 3 766 765 764
		mu 0 3 174 204 122
		f 3 768 767 766
		mu 0 3 174 175 204
		f 3 771 770 769
		mu 0 3 126 122 204
		f 3 774 773 772
		mu 0 3 204 205 126
		f 3 777 776 775
		mu 0 3 205 204 175
		f 3 780 779 778
		mu 0 3 175 184 205
		f 3 783 782 781
		mu 0 3 205 123 126
		f 3 786 785 784
		mu 0 3 184 123 205
		f 3 789 788 787
		mu 0 3 123 184 206
		f 3 792 791 790
		mu 0 3 123 206 151
		f 3 795 794 793
		mu 0 3 124 123 151
		f 3 798 797 796
		mu 0 3 206 207 151
		f 3 800 798 799
		mu 0 3 184 207 206
		f 3 802 555 801
		mu 0 3 207 150 151
		f 3 805 804 803
		mu 0 3 207 184 155
		f 3 808 807 806
		mu 0 3 152 207 155
		f 3 810 560 809
		mu 0 3 207 152 150
		f 3 813 812 811
		mu 0 3 185 155 184
		f 3 816 815 814
		mu 0 3 208 155 185
		f 3 819 818 817
		mu 0 3 208 157 155
		f 3 822 821 820
		mu 0 3 163 157 208
		f 3 825 824 823
		mu 0 3 163 208 169
		f 3 827 814 826
		mu 0 3 176 208 185
		f 3 830 829 828
		mu 0 3 208 176 169
		f 3 833 832 831
		mu 0 3 125 124 147
		f 3 835 543 834
		mu 0 3 125 147 133
		f 3 838 837 836
		mu 0 3 121 133 209
		f 3 841 840 839
		mu 0 3 210 121 209
		f 3 844 843 842
		mu 0 3 133 148 209
		f 3 846 845 843
		mu 0 3 148 211 209
		f 3 845 848 847
		mu 0 3 209 211 212
		f 3 851 850 849
		mu 0 3 210 209 212
		f 3 854 853 852
		mu 0 3 213 210 212
		f 3 857 856 855
		mu 0 3 213 214 210
		f 3 859 858 856
		mu 0 3 214 121 210
		f 3 861 860 846
		mu 0 3 148 159 211
		f 3 864 863 862
		mu 0 3 159 215 211
		f 3 867 866 865
		mu 0 3 212 211 215
		f 3 870 869 868
		mu 0 3 212 215 216
		f 3 869 872 871
		mu 0 3 216 215 162
		f 3 871 874 873
		mu 0 3 216 162 183
		f 3 877 876 875
		mu 0 3 159 160 215
		f 3 879 608 878
		mu 0 3 215 160 162
		f 3 882 881 880
		mu 0 3 216 217 212
		f 3 884 882 883
		mu 0 3 183 217 216
		f 3 887 886 885
		mu 0 3 217 213 212
		f 3 890 889 888
		mu 0 3 183 162 165
		f 3 891 884 681
		mu 0 3 182 217 183
		f 3 893 891 892
		mu 0 3 181 217 182
		f 3 896 895 894
		mu 0 3 116 120 214
		f 3 899 898 897
		mu 0 3 214 120 121
		f 3 902 901 900
		mu 0 3 218 220 219
		f 3 904 903 902
		mu 0 3 218 104 220
		f 3 906 905 900
		mu 0 3 219 221 218
		f 3 909 908 907
		mu 0 3 106 104 218
		f 3 912 911 910
		mu 0 3 218 222 106
		f 3 915 914 913
		mu 0 3 106 222 105
		f 3 918 917 916
		mu 0 3 222 223 105
		f 3 921 920 919
		mu 0 3 224 226 225
		f 3 923 922 919
		mu 0 3 225 227 224
		f 3 925 920 924
		mu 0 3 228 225 226
		f 3 927 926 924
		mu 0 3 226 229 228
		f 3 929 926 928
		mu 0 3 230 228 229
		f 3 931 930 928
		mu 0 3 229 231 230
		f 3 933 930 932
		mu 0 3 232 230 231
		f 3 935 934 932
		mu 0 3 231 233 232
		f 3 938 937 936
		mu 0 3 224 227 234
		f 3 941 940 939
		mu 0 3 234 235 224
		f 3 941 943 942
		mu 0 3 235 234 236
		f 3 945 944 942
		mu 0 3 236 237 235
		f 3 948 947 946
		mu 0 3 238 234 227
		f 3 951 950 949
		mu 0 3 239 234 238
		f 3 953 943 952
		mu 0 3 239 236 234
		f 3 956 955 954
		mu 0 3 225 228 240
		f 3 959 958 957
		mu 0 3 240 241 225
		f 3 962 961 960
		mu 0 3 242 228 230
		f 3 965 964 963
		mu 0 3 243 240 228
		f 3 967 963 966
		mu 0 3 242 243 228
		f 3 970 969 968
		mu 0 3 244 241 240
		f 3 972 968 971
		mu 0 3 245 244 240
		f 3 974 965 973
		mu 0 3 245 240 243
		f 3 977 976 975
		mu 0 3 244 245 246
		f 3 975 979 978
		mu 0 3 244 246 247
		f 3 982 981 980
		mu 0 3 247 248 244
		f 3 985 984 983
		mu 0 3 249 241 244
		f 3 988 987 986
		mu 0 3 249 244 250
		f 3 987 990 989
		mu 0 3 250 244 248
		f 3 992 991 986
		mu 0 3 250 251 249
		f 3 993 992 989
		mu 0 3 248 251 250
		f 3 996 995 994
		mu 0 3 248 252 251
		f 3 998 995 997
		mu 0 3 253 251 252
		f 3 1001 1000 999
		mu 0 3 254 251 253
		f 3 991 1003 1002
		mu 0 3 249 251 254
		f 3 1006 1005 1004
		mu 0 3 254 253 255
		f 3 1004 1008 1007
		mu 0 3 254 255 256
		f 3 1008 1010 1009
		mu 0 3 256 255 257
		f 3 1009 1012 1011
		mu 0 3 256 257 258
		f 3 1011 1014 1013
		mu 0 3 256 258 259
		f 3 1017 1016 1015
		mu 0 3 254 256 259
		f 3 1019 1018 1002
		mu 0 3 254 259 249
		f 3 1014 1021 1020
		mu 0 3 259 258 260
		f 3 1024 1023 1022
		mu 0 3 259 241 249
		f 3 1027 1026 1025
		mu 0 3 259 260 241
		f 3 1030 1029 1028
		mu 0 3 225 241 260
		f 3 1032 923 1031
		mu 0 3 260 227 225
		f 3 1035 1034 1033
		mu 0 3 227 260 261
		f 3 1038 1037 1036
		mu 0 3 261 260 258
		f 3 1041 1040 1039
		mu 0 3 262 261 258
		f 3 1044 1043 1042
		mu 0 3 263 262 258
		f 3 1047 1046 1045
		mu 0 3 263 264 262
		f 3 1050 1049 1048
		mu 0 3 264 265 262
		f 3 1052 1051 1050
		mu 0 3 264 266 265
		f 3 1054 1053 1041
		mu 0 3 262 238 261
		f 3 1057 1056 1055
		mu 0 3 265 238 262
		f 3 1060 1059 1058
		mu 0 3 238 227 261
		f 3 1063 1062 1061
		mu 0 3 265 239 238
		f 3 1066 1065 1064
		mu 0 3 267 269 268
		f 3 1064 1068 1067
		mu 0 3 267 268 270
		f 3 1071 1070 1069
		mu 0 3 270 271 267
		f 3 1073 1066 1072
		mu 0 3 272 269 267
		f 3 1076 1075 1074
		mu 0 3 272 273 269
		f 3 1078 1076 1077
		mu 0 3 274 273 272
		f 3 1078 1080 1079
		mu 0 3 273 274 275
		f 3 1082 1080 1081
		mu 0 3 276 275 274
		f 3 1085 1084 1083
		mu 0 3 276 277 275
		f 3 1087 1085 1086
		mu 0 3 278 277 276
		f 3 1090 1089 1088
		mu 0 3 278 279 277
		f 3 1092 1090 1091
		mu 0 3 280 279 278
		f 3 1095 1094 1093
		mu 0 3 280 281 279
		f 3 1097 1095 1096
		mu 0 3 282 281 280
		f 3 1099 1098 1096
		mu 0 3 280 283 282
		f 3 1098 1101 1100
		mu 0 3 282 283 284
		f 3 1104 1103 1102
		mu 0 3 230 285 242
		f 3 1106 1105 1104
		mu 0 3 230 232 285
		f 3 1109 1108 1107
		mu 0 3 242 285 286
		f 3 1112 1111 1110
		mu 0 3 242 286 287
		f 3 1114 1111 1113
		mu 0 3 288 287 286
		f 3 1117 1116 1115
		mu 0 3 288 289 287
		f 3 1120 1119 1118
		mu 0 3 289 245 287
		f 3 1123 1122 1121
		mu 0 3 289 290 245
		f 3 1126 1125 1124
		mu 0 3 287 243 242
		f 3 1129 1128 1127
		mu 0 3 245 243 287
		f 3 1132 1131 1130
		mu 0 3 30 58 29
		f 3 1134 1133 1132
		mu 0 3 30 55 58
		f 3 1137 1136 1135
		mu 0 3 30 54 55
		f 3 1140 1139 1138
		mu 0 3 30 32 54
		f 3 1143 1142 1141
		mu 0 3 52 54 32
		f 3 1146 1145 1144
		mu 0 3 52 32 33
		f 3 1149 1148 1147
		mu 0 3 36 52 33
		f 3 1152 1151 1150
		mu 0 3 36 49 52
		f 3 1155 1154 1153
		mu 0 3 46 49 36
		f 3 1158 1157 1156
		mu 0 3 46 36 37
		f 3 1161 1160 1159
		mu 0 3 61 75 62
		f 3 1163 1162 1161
		mu 0 3 61 76 75
		f 3 1165 1164 1163
		mu 0 3 61 80 76
		f 3 1167 1166 1165
		mu 0 3 61 66 80
		f 3 1169 1166 1168
		mu 0 3 81 80 66
		f 3 1172 1171 1170
		mu 0 3 81 66 68
		f 3 1175 1174 1173
		mu 0 3 25 12 31
		f 3 1178 1177 1176
		mu 0 3 291 293 292
		f 3 1181 1180 1179
		mu 0 3 291 294 293
		f 3 1184 1183 1182
		mu 0 3 294 295 293
		f 3 1187 1186 1185
		mu 0 3 294 296 295
		f 3 1190 1189 1188
		mu 0 3 296 297 295
		f 3 1193 1192 1191
		mu 0 3 296 298 297
		f 3 1196 1195 1194
		mu 0 3 299 291 292
		f 3 1199 1198 1197
		mu 0 3 299 292 300
		f 3 1202 1201 1200
		mu 0 3 292 293 301
		f 3 1205 1204 1203
		mu 0 3 292 301 302
		f 3 1208 1207 1206
		mu 0 3 300 292 302
		f 3 1211 1210 1209
		mu 0 3 293 303 301
		f 3 1214 1213 1212
		mu 0 3 293 295 303
		f 3 1217 1216 1215
		mu 0 3 295 304 303
		f 3 1220 1219 1218
		mu 0 3 295 297 304
		f 3 1223 1222 1221
		mu 0 3 300 302 305
		f 3 1226 1225 1224
		mu 0 3 306 308 307
		f 3 1229 1228 1227
		mu 0 3 307 309 306
		f 3 1232 1231 1230
		mu 0 3 310 308 306
		f 3 1235 1234 1233
		mu 0 3 306 311 310
		f 3 1238 1237 1236
		mu 0 3 306 312 311
		f 3 1241 1240 1239
		mu 0 3 312 306 313
		f 3 1244 1243 1242
		mu 0 3 313 306 314
		f 3 1247 1246 1245
		mu 0 3 314 315 313
		f 3 1250 1249 1248
		mu 0 3 313 316 312
		f 3 1252 1250 1251
		mu 0 3 317 316 313
		f 3 1255 1254 1253
		mu 0 3 313 315 318
		f 3 1258 1257 1256
		mu 0 3 318 178 313
		f 3 1261 1260 1259
		mu 0 3 313 178 319
		f 3 1264 1263 1262
		mu 0 3 313 319 317
		f 3 1267 1266 1265
		mu 0 3 320 319 178
		f 3 1269 1268 1265
		mu 0 3 178 321 320
		f 3 1268 1271 1270
		mu 0 3 320 321 322
		f 3 1274 1273 1272
		mu 0 3 322 323 320
		f 3 1276 1275 663
		mu 0 3 167 321 178
		f 3 1279 1278 1277
		mu 0 3 171 322 321
		f 3 1276 640 1280
		mu 0 3 321 167 171
		f 3 1283 1282 1281
		mu 0 3 324 326 325
		f 3 1281 1285 1284
		mu 0 3 324 325 327
		f 3 1288 1287 1286
		mu 0 3 327 328 324
		f 3 1288 1290 1289
		mu 0 3 328 327 329
		f 3 1292 1291 1289
		mu 0 3 329 330 328
		f 3 1295 1294 1293
		mu 0 3 331 329 327
		f 3 1298 1297 1296
		mu 0 3 327 332 331
		f 3 1301 1300 1299
		mu 0 3 333 327 325
		f 3 1304 1303 1302
		mu 0 3 325 334 333
		f 3 1307 1306 1305
		mu 0 3 326 335 325
		f 3 1310 1309 1308
		mu 0 3 336 325 335
		f 3 1313 1312 1311
		mu 0 3 337 339 338
		f 3 1316 1315 1314
		mu 0 3 337 340 339
		f 3 1319 1318 1317
		mu 0 3 341 338 339
		f 3 1322 1321 1320
		mu 0 3 341 342 338
		f 3 1325 1324 1323
		mu 0 3 343 342 341
		f 3 1328 1327 1326
		mu 0 3 343 341 344
		f 3 1331 1330 1329
		mu 0 3 339 340 345
		f 3 1334 1333 1332
		mu 0 3 339 345 346
		f 3 1337 1336 1335
		mu 0 3 346 341 339
		f 3 1340 1339 1338
		mu 0 3 346 345 347
		f 3 1343 1342 1341
		mu 0 3 346 347 348
		f 3 1346 1345 1344
		mu 0 3 349 346 348
		f 3 1349 1348 1347
		mu 0 3 349 341 346
		f 3 1327 1351 1350
		mu 0 3 344 341 349
		f 3 1354 1353 1352
		mu 0 3 349 348 350
		f 3 1356 1352 1355
		mu 0 3 351 349 350
		f 3 1359 1358 1357
		mu 0 3 344 349 351
		f 3 1362 1361 1360
		mu 0 3 351 350 352
		f 3 1365 1364 1363
		mu 0 3 348 347 353
		f 3 1368 1367 1366
		mu 0 3 348 353 354
		f 3 1371 1370 1369
		mu 0 3 350 348 354
		f 3 1374 1373 1372
		mu 0 3 350 354 355
		f 3 1377 1376 1375
		mu 0 3 352 350 355
		f 3 1380 1379 1378
		mu 0 3 352 355 356
		f 3 1383 1382 1381
		mu 0 3 354 353 357
		f 3 1386 1385 1384
		mu 0 3 354 357 358
		f 3 1389 1388 1387
		mu 0 3 355 354 358
		f 3 1392 1391 1390
		mu 0 3 355 358 359
		f 3 1395 1394 1393
		mu 0 3 356 355 359
		f 3 1398 1397 1396
		mu 0 3 356 359 360
		f 3 1401 1400 1399
		mu 0 3 358 357 361
		f 3 1404 1403 1402
		mu 0 3 358 361 362
		f 3 1407 1406 1405
		mu 0 3 359 358 362
		f 3 1410 1409 1408
		mu 0 3 359 362 363
		f 3 1413 1412 1411
		mu 0 3 360 359 363
		f 3 1416 1415 1414
		mu 0 3 360 363 364
		f 3 1419 1418 1417
		mu 0 3 351 352 365
		f 3 1422 1421 1420
		mu 0 3 351 365 366
		f 3 1425 1424 1423
		mu 0 3 344 351 366
		f 3 1428 1427 1426
		mu 0 3 344 366 367
		f 3 1431 1430 1429
		mu 0 3 343 344 367
		f 3 1434 1433 1432
		mu 0 3 343 367 368
		f 3 1437 1436 1435
		mu 0 3 356 360 369
		f 3 1439 1438 1436
		mu 0 3 360 370 369
		f 3 1441 1440 1439
		mu 0 3 360 364 370
		f 3 1444 1443 1442
		mu 0 3 368 367 371
		f 3 1447 1446 1445
		mu 0 3 368 371 372
		f 3 1421 1449 1448
		mu 0 3 366 365 373
		f 3 1452 1451 1450
		mu 0 3 366 373 374
		f 3 1455 1454 1453
		mu 0 3 367 374 371
		f 3 1457 1456 1455
		mu 0 3 367 366 374
		f 3 1459 1458 1449
		mu 0 3 365 375 373
		f 3 1461 1460 1459
		mu 0 3 365 376 375
		f 3 1462 1461 1418
		mu 0 3 352 376 365
		f 3 1465 1464 1463
		mu 0 3 352 356 376
		f 3 1467 1466 1464
		mu 0 3 356 369 376
		f 3 1469 1468 1460
		mu 0 3 376 377 375
		f 3 1471 1470 1469
		mu 0 3 376 369 377
		f 3 1474 1473 1472
		mu 0 3 369 378 377
		f 3 1438 1475 1474
		mu 0 3 369 370 378
		f 3 1478 1477 1476
		mu 0 3 379 381 380
		f 3 1480 1479 1478
		mu 0 3 379 382 381
		f 3 1482 1481 1480
		mu 0 3 379 383 382
		f 3 1484 1483 1482
		mu 0 3 379 384 383
		f 3 1486 1485 1476
		mu 0 3 380 385 379
		f 3 1488 1487 1484
		mu 0 3 379 386 384
		f 3 1488 1490 1489
		mu 0 3 386 379 385
		f 3 1493 1492 1491
		mu 0 3 387 384 386
		f 3 1496 1495 1494
		mu 0 3 384 387 388
		f 3 1498 1495 1497
		mu 0 3 389 388 387
		f 3 1498 1500 1499
		mu 0 3 388 389 390
		f 3 1502 1501 1499
		mu 0 3 390 391 388
		f 3 1505 1504 1503
		mu 0 3 391 384 388
		f 3 1507 1483 1506
		mu 0 3 391 383 384
		f 3 1509 1508 1502
		mu 0 3 390 392 391
		f 3 1512 1511 1510
		mu 0 3 393 387 386
		f 3 1515 1514 1513
		mu 0 3 387 393 394
		f 3 1518 1517 1516
		mu 0 3 387 394 395
		f 3 1521 1520 1519
		mu 0 3 395 389 387
		f 3 1524 1523 1522
		mu 0 3 394 396 395
		f 3 1527 1526 1525
		mu 0 3 397 395 396
		f 3 1530 1529 1528
		mu 0 3 395 397 389
		f 3 1533 1532 1531
		mu 0 3 397 398 389
		f 3 1536 1535 1534
		mu 0 3 398 390 389
		f 3 1539 1538 1537
		mu 0 3 399 398 397
		f 3 1542 1541 1540
		mu 0 3 399 397 396
		f 3 1545 1544 1543
		mu 0 3 398 399 400
		f 3 1548 1547 1546
		mu 0 3 401 398 400
		f 3 1551 1550 1549
		mu 0 3 398 401 402
		f 3 1554 1553 1552
		mu 0 3 398 402 403
		f 3 1557 1556 1555
		mu 0 3 398 403 390
		f 3 1560 1559 1558
		mu 0 3 404 391 392
		f 3 1563 1562 1561
		mu 0 3 402 405 403
		f 3 1566 1565 1564
		mu 0 3 405 390 403
		f 3 1569 1568 1567
		mu 0 3 405 392 390
		f 3 1572 1571 1570
		mu 0 3 404 392 405
		f 3 1575 1574 1573
		mu 0 3 402 406 405
		f 3 1577 1576 1574
		mu 0 3 406 407 405
		f 3 1580 1579 1578
		mu 0 3 404 405 407
		f 3 1583 1582 1581
		mu 0 3 408 404 407
		f 3 1586 1585 1584
		mu 0 3 408 409 404
		f 3 1589 1588 1587
		mu 0 3 409 410 404
		f 3 1591 1590 1589
		mu 0 3 409 411 410
		f 3 1593 1590 1592
		mu 0 3 412 410 411
		f 3 1596 1595 1594
		mu 0 3 412 413 410
		f 3 1598 1597 1596
		mu 0 3 412 414 413
		f 3 1600 1599 1598
		mu 0 3 412 415 414
		f 3 1602 1599 1601
		mu 0 3 416 414 415
		f 3 1605 1604 1603
		mu 0 3 416 417 414
		f 3 1607 1606 1605
		mu 0 3 416 418 417
		f 3 1609 1608 1607
		mu 0 3 416 419 418
		f 3 1611 1606 1610
		mu 0 3 420 417 418
		f 3 1610 1613 1612
		mu 0 3 420 418 421
		f 3 1615 1612 1614
		mu 0 3 422 420 421
		f 3 1618 1617 1616
		mu 0 3 380 420 422
		f 3 1614 1620 1619
		mu 0 3 422 421 423
		f 3 1623 1622 1621
		mu 0 3 381 417 420
		f 3 1626 1625 1624
		mu 0 3 381 414 417
		f 3 1477 1628 1627
		mu 0 3 380 381 420
		f 3 1630 1629 1479
		mu 0 3 382 414 381
		f 3 1632 1597 1631
		mu 0 3 382 413 414
		f 3 1635 1634 1633
		mu 0 3 383 413 382
		f 3 1638 1637 1636
		mu 0 3 383 410 413
		f 3 1641 1640 1639
		mu 0 3 410 383 391
		f 3 1643 1609 1642
		mu 0 3 424 419 416
		f 3 1642 1645 1644
		mu 0 3 424 416 425
		f 3 1647 1644 1646
		mu 0 3 426 424 425
		f 3 1646 1649 1648
		mu 0 3 426 425 427
		f 3 1649 1651 1650
		mu 0 3 427 425 428
		f 3 1650 1653 1652
		mu 0 3 427 428 429
		f 3 1655 1654 1653
		mu 0 3 428 430 429
		f 3 1657 1656 1655
		mu 0 3 428 431 430
		f 3 1659 1656 1658
		mu 0 3 432 430 431
		f 3 1658 1661 1660
		mu 0 3 432 431 433
		f 3 1663 1660 1662
		mu 0 3 434 432 433
		f 3 1666 1665 1664
		mu 0 3 434 435 432
		f 3 1668 1667 1666
		mu 0 3 434 436 435
		f 3 1670 1669 1668
		mu 0 3 434 437 436
		f 3 1672 1671 1654
		mu 0 3 430 438 429
		f 3 1675 1674 1673
		mu 0 3 438 427 429
		f 3 1678 1677 1676
		mu 0 3 438 430 439
		f 3 1681 1680 1679
		mu 0 3 432 439 430
		f 3 1684 1683 1682
		mu 0 3 439 440 438
		f 3 1684 1686 1685
		mu 0 3 440 439 441
		f 3 1689 1688 1687
		mu 0 3 435 442 432
		f 3 1692 1691 1690
		mu 0 3 442 441 439
		f 3 1694 1693 1681
		mu 0 3 432 442 439
		f 3 1689 1696 1695
		mu 0 3 442 435 443
		f 3 1698 1697 1683
		mu 0 3 440 444 438
		f 3 1698 1700 1699
		mu 0 3 444 440 445
		f 3 1703 1702 1701
		mu 0 3 427 438 444
		f 3 1648 1705 1704
		mu 0 3 426 427 444
		f 3 1708 1707 1706
		mu 0 3 446 435 436
		f 3 1710 1709 1696
		mu 0 3 435 446 443
		f 3 1713 1712 1711
		mu 0 3 445 447 444
		f 3 1716 1715 1714
		mu 0 3 426 444 447
		f 3 1719 1718 1717
		mu 0 3 443 448 442
		f 3 1722 1721 1720
		mu 0 3 448 441 442
		f 3 1724 1723 1719
		mu 0 3 443 449 448
		f 3 1726 1725 1724
		mu 0 3 443 450 449
		f 3 1728 1727 1726
		mu 0 3 443 446 450
		f 3 1730 1723 1729
		mu 0 3 451 448 449
		f 3 1729 1732 1731
		mu 0 3 451 449 452
		f 3 1733 1732 1725
		mu 0 3 450 452 449
		f 3 1736 1735 1734
		mu 0 3 453 448 451
		f 3 1739 1738 1737
		mu 0 3 453 454 448
		f 3 1742 1741 1740
		mu 0 3 448 454 441
		f 3 1745 1744 1743
		mu 0 3 455 454 453
		f 3 1748 1747 1746
		mu 0 3 455 453 456
		f 3 1751 1750 1749
		mu 0 3 450 457 452
		f 3 1746 1753 1752
		mu 0 3 455 456 458
		f 3 1752 1755 1754
		mu 0 3 455 458 459
		f 3 1757 1756 1755
		mu 0 3 458 460 459
		f 3 1759 1758 1757
		mu 0 3 458 461 460
		f 3 1762 1761 1760
		mu 0 3 453 462 456
		f 3 1764 1763 1762
		mu 0 3 453 463 462
		f 3 1766 1764 1765
		mu 0 3 451 463 453
		f 3 1768 1767 1763
		mu 0 3 463 464 462
		f 3 1770 1769 1768
		mu 0 3 463 465 464
		f 3 1772 1770 1771
		mu 0 3 466 465 463
		f 3 1774 1773 1731
		mu 0 3 452 466 451
		f 3 1777 1776 1775
		mu 0 3 451 466 463
		f 3 1780 1779 1778
		mu 0 3 466 467 465
		f 3 1782 1780 1781
		mu 0 3 468 467 466
		f 3 1785 1784 1783
		mu 0 3 468 469 467
		f 3 1787 1785 1786
		mu 0 3 470 469 468
		f 3 1790 1789 1788
		mu 0 3 457 470 468
		f 3 1792 1791 1787
		mu 0 3 470 471 469
		f 3 1795 1794 1793
		mu 0 3 462 464 472
		f 3 1798 1797 1796
		mu 0 3 462 472 473
		f 3 1797 1800 1799
		mu 0 3 473 472 474
		f 3 1799 1802 1801
		mu 0 3 473 474 475
		f 3 1805 1804 1803
		mu 0 3 456 462 473
		f 3 1808 1807 1806
		mu 0 3 456 473 458
		f 3 1811 1810 1809
		mu 0 3 458 473 475
		f 3 1814 1813 1812
		mu 0 3 458 475 461
		f 3 1816 1781 1815
		mu 0 3 452 468 466
		f 3 1819 1818 1817
		mu 0 3 457 468 452
		f 3 1822 1821 1820
		mu 0 3 467 476 465
		f 3 1824 1823 1822
		mu 0 3 467 477 476
		f 3 1826 1824 1825
		mu 0 3 469 477 467
		f 3 1828 1827 1826
		mu 0 3 469 478 477
		f 3 1830 1828 1829
		mu 0 3 471 478 469
		f 3 1832 1831 1830
		mu 0 3 471 479 478
		f 3 1835 1834 1833
		mu 0 3 472 480 474
		f 3 1837 1836 1835
		mu 0 3 472 481 480
		f 3 1839 1837 1838
		mu 0 3 464 481 472
		f 3 1841 1840 1839
		mu 0 3 464 482 481
		f 3 1842 1841 1769
		mu 0 3 465 482 464
		f 3 1844 1843 1842
		mu 0 3 465 476 482
		f 3 1847 1846 1845
		mu 0 3 483 485 484
		f 3 1847 1849 1848
		mu 0 3 485 483 486
		f 3 1851 1850 1848
		mu 0 3 486 487 485
		f 3 1854 1853 1852
		mu 0 3 488 485 487
		f 3 1857 1856 1855
		mu 0 3 488 487 489
		f 3 1859 1858 1856
		mu 0 3 487 490 489
		f 3 1861 1860 1859
		mu 0 3 487 491 490
		f 3 1863 1862 1861
		mu 0 3 487 492 491
		f 3 1864 1863 1851
		mu 0 3 486 492 487
		f 3 1866 1865 1858
		mu 0 3 490 493 489
		f 3 1868 1866 1867
		mu 0 3 494 493 490
		f 3 1860 1869 1867
		mu 0 3 490 491 494
		f 3 1871 1870 1869
		mu 0 3 491 495 494
		f 3 1873 1872 1868
		mu 0 3 494 496 493
		f 3 1875 1874 1873
		mu 0 3 494 497 496
		f 3 1875 1877 1876
		mu 0 3 497 494 498
		f 3 1879 1878 1877
		mu 0 3 494 499 498
		f 3 1879 1870 1880
		mu 0 3 499 494 495
		f 3 1882 1874 1881
		mu 0 3 500 496 497
		f 3 1885 1884 1883
		mu 0 3 501 496 500
		f 3 1888 1887 1886
		mu 0 3 496 501 502
		f 3 1891 1890 1889
		mu 0 3 502 493 496
		f 3 1894 1893 1892
		mu 0 3 501 503 502
		f 3 1894 1896 1895
		mu 0 3 503 501 504
		f 3 1899 1898 1897
		mu 0 3 493 502 505
		f 3 1901 1900 1898
		mu 0 3 502 506 505
		f 3 1901 1893 1902
		mu 0 3 506 502 503
		f 3 1905 1904 1903
		mu 0 3 493 505 507
		f 3 1908 1907 1906
		mu 0 3 489 493 507
		f 3 1911 1910 1909
		mu 0 3 508 489 507
		f 3 1914 1913 1912
		mu 0 3 507 509 508
		f 3 1914 1916 1915
		mu 0 3 509 507 510
		f 3 1918 1916 1917
		mu 0 3 505 510 507
		f 3 1920 1919 1915
		mu 0 3 510 511 509
		f 3 1920 1922 1921
		mu 0 3 511 510 512
		f 3 1922 1924 1923
		mu 0 3 512 510 513
		f 3 1918 1925 1924
		mu 0 3 510 505 513
		f 3 1928 1927 1926
		mu 0 3 513 505 506
		f 3 1923 1930 1929
		mu 0 3 512 513 514
		f 3 1932 1931 1930
		mu 0 3 513 506 514
		f 3 1929 1934 1933
		mu 0 3 512 514 515
		f 3 1937 1936 1935
		mu 0 3 515 511 512
		f 3 1940 1939 1938
		mu 0 3 511 515 516
		f 3 1943 1942 1941
		mu 0 3 508 488 489
		f 3 1946 1945 1944
		mu 0 3 517 511 516
		f 3 1949 1948 1947
		mu 0 3 511 517 518
		f 3 1952 1951 1950
		mu 0 3 519 511 518
		f 3 1954 1919 1953
		mu 0 3 519 509 511
		f 3 1956 1955 1913
		mu 0 3 509 519 508
		f 3 1959 1958 1957
		mu 0 3 520 522 521
		f 3 1957 1961 1960
		mu 0 3 520 521 483
		f 3 1964 1963 1962
		mu 0 3 522 520 523
		f 3 1966 1845 1965
		mu 0 3 520 483 484
		f 3 1965 1968 1967
		mu 0 3 520 484 524
		f 3 1969 1968 1846
		mu 0 3 485 524 484
		f 3 1969 1971 1970
		mu 0 3 524 485 525
		f 3 1974 1973 1972
		mu 0 3 526 528 527
		f 3 1974 1976 1975
		mu 0 3 528 526 529
		f 3 1978 1973 1977
		mu 0 3 530 527 528
		f 3 1981 1980 1979
		mu 0 3 527 530 531
		f 3 1984 1983 1982
		mu 0 3 532 531 530
		f 3 1984 1986 1985
		mu 0 3 531 532 533
		f 3 1988 1986 1987
		mu 0 3 534 533 532
		f 3 1991 1990 1989
		mu 0 3 533 534 535
		f 3 1993 1992 1976
		mu 0 3 526 536 529
		f 3 1993 1995 1994
		mu 0 3 536 526 537
		f 3 1997 1996 1994
		mu 0 3 537 538 536
		f 3 1997 1999 1998
		mu 0 3 538 537 539
		f 3 2002 2001 2000
		mu 0 3 540 529 536
		f 3 2004 1996 2003
		mu 0 3 541 536 538
		f 3 2007 2006 2005
		mu 0 3 541 540 536
		f 3 2010 2009 2008
		mu 0 3 528 542 530
		f 3 2010 2012 2011
		mu 0 3 542 528 543
		f 3 2014 1982 2013
		mu 0 3 544 532 530
		f 3 2017 2016 2015
		mu 0 3 545 530 542
		f 3 2020 2019 2018
		mu 0 3 544 530 545
		f 3 2023 2022 2021
		mu 0 3 546 542 543
		f 3 2026 2025 2024
		mu 0 3 547 542 546
		f 3 2029 2028 2027
		mu 0 3 547 545 542
		f 3 2032 2031 2030
		mu 0 3 546 548 547
		f 3 2034 2033 2032
		mu 0 3 546 549 548
		f 3 2034 2036 2035
		mu 0 3 549 546 550
		f 3 2039 2038 2037
		mu 0 3 551 546 543
		f 3 2042 2041 2040
		mu 0 3 551 552 546
		f 3 2044 2036 2043
		mu 0 3 552 550 546
		f 3 2047 2046 2045
		mu 0 3 552 551 553
		f 3 2049 2045 2048
		mu 0 3 550 552 553
		f 3 2052 2051 2050
		mu 0 3 550 553 554
		f 3 2054 2051 2053
		mu 0 3 555 554 553
		f 3 2056 2053 2055
		mu 0 3 556 555 553
		f 3 2058 2055 2057
		mu 0 3 551 556 553
		f 3 2060 2059 2056
		mu 0 3 556 557 555
		f 3 2062 2061 2060
		mu 0 3 556 558 557
		f 3 2064 2063 2061
		mu 0 3 558 559 557
		f 3 2066 2065 2064
		mu 0 3 558 560 559
		f 3 2068 2067 2066
		mu 0 3 558 561 560
		f 3 2069 2068 2062
		mu 0 3 556 561 558
		f 3 2072 2071 2070
		mu 0 3 556 551 561
		f 3 2074 2073 2067
		mu 0 3 561 562 560
		f 3 2076 2075 2074
		mu 0 3 561 543 562
		f 3 2078 2037 2077
		mu 0 3 561 551 543
		f 3 2080 2075 2079
		mu 0 3 528 562 543
		f 3 2080 1975 2081
		mu 0 3 562 528 529
		f 3 2083 2082 2081
		mu 0 3 529 563 562
		f 3 2085 2084 2082
		mu 0 3 563 560 562
		f 3 2088 2087 2086
		mu 0 3 564 560 563
		f 3 2091 2090 2089
		mu 0 3 565 560 564
		f 3 2089 2093 2092
		mu 0 3 565 564 566
		f 3 2093 2095 2094
		mu 0 3 566 564 567
		f 3 2094 2097 2096
		mu 0 3 566 567 568
		f 3 2100 2099 2098
		mu 0 3 564 563 540
		f 3 2103 2102 2101
		mu 0 3 567 564 540
		f 3 2106 2105 2104
		mu 0 3 540 563 529
		f 3 2109 2108 2107
		mu 0 3 567 540 541
		f 3 2112 2111 2110
		mu 0 3 569 571 570
		f 3 2114 2113 2112
		mu 0 3 569 572 571
		f 3 2114 2116 2115
		mu 0 3 572 569 573
		f 3 2118 2110 2117
		mu 0 3 574 569 570
		f 3 2121 2120 2119
		mu 0 3 574 570 575
		f 3 2123 2119 2122
		mu 0 3 576 574 575
		f 3 2125 2124 2122
		mu 0 3 575 577 576
		f 3 2127 2124 2126
		mu 0 3 578 576 577
		f 3 2130 2129 2128
		mu 0 3 578 577 579
		f 3 2132 2128 2131
		mu 0 3 580 578 579
		f 3 2135 2134 2133
		mu 0 3 580 579 581
		f 3 2137 2133 2136
		mu 0 3 582 580 581
		f 3 2140 2139 2138
		mu 0 3 582 581 583
		f 3 2142 2138 2141
		mu 0 3 584 582 583
		f 3 2142 2144 2143
		mu 0 3 582 584 585
		f 3 2146 2145 2144
		mu 0 3 584 586 585
		f 3 2149 2148 2147
		mu 0 3 532 587 534
		f 3 2151 2150 2149
		mu 0 3 532 544 587
		f 3 2153 2152 2150
		mu 0 3 544 588 587
		f 3 2155 2154 2153
		mu 0 3 544 589 588
		f 3 2157 2154 2156
		mu 0 3 590 588 589
		f 3 2160 2159 2158
		mu 0 3 590 589 591
		f 3 2163 2162 2161
		mu 0 3 591 589 547
		f 3 2161 2165 2164
		mu 0 3 591 547 592
		f 3 2155 2167 2166
		mu 0 3 589 544 545
		f 3 2170 2169 2168
		mu 0 3 547 589 545
		f 3 2173 2172 2171
		mu 0 3 409 437 434
		f 3 2176 2175 2174
		mu 0 3 409 408 437
		f 3 2179 2178 2177
		mu 0 3 409 434 433
		f 3 2182 2181 2180
		mu 0 3 409 433 411
		f 3 2185 2184 2183
		mu 0 3 431 411 433
		f 3 2188 2187 2186
		mu 0 3 431 412 411
		f 3 1600 2190 2189
		mu 0 3 415 412 431
		f 3 2192 1657 2191
		mu 0 3 415 431 428
		f 3 2195 2194 2193
		mu 0 3 425 415 428
		f 3 1645 2197 2196
		mu 0 3 425 416 415
		f 3 2199 1745 2198
		mu 0 3 440 454 455
		f 3 1685 2201 2200
		mu 0 3 440 441 454
		f 3 2203 1754 2202
		mu 0 3 440 455 459
		f 3 2206 2205 2204
		mu 0 3 440 459 445
		f 3 2208 2207 1756
		mu 0 3 460 445 459
		f 3 2211 2210 2209
		mu 0 3 460 447 445
		f 3 2214 2213 2212
		mu 0 3 404 410 391
		f 3 2217 2216 2215
		mu 0 3 593 595 594
		f 3 2219 2218 2217
		mu 0 3 593 596 595
		f 3 2216 2221 2220
		mu 0 3 594 595 597
		f 3 2224 2223 2222
		mu 0 3 594 597 598
		f 3 2227 2226 2225
		mu 0 3 598 597 599
		f 3 2225 2229 2228
		mu 0 3 598 599 600
		f 3 2232 2231 2230
		mu 0 3 601 596 593
		f 3 2235 2234 2233
		mu 0 3 601 602 596
		f 3 2237 2236 2218
		mu 0 3 596 603 595
		f 3 2239 2238 2237
		mu 0 3 596 604 603
		f 3 2241 2239 2240
		mu 0 3 602 604 596
		f 3 2244 2243 2242
		mu 0 3 595 605 597
		f 3 2246 2245 2244
		mu 0 3 595 603 605
		f 3 2248 2247 2226
		mu 0 3 597 606 599
		f 3 2250 2249 2248
		mu 0 3 597 605 606
		f 3 2253 2252 2251
		mu 0 3 602 607 604
		f 3 2256 2255 2254
		mu 0 3 608 610 609
		f 3 2258 2257 2254
		mu 0 3 609 611 608
		f 3 2261 2260 2259
		mu 0 3 611 499 608
		f 3 2264 2263 2262
		mu 0 3 499 495 608
		f 3 2267 2266 2265
		mu 0 3 499 611 498
		f 3 2270 2269 2268
		mu 0 3 612 498 611
		f 3 2273 2272 2271
		mu 0 3 498 612 613
		f 3 2276 2275 2274
		mu 0 3 614 498 613
		f 3 2278 2277 1876
		mu 0 3 498 614 497
		f 3 2281 2280 2279
		mu 0 3 614 615 497
		f 3 2284 2283 2282
		mu 0 3 611 616 612
		f 3 2286 2284 2285
		mu 0 3 617 616 611
		f 3 2289 2288 2287
		mu 0 3 497 615 500
		f 3 2292 2291 2290
		mu 0 3 615 618 500
		f 3 2292 2294 2293
		mu 0 3 618 615 619
		f 3 2294 2296 2295
		mu 0 3 619 615 614
		f 3 2299 2298 2297
		mu 0 3 620 500 618
		f 3 2302 2301 2300
		mu 0 3 500 620 621
		f 3 2305 2304 2303
		mu 0 3 621 501 500
		f 3 2308 2307 2306
		mu 0 3 501 621 622
		f 3 2311 2310 2309
		mu 0 3 501 622 623
		f 3 2313 2312 2310
		mu 0 3 622 624 623
		f 3 2315 2312 2314
		mu 0 3 625 623 624
		f 3 2318 2317 2316
		mu 0 3 623 625 626
		f 3 2321 2320 2319
		mu 0 3 626 501 623
		f 3 2324 2323 2322
		mu 0 3 624 622 627
		f 3 2327 2326 2325
		mu 0 3 628 624 627
		f 3 2330 2329 2328
		mu 0 3 624 628 629
		f 3 2333 2332 2331
		mu 0 3 629 630 624
		f 3 2336 2335 2334
		mu 0 3 630 629 631
		f 3 2339 2338 2337
		mu 0 3 629 632 631
		f 3 2342 2341 2340
		mu 0 3 632 629 633
		f 3 2345 2344 2343
		mu 0 3 634 629 628
		f 3 2348 2347 2346
		mu 0 3 628 635 634
		f 3 2351 2350 2349
		mu 0 3 629 634 636
		f 3 2353 2323 2352
		mu 0 3 637 627 622
		f 3 2355 2352 2354
		mu 0 3 638 637 622
		f 3 2357 2354 2356
		mu 0 3 621 638 622
		f 3 2359 2358 2357
		mu 0 3 621 639 638
		f 3 2361 2360 2359
		mu 0 3 621 640 639
		f 3 2363 2362 2360
		mu 0 3 640 641 639
		f 3 2365 2364 2363
		mu 0 3 640 642 641
		f 3 2367 2364 2366
		mu 0 3 643 641 642
		f 3 2369 2368 2366
		mu 0 3 642 644 643
		f 3 2371 2370 2368
		mu 0 3 644 645 643
		f 3 2371 2373 2372
		mu 0 3 645 644 646
		f 3 2375 2373 2374
		mu 0 3 647 646 644
		f 3 2378 2377 2376
		mu 0 3 645 648 643
		f 3 2381 2380 2379
		mu 0 3 641 643 648
		f 3 2384 2383 2382
		mu 0 3 648 645 649
		f 3 2387 2386 2385
		mu 0 3 644 642 650
		f 3 2390 2389 2388
		mu 0 3 651 644 650
		f 3 2393 2392 2391
		mu 0 3 644 651 652
		f 3 2396 2395 2394
		mu 0 3 653 647 644
		f 3 2399 2398 2397
		mu 0 3 647 653 654
		f 3 2402 2401 2400
		mu 0 3 655 647 654
		f 3 2405 2404 2403
		mu 0 3 647 655 656
		f 3 2408 2407 2406
		mu 0 3 657 647 656
		f 3 2410 2409 2406
		mu 0 3 656 658 657
		f 3 2410 2412 2411
		mu 0 3 658 656 659
		f 3 2415 2414 2413
		mu 0 3 647 657 660
		f 3 2418 2417 2416
		mu 0 3 647 660 661
		f 3 2421 2420 2419
		mu 0 3 661 646 647
		f 3 2424 2423 2422
		mu 0 3 651 650 662
		f 3 2427 2426 2425
		mu 0 3 663 651 662
		f 3 2429 2428 2425
		mu 0 3 662 664 663
		f 3 2431 2429 2430
		mu 0 3 665 664 662
		f 3 2434 2433 2432
		mu 0 3 662 650 666
		f 3 2436 2433 2435
		mu 0 3 642 666 650
		f 3 2436 2438 2437
		mu 0 3 666 642 667
		f 3 2441 2440 2439
		mu 0 3 662 666 668
		f 3 2444 2443 2442
		mu 0 3 665 662 668
		f 3 2446 2445 2437
		mu 0 3 667 669 666
		f 3 2449 2448 2447
		mu 0 3 642 640 667
		f 3 2451 2446 2450
		mu 0 3 640 669 667
		f 3 2453 2451 2452
		mu 0 3 670 669 640
		f 3 2456 2455 2454
		mu 0 3 671 669 670
		f 3 2458 2457 2452
		mu 0 3 640 620 670
		f 3 2460 2361 2459
		mu 0 3 620 640 621
		f 3 2463 2462 2461
		mu 0 3 672 671 670
		f 3 2466 2465 2464
		mu 0 3 672 673 671
		f 3 2469 2468 2467
		mu 0 3 670 619 672
		f 3 2297 2471 2470
		mu 0 3 620 618 670
		f 3 2473 2472 2293
		mu 0 3 619 670 618
		f 3 2476 2475 2474
		mu 0 3 672 619 614
		f 3 2440 2478 2477
		mu 0 3 668 666 674
		f 3 2480 2479 2478
		mu 0 3 666 669 674
		f 3 2483 2482 2481
		mu 0 3 668 674 675
		f 3 2486 2485 2484
		mu 0 3 674 669 676
		f 3 2484 2487 2482
		mu 0 3 674 676 675
		f 3 2490 2489 2488
		mu 0 3 671 673 676
		f 3 2492 2491 2488
		mu 0 3 676 669 671
		f 3 2495 2494 2493
		mu 0 3 668 675 677
		f 3 2497 2494 2496
		mu 0 3 678 677 675
		f 3 2500 2499 2498
		mu 0 3 678 675 679
		f 3 2502 2498 2501
		mu 0 3 680 678 679
		f 3 2505 2504 2503
		mu 0 3 680 679 681
		f 3 2507 2506 2504
		mu 0 3 679 682 681
		f 3 2510 2509 2508
		mu 0 3 676 682 675
		f 3 2513 2512 2511
		mu 0 3 673 672 682
		f 3 2516 2515 2514
		mu 0 3 676 673 682
		f 3 2519 2518 2517
		mu 0 3 675 682 679
		f 3 2522 2521 2520
		mu 0 3 683 680 681
		f 3 2525 2524 2523
		mu 0 3 684 678 680
		f 3 2528 2527 2526
		mu 0 3 685 678 684
		f 3 2531 2530 2529
		mu 0 3 677 678 685
		f 3 2534 2533 2532
		mu 0 3 668 677 685
		f 3 2537 2536 2535
		mu 0 3 686 683 681
		f 3 2539 2537 2538
		mu 0 3 613 683 686
		f 3 2542 2541 2540
		mu 0 3 683 613 687
		f 3 2545 2544 2543
		mu 0 3 686 688 613
		f 3 2540 2547 2546
		mu 0 3 683 687 689
		f 3 2550 2549 2548
		mu 0 3 684 690 689
		f 3 2552 2551 2550
		mu 0 3 684 680 690
		f 3 2554 2553 2549
		mu 0 3 690 683 689
		f 3 2522 2556 2555
		mu 0 3 680 683 690
		f 3 2558 2557 2547
		mu 0 3 687 616 689
		f 3 2560 2559 2272
		mu 0 3 612 687 613
		f 3 2563 2562 2561
		mu 0 3 616 687 612
		f 3 2566 2565 2564
		mu 0 3 681 682 691
		f 3 2568 2545 2567
		mu 0 3 691 688 686
		f 3 2571 2570 2569
		mu 0 3 691 686 681
		f 3 2574 2573 2572
		mu 0 3 691 682 672
		f 3 2577 2576 2575
		mu 0 3 613 688 614
		f 3 2580 2579 2578
		mu 0 3 614 688 692
		f 3 2582 2581 2474
		mu 0 3 614 692 672
		f 3 2579 2584 2583
		mu 0 3 692 688 691
		f 3 2586 2583 2585
		mu 0 3 672 692 691
		f 3 2589 2588 2587
		mu 0 3 693 685 684
		f 3 2592 2591 2590
		mu 0 3 693 668 685
		f 3 2595 2594 2593
		mu 0 3 693 684 694
		f 3 2598 2597 2596
		mu 0 3 694 684 689
		f 3 2600 2593 2599
		mu 0 3 695 693 694
		f 3 2602 2599 2601
		mu 0 3 696 695 694
		f 3 2604 2603 2601
		mu 0 3 694 689 696
		f 3 2606 2603 2605
		mu 0 3 616 696 689
		f 3 2608 2602 2607
		mu 0 3 617 695 696
		f 3 2611 2610 2609
		mu 0 3 617 696 616
		f 3 2614 2613 2612
		mu 0 3 697 695 617
		f 3 2617 2616 2615
		mu 0 3 695 698 693
		f 3 2620 2619 2618
		mu 0 3 698 665 693
		f 3 2617 2622 2621
		mu 0 3 698 695 699
		f 3 2624 2621 2623
		mu 0 3 665 698 699
		f 3 2626 2625 2622
		mu 0 3 695 697 699
		f 3 2629 2628 2627
		mu 0 3 664 665 699
		f 3 2632 2631 2630
		mu 0 3 663 664 699
		f 3 2635 2634 2633
		mu 0 3 665 668 693
		f 3 2638 2637 2636
		mu 0 3 656 701 700
		f 3 2638 2640 2639
		mu 0 3 701 656 702
		f 3 2643 2642 2641
		mu 0 3 700 659 656
		f 3 2646 2645 2644
		mu 0 3 703 705 704
		f 3 2648 2647 2646
		mu 0 3 703 706 705
		f 3 2648 2650 2649
		mu 0 3 706 703 707
		f 3 2652 2651 2649
		mu 0 3 707 708 706
		f 3 2652 2654 2653
		mu 0 3 708 707 709
		f 3 2657 2656 2655
		mu 0 3 710 706 708
		f 3 2660 2659 2658
		mu 0 3 706 710 711
		f 3 2662 2647 2661
		mu 0 3 712 705 706
		f 3 2665 2664 2663
		mu 0 3 705 712 713
		f 3 2667 2666 2645
		mu 0 3 705 714 704
		f 3 2669 2668 2667
		mu 0 3 705 715 714
		f 3 2672 2671 2670
		mu 0 3 501 626 504
		f 3 2675 2674 2673
		mu 0 3 716 718 717
		f 3 2677 2673 2676
		mu 0 3 719 716 717
		f 3 2679 2678 2674
		mu 0 3 718 720 717
		f 3 2679 2681 2680
		mu 0 3 720 718 721
		f 3 2683 2680 2682
		mu 0 3 722 720 721
		f 3 2683 2685 2684
		mu 0 3 720 722 723
		f 3 2687 2685 2686
		mu 0 3 724 723 722
		f 3 2690 2689 2688
		mu 0 3 717 725 719
		f 3 2690 2692 2691
		mu 0 3 725 717 726
		f 3 2694 2692 2693
		mu 0 3 720 726 717
		f 3 2696 2695 2691
		mu 0 3 726 727 725
		f 3 2696 2698 2697
		mu 0 3 727 726 728
		f 3 2700 2699 2697
		mu 0 3 728 729 727
		f 3 2702 2699 2701
		mu 0 3 730 727 729
		f 3 2702 2704 2703
		mu 0 3 727 730 731
		f 3 2706 2705 2703
		mu 0 3 731 725 727
		f 3 2709 2708 2707
		mu 0 3 729 728 732
		f 3 2711 2708 2710
		mu 0 3 733 732 728
		f 3 2711 2713 2712
		mu 0 3 732 733 734
		f 3 2715 2713 2714
		mu 0 3 735 734 733
		f 3 2715 2717 2716
		mu 0 3 734 735 736
		f 3 2719 2717 2718
		mu 0 3 737 736 735
		f 3 2719 2721 2720
		mu 0 3 736 737 738
		f 3 2723 2721 2722
		mu 0 3 739 738 737
		f 3 2723 2725 2724
		mu 0 3 738 739 740
		f 3 2727 2724 2726
		mu 0 3 741 738 740
		f 3 2720 2729 2728
		mu 0 3 736 738 741
		f 3 2731 2730 2716
		mu 0 3 736 742 734
		f 3 2731 2733 2732
		mu 0 3 742 736 743
		f 3 2735 2733 2734
		mu 0 3 741 743 736
		f 3 2738 2737 2736
		mu 0 3 729 744 730
		f 3 2741 2740 2739
		mu 0 3 741 740 745
		f 3 2743 2742 2712
		mu 0 3 734 746 732
		f 3 2743 2745 2744
		mu 0 3 746 734 742
		f 3 2748 2747 2746
		mu 0 3 746 729 732
		f 3 2750 2749 2738
		mu 0 3 729 746 744
		f 3 2753 2752 2751
		mu 0 3 746 747 744
		f 3 2753 2755 2754
		mu 0 3 747 746 748
		f 3 2757 2755 2756
		mu 0 3 742 748 746
		f 3 2759 2758 2754
		mu 0 3 748 749 747
		f 3 2761 2760 2759
		mu 0 3 748 750 749
		f 3 2763 2762 2760
		mu 0 3 750 751 749
		f 3 2765 2764 2763
		mu 0 3 750 752 751
		f 3 2767 2765 2766
		mu 0 3 753 752 750
		f 3 2770 2769 2768
		mu 0 3 753 754 752
		f 3 2772 2770 2771
		mu 0 3 755 754 753
		f 3 2775 2774 2773
		mu 0 3 755 756 754
		f 3 2777 2775 2776
		mu 0 3 757 756 755
		f 3 2780 2779 2778
		mu 0 3 757 758 756
		f 3 2782 2780 2781
		mu 0 3 759 758 757
		f 3 2785 2784 2783
		mu 0 3 759 760 758
		f 3 2788 2787 2786
		mu 0 3 749 751 761
		f 3 2791 2790 2789
		mu 0 3 749 761 762
		f 3 2794 2793 2792
		mu 0 3 763 759 757
		f 3 2797 2796 2795
		mu 0 3 763 757 764
		f 3 2800 2799 2798
		mu 0 3 764 757 755
		f 3 2803 2802 2801
		mu 0 3 765 749 762
		f 3 2806 2805 2804
		mu 0 3 765 747 749
		f 3 2809 2808 2807
		mu 0 3 766 755 753
		f 3 2812 2811 2810
		mu 0 3 766 767 755
		f 3 2798 2814 2813
		mu 0 3 764 755 767
		f 3 2816 2815 2812
		mu 0 3 766 743 767
		f 3 2819 2818 2817
		mu 0 3 743 766 742
		f 3 2822 2821 2820
		mu 0 3 748 742 766
		f 3 2825 2824 2823
		mu 0 3 766 750 748
		f 3 2827 2766 2826
		mu 0 3 766 753 750
		f 3 2830 2829 2828
		mu 0 3 767 741 764
		f 3 2833 2832 2831
		mu 0 3 741 767 743
		f 3 2836 2835 2834
		mu 0 3 745 764 741
		f 3 2839 2838 2837
		mu 0 3 764 745 763
		f 3 2841 2752 2840
		mu 0 3 765 744 747
		f 3 2844 2843 2842
		mu 0 3 744 765 768
		f 3 2847 2846 2845
		mu 0 3 768 730 744
		f 3 2850 2849 2848
		mu 0 3 769 771 770
		f 3 2852 2851 2850
		mu 0 3 769 772 771
		f 3 2854 2851 2853
		mu 0 3 773 771 772
		f 3 2857 2856 2855
		mu 0 3 773 772 774
		f 3 2859 2855 2858
		mu 0 3 775 773 774
		f 3 2862 2861 2860
		mu 0 3 775 776 773
		f 3 2864 2863 2849
		mu 0 3 771 777 770
		f 3 2866 2865 2864
		mu 0 3 771 778 777
		f 3 2866 2868 2867
		mu 0 3 778 771 773
		f 3 2870 2869 2865
		mu 0 3 778 779 777
		f 3 2872 2871 2870
		mu 0 3 778 780 779
		f 3 2874 2872 2873
		mu 0 3 781 780 778
		f 3 2873 2867 2875
		mu 0 3 781 778 773
		f 3 2877 2875 2876
		mu 0 3 776 781 773
		f 3 2880 2879 2878
		mu 0 3 781 782 780
		f 3 2882 2880 2881
		mu 0 3 783 782 781
		f 3 2883 2881 2877
		mu 0 3 776 783 781
		f 3 2886 2885 2884
		mu 0 3 783 784 782
		f 3 2888 2887 2871
		mu 0 3 780 785 779
		f 3 2890 2889 2888
		mu 0 3 780 786 785
		f 3 2891 2890 2879
		mu 0 3 782 786 780
		f 3 2893 2892 2891
		mu 0 3 782 787 786
		f 3 2894 2893 2885
		mu 0 3 784 787 782
		f 3 2896 2895 2894
		mu 0 3 784 788 787
		f 3 2898 2897 2889
		mu 0 3 786 789 785
		f 3 2900 2899 2898
		mu 0 3 786 790 789
		f 3 2901 2900 2892
		mu 0 3 787 790 786
		f 3 2903 2902 2901
		mu 0 3 787 791 790
		f 3 2904 2903 2895
		mu 0 3 788 791 787
		f 3 2906 2905 2904
		mu 0 3 788 792 791
		f 3 2908 2907 2899
		mu 0 3 790 793 789
		f 3 2910 2909 2908
		mu 0 3 790 794 793
		f 3 2911 2910 2902
		mu 0 3 791 794 790
		f 3 2913 2912 2911
		mu 0 3 791 795 794
		f 3 2914 2913 2905
		mu 0 3 792 795 791
		f 3 2916 2915 2914
		mu 0 3 792 796 795
		f 3 2918 2917 2886
		mu 0 3 783 797 784
		f 3 2920 2919 2918
		mu 0 3 783 798 797
		f 3 2921 2920 2883
		mu 0 3 776 798 783
		f 3 2924 2923 2922
		mu 0 3 776 799 798
		f 3 2925 2924 2862
		mu 0 3 775 799 776
		f 3 2928 2927 2926
		mu 0 3 775 800 799
		f 3 2930 2929 2906
		mu 0 3 788 801 792
		f 3 2932 2931 2916
		mu 0 3 792 802 796
		f 3 2934 2933 2932
		mu 0 3 792 801 802
		f 3 2937 2936 2935
		mu 0 3 800 803 799
		f 3 2939 2938 2937
		mu 0 3 800 804 803
		f 3 2942 2941 2940
		mu 0 3 798 805 797
		f 3 2944 2943 2942
		mu 0 3 798 806 805
		f 3 2945 2944 2923
		mu 0 3 799 806 798
		f 3 2947 2946 2945
		mu 0 3 799 803 806
		f 3 2950 2949 2948
		mu 0 3 797 805 807
		f 3 2953 2952 2951
		mu 0 3 797 807 808
		f 3 2956 2955 2954
		mu 0 3 784 797 808
		f 3 2958 2957 2896
		mu 0 3 784 808 788
		f 3 2961 2960 2959
		mu 0 3 788 808 801
		f 3 2964 2963 2962
		mu 0 3 808 809 801
		f 3 2966 2965 2964
		mu 0 3 808 807 809
		f 3 2969 2968 2967
		mu 0 3 801 810 802
		f 3 2971 2970 2969
		mu 0 3 801 809 810
		f 3 2974 2973 2972
		mu 0 3 811 813 812
		f 3 2976 2972 2975
		mu 0 3 814 811 812
		f 3 2979 2978 2977
		mu 0 3 815 817 816
		f 3 2981 2979 2980
		mu 0 3 818 817 815
		f 3 2984 2983 2982
		mu 0 3 819 821 820
		f 3 2986 2985 2982
		mu 0 3 820 822 819
		f 3 2988 2986 2987
		mu 0 3 823 822 820
		f 3 2991 2990 2989
		mu 0 3 823 820 824
		f 3 2993 2992 2989
		mu 0 3 824 825 823
		f 3 2996 2995 2994
		mu 0 3 821 826 820
		f 3 2998 2997 2996
		mu 0 3 821 827 826
		f 3 3000 2999 2998
		mu 0 3 821 828 827
		f 3 3002 3001 3000
		mu 0 3 821 829 828
		f 3 3004 3003 3002
		mu 0 3 821 830 829
		f 3 3005 3004 2984
		mu 0 3 819 830 821
		f 3 3007 2999 3006
		mu 0 3 831 827 828
		f 3 3010 3009 3008
		mu 0 3 827 831 832
		f 3 3013 3012 3011
		mu 0 3 832 833 827
		f 3 3015 3014 2997
		mu 0 3 827 833 826
		f 3 3018 3017 3016
		mu 0 3 826 833 834
		f 3 3021 3020 3019
		mu 0 3 835 826 834
		f 3 3023 3022 3019
		mu 0 3 834 836 835
		f 3 3026 3025 3024
		mu 0 3 826 835 837
		f 3 3028 3027 3025
		mu 0 3 835 838 837
		f 3 3027 3030 3029
		mu 0 3 837 838 824
		f 3 3032 3031 3028
		mu 0 3 835 839 838
		f 3 3035 3034 3033
		mu 0 3 834 840 836
		f 3 3035 3017 3036
		mu 0 3 840 834 833
		f 3 3039 3038 3037
		mu 0 3 841 832 831
		f 3 3042 3041 3040
		mu 0 3 842 840 833
		f 3 3045 3044 3043
		mu 0 3 842 833 832
		f 3 3048 3047 3046
		mu 0 3 832 843 842
		f 3 3048 3050 3049
		mu 0 3 843 832 844
		f 3 3052 3051 3050
		mu 0 3 832 841 844
		f 3 3055 3054 3053
		mu 0 3 845 838 839
		f 3 3057 3056 3053
		mu 0 3 839 846 845
		f 3 3059 3051 3058
		mu 0 3 847 844 841
		f 3 3061 3049 3060
		mu 0 3 847 843 844
		f 3 3056 3063 3062
		mu 0 3 845 846 848
		f 3 3065 3063 3064
		mu 0 3 849 848 846
		f 3 3068 3067 3066
		mu 0 3 849 850 848
		f 3 3068 3070 3069
		mu 0 3 850 849 851
		f 3 3072 3070 3071
		mu 0 3 852 851 849
		f 3 3071 3074 3073
		mu 0 3 852 849 853
		f 3 3076 3073 3075
		mu 0 3 854 852 853
		f 3 3075 3078 3077
		mu 0 3 854 853 855
		f 3 3077 3080 3079
		mu 0 3 854 855 856
		f 3 3082 3081 3079
		mu 0 3 856 857 854
		f 3 3082 3084 3083
		mu 0 3 857 856 858
		f 3 3086 3085 3083
		mu 0 3 858 859 857
		f 3 3089 3088 3087
		mu 0 3 860 857 859
		f 3 3092 3091 3090
		mu 0 3 857 860 861
		f 3 3095 3094 3093
		mu 0 3 859 858 862
		f 3 3098 3097 3096
		mu 0 3 863 857 861
		f 3 3101 3100 3099
		mu 0 3 857 863 854
		f 3 3104 3103 3102
		mu 0 3 854 864 852
		f 3 3106 3105 3104
		mu 0 3 854 863 864
		f 3 3109 3108 3107
		mu 0 3 852 864 865
		f 3 3112 3111 3110
		mu 0 3 865 851 852
		f 3 3108 3114 3113
		mu 0 3 865 864 866
		f 3 3114 3116 3115
		mu 0 3 866 864 867
		f 3 3118 3117 3115
		mu 0 3 867 868 866
		f 3 3117 3120 3119
		mu 0 3 866 868 869
		f 3 3122 3120 3121
		mu 0 3 870 869 868
		f 3 3124 3123 3121
		mu 0 3 868 871 870
		f 3 3126 3124 3125
		mu 0 3 872 871 868
		f 3 3128 3127 3125
		mu 0 3 868 873 872
		f 3 3118 3129 3128
		mu 0 3 868 867 873
		f 3 3132 3131 3130
		mu 0 3 874 871 872
		f 3 3135 3134 3133
		mu 0 3 872 875 874
		f 3 3138 3137 3136
		mu 0 3 871 874 876
		f 3 3140 3123 3139
		mu 0 3 876 870 871
		f 3 3143 3142 3141
		mu 0 3 869 877 866
		f 3 3145 3113 3144
		mu 0 3 877 865 866
		f 3 3148 3147 3146
		mu 0 3 869 870 878
		f 3 3151 3150 3149
		mu 0 3 878 879 869
		f 3 3154 3153 3152
		mu 0 3 877 869 879
		f 3 3157 3156 3155
		mu 0 3 879 880 877
		f 3 3160 3159 3158
		mu 0 3 880 881 877
		f 3 3163 3162 3161
		mu 0 3 870 876 882
		f 3 3166 3165 3164
		mu 0 3 882 878 870
		f 3 3159 3168 3167
		mu 0 3 877 881 865
		f 3 3171 3170 3169
		mu 0 3 883 881 880
		f 3 3173 3172 3171
		mu 0 3 883 884 881
		f 3 3176 3175 3174
		mu 0 3 885 883 880
		f 3 3179 3178 3177
		mu 0 3 880 886 885
		f 3 3181 3178 3180
		mu 0 3 887 885 886
		f 3 3184 3183 3182
		mu 0 3 885 887 888
		f 3 3186 3185 3182
		mu 0 3 888 889 885
		f 3 3176 3188 3187
		mu 0 3 883 885 889
		f 3 3191 3190 3189
		mu 0 3 886 890 887
		f 3 3194 3193 3192
		mu 0 3 891 887 890
		f 3 3197 3196 3195
		mu 0 3 890 892 891
		f 3 3200 3199 3198
		mu 0 3 889 893 883
		f 3 3203 3202 3201
		mu 0 3 883 893 884
		f 3 3206 3205 3204
		mu 0 3 884 893 894
		f 3 3209 3208 3207
		mu 0 3 894 895 884
		f 3 3211 3209 3210
		mu 0 3 896 895 894
		f 3 3213 3212 3210
		mu 0 3 894 897 896
		f 3 3212 3215 3214
		mu 0 3 896 897 825
		f 3 2993 3217 3216
		mu 0 3 825 824 896
		f 3 3194 3219 3218
		mu 0 3 887 891 898
		f 3 3222 3221 3220
		mu 0 3 898 888 887
		f 3 3225 3224 3223
		mu 0 3 899 894 893
		f 3 3225 3227 3226
		mu 0 3 894 899 900
		f 3 3229 3227 3228
		mu 0 3 901 900 899
		f 3 3231 3230 3228
		mu 0 3 899 902 901
		f 3 3231 3233 3232
		mu 0 3 902 899 903
		f 3 3235 3234 3233
		mu 0 3 899 893 903
		f 3 3237 3236 3232
		mu 0 3 903 904 902
		f 3 3239 3236 3238
		mu 0 3 905 902 904
		f 3 3241 3240 3238
		mu 0 3 904 906 905
		f 3 3244 3243 3242
		mu 0 3 902 905 907
		f 3 3246 3230 3245
		mu 0 3 907 901 902
		f 3 3249 3248 3247
		mu 0 3 908 897 894
		f 3 3252 3251 3250
		mu 0 3 825 897 909
		f 3 3254 3253 3251
		mu 0 3 897 908 909
		f 3 3257 3256 3255
		mu 0 3 910 909 908
		f 3 3260 3259 3258
		mu 0 3 908 911 910
		f 3 3260 3262 3261
		mu 0 3 911 908 912
		f 3 3247 3263 3262
		mu 0 3 908 894 912
		f 3 3265 3264 3261
		mu 0 3 912 913 911
		f 3 3268 3267 3266
		mu 0 3 914 911 913
		f 3 3271 3270 3269
		mu 0 3 913 915 914
		f 3 3274 3273 3272
		mu 0 3 911 914 916
		f 3 3276 3259 3275
		mu 0 3 916 910 911
		f 3 3279 3278 3277
		mu 0 3 910 916 917
		f 3 3282 3281 3280
		mu 0 3 917 918 910
		f 3 3282 3284 3283
		mu 0 3 918 917 919
		f 3 3285 3284 3278
		mu 0 3 916 919 917
		f 3 3287 3286 3283
		mu 0 3 919 920 918
		f 3 3286 3289 3288
		mu 0 3 918 920 921
		f 3 3291 3290 3288
		mu 0 3 921 922 918
		f 3 3294 3293 3292
		mu 0 3 910 918 922
		f 3 3296 3257 3295
		mu 0 3 922 909 910
		f 3 3298 3291 3297
		mu 0 3 823 922 921
		f 3 3301 3300 3299
		mu 0 3 921 923 823
		f 3 3304 3303 3302
		mu 0 3 823 923 924
		f 3 3307 3306 3305
		mu 0 3 925 823 924
		f 3 3310 3309 3308
		mu 0 3 925 924 926
		f 3 3312 3311 3308
		mu 0 3 926 927 925
		f 3 3314 3311 3313
		mu 0 3 928 925 927
		f 3 3316 3315 3313
		mu 0 3 927 929 928
		f 3 3318 3316 3317
		mu 0 3 930 929 927
		f 3 3320 3319 3317
		mu 0 3 927 931 930
		f 3 3320 3312 3321
		mu 0 3 931 927 926
		f 3 3324 3323 3322
		mu 0 3 822 925 928
		f 3 3326 2988 3325
		mu 0 3 925 822 823
		f 3 3329 3328 3327
		mu 0 3 928 932 822
		f 3 3332 3331 3330
		mu 0 3 822 932 933
		f 3 3335 3334 3333
		mu 0 3 934 822 933
		f 3 3338 3337 3336
		mu 0 3 934 933 935
		f 3 3340 3339 3336
		mu 0 3 935 936 934
		f 3 3342 3339 3341
		mu 0 3 937 934 936
		f 3 3344 3343 3341
		mu 0 3 936 938 937
		f 3 3346 3344 3345
		mu 0 3 939 938 936
		f 3 3348 3347 3345
		mu 0 3 936 940 939
		f 3 3348 3340 3349
		mu 0 3 940 936 935
		f 3 3352 3351 3350
		mu 0 3 819 934 937
		f 3 3355 3354 3353
		mu 0 3 934 819 822
		f 3 3358 3357 3356
		mu 0 3 937 941 819
		f 3 3361 3360 3359
		mu 0 3 819 941 942
		f 3 3364 3363 3362
		mu 0 3 943 819 942
		f 3 3367 3366 3365
		mu 0 3 943 942 944
		f 3 3369 3368 3365
		mu 0 3 944 945 943
		f 3 3371 3369 3370
		mu 0 3 946 945 944
		f 3 3373 3372 3370
		mu 0 3 944 947 946
		f 3 3375 3005 3374
		mu 0 3 943 830 819
		f 3 3377 3376 3349
		mu 0 3 935 948 940
		f 3 3380 3379 3378
		mu 0 3 948 939 940
		f 3 3383 3382 3381
		mu 0 3 947 949 946
		f 3 3383 3385 3384
		mu 0 3 949 947 950
		f 3 3388 3387 3386
		mu 0 3 939 948 951
		f 3 3391 3390 3389
		mu 0 3 926 952 931
		f 3 3394 3393 3392
		mu 0 3 952 930 931
		f 3 3397 3396 3395
		mu 0 3 930 952 953
		f 3 3400 3399 3398
		mu 0 3 922 823 825
		f 3 3403 3402 3401
		mu 0 3 922 825 909
		f 3 3406 3405 3404
		mu 0 3 954 956 955
		f 3 3408 3407 3406
		mu 0 3 954 957 956
		f 3 3410 3404 3409
		mu 0 3 958 954 955
		f 3 3409 3412 3411
		mu 0 3 958 955 959
		f 3 3414 3411 3413
		mu 0 3 960 958 959
		f 3 3413 3416 3415
		mu 0 3 960 959 961
		f 3 3418 3415 3417
		mu 0 3 962 960 961
		f 3 3417 3420 3419
		mu 0 3 962 961 963
		f 3 3422 3419 3421
		mu 0 3 964 962 963
		f 3 3421 3424 3423
		mu 0 3 964 963 965
		f 3 3426 3425 3407
		mu 0 3 957 966 956
		f 3 3428 3427 3426
		mu 0 3 957 967 966
		f 3 3431 3430 3429
		mu 0 3 968 962 964
		f 3 3434 3433 3432
		mu 0 3 968 969 962
		f 3 3436 3418 3435
		mu 0 3 969 960 962
		f 3 3438 3408 3437
		mu 0 3 970 957 954
		f 3 3441 3440 3439
		mu 0 3 970 971 957
		f 3 3444 3443 3442
		mu 0 3 972 957 971
		f 3 3446 3428 3445
		mu 0 3 972 967 957
		f 3 3449 3448 3447
		mu 0 3 969 973 960
		f 3 3452 3451 3450
		mu 0 3 974 960 973
		f 3 3455 3454 3453
		mu 0 3 974 970 954
		f 3 3458 3457 3456
		mu 0 3 974 958 960
		f 3 3461 3460 3459
		mu 0 3 974 954 958
		f 3 3464 3463 3462
		mu 0 3 971 970 975
		f 3 3467 3466 3465
		mu 0 3 975 976 971
		f 3 3442 3469 3468
		mu 0 3 972 971 976
		f 3 3471 3467 3470
		mu 0 3 977 976 975
		f 3 3474 3473 3472
		mu 0 3 977 978 976
		f 3 3474 3476 3475
		mu 0 3 978 977 979
		f 3 3478 3477 3475
		mu 0 3 979 980 978
		f 3 3480 3476 3479
		mu 0 3 981 979 977
		f 3 3482 3481 3479
		mu 0 3 977 982 981
		f 3 3483 3482 3470
		mu 0 3 975 982 977
		f 3 3485 3481 3484
		mu 0 3 983 981 982
		f 3 3487 3486 3484
		mu 0 3 982 984 983
		f 3 3490 3489 3488
		mu 0 3 984 982 975
		f 3 3492 3486 3491
		mu 0 3 985 983 984
		f 3 3494 3493 3491
		mu 0 3 984 986 985
		f 3 3496 3493 3495
		mu 0 3 987 985 986
		f 3 3498 3497 3495
		mu 0 3 986 988 987
		f 3 3500 3497 3499
		mu 0 3 989 987 988
		f 3 3502 3501 3499
		mu 0 3 988 990 989
		f 3 3504 3502 3503
		mu 0 3 991 990 988
		f 3 3505 3503 3498
		mu 0 3 986 991 988
		f 3 3494 3507 3506
		mu 0 3 986 984 992
		f 3 3510 3509 3508
		mu 0 3 992 993 986
		f 3 3513 3512 3511
		mu 0 3 991 986 993
		f 3 3516 3515 3514
		mu 0 3 991 994 990
		f 3 3519 3518 3517
		mu 0 3 975 992 984
		f 3 3521 3500 3520
		mu 0 3 995 987 989
		f 3 3496 3523 3522
		mu 0 3 985 987 995
		f 3 3525 3524 3520
		mu 0 3 989 996 995
		f 3 3528 3527 3526
		mu 0 3 995 997 985
		f 3 3492 3530 3529
		mu 0 3 983 985 997
		f 3 3533 3532 3531
		mu 0 3 997 998 983
		f 3 3536 3535 3534
		mu 0 3 996 999 995
		f 3 3539 3538 3537
		mu 0 3 997 995 999
		f 3 3542 3541 3540
		mu 0 3 998 997 1000
		f 3 3545 3544 3543
		mu 0 3 997 1001 1000
		f 3 3548 3547 3546
		mu 0 3 999 1001 997
		f 3 3551 3550 3549
		mu 0 3 1001 1002 1000
		f 3 3554 3553 3552
		mu 0 3 1003 1000 1002
		f 3 3557 3556 3555
		mu 0 3 1000 1003 998
		f 3 3560 3559 3558
		mu 0 3 1002 1004 1003
		f 3 3563 3562 3561
		mu 0 3 1003 1004 1005
		f 3 3566 3565 3564
		mu 0 3 1005 1006 1003
		f 3 3569 3568 3567
		mu 0 3 1007 1006 1005
		f 3 3572 3571 3570
		mu 0 3 1008 998 1003
		f 3 3575 3574 3573
		mu 0 3 1003 1006 1008
		f 3 3578 3577 3576
		mu 0 3 998 1008 981
		f 3 3581 3580 3579
		mu 0 3 979 981 1008
		f 3 3584 3583 3582
		mu 0 3 1008 1009 979
		f 3 3587 3586 3585
		mu 0 3 1009 1008 1006
		f 3 3590 3589 3588
		mu 0 3 980 979 1009
		f 3 3593 3592 3591
		mu 0 3 1009 1010 980
		f 3 3596 3595 3594
		mu 0 3 981 983 998
		f 3 3599 3598 3597
		mu 0 3 1006 1011 1009
		f 3 3602 3601 3600
		mu 0 3 1011 1010 1009
		f 3 3605 3604 3603
		mu 0 3 1011 1006 1007
		f 3 3608 3607 3606
		mu 0 3 865 881 851
		f 3 3610 3609 3172
		mu 0 3 884 851 881
		f 3 3612 3069 3611
		mu 0 3 884 850 851
		f 3 3615 3614 3613
		mu 0 3 848 850 884
		f 3 3618 3617 3616
		mu 0 3 848 884 895
		f 3 3621 3620 3619
		mu 0 3 896 848 895
		f 3 3623 3062 3622
		mu 0 3 896 845 848
		f 3 3626 3625 3624
		mu 0 3 896 838 845
		f 3 3217 3628 3627
		mu 0 3 896 824 838
		f 3 3631 3630 3629
		mu 0 3 837 824 820
		f 3 3634 3633 3632
		mu 0 3 826 837 820
		f 3 3285 3636 3635
		mu 0 3 919 916 1012
		f 3 3639 3638 3637
		mu 0 3 1013 976 978
		f 3 3642 3641 3640
		mu 0 3 976 1013 972
		f 3 3644 3463 3643
		mu 0 3 992 975 970
		f 3 3647 3646 3645
		mu 0 3 970 974 992
		f 3 3650 3649 3648
		mu 0 3 993 992 974
		f 3 3653 3652 3651
		mu 0 3 974 973 993
		f 3 3656 3655 3654
		mu 0 3 991 993 973
		f 3 3659 3658 3657
		mu 0 3 973 969 991
		f 3 3662 3661 3660
		mu 0 3 994 991 969
		f 3 3665 3664 3663
		mu 0 3 969 968 994
		f 3 2348 3667 3666
		mu 0 3 635 628 1014
		f 3 3670 3669 3668
		mu 0 3 628 1015 1014
		f 3 3672 2325 3671
		mu 0 3 1015 628 627
		f 3 2353 3674 3673
		mu 0 3 627 637 1015
		f 3 3677 3676 3675
		mu 0 3 1016 1018 1017
		f 3 3680 3679 3678
		mu 0 3 1018 1016 1019
		f 3 3683 3682 3681
		mu 0 3 1020 1018 1019
		f 3 3686 3685 3684
		mu 0 3 1020 1021 1018
		f 3 3689 3688 3687
		mu 0 3 1021 1020 1022
		f 3 3692 3691 3690
		mu 0 3 1017 1018 1023
		f 3 3695 3694 3693
		mu 0 3 1017 1023 1024
		f 3 3698 3697 3696
		mu 0 3 1017 1024 1025
		f 3 3701 3700 3699
		mu 0 3 1017 1025 1026
		f 3 3704 3703 3702
		mu 0 3 1017 1026 1027
		f 3 3707 3706 3705
		mu 0 3 1016 1017 1027
		f 3 3710 3709 3708
		mu 0 3 1028 1025 1024
		f 3 3713 3712 3711
		mu 0 3 1024 1029 1028
		f 3 3716 3715 3714
		mu 0 3 1029 1024 1030
		f 3 3719 3718 3717
		mu 0 3 1024 1023 1030
		f 3 3722 3721 3720
		mu 0 3 1023 1031 1030
		f 3 3725 3724 3723
		mu 0 3 1032 1031 1023
		f 3 3728 3727 3726
		mu 0 3 1031 1032 1033
		f 3 3731 3730 3729
		mu 0 3 1023 1034 1032
		f 3 3734 3733 3732
		mu 0 3 1032 1034 1035
		f 3 3737 3736 3735
		mu 0 3 1034 1021 1035
		f 3 3740 3739 3738
		mu 0 3 1032 1035 1036
		f 3 3743 3742 3741
		mu 0 3 1031 1033 1037
		f 3 3746 3745 3744
		mu 0 3 1037 1030 1031
		f 3 3749 3748 3747
		mu 0 3 1038 1028 1029
		f 3 3752 3751 3750
		mu 0 3 1039 1030 1037
		f 3 3755 3754 3753
		mu 0 3 1039 1029 1030
		f 3 3758 3757 3756
		mu 0 3 1029 1039 1040
		f 3 3761 3760 3759
		mu 0 3 1040 1041 1029
		f 3 3764 3763 3762
		mu 0 3 1029 1041 1038
		f 3 3767 3766 3765
		mu 0 3 1042 1036 1035
		f 3 3770 3769 3768
		mu 0 3 1036 1042 1043
		f 3 3773 3772 3771
		mu 0 3 1044 1038 1041
		f 3 3776 3775 3774
		mu 0 3 1044 1041 1040
		f 3 3779 3778 3777
		mu 0 3 1042 1045 1043
		f 3 3782 3781 3780
		mu 0 3 1046 1043 1045
		f 3 3785 3784 3783
		mu 0 3 1046 1045 1047
		f 3 3788 3787 3786
		mu 0 3 1047 1048 1046
		f 3 3791 3790 3789
		mu 0 3 1049 1046 1048
		f 3 3794 3793 3792
		mu 0 3 1049 1050 1046
		f 3 3797 3796 3795
		mu 0 3 1051 1050 1049
		f 3 3800 3799 3798
		mu 0 3 1051 1052 1050
		f 3 3803 3802 3801
		mu 0 3 1051 1053 1052
		f 3 3806 3805 3804
		mu 0 3 1053 1051 1054
		f 3 3809 3808 3807
		mu 0 3 1054 1055 1053
		f 3 3812 3811 3810
		mu 0 3 1055 1054 1056
		f 3 3815 3814 3813
		mu 0 3 1057 1056 1054
		f 3 3818 3817 3816
		mu 0 3 1054 1058 1057
		f 3 3821 3820 3819
		mu 0 3 1056 1059 1055
		f 3 3824 3823 3822
		mu 0 3 1060 1058 1054
		f 3 3827 3826 3825
		mu 0 3 1054 1051 1060
		f 3 3830 3829 3828
		mu 0 3 1051 1061 1060
		f 3 3833 3832 3831
		mu 0 3 1051 1049 1061
		f 3 3836 3835 3834
		mu 0 3 1049 1062 1061
		f 3 3839 3838 3837
		mu 0 3 1062 1049 1048
		f 3 3842 3841 3840
		mu 0 3 1062 1063 1061
		f 3 3845 3844 3843
		mu 0 3 1063 1064 1061
		f 3 3848 3847 3846
		mu 0 3 1064 1063 1065
		f 3 3851 3850 3849
		mu 0 3 1063 1066 1065
		f 3 3854 3853 3852
		mu 0 3 1067 1065 1066
		f 3 3857 3856 3855
		mu 0 3 1065 1067 1068
		f 3 3860 3859 3858
		mu 0 3 1069 1065 1068
		f 3 3863 3862 3861
		mu 0 3 1065 1069 1070
		f 3 3866 3865 3864
		mu 0 3 1065 1070 1064
		f 3 3869 3868 3867
		mu 0 3 1071 1069 1068
		f 3 3872 3871 3870
		mu 0 3 1069 1071 1072
		f 3 3875 3874 3873
		mu 0 3 1068 1073 1071
		f 3 3878 3877 3876
		mu 0 3 1073 1068 1067
		f 3 3881 3880 3879
		mu 0 3 1066 1063 1074
		f 3 3884 3883 3882
		mu 0 3 1074 1063 1062
		f 3 3887 3886 3885
		mu 0 3 1066 1075 1067
		f 3 3890 3889 3888
		mu 0 3 1075 1066 1076
		f 3 3893 3892 3891
		mu 0 3 1074 1076 1066
		f 3 3896 3895 3894
		mu 0 3 1076 1074 1077
		f 3 3899 3898 3897
		mu 0 3 1077 1074 1078
		f 3 3902 3901 3900
		mu 0 3 1067 1079 1073
		f 3 3905 3904 3903
		mu 0 3 1079 1067 1075
		f 3 3908 3907 3906
		mu 0 3 1074 1062 1078
		f 3 3911 3910 3909
		mu 0 3 1080 1077 1078
		f 3 3914 3913 3912
		mu 0 3 1080 1078 1081
		f 3 3917 3916 3915
		mu 0 3 1082 1077 1080
		f 3 3920 3919 3918
		mu 0 3 1077 1082 1083
		f 3 3923 3922 3921
		mu 0 3 1084 1083 1082
		f 3 3926 3925 3924
		mu 0 3 1082 1085 1084
		f 3 3929 3928 3927
		mu 0 3 1085 1082 1086
		f 3 3932 3931 3930
		mu 0 3 1080 1086 1082
		f 3 3935 3934 3933
		mu 0 3 1083 1084 1087
		f 3 3938 3937 3936
		mu 0 3 1088 1087 1084
		f 3 3941 3940 3939
		mu 0 3 1087 1088 1089
		f 3 3944 3943 3942
		mu 0 3 1086 1080 1090
		f 3 3947 3946 3945
		mu 0 3 1080 1081 1090
		f 3 3950 3949 3948
		mu 0 3 1081 1091 1090
		f 3 3953 3952 3951
		mu 0 3 1091 1081 1092
		f 3 3956 3955 3954
		mu 0 3 1093 1091 1092
		f 3 3959 3958 3957
		mu 0 3 1091 1093 1094
		f 3 3962 3961 3960
		mu 0 3 1093 1022 1094
		f 3 3965 3964 3963
		mu 0 3 1022 1093 1021
		f 3 3968 3967 3966
		mu 0 3 1084 1095 1088
		f 3 3971 3970 3969
		mu 0 3 1095 1084 1085
		f 3 3974 3973 3972
		mu 0 3 1096 1090 1091
		f 3 3977 3976 3975
		mu 0 3 1091 1097 1096
		f 3 3980 3979 3978
		mu 0 3 1098 1096 1097
		f 3 3983 3982 3981
		mu 0 3 1096 1098 1099
		f 3 3986 3985 3984
		mu 0 3 1099 1100 1096
		f 3 3989 3988 3987
		mu 0 3 1096 1100 1090
		f 3 3992 3991 3990
		mu 0 3 1100 1099 1101
		f 3 3995 3994 3993
		mu 0 3 1102 1101 1099
		f 3 3998 3997 3996
		mu 0 3 1101 1102 1103
		f 3 4001 4000 3999
		mu 0 3 1099 1104 1102
		f 3 4004 4003 4002
		mu 0 3 1104 1099 1098
		f 3 4007 4006 4005
		mu 0 3 1105 1091 1094
		f 3 4010 4009 4008
		mu 0 3 1022 1106 1094
		f 3 4013 4012 4011
		mu 0 3 1094 1106 1105
		f 3 4016 4015 4014
		mu 0 3 1107 1105 1106
		f 3 4019 4018 4017
		mu 0 3 1105 1107 1108
		f 3 4022 4021 4020
		mu 0 3 1108 1109 1105
		f 3 4025 4024 4023
		mu 0 3 1105 1109 1091
		f 3 4028 4027 4026
		mu 0 3 1109 1108 1110
		f 3 4031 4030 4029
		mu 0 3 1111 1110 1108
		f 3 4034 4033 4032
		mu 0 3 1110 1111 1112
		f 3 4037 4036 4035
		mu 0 3 1108 1113 1111
		f 3 4040 4039 4038
		mu 0 3 1113 1108 1107
		f 3 4043 4042 4041
		mu 0 3 1107 1114 1113
		f 3 4046 4045 4044
		mu 0 3 1114 1107 1115
		f 3 4049 4048 4047
		mu 0 3 1115 1116 1114
		f 3 4052 4051 4050
		mu 0 3 1113 1114 1116
		f 3 4055 4054 4053
		mu 0 3 1116 1115 1117
		f 3 4058 4057 4056
		mu 0 3 1115 1118 1117
		f 3 4061 4060 4059
		mu 0 3 1118 1115 1119
		f 3 4064 4063 4062
		mu 0 3 1107 1119 1115
		f 3 4067 4066 4065
		mu 0 3 1119 1107 1106
		f 3 4070 4069 4068
		mu 0 3 1020 1118 1119
		f 3 4073 4072 4071
		mu 0 3 1118 1020 1120
		f 3 4076 4075 4074
		mu 0 3 1020 1121 1120
		f 3 4079 4078 4077
		mu 0 3 1122 1121 1020
		f 3 4082 4081 4080
		mu 0 3 1122 1123 1121
		f 3 4085 4084 4083
		mu 0 3 1123 1122 1124
		f 3 4088 4087 4086
		mu 0 3 1125 1124 1122
		f 3 4091 4090 4089
		mu 0 3 1124 1125 1126
		f 3 4094 4093 4092
		mu 0 3 1127 1124 1126
		f 3 4097 4096 4095
		mu 0 3 1124 1127 1128
		f 3 4100 4099 4098
		mu 0 3 1128 1123 1124
		f 3 4103 4102 4101
		mu 0 3 1019 1125 1122
		f 3 4106 4105 4104
		mu 0 3 1122 1020 1019
		f 3 4109 4108 4107
		mu 0 3 1125 1019 1129
		f 3 4112 4111 4110
		mu 0 3 1019 1130 1129
		f 3 4115 4114 4113
		mu 0 3 1131 1130 1019
		f 3 4118 4117 4116
		mu 0 3 1131 1132 1130
		f 3 4121 4120 4119
		mu 0 3 1132 1131 1133
		f 3 4124 4123 4122
		mu 0 3 1134 1133 1131
		f 3 4127 4126 4125
		mu 0 3 1133 1134 1135
		f 3 4130 4129 4128
		mu 0 3 1136 1133 1135
		f 3 4133 4132 4131
		mu 0 3 1133 1136 1137
		f 3 4136 4135 4134
		mu 0 3 1137 1132 1133
		f 3 4139 4138 4137
		mu 0 3 1016 1134 1131
		f 3 4142 4141 4140
		mu 0 3 1131 1019 1016
		f 3 4145 4144 4143
		mu 0 3 1134 1016 1138
		f 3 4148 4147 4146
		mu 0 3 1016 1139 1138
		f 3 4151 4150 4149
		mu 0 3 1140 1139 1016
		f 3 4154 4153 4152
		mu 0 3 1140 1141 1139
		f 3 4157 4156 4155
		mu 0 3 1141 1140 1142
		f 3 4160 4159 4158
		mu 0 3 1143 1141 1142
		f 3 4163 4162 4161
		mu 0 3 1141 1143 1144
		f 3 4166 4165 4164
		mu 0 3 1140 1016 1027
		f 3 4169 4168 4167
		mu 0 3 1132 1137 1145
		f 3 4172 4171 4170
		mu 0 3 1145 1137 1136
		f 3 4175 4174 4173
		mu 0 3 1144 1143 1146
		f 3 4178 4177 4176
		mu 0 3 1146 1147 1144
		f 3 4181 4180 4179
		mu 0 3 1136 1148 1145
		f 3 4184 4183 4182
		mu 0 3 1123 1128 1149
		f 3 4187 4186 4185
		mu 0 3 1149 1128 1127
		f 3 4190 4189 4188
		mu 0 3 1127 1150 1149
		f 3 4193 4192 4191
		mu 0 3 1119 1022 1020
		f 3 4196 4195 4194
		mu 0 3 1119 1106 1022
		f 3 4199 4198 4197
		mu 0 3 1062 1048 1078
		f 3 4202 4201 4200
		mu 0 3 1081 1078 1048
		f 3 4205 4204 4203
		mu 0 3 1081 1048 1047
		f 3 4208 4207 4206
		mu 0 3 1045 1081 1047
		f 3 4211 4210 4209
		mu 0 3 1045 1092 1081
		f 3 4214 4213 4212
		mu 0 3 1093 1092 1045
		f 3 4217 4216 4215
		mu 0 3 1093 1045 1042
		f 3 4220 4219 4218
		mu 0 3 1093 1042 1035
		f 3 4223 4222 4221
		mu 0 3 1093 1035 1021
		f 3 4226 4225 4224
		mu 0 3 1034 1018 1021
		f 3 4229 4228 4227
		mu 0 3 1023 1018 1034
		f 3 4232 4231 4230
		mu 0 3 1116 1151 1113
		f 3 4235 4234 4233
		mu 0 3 725 731 1152
		f 3 4238 4237 4236
		mu 0 3 719 725 1152
		f 3 4241 4240 4239
		mu 0 3 1153 739 737
		f 3 4244 4243 4242
		mu 0 3 739 1153 1154
		f 3 4246 4245 2718
		mu 0 3 735 1153 737
		f 3 4249 4248 4247
		mu 0 3 1153 735 1155
		f 3 4252 4251 4250
		mu 0 3 733 1155 735
		f 3 4255 4254 4253
		mu 0 3 1155 733 1156
		f 3 4258 4257 4256
		mu 0 3 728 1156 733
		f 3 4261 4260 4259
		mu 0 3 1156 728 726
		f 3 4264 4263 4262
		mu 0 3 1154 1153 1157
		f 3 4267 4266 4265
		mu 0 3 1155 1157 1153
		f 3 4270 4269 4268
		mu 0 3 1156 723 1155
		f 3 4273 4272 4271
		mu 0 3 1155 723 724
		f 3 4276 4275 4274
		mu 0 3 1157 1155 724
		f 3 4279 4278 4277
		mu 0 3 723 1156 720
		f 3 4282 4281 4280
		mu 0 3 726 720 1156
		f 3 4285 4284 4283
		mu 0 3 1158 1160 1159
		f 3 4288 4287 4286
		mu 0 3 1158 1161 1160
		f 3 4291 4290 4289
		mu 0 3 1162 1159 1160
		f 3 4294 4293 4292
		mu 0 3 1160 1163 1162
		f 3 4297 4296 4295
		mu 0 3 1164 1163 1160
		f 3 4300 4299 4298
		mu 0 3 1161 1164 1160
		f 3 4303 4302 4301
		mu 0 3 1164 1165 1163
		f 3 4306 4305 4304
		mu 0 3 1161 1166 1164
		f 3 4309 4308 4307
		mu 0 3 1161 1167 1166
		f 3 4312 4311 4310
		mu 0 3 1167 1168 1166
		f 3 4315 4314 4313
		mu 0 3 1168 1169 1166
		f 3 4318 4317 4316
		mu 0 3 1169 1164 1166
		f 3 4321 4320 4319
		mu 0 3 1168 1170 1169
		f 3 4324 4323 4322
		mu 0 3 1167 1171 1168
		f 3 4327 4326 4325
		mu 0 3 1169 1172 1164
		f 3 4330 4329 4328
		mu 0 3 1172 1165 1164
		f 3 4333 4332 4331
		mu 0 3 1163 1173 1162
		f 3 4336 4335 4334
		mu 0 3 1173 1174 1162
		f 3 4339 4338 4337
		mu 0 3 1162 1174 1159
		f 3 4342 4341 4340
		mu 0 3 1174 1175 1159
		f 3 4345 4344 4343
		mu 0 3 1163 1176 1173
		f 3 4348 4347 4346
		mu 0 3 1165 1176 1163
		f 3 4351 4350 4349
		mu 0 3 1177 1173 1176
		f 3 4354 4353 4352
		mu 0 3 1177 1178 1173
		f 3 4357 4356 4355
		mu 0 3 1173 1178 1179
		f 3 4360 4359 4358
		mu 0 3 1173 1179 1174
		f 3 4363 4362 4361
		mu 0 3 1179 1180 1174
		f 3 4366 4365 4364
		mu 0 3 1174 1180 1175
		f 3 4369 4368 4367
		mu 0 3 1165 1181 1176
		f 3 4372 4371 4370
		mu 0 3 1182 1176 1181
		f 3 4375 4374 4373
		mu 0 3 1182 1183 1176
		f 3 4378 4377 4376
		mu 0 3 1183 1177 1176
		f 3 4381 4380 4379
		mu 0 3 1184 1182 1181
		f 3 4384 4383 4382
		mu 0 3 1184 1181 1185
		f 3 4387 4386 4385
		mu 0 3 1185 1165 1172
		f 3 4390 4389 4388
		mu 0 3 1185 1181 1165
		f 3 4393 4392 4391
		mu 0 3 1186 1185 1172
		f 3 4396 4395 4394
		mu 0 3 1186 1172 1169
		f 3 4399 4398 4397
		mu 0 3 1170 1186 1169
		f 3 4402 4401 4400
		mu 0 3 1170 1187 1186
		f 3 4405 4404 4403
		mu 0 3 1187 1188 1186
		f 3 4408 4407 4406
		mu 0 3 1187 1189 1188
		f 3 4411 4410 4409
		mu 0 3 1188 1190 1186
		f 3 4414 4413 4412
		mu 0 3 1190 1185 1186
		f 3 4417 4416 4415
		mu 0 3 1190 1184 1185
		f 3 4420 4419 4418
		mu 0 3 1191 1189 1187
		f 3 4423 4422 4421
		mu 0 3 1191 1187 1192
		f 3 4426 4425 4424
		mu 0 3 1192 1187 1170
		f 3 4429 4428 4427
		mu 0 3 1192 1170 1193
		f 3 4432 4431 4430
		mu 0 3 1193 1170 1168
		f 3 4435 4434 4433
		mu 0 3 1193 1168 1194
		f 3 4438 4437 4436
		mu 0 3 1194 1168 1171
		f 3 4441 4440 4439
		mu 0 3 1194 1171 1195
		f 3 4444 4443 4442
		mu 0 3 1195 1171 1167
		f 3 4447 4446 4445
		mu 0 3 1195 1167 1196
		f 3 4450 4449 4448
		mu 0 3 1196 1167 1161
		f 3 4453 4452 4451
		mu 0 3 1196 1161 1197
		f 3 4456 4455 4454
		mu 0 3 1197 1161 1158
		f 3 4459 4458 4457
		mu 0 3 1197 1158 1198
		f 3 4462 4461 4460
		mu 0 3 1198 1158 1199
		f 3 4465 4464 4463
		mu 0 3 1199 1158 1159
		f 3 4468 4467 4466
		mu 0 3 1200 1199 1159
		f 3 4471 4470 4469
		mu 0 3 1200 1159 1175
		f 3 4474 4473 4472
		mu 0 3 1201 1200 1175
		f 3 4477 4476 4475
		mu 0 3 1201 1175 1202
		f 3 4480 4479 4478
		mu 0 3 1203 1199 1200
		f 3 4483 4482 4481
		mu 0 3 1198 1199 1203
		f 3 4486 4485 4484
		mu 0 3 1203 1200 1204
		f 3 4489 4488 4487
		mu 0 3 1204 1200 1201
		f 3 4492 4491 4490
		mu 0 3 1204 1201 1205
		f 3 4495 4494 4493
		mu 0 3 1180 1202 1175
		f 3 4498 4497 4496
		mu 0 3 1206 1208 1207
		f 3 4501 4500 4499
		mu 0 3 1209 1206 1207
		f 3 4504 4503 4502
		mu 0 3 1208 1210 1207
		f 3 4507 4506 4505
		mu 0 3 1210 1211 1207
		f 3 4510 4509 4508
		mu 0 3 1212 1209 1207
		f 3 4513 4512 4511
		mu 0 3 1213 1212 1207
		f 3 4516 4515 4514
		mu 0 3 1214 1209 1212
		f 3 4519 4518 4517
		mu 0 3 1215 1213 1207
		f 3 4522 4521 4520
		mu 0 3 1216 1215 1207
		f 3 4525 4524 4523
		mu 0 3 1216 1207 1217
		f 3 4528 4527 4526
		mu 0 3 1218 1217 1207
		f 3 4531 4530 4529
		mu 0 3 1219 1218 1207
		f 3 4534 4533 4532
		mu 0 3 1220 1219 1207
		f 3 4537 4536 4535
		mu 0 3 1207 1221 1220
		f 3 4540 4539 4538
		mu 0 3 1207 1211 1221
		f 3 4543 4542 4541
		mu 0 3 1222 1224 1223
		f 3 4546 4545 4544
		mu 0 3 1222 1225 1224
		f 3 4549 4548 4547
		mu 0 3 1226 1224 1225
		f 3 4552 4551 4550
		mu 0 3 1224 1226 1227
		f 3 4555 4554 4553
		mu 0 3 1228 1224 1227
		f 3 4558 4557 4556
		mu 0 3 1223 1224 1228
		f 3 4561 4560 4559
		mu 0 3 1228 1227 1229
		f 3 4564 4563 4562
		mu 0 3 1223 1228 1230
		f 3 4567 4566 4565
		mu 0 3 1223 1230 1231
		f 3 4570 4569 4568
		mu 0 3 1231 1230 1232
		f 3 4573 4572 4571
		mu 0 3 1232 1230 1233
		f 3 4576 4575 4574
		mu 0 3 1233 1230 1228
		f 3 4579 4578 4577
		mu 0 3 1232 1233 1234
		f 3 4582 4581 4580
		mu 0 3 1231 1232 1235
		f 3 4585 4584 4583
		mu 0 3 1233 1228 1236
		f 3 4588 4587 4586
		mu 0 3 1236 1228 1229
		f 3 4591 4590 4589
		mu 0 3 1227 1226 1237
		f 3 4594 4593 4592
		mu 0 3 1237 1226 1238
		f 3 4597 4596 4595
		mu 0 3 1226 1225 1238
		f 3 4600 4599 4598
		mu 0 3 1238 1225 1239
		f 3 4603 4602 4601
		mu 0 3 1240 1239 1225
		f 3 4606 4605 4604
		mu 0 3 1240 1225 1241
		f 3 4609 4608 4607
		mu 0 3 1227 1237 1242
		f 3 4612 4611 4610
		mu 0 3 1243 1242 1237
		f 3 4615 4614 4613
		mu 0 3 1243 1237 1244
		f 3 4618 4617 4616
		mu 0 3 1237 1245 1244
		f 3 4621 4620 4619
		mu 0 3 1237 1238 1245
		f 3 4624 4623 4622
		mu 0 3 1245 1238 1246
		f 3 4627 4626 4625
		mu 0 3 1238 1239 1246
		f 3 4630 4629 4628
		mu 0 3 1247 1233 1236
		f 3 4633 4632 4631
		mu 0 3 1234 1233 1247
		f 3 4636 4635 4634
		mu 0 3 1247 1236 1248
		f 3 4639 4638 4637
		mu 0 3 1248 1236 1229
		f 3 4642 4641 4640
		mu 0 3 1229 1242 1249
		f 3 4645 4644 4643
		mu 0 3 1248 1229 1249
		f 3 4648 4647 4646
		mu 0 3 1250 1249 1242
		f 3 4651 4650 4649
		mu 0 3 1250 1242 1251
		f 3 4654 4653 4652
		mu 0 3 1251 1242 1243
		f 3 4657 4656 4655
		mu 0 3 1252 1249 1250
		f 3 4660 4659 4658
		mu 0 3 1252 1248 1249
		f 3 4663 4662 4661
		mu 0 3 1229 1227 1242
		f 3 4666 4665 4664
		mu 0 3 1253 1247 1248
		f 3 4669 4668 4667
		mu 0 3 1253 1248 1252
		f 3 4672 4671 4670
		mu 0 3 1254 1247 1253
		f 3 4675 4674 4673
		mu 0 3 1255 1247 1254
		f 3 4678 4677 4676
		mu 0 3 1255 1254 1256
		f 3 4681 4680 4679
		mu 0 3 1234 1247 1255
		f 3 4684 4683 4682
		mu 0 3 1257 1255 1256
		f 3 4687 4686 4685
		mu 0 3 1257 1258 1255
		f 3 4690 4689 4688
		mu 0 3 1258 1234 1255
		f 3 4693 4692 4691
		mu 0 3 1258 1259 1234
		f 3 4696 4695 4694
		mu 0 3 1259 1232 1234
		f 3 4699 4698 4697
		mu 0 3 1259 1260 1232
		f 3 4702 4701 4700
		mu 0 3 1260 1235 1232
		f 3 4705 4704 4703
		mu 0 3 1260 1261 1235
		f 3 4708 4707 4706
		mu 0 3 1261 1231 1235
		f 3 4711 4710 4709
		mu 0 3 1261 1262 1231
		f 3 4714 4713 4712
		mu 0 3 1262 1223 1231
		f 3 4717 4716 4715
		mu 0 3 1262 1263 1223
		f 3 4720 4719 4718
		mu 0 3 1263 1222 1223
		f 3 4723 4722 4721
		mu 0 3 1263 1264 1222
		f 3 4726 4725 4724
		mu 0 3 1264 1241 1222
		f 3 4729 4728 4727
		mu 0 3 1241 1225 1222
		f 3 4732 4731 4730
		mu 0 3 1264 1265 1241
		f 3 4735 4734 4733
		mu 0 3 1265 1240 1241
		f 3 4738 4737 4736
		mu 0 3 1265 1266 1240
		f 3 4741 4740 4739
		mu 0 3 1266 1267 1240
		f 3 4744 4743 4742
		mu 0 3 1267 1239 1240
		f 3 4747 4746 4745
		mu 0 3 1267 1268 1239
		f 3 4750 4749 4748
		mu 0 3 1266 1269 1267
		f 3 4753 4752 4751
		mu 0 3 1239 1268 1246
		f 3 4756 4755 4754
		mu 0 3 1270 1272 1271
		f 3 4759 4758 4757
		mu 0 3 1270 1271 1273
		f 3 4762 4761 4760
		mu 0 3 1270 1274 1272
		f 3 4765 4764 4763
		mu 0 3 1270 1275 1274
		f 3 4768 4767 4766
		mu 0 3 1270 1273 1276
		f 3 4771 4770 4769
		mu 0 3 1270 1276 1277
		f 3 4774 4773 4772
		mu 0 3 1276 1273 1278
		f 3 4777 4776 4775
		mu 0 3 1270 1277 1279
		f 3 4780 4779 4778
		mu 0 3 1280 1270 1279
		f 3 4783 4782 4781
		mu 0 3 1280 1281 1270
		f 3 4786 4785 4784
		mu 0 3 1270 1281 1282
		f 3 4789 4788 4787
		mu 0 3 1270 1282 1283
		f 3 4792 4791 4790
		mu 0 3 1270 1283 1284
		f 3 4795 4794 4793
		mu 0 3 1284 1285 1270
		f 3 4798 4797 4796
		mu 0 3 1285 1275 1270
		f 3 4801 4800 4799
		mu 0 3 1286 1288 1287
		f 3 4804 4803 4802
		mu 0 3 1286 1289 1288
		f 3 4807 4806 4805
		mu 0 3 1289 1290 1288
		f 3 4810 4809 4808
		mu 0 3 1289 1291 1290
		f 3 4813 4812 4811
		mu 0 3 1291 1292 1290
		f 3 4816 4815 4814
		mu 0 3 1291 1293 1292
		f 3 4819 4818 4817
		mu 0 3 1293 1294 1292
		f 3 4822 4821 4820
		mu 0 3 1293 1295 1294
		f 3 4825 4824 4823
		mu 0 3 1295 1296 1294
		f 3 4828 4827 4826
		mu 0 3 1295 1297 1296
		f 3 4831 4830 4829
		mu 0 3 1297 1298 1296
		f 3 4834 4833 4832
		mu 0 3 1297 1299 1298
		f 3 4837 4836 4835
		mu 0 3 1299 1300 1298
		f 3 4840 4839 4838
		mu 0 3 1299 1301 1300
		f 3 4843 4842 4841
		mu 0 3 1301 1287 1300
		f 3 4846 4845 4844
		mu 0 3 1301 1286 1287
		f 3 4849 4848 4847
		mu 0 3 1287 1288 1302
		f 3 4852 4851 4850
		mu 0 3 1288 1290 1302
		f 3 4855 4854 4853
		mu 0 3 1290 1292 1302
		f 3 4858 4857 4856
		mu 0 3 1292 1294 1302
		f 3 4861 4860 4859
		mu 0 3 1294 1296 1302
		f 3 4864 4863 4862
		mu 0 3 1296 1298 1302
		f 3 4867 4866 4865
		mu 0 3 1298 1300 1302
		f 3 4870 4869 4868
		mu 0 3 1300 1287 1302
		f 3 4873 4872 4871
		mu 0 3 1303 1305 1304
		f 3 4876 4875 4874
		mu 0 3 1303 1306 1305
		f 3 4879 4878 4877
		mu 0 3 1305 1307 1304
		f 3 4882 4881 4880
		mu 0 3 1305 1308 1307
		f 3 4885 4884 4883
		mu 0 3 1308 1309 1307
		f 3 4888 4887 4886
		mu 0 3 1308 1310 1309
		f 3 4891 4890 4889
		mu 0 3 1311 1313 1312
		f 3 4894 4893 4892
		mu 0 3 1311 1314 1313
		f 3 4897 4896 4895
		mu 0 3 1313 1315 1312
		f 3 4900 4899 4898
		mu 0 3 1313 1316 1315
		f 3 4903 4902 4901
		mu 0 3 1316 1317 1315
		f 3 4906 4905 4904
		mu 0 3 1316 1318 1317
		f 3 4909 4908 4907
		mu 0 3 1319 1321 1320
		f 3 4912 4911 4910
		mu 0 3 1319 1322 1321
		f 3 4915 4914 4913
		mu 0 3 1321 1322 1323
		f 3 4918 4917 4916
		mu 0 3 1321 1323 1324
		f 3 4921 4920 4919
		mu 0 3 1324 1323 1325
		f 3 4924 4923 4922
		mu 0 3 1324 1325 1326
		f 3 4927 4926 4925
		mu 0 3 1327 1329 1328
		f 3 4930 4929 4928
		mu 0 3 1327 1330 1329
		f 3 4933 4932 4931
		mu 0 3 1329 1330 1331
		f 3 4936 4935 4934
		mu 0 3 1329 1331 1332
		f 3 4939 4938 4937
		mu 0 3 1332 1331 1333
		f 3 4942 4941 4940
		mu 0 3 1332 1333 1334
		f 3 4945 4944 4943
		mu 0 3 1335 1337 1336
		f 3 4948 4947 4946
		mu 0 3 1335 1338 1337
		f 3 4951 4950 4949
		mu 0 3 1336 1337 1339
		f 3 4954 4953 4952
		mu 0 3 1336 1339 1340
		f 3 4957 4956 4955
		mu 0 3 1340 1339 1341
		f 3 4960 4959 4958
		mu 0 3 1340 1341 1342
		f 3 4963 4962 4961
		mu 0 3 1342 1341 1343
		f 3 4966 4965 4964
		mu 0 3 1342 1343 1344
		f 3 4969 4968 4967
		mu 0 3 1344 1343 1345
		f 3 4972 4971 4970
		mu 0 3 1344 1345 1346
		f 3 4975 4974 4973
		mu 0 3 1346 1345 1347
		f 3 4978 4977 4976
		mu 0 3 1346 1347 1348
		f 3 4981 4980 4979
		mu 0 3 1348 1347 1349
		f 3 4984 4983 4982
		mu 0 3 1348 1349 1350
		f 3 4987 4986 4985
		mu 0 3 1350 1338 1335
		f 3 4990 4989 4988
		mu 0 3 1350 1349 1338
		f 3 4993 4992 4991
		mu 0 3 1338 1351 1337
		f 3 4996 4995 4994
		mu 0 3 1337 1351 1339
		f 3 4999 4998 4997
		mu 0 3 1339 1351 1341
		f 3 5002 5001 5000
		mu 0 3 1341 1351 1343
		f 3 5005 5004 5003
		mu 0 3 1343 1351 1345
		f 3 5008 5007 5006
		mu 0 3 1345 1351 1347
		f 3 5011 5010 5009
		mu 0 3 1347 1351 1349
		f 3 5014 5013 5012
		mu 0 3 1349 1351 1338
		f 3 5017 5016 5015
		mu 0 3 1352 1354 1353
		f 3 5020 5019 5018
		mu 0 3 1355 1353 1354
		f 3 5023 5022 5021
		mu 0 3 1355 1356 1353
		f 3 5026 5025 5024
		mu 0 3 1355 1354 1357
		f 3 5029 5028 5027
		mu 0 3 1358 1356 1355
		f 3 5032 5031 5030
		mu 0 3 1358 1359 1356
		f 3 5035 5034 5033
		mu 0 3 1358 1360 1359
		f 3 5038 5037 5036
		mu 0 3 1360 1358 1361
		f 3 5041 5040 5039
		mu 0 3 1361 1358 1362
		f 3 5044 5043 5042
		mu 0 3 1358 1355 1362
		f 3 5047 5046 5045
		mu 0 3 1355 1357 1362
		f 3 5050 5049 5048
		mu 0 3 1362 1363 1361
		f 3 5053 5052 5051
		mu 0 3 1363 1360 1361
		f 3 5056 5055 5054
		mu 0 3 1360 1363 1364
		f 3 5059 5058 5057
		mu 0 3 1365 1367 1366
		f 3 5062 5061 5060
		mu 0 3 1365 1368 1367
		f 3 5065 5064 5063
		mu 0 3 1369 1366 1367
		f 3 5068 5067 5066
		mu 0 3 1366 1370 1365
		f 3 5071 5070 5069
		mu 0 3 1369 1367 1371
		f 3 5074 5073 5072
		mu 0 3 1368 1371 1367
		f 3 5077 5076 5075
		mu 0 3 1369 1371 1372
		f 3 5080 5079 5078
		mu 0 3 1371 1373 1372
		f 3 5083 5082 5081
		mu 0 3 1374 1372 1373
		f 3 5086 5085 5084
		mu 0 3 1372 1374 1375
		f 3 5089 5088 5087
		mu 0 3 1375 1369 1372
		f 3 5092 5091 5090
		mu 0 3 1373 1371 1376
		f 3 5095 5094 5093
		mu 0 3 1368 1376 1371
		f 3 5098 5097 5096
		mu 0 3 1377 1379 1378
		f 3 5101 5100 5099
		mu 0 3 1377 1380 1379
		f 3 5104 5103 5102
		mu 0 3 1381 1379 1380
		f 3 5107 5106 5105
		mu 0 3 1381 1380 1382
		f 3 5110 5109 5108
		mu 0 3 1383 1381 1382
		f 3 5113 5112 5111
		mu 0 3 1383 1384 1381
		f 3 5116 5115 5114
		mu 0 3 1379 1385 1378
		f 3 5119 5118 5117
		mu 0 3 1379 1386 1385
		f 3 5122 5121 5120
		mu 0 3 1386 1379 1381
		f 3 5125 5124 5123
		mu 0 3 1386 1387 1385
		f 3 5128 5127 5126
		mu 0 3 1386 1388 1387
		f 3 5131 5130 5129
		mu 0 3 1389 1388 1386
		f 3 5134 5133 5132
		mu 0 3 1389 1386 1381
		f 3 5137 5136 5135
		mu 0 3 1384 1389 1381
		f 3 5140 5139 5138
		mu 0 3 1389 1390 1388
		f 3 5143 5142 5141
		mu 0 3 1391 1390 1389
		f 3 5146 5145 5144
		mu 0 3 1384 1391 1389
		f 3 5149 5148 5147
		mu 0 3 1391 1392 1390
		f 3 5152 5151 5150
		mu 0 3 1388 1393 1387
		f 3 5155 5154 5153
		mu 0 3 1388 1394 1393
		f 3 5158 5157 5156
		mu 0 3 1390 1394 1388
		f 3 5161 5160 5159
		mu 0 3 1390 1395 1394
		f 3 5164 5163 5162
		mu 0 3 1392 1395 1390
		f 3 5167 5166 5165
		mu 0 3 1392 1396 1395
		f 3 5170 5169 5168
		mu 0 3 1394 1397 1393
		f 3 5173 5172 5171
		mu 0 3 1394 1398 1397
		f 3 5176 5175 5174
		mu 0 3 1395 1398 1394
		f 3 5179 5178 5177
		mu 0 3 1395 1399 1398
		f 3 5182 5181 5180
		mu 0 3 1396 1399 1395
		f 3 5185 5184 5183
		mu 0 3 1396 1400 1399
		f 3 5188 5187 5186
		mu 0 3 1398 1401 1397
		f 3 5191 5190 5189
		mu 0 3 1398 1402 1401
		f 3 5194 5193 5192
		mu 0 3 1399 1402 1398
		f 3 5197 5196 5195
		mu 0 3 1399 1403 1402
		f 3 5200 5199 5198
		mu 0 3 1400 1403 1399
		f 3 5203 5202 5201
		mu 0 3 1400 1404 1403
		f 3 5206 5205 5204
		mu 0 3 1391 1405 1392
		f 3 5209 5208 5207
		mu 0 3 1391 1406 1405
		f 3 5212 5211 5210
		mu 0 3 1384 1406 1391
		f 3 5215 5214 5213
		mu 0 3 1384 1407 1406
		f 3 5218 5217 5216
		mu 0 3 1383 1407 1384
		f 3 5221 5220 5219
		mu 0 3 1383 1408 1407
		f 3 5224 5223 5222
		mu 0 3 1396 1409 1400
		f 3 5227 5226 5225
		mu 0 3 1400 1410 1404
		f 3 5230 5229 5228
		mu 0 3 1400 1409 1410
		f 3 5233 5232 5231
		mu 0 3 1408 1411 1407
		f 3 5236 5235 5234
		mu 0 3 1408 1412 1411
		f 3 5239 5238 5237
		mu 0 3 1406 1413 1405
		f 3 5242 5241 5240
		mu 0 3 1406 1414 1413
		f 3 5245 5244 5243
		mu 0 3 1407 1414 1406
		f 3 5248 5247 5246
		mu 0 3 1407 1411 1414
		f 3 5251 5250 5249
		mu 0 3 1405 1413 1415
		f 3 5254 5253 5252
		mu 0 3 1405 1415 1416
		f 3 5257 5256 5255
		mu 0 3 1392 1405 1416
		f 3 5260 5259 5258
		mu 0 3 1392 1416 1396
		f 3 5263 5262 5261
		mu 0 3 1396 1416 1409
		f 3 5266 5265 5264
		mu 0 3 1416 1417 1409
		f 3 5269 5268 5267
		mu 0 3 1416 1415 1417
		f 3 5272 5271 5270
		mu 0 3 1409 1418 1410
		f 3 5275 5274 5273
		mu 0 3 1409 1417 1418
		f 3 5278 5277 5276
		mu 0 3 1419 1421 1420
		f 3 5281 5280 5279
		mu 0 3 1419 1422 1421
		f 3 5284 5283 5282
		mu 0 3 1423 1419 1420
		f 3 5287 5286 5285
		mu 0 3 1423 1420 1424
		f 3 5290 5289 5288
		mu 0 3 1420 1421 1425
		f 3 5293 5292 5291
		mu 0 3 1420 1425 1426
		f 3 5296 5295 5294
		mu 0 3 1424 1420 1426
		f 3 5299 5298 5297
		mu 0 3 1424 1426 1427
		f 3 5302 5301 5300
		mu 0 3 1428 1419 1423
		f 3 5305 5304 5303
		mu 0 3 1428 1429 1419
		f 3 5308 5307 5306
		mu 0 3 1429 1422 1419
		f 3 5311 5310 5309
		mu 0 3 1430 1429 1428
		f 3 5314 5313 5312
		mu 0 3 1430 1431 1429
		f 3 5317 5316 5315
		mu 0 3 1432 1431 1430
		f 3 5320 5319 5318
		mu 0 3 1432 1433 1431
		f 3 5323 5322 5321
		mu 0 3 1431 1434 1429
		f 3 5326 5325 5324
		mu 0 3 1431 1433 1434
		f 3 5329 5328 5327
		mu 0 3 1429 1434 1422
		f 3 5332 5331 5330
		mu 0 3 1435 1437 1436
		f 3 5335 5334 5333
		mu 0 3 1435 1438 1437
		f 3 5338 5337 5336
		mu 0 3 1439 1438 1435
		f 3 5341 5340 5339
		mu 0 3 1439 1440 1438
		f 3 5344 5343 5342
		mu 0 3 1438 1441 1437
		f 3 5347 5346 5345
		mu 0 3 1438 1442 1441
		f 3 5350 5349 5348
		mu 0 3 1440 1442 1438
		f 3 5353 5352 5351
		mu 0 3 1440 1443 1442
		f 3 5356 5355 5354
		mu 0 3 1444 1439 1435
		f 3 5359 5358 5357
		mu 0 3 1444 1435 1445
		f 3 5362 5361 5360
		mu 0 3 1445 1435 1436
		f 3 5365 5364 5363
		mu 0 3 1446 1444 1445
		f 3 5368 5367 5366
		mu 0 3 1446 1445 1447
		f 3 5371 5370 5369
		mu 0 3 1448 1446 1447
		f 3 5374 5373 5372
		mu 0 3 1448 1447 1449
		f 3 5377 5376 5375
		mu 0 3 1447 1450 1449
		f 3 5380 5379 5378
		mu 0 3 1447 1445 1450
		f 3 5383 5382 5381
		mu 0 3 1445 1436 1450
		f 3 5386 5385 5384
		mu 0 3 1451 1453 1452
		f 3 5389 5388 5387
		mu 0 3 1451 1454 1453
		f 3 5392 5391 5390
		mu 0 3 1455 1452 1453
		f 3 5395 5394 5393
		mu 0 3 1455 1456 1452
		f 3 5398 5397 5396
		mu 0 3 1457 1456 1455
		f 3 5401 5400 5399
		mu 0 3 1457 1455 1458
		f 3 5404 5403 5402
		mu 0 3 1453 1454 1459
		f 3 5407 5406 5405
		mu 0 3 1453 1459 1460
		f 3 5410 5409 5408
		mu 0 3 1460 1455 1453
		f 3 5413 5412 5411
		mu 0 3 1460 1459 1461
		f 3 5416 5415 5414
		mu 0 3 1460 1461 1462
		f 3 5419 5418 5417
		mu 0 3 1463 1460 1462
		f 3 5422 5421 5420
		mu 0 3 1463 1455 1460
		f 3 5425 5424 5423
		mu 0 3 1458 1455 1463
		f 3 5428 5427 5426
		mu 0 3 1463 1462 1464
		f 3 5431 5430 5429
		mu 0 3 1465 1463 1464
		f 3 5434 5433 5432
		mu 0 3 1458 1463 1465
		f 3 5437 5436 5435
		mu 0 3 1465 1464 1466
		f 3 5440 5439 5438
		mu 0 3 1462 1461 1467
		f 3 5443 5442 5441
		mu 0 3 1462 1467 1468
		f 3 5446 5445 5444
		mu 0 3 1464 1462 1468
		f 3 5449 5448 5447
		mu 0 3 1464 1468 1469
		f 3 5452 5451 5450
		mu 0 3 1466 1464 1469
		f 3 5455 5454 5453
		mu 0 3 1466 1469 1470
		f 3 5458 5457 5456
		mu 0 3 1468 1467 1471
		f 3 5461 5460 5459
		mu 0 3 1468 1471 1472
		f 3 5464 5463 5462
		mu 0 3 1469 1468 1472
		f 3 5467 5466 5465
		mu 0 3 1469 1472 1473
		f 3 5470 5469 5468
		mu 0 3 1470 1469 1473
		f 3 5473 5472 5471
		mu 0 3 1470 1473 1474
		f 3 5476 5475 5474
		mu 0 3 1472 1471 1475
		f 3 5479 5478 5477
		mu 0 3 1472 1475 1476
		f 3 5482 5481 5480
		mu 0 3 1473 1472 1476
		f 3 5485 5484 5483
		mu 0 3 1473 1476 1477
		f 3 5488 5487 5486
		mu 0 3 1474 1473 1477
		f 3 5491 5490 5489
		mu 0 3 1474 1477 1478
		f 3 5494 5493 5492
		mu 0 3 1465 1466 1479
		f 3 5497 5496 5495
		mu 0 3 1465 1479 1480
		f 3 5500 5499 5498
		mu 0 3 1458 1465 1480
		f 3 5503 5502 5501
		mu 0 3 1458 1480 1481
		f 3 5506 5505 5504
		mu 0 3 1457 1458 1481
		f 3 5509 5508 5507
		mu 0 3 1457 1481 1482
		f 3 5512 5511 5510
		mu 0 3 1470 1474 1483
		f 3 5515 5514 5513
		mu 0 3 1474 1484 1483
		f 3 5518 5517 5516
		mu 0 3 1474 1478 1484
		f 3 5521 5520 5519
		mu 0 3 1482 1481 1485
		f 3 5524 5523 5522
		mu 0 3 1482 1485 1486
		f 3 5527 5526 5525
		mu 0 3 1480 1479 1487
		f 3 5530 5529 5528
		mu 0 3 1480 1487 1488
		f 3 5533 5532 5531
		mu 0 3 1481 1488 1485
		f 3 5536 5535 5534
		mu 0 3 1481 1480 1488
		f 3 5539 5538 5537
		mu 0 3 1479 1489 1487
		f 3 5542 5541 5540
		mu 0 3 1479 1490 1489
		f 3 5545 5544 5543
		mu 0 3 1466 1490 1479
		f 3 5548 5547 5546
		mu 0 3 1466 1470 1490
		f 3 5551 5550 5549
		mu 0 3 1470 1483 1490
		f 3 5554 5553 5552
		mu 0 3 1490 1491 1489
		f 3 5557 5556 5555
		mu 0 3 1490 1483 1491
		f 3 5560 5559 5558
		mu 0 3 1483 1492 1491
		f 3 5563 5562 5561
		mu 0 3 1483 1484 1492
		f 3 5566 5565 5564
		mu 0 3 1493 1495 1494
		f 3 5569 5568 5567
		mu 0 3 1493 1496 1495
		f 3 5572 5571 5570
		mu 0 3 1497 1496 1493
		f 3 5575 5574 5573
		mu 0 3 1497 1498 1496
		f 3 5578 5577 5576
		mu 0 3 1496 1499 1495
		f 3 5581 5580 5579
		mu 0 3 1496 1500 1499
		f 3 5584 5583 5582
		mu 0 3 1498 1500 1496
		f 3 5587 5586 5585
		mu 0 3 1498 1501 1500
		f 3 5590 5589 5588
		mu 0 3 1502 1497 1493
		f 3 5593 5592 5591
		mu 0 3 1502 1493 1503
		f 3 5596 5595 5594
		mu 0 3 1503 1493 1494
		f 3 5599 5598 5597
		mu 0 3 1504 1502 1503
		f 3 5602 5601 5600
		mu 0 3 1504 1503 1505
		f 3 5605 5604 5603
		mu 0 3 1506 1504 1505
		f 3 5608 5607 5606
		mu 0 3 1506 1505 1507
		f 3 5611 5610 5609
		mu 0 3 1505 1508 1507
		f 3 5614 5613 5612
		mu 0 3 1505 1503 1508
		f 3 5617 5616 5615
		mu 0 3 1503 1494 1508
		f 3 5620 5619 5618
		mu 0 3 1509 1511 1510
		f 3 5623 5622 5621
		mu 0 3 1509 1512 1511
		f 3 5626 5625 5624
		mu 0 3 1513 1509 1510
		f 3 5629 5628 5627
		mu 0 3 1513 1510 1514
		f 3 5632 5631 5630
		mu 0 3 1510 1511 1515
		f 3 5635 5634 5633
		mu 0 3 1510 1515 1516
		f 3 5638 5637 5636
		mu 0 3 1514 1510 1516
		f 3 5641 5640 5639
		mu 0 3 1514 1516 1517
		f 3 5644 5643 5642
		mu 0 3 1518 1509 1513
		f 3 5647 5646 5645
		mu 0 3 1518 1519 1509
		f 3 5650 5649 5648
		mu 0 3 1519 1512 1509
		f 3 5653 5652 5651
		mu 0 3 1520 1519 1518
		f 3 5656 5655 5654
		mu 0 3 1520 1521 1519
		f 3 5659 5658 5657
		mu 0 3 1522 1521 1520
		f 3 5662 5661 5660
		mu 0 3 1522 1523 1521
		f 3 5665 5664 5663
		mu 0 3 1521 1524 1519
		f 3 5668 5667 5666
		mu 0 3 1521 1523 1524
		f 3 5671 5670 5669
		mu 0 3 1519 1524 1512
		f 3 5674 5673 5672
		mu 0 3 1525 1527 1526
		f 3 5677 5676 5675
		mu 0 3 1528 1530 1529
		f 3 5680 5679 5678
		mu 0 3 1531 1533 1532
		f 3 5683 5682 5681
		mu 0 3 1534 1536 1535
		f 3 5686 5685 5684
		mu 0 3 1537 1535 1536
		f 3 5689 5688 5687
		mu 0 3 1535 1537 1538
		f 3 5692 5691 5690
		mu 0 3 1539 1538 1537
		f 3 5695 5694 5693
		mu 0 3 1536 1534 1540
		f 3 5698 5697 5696
		mu 0 3 1534 1541 1540
		f 3 5701 5700 5699
		mu 0 3 1542 1544 1543
		f 3 5704 5703 5702
		mu 0 3 1545 1543 1544
		f 3 5707 5706 5705
		mu 0 3 1546 1545 1544
		f 3 5710 5709 5708
		mu 0 3 1547 1545 1546
		f 3 5713 5712 5711
		mu 0 3 1548 1547 1546
		f 3 5716 5715 5714
		mu 0 3 1548 1549 1547
		f 3 5719 5718 5717
		mu 0 3 1550 1552 1551
		f 3 5722 5721 5720
		mu 0 3 1553 1551 1552
		f 3 5725 5724 5723
		mu 0 3 1551 1554 1550
		f 3 5728 5727 5726
		mu 0 3 1555 1550 1554
		f 3 5731 5730 5729
		mu 0 3 1556 1553 1552
		f 3 5734 5733 5732
		mu 0 3 1556 1557 1553
		f 3 5737 5736 5735
		mu 0 3 1558 1560 1559
		f 3 5740 5739 5738
		mu 0 3 1561 1559 1560
		f 3 5743 5742 5741
		mu 0 3 1560 1558 1562
		f 3 5746 5745 5744
		mu 0 3 1562 1558 1563
		f 3 5749 5748 5747
		mu 0 3 1562 1563 1564
		f 3 5752 5751 5750
		mu 0 3 1563 1565 1564
		f 3 5755 5754 5753
		mu 0 3 1566 1568 1567
		f 3 5758 5757 5756
		mu 0 3 1566 1567 1569
		f 3 5761 5760 5759
		mu 0 3 1566 1569 1570
		f 3 5764 5763 5762
		mu 0 3 1571 1566 1570
		f 3 5767 5766 5765
		mu 0 3 1571 1570 1572
		f 3 5770 5769 5768
		mu 0 3 1571 1573 1566
		f 3 5773 5772 5771
		mu 0 3 1566 1573 1568
		f 3 5776 5775 5774
		mu 0 3 1571 1574 1573
		f 3 5779 5778 5777
		mu 0 3 1571 1572 1575
		f 3 5782 5781 5780
		mu 0 3 1571 1575 1576
		f 3 5785 5784 5783
		mu 0 3 1576 1575 1577
		f 3 5788 5787 5786
		mu 0 3 1576 1577 1578
		f 3 5791 5790 5789
		mu 0 3 1579 1576 1578
		f 3 5794 5793 5792
		mu 0 3 1571 1579 1574
		f 3 5797 5796 5795
		mu 0 3 1571 1576 1579
		f 3 5800 5799 5798
		mu 0 3 1579 1578 1580
		f 3 5803 5802 5801
		mu 0 3 1581 1580 1578
		f 3 5806 5805 5804
		mu 0 3 1581 1578 1582
		f 3 5809 5808 5807
		mu 0 3 1582 1578 1577
		f 3 5812 5811 5810
		mu 0 3 1582 1577 1583
		f 3 5815 5814 5813
		mu 0 3 1584 1586 1585
		f 3 5818 5817 5816
		mu 0 3 1587 1584 1585
		f 3 5821 5820 5819
		mu 0 3 1587 1585 1588
		f 3 5824 5823 5822
		mu 0 3 1588 1585 1589
		f 3 5827 5826 5825
		mu 0 3 1588 1589 1590
		f 3 5830 5829 5828
		mu 0 3 1591 1589 1585
		f 3 5833 5832 5831
		mu 0 3 1586 1591 1585
		f 3 5836 5835 5834
		mu 0 3 1591 1592 1589
		f 3 5839 5838 5837
		mu 0 3 1593 1590 1589
		f 3 5842 5841 5840
		mu 0 3 1593 1589 1594
		f 3 5845 5844 5843
		mu 0 3 1595 1593 1594
		f 3 5848 5847 5846
		mu 0 3 1595 1594 1596
		f 3 5851 5850 5849
		mu 0 3 1596 1594 1597
		f 3 5854 5853 5852
		mu 0 3 1597 1589 1592
		f 3 5857 5856 5855
		mu 0 3 1597 1594 1589
		f 3 5860 5859 5858
		mu 0 3 1596 1597 1598
		f 3 5863 5862 5861
		mu 0 3 1596 1598 1599
		f 3 5866 5865 5864
		mu 0 3 1596 1599 1600
		f 3 5869 5868 5867
		mu 0 3 1595 1596 1600
		f 3 5872 5871 5870
		mu 0 3 1595 1600 1601
		f 3 5875 5874 5873
		mu 0 3 1602 1604 1603
		f 3 5878 5877 5876
		mu 0 3 1604 1605 1603
		f 3 5881 5880 5879
		mu 0 3 1604 1606 1605
		f 3 5884 5883 5882
		mu 0 3 1607 1606 1604
		f 3 5887 5886 5885
		mu 0 3 1607 1608 1606
		f 3 5890 5889 5888
		mu 0 3 1607 1604 1609
		f 3 5893 5892 5891
		mu 0 3 1609 1604 1602
		f 3 5896 5895 5894
		mu 0 3 1607 1609 1610
		f 3 5899 5898 5897
		mu 0 3 1607 1611 1608
		f 3 5902 5901 5900
		mu 0 3 1607 1612 1611
		f 3 5905 5904 5903
		mu 0 3 1612 1613 1611
		f 3 5908 5907 5906
		mu 0 3 1612 1614 1613
		f 3 5911 5910 5909
		mu 0 3 1615 1614 1612
		f 3 5914 5913 5912
		mu 0 3 1607 1615 1612
		f 3 5917 5916 5915
		mu 0 3 1607 1610 1615
		f 3 5920 5919 5918
		mu 0 3 1615 1616 1614
		f 3 5923 5922 5921
		mu 0 3 1617 1614 1616
		f 3 5926 5925 5924
		mu 0 3 1617 1618 1614
		f 3 5929 5928 5927
		mu 0 3 1618 1613 1614
		f 3 5932 5931 5930
		mu 0 3 1618 1619 1613
		f 3 5935 5934 5933
		mu 0 3 1620 1622 1621
		f 3 5938 5937 5936
		mu 0 3 1623 1622 1620
		f 3 5941 5940 5939
		mu 0 3 1623 1624 1622
		f 3 5944 5943 5942
		mu 0 3 1624 1625 1622
		f 3 5947 5946 5945
		mu 0 3 1624 1626 1625
		f 3 5950 5949 5948
		mu 0 3 1627 1622 1625
		f 3 5953 5952 5951
		mu 0 3 1621 1622 1627
		f 3 5956 5955 5954
		mu 0 3 1627 1625 1628
		f 3 5959 5958 5957
		mu 0 3 1629 1625 1626
		f 3 5962 5961 5960
		mu 0 3 1629 1630 1625
		f 3 5965 5964 5963
		mu 0 3 1631 1630 1629
		f 3 5968 5967 5966
		mu 0 3 1631 1632 1630
		f 3 5971 5970 5969
		mu 0 3 1632 1633 1630
		f 3 5974 5973 5972
		mu 0 3 1633 1625 1630
		f 3 5977 5976 5975
		mu 0 3 1633 1628 1625
		f 3 5980 5979 5978
		mu 0 3 1632 1634 1633
		f 3 5983 5982 5981
		mu 0 3 1632 1635 1634
		f 3 5986 5985 5984
		mu 0 3 1632 1636 1635
		f 3 5989 5988 5987
		mu 0 3 1631 1636 1632
		f 3 5992 5991 5990
		mu 0 3 1631 1637 1636
;
createNode objectSet -n "skinClusterSet";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode objectSet -n "tweakSet";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode skinCluster -n "skinCluster";
	setAttr -s 1638 ".wl";
	setAttr -s 2 ".wl[0].w";
	setAttr ".wl[0].w[1]" 0.6898402;
	setAttr ".wl[0].w[0]" 0.3101598;
	setAttr -s 2 ".wl[1].w";
	setAttr ".wl[1].w[1]" 0.933769;
	setAttr ".wl[1].w[0]" 0.06623094;
	setAttr -s 2 ".wl[2].w";
	setAttr ".wl[2].w[1]" 0.9212674;
	setAttr ".wl[2].w[0]" 0.07873255;
	setAttr -s 2 ".wl[3].w";
	setAttr ".wl[3].w[1]" 0.6534504;
	setAttr ".wl[3].w[0]" 0.3465496;
	setAttr -s 2 ".wl[4].w";
	setAttr ".wl[4].w[1]" 0.9343715;
	setAttr ".wl[4].w[0]" 0.06562854;
	setAttr -s 2 ".wl[5].w";
	setAttr ".wl[5].w[1]" 0.6244793;
	setAttr ".wl[5].w[0]" 0.3755207;
	setAttr -s 2 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.8203217;
	setAttr ".wl[6].w[1]" 0.1796784;
	setAttr -s 2 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.6144468;
	setAttr ".wl[7].w[1]" 0.3855533;
	setAttr -s 2 ".wl[8].w";
	setAttr ".wl[8].w[0]" 0.7663428;
	setAttr ".wl[8].w[1]" 0.2336572;
	setAttr -s 2 ".wl[9].w";
	setAttr ".wl[9].w[1]" 0.7007336;
	setAttr ".wl[9].w[0]" 0.2992664;
	setAttr -s 3 ".wl[10].w";
	setAttr ".wl[10].w[1]" 0.4801184;
	setAttr ".wl[10].w[5]" 0.3987602;
	setAttr ".wl[10].w[0]" 0.1211215;
	setAttr -s 2 ".wl[11].w";
	setAttr ".wl[11].w[1]" 0.6085414;
	setAttr ".wl[11].w[0]" 0.3914586;
	setAttr -s 2 ".wl[12].w";
	setAttr ".wl[12].w[1]" 0.9479094;
	setAttr ".wl[12].w[0]" 0.05209067;
	setAttr -s 2 ".wl[13].w";
	setAttr ".wl[13].w[1]" 0.9456252;
	setAttr ".wl[13].w[0]" 0.05437482;
	setAttr -s 2 ".wl[14].w";
	setAttr ".wl[14].w[0]" 0.7694733;
	setAttr ".wl[14].w[1]" 0.2305268;
	setAttr -s 1 ".wl[15].w";
	setAttr ".wl[15].w[0]" 1;
	setAttr -s 2 ".wl[16].w";
	setAttr ".wl[16].w[0]" 0.8131757;
	setAttr ".wl[16].w[1]" 0.1868242;
	setAttr -s 1 ".wl[17].w";
	setAttr ".wl[17].w[0]" 1;
	setAttr -s 2 ".wl[18].w";
	setAttr ".wl[18].w[0]" 0.8447731;
	setAttr ".wl[18].w[1]" 0.155227;
	setAttr -s 2 ".wl[19].w";
	setAttr ".wl[19].w[0]" 0.773568;
	setAttr ".wl[19].w[1]" 0.226432;
	setAttr -s 2 ".wl[20].w";
	setAttr ".wl[20].w[0]" 0.9989803;
	setAttr ".wl[20].w[1]" 0.001019734;
	setAttr -s 2 ".wl[21].w";
	setAttr ".wl[21].w[0]" 0.999855;
	setAttr ".wl[21].w[4]" 0.0001449993;
	setAttr -s 3 ".wl[22].w";
	setAttr ".wl[22].w[0]" 0.9266044;
	setAttr ".wl[22].w[4]" 0.07196712;
	setAttr ".wl[22].w[2]" 0.001428417;
	setAttr -s 3 ".wl[23].w";
	setAttr ".wl[23].w[0]" 0.9266044;
	setAttr ".wl[23].w[1]" 0.07196712;
	setAttr ".wl[23].w[2]" 0.001428417;
	setAttr -s 2 ".wl[24].w";
	setAttr ".wl[24].w[0]" 0.5858436;
	setAttr ".wl[24].w[1]" 0.4141564;
	setAttr -s 1 ".wl[25].w";
	setAttr ".wl[25].w[1]" 1;
	setAttr -s 2 ".wl[26].w";
	setAttr ".wl[26].w[1]" 0.8331701;
	setAttr ".wl[26].w[0]" 0.1668299;
	setAttr -s 3 ".wl[27].w";
	setAttr ".wl[27].w[1]" 0.7358258;
	setAttr ".wl[27].w[4]" 0.140508;
	setAttr ".wl[27].w[0]" 0.1236662;
	setAttr -s 2 ".wl[28].w";
	setAttr ".wl[28].w[1]" 0.9046999;
	setAttr ".wl[28].w[0]" 0.09530009;
	setAttr -s 1 ".wl[29].w";
	setAttr ".wl[29].w[1]" 1;
	setAttr -s 1 ".wl[30].w";
	setAttr ".wl[30].w[1]" 1;
	setAttr -s 2 ".wl[31].w";
	setAttr ".wl[31].w[1]" 0.9756504;
	setAttr ".wl[31].w[0]" 0.02434956;
	setAttr -s 1 ".wl[32].w";
	setAttr ".wl[32].w[1]" 1;
	setAttr -s 1 ".wl[33].w";
	setAttr ".wl[33].w[1]" 1;
	setAttr -s 2 ".wl[34].w";
	setAttr ".wl[34].w[1]" 0.9866534;
	setAttr ".wl[34].w[0]" 0.01334659;
	setAttr -s 2 ".wl[35].w";
	setAttr ".wl[35].w[1]" 0.9719223;
	setAttr ".wl[35].w[0]" 0.02807772;
	setAttr -s 1 ".wl[36].w";
	setAttr ".wl[36].w[1]" 1;
	setAttr -s 1 ".wl[37].w";
	setAttr ".wl[37].w[1]" 1;
	setAttr -s 2 ".wl[38].w";
	setAttr ".wl[38].w[1]" 0.946177;
	setAttr ".wl[38].w[0]" 0.053823;
	setAttr -s 2 ".wl[39].w";
	setAttr ".wl[39].w[1]" 0.9046999;
	setAttr ".wl[39].w[0]" 0.09530009;
	setAttr -s 1 ".wl[40].w";
	setAttr ".wl[40].w[1]" 1;
	setAttr -s 2 ".wl[41].w";
	setAttr ".wl[41].w[1]" 0.9049901;
	setAttr ".wl[41].w[0]" 0.09500991;
	setAttr -s 3 ".wl[42].w";
	setAttr ".wl[42].w[1]" 0.7358258;
	setAttr ".wl[42].w[4]" 0.140508;
	setAttr ".wl[42].w[0]" 0.1236662;
	setAttr -s 3 ".wl[43].w";
	setAttr ".wl[43].w[0]" 0.7149951;
	setAttr ".wl[43].w[1]" 0.2798978;
	setAttr ".wl[43].w[2]" 0.005107077;
	setAttr -s 3 ".wl[44].w";
	setAttr ".wl[44].w[0]" 0.9266044;
	setAttr ".wl[44].w[1]" 0.07196712;
	setAttr ".wl[44].w[2]" 0.001428417;
	setAttr -s 2 ".wl[45].w";
	setAttr ".wl[45].w[1]" 0.913397;
	setAttr ".wl[45].w[3]" 0.08660301;
	setAttr -s 2 ".wl[46].w";
	setAttr ".wl[46].w[1]" 0.9069431;
	setAttr ".wl[46].w[3]" 0.09305691;
	setAttr -s 2 ".wl[47].w";
	setAttr ".wl[47].w[1]" 0.874151;
	setAttr ".wl[47].w[3]" 0.125849;
	setAttr -s 2 ".wl[48].w";
	setAttr ".wl[48].w[3]" 0.5446157;
	setAttr ".wl[48].w[1]" 0.4553843;
	setAttr -s 2 ".wl[49].w";
	setAttr ".wl[49].w[1]" 0.900577;
	setAttr ".wl[49].w[3]" 0.09942298;
	setAttr -s 2 ".wl[50].w";
	setAttr ".wl[50].w[3]" 0.5451044;
	setAttr ".wl[50].w[1]" 0.4548956;
	setAttr -s 2 ".wl[51].w";
	setAttr ".wl[51].w[3]" 0.5514522;
	setAttr ".wl[51].w[1]" 0.4485478;
	setAttr -s 2 ".wl[52].w";
	setAttr ".wl[52].w[1]" 0.8964417;
	setAttr ".wl[52].w[3]" 0.1035583;
	setAttr -s 2 ".wl[53].w";
	setAttr ".wl[53].w[1]" 0.8701774;
	setAttr ".wl[53].w[3]" 0.1298226;
	setAttr -s 2 ".wl[54].w";
	setAttr ".wl[54].w[1]" 0.9695292;
	setAttr ".wl[54].w[3]" 0.03047085;
	setAttr -s 2 ".wl[55].w";
	setAttr ".wl[55].w[1]" 0.9830517;
	setAttr ".wl[55].w[3]" 0.01694833;
	setAttr -s 2 ".wl[56].w";
	setAttr ".wl[56].w[1]" 0.8;
	setAttr ".wl[56].w[3]" 0.2;
	setAttr -s 2 ".wl[57].w";
	setAttr ".wl[57].w[1]" 0.874151;
	setAttr ".wl[57].w[3]" 0.125849;
	setAttr -s 2 ".wl[58].w";
	setAttr ".wl[58].w[1]" 0.913397;
	setAttr ".wl[58].w[3]" 0.08660301;
	setAttr -s 2 ".wl[59].w";
	setAttr ".wl[59].w[3]" 0.6090078;
	setAttr ".wl[59].w[1]" 0.3909922;
	setAttr -s 2 ".wl[60].w";
	setAttr ".wl[60].w[3]" 0.6128421;
	setAttr ".wl[60].w[1]" 0.3871579;
	setAttr -s 2 ".wl[61].w";
	setAttr ".wl[61].w[3]" 0.9365585;
	setAttr ".wl[61].w[1]" 0.06344152;
	setAttr -s 2 ".wl[62].w";
	setAttr ".wl[62].w[3]" 0.8171901;
	setAttr ".wl[62].w[1]" 0.1828099;
	setAttr -s 2 ".wl[63].w";
	setAttr ".wl[63].w[3]" 0.7189458;
	setAttr ".wl[63].w[1]" 0.2810542;
	setAttr -s 1 ".wl[64].w";
	setAttr ".wl[64].w[3]" 1;
	setAttr -s 2 ".wl[65].w";
	setAttr ".wl[65].w[3]" 0.6196927;
	setAttr ".wl[65].w[1]" 0.3803073;
	setAttr -s 2 ".wl[66].w";
	setAttr ".wl[66].w[3]" 0.8684993;
	setAttr ".wl[66].w[1]" 0.1315006;
	setAttr -s 2 ".wl[67].w";
	setAttr ".wl[67].w[3]" 0.9220479;
	setAttr ".wl[67].w[1]" 0.07795212;
	setAttr -s 2 ".wl[68].w";
	setAttr ".wl[68].w[3]" 0.9220479;
	setAttr ".wl[68].w[1]" 0.07795212;
	setAttr -s 1 ".wl[69].w";
	setAttr ".wl[69].w[3]" 1;
	setAttr -s 1 ".wl[70].w";
	setAttr ".wl[70].w[3]" 1;
	setAttr -s 1 ".wl[71].w";
	setAttr ".wl[71].w[3]" 1;
	setAttr -s 1 ".wl[72].w";
	setAttr ".wl[72].w[3]" 1;
	setAttr -s 1 ".wl[73].w";
	setAttr ".wl[73].w[3]" 1;
	setAttr -s 1 ".wl[74].w";
	setAttr ".wl[74].w[3]" 1;
	setAttr -s 1 ".wl[75].w";
	setAttr ".wl[75].w[3]" 1;
	setAttr -s 1 ".wl[76].w";
	setAttr ".wl[76].w[3]" 1;
	setAttr -s 1 ".wl[77].w";
	setAttr ".wl[77].w[3]" 1;
	setAttr -s 1 ".wl[78].w";
	setAttr ".wl[78].w[3]" 1;
	setAttr -s 1 ".wl[79].w";
	setAttr ".wl[79].w[3]" 1;
	setAttr -s 1 ".wl[80].w";
	setAttr ".wl[80].w[3]" 1;
	setAttr -s 1 ".wl[81].w";
	setAttr ".wl[81].w[3]" 1;
	setAttr -s 1 ".wl[82].w";
	setAttr ".wl[82].w[3]" 1;
	setAttr -s 1 ".wl[83].w";
	setAttr ".wl[83].w[3]" 1;
	setAttr -s 1 ".wl[84].w";
	setAttr ".wl[84].w[3]" 1;
	setAttr -s 1 ".wl[85].w";
	setAttr ".wl[85].w[3]" 1;
	setAttr -s 2 ".wl[86].w";
	setAttr ".wl[86].w[3]" 0.8938984;
	setAttr ".wl[86].w[6]" 0.1061016;
	setAttr -s 1 ".wl[87].w";
	setAttr ".wl[87].w[3]" 1;
	setAttr -s 1 ".wl[88].w";
	setAttr ".wl[88].w[3]" 1;
	setAttr -s 1 ".wl[89].w";
	setAttr ".wl[89].w[3]" 1;
	setAttr -s 1 ".wl[90].w";
	setAttr ".wl[90].w[3]" 1;
	setAttr -s 1 ".wl[91].w";
	setAttr ".wl[91].w[3]" 1;
	setAttr -s 1 ".wl[92].w";
	setAttr ".wl[92].w[3]" 1;
	setAttr -s 1 ".wl[93].w";
	setAttr ".wl[93].w[3]" 1;
	setAttr -s 1 ".wl[94].w";
	setAttr ".wl[94].w[3]" 1;
	setAttr -s 1 ".wl[95].w";
	setAttr ".wl[95].w[3]" 1;
	setAttr -s 1 ".wl[96].w";
	setAttr ".wl[96].w[3]" 1;
	setAttr -s 2 ".wl[97].w";
	setAttr ".wl[97].w[3]" 0.538581;
	setAttr ".wl[97].w[6]" 0.461419;
	setAttr -s 2 ".wl[98].w";
	setAttr ".wl[98].w[3]" 0.6658454;
	setAttr ".wl[98].w[6]" 0.3341546;
	setAttr -s 2 ".wl[99].w";
	setAttr ".wl[99].w[3]" 0.8111409;
	setAttr ".wl[99].w[6]" 0.1888591;
	setAttr -s 2 ".wl[100].w";
	setAttr ".wl[100].w[3]" 0.8718266;
	setAttr ".wl[100].w[6]" 0.1281734;
	setAttr -s 3 ".wl[101].w";
	setAttr ".wl[101].w[3]" 0.5959446;
	setAttr ".wl[101].w[6]" 0.4036717;
	setAttr ".wl[101].w[7]" 0.0003836759;
	setAttr -s 3 ".wl[102].w";
	setAttr ".wl[102].w[3]" 0.6185507;
	setAttr ".wl[102].w[6]" 0.3806313;
	setAttr ".wl[102].w[7]" 0.0008179725;
	setAttr -s 3 ".wl[103].w";
	setAttr ".wl[103].w[3]" 0.6185507;
	setAttr ".wl[103].w[6]" 0.3806313;
	setAttr ".wl[103].w[7]" 0.0008179725;
	setAttr -s 3 ".wl[104].w";
	setAttr ".wl[104].w[0]" 0.7408457;
	setAttr ".wl[104].w[4]" 0.2515441;
	setAttr ".wl[104].w[2]" 0.007610158;
	setAttr -s 3 ".wl[105].w";
	setAttr ".wl[105].w[0]" 0.7813205;
	setAttr ".wl[105].w[1]" 0.1824452;
	setAttr ".wl[105].w[2]" 0.03623432;
	setAttr -s 3 ".wl[106].w";
	setAttr ".wl[106].w[0]" 0.7408457;
	setAttr ".wl[106].w[1]" 0.2515441;
	setAttr ".wl[106].w[2]" 0.007610158;
	setAttr -s 2 ".wl[107].w";
	setAttr ".wl[107].w[0]" 0.6041744;
	setAttr ".wl[107].w[2]" 0.3958256;
	setAttr -s 2 ".wl[108].w";
	setAttr ".wl[108].w[0]" 0.6041744;
	setAttr ".wl[108].w[2]" 0.3958256;
	setAttr -s 2 ".wl[109].w";
	setAttr ".wl[109].w[0]" 0.7000042;
	setAttr ".wl[109].w[1]" 0.2999958;
	setAttr -s 3 ".wl[110].w";
	setAttr ".wl[110].w[0]" 0.7036212;
	setAttr ".wl[110].w[1]" 0.182813;
	setAttr ".wl[110].w[2]" 0.1135658;
	setAttr -s 3 ".wl[111].w";
	setAttr ".wl[111].w[2]" 0.3963817;
	setAttr ".wl[111].w[0]" 0.3304221;
	setAttr ".wl[111].w[12]" 0.2731962;
	setAttr -s 3 ".wl[112].w";
	setAttr ".wl[112].w[2]" 0.4281893;
	setAttr ".wl[112].w[0]" 0.3833962;
	setAttr ".wl[112].w[12]" 0.1884145;
	setAttr -s 2 ".wl[113].w";
	setAttr ".wl[113].w[0]" 0.747767;
	setAttr ".wl[113].w[2]" 0.252233;
	setAttr -s 3 ".wl[114].w";
	setAttr ".wl[114].w[2]" 0.3817513;
	setAttr ".wl[114].w[12]" 0.3225715;
	setAttr ".wl[114].w[0]" 0.2956772;
	setAttr -s 3 ".wl[115].w";
	setAttr ".wl[115].w[2]" 0.4753192;
	setAttr ".wl[115].w[12]" 0.3154007;
	setAttr ".wl[115].w[9]" 0.2092801;
	setAttr -s 3 ".wl[116].w";
	setAttr ".wl[116].w[9]" 0.4165206;
	setAttr ".wl[116].w[12]" 0.3032078;
	setAttr ".wl[116].w[2]" 0.2802716;
	setAttr -s 3 ".wl[117].w";
	setAttr ".wl[117].w[12]" 0.3538751;
	setAttr ".wl[117].w[2]" 0.353516;
	setAttr ".wl[117].w[9]" 0.2926089;
	setAttr -s 2 ".wl[118].w";
	setAttr ".wl[118].w[9]" 0.6404187;
	setAttr ".wl[118].w[12]" 0.3595813;
	setAttr -s 3 ".wl[119].w";
	setAttr ".wl[119].w[9]" 0.6445139;
	setAttr ".wl[119].w[12]" 0.3544387;
	setAttr ".wl[119].w[2]" 0.001047473;
	setAttr -s 3 ".wl[120].w";
	setAttr ".wl[120].w[9]" 0.4165206;
	setAttr ".wl[120].w[12]" 0.3032078;
	setAttr ".wl[120].w[2]" 0.2802716;
	setAttr -s 2 ".wl[121].w";
	setAttr ".wl[121].w[9]" 0.6311505;
	setAttr ".wl[121].w[12]" 0.3688495;
	setAttr -s 2 ".wl[122].w";
	setAttr ".wl[122].w[9]" 0.620211;
	setAttr ".wl[122].w[12]" 0.379789;
	setAttr -s 2 ".wl[123].w";
	setAttr ".wl[123].w[9]" 0.7965025;
	setAttr ".wl[123].w[12]" 0.2034976;
	setAttr -s 2 ".wl[124].w";
	setAttr ".wl[124].w[9]" 0.827924;
	setAttr ".wl[124].w[12]" 0.172076;
	setAttr -s 2 ".wl[125].w";
	setAttr ".wl[125].w[9]" 0.6971499;
	setAttr ".wl[125].w[12]" 0.30285;
	setAttr -s 2 ".wl[126].w";
	setAttr ".wl[126].w[9]" 0.6727296;
	setAttr ".wl[126].w[12]" 0.3272705;
	setAttr -s 3 ".wl[127].w";
	setAttr ".wl[127].w[9]" 0.5529798;
	setAttr ".wl[127].w[12]" 0.4218211;
	setAttr ".wl[127].w[2]" 0.02519913;
	setAttr -s 3 ".wl[128].w";
	setAttr ".wl[128].w[2]" 0.6495084;
	setAttr ".wl[128].w[12]" 0.2361149;
	setAttr ".wl[128].w[9]" 0.1143767;
	setAttr -s 3 ".wl[129].w";
	setAttr ".wl[129].w[2]" 0.6733572;
	setAttr ".wl[129].w[12]" 0.1957479;
	setAttr ".wl[129].w[9]" 0.1308949;
	setAttr -s 3 ".wl[130].w";
	setAttr ".wl[130].w[12]" 0.4601645;
	setAttr ".wl[130].w[9]" 0.4601645;
	setAttr ".wl[130].w[2]" 0.07967105;
	setAttr -s 3 ".wl[131].w";
	setAttr ".wl[131].w[0]" 0.3861488;
	setAttr ".wl[131].w[2]" 0.3248605;
	setAttr ".wl[131].w[12]" 0.2889908;
	setAttr -s 3 ".wl[132].w";
	setAttr ".wl[132].w[0]" 0.5090395;
	setAttr ".wl[132].w[2]" 0.2619981;
	setAttr ".wl[132].w[12]" 0.2289625;
	setAttr -s 2 ".wl[133].w";
	setAttr ".wl[133].w[9]" 0.6764098;
	setAttr ".wl[133].w[12]" 0.3235902;
	setAttr -s 2 ".wl[134].w";
	setAttr ".wl[134].w[0]" 0.7387445;
	setAttr ".wl[134].w[1]" 0.2612556;
	setAttr -s 2 ".wl[135].w";
	setAttr ".wl[135].w[0]" 0.6415991;
	setAttr ".wl[135].w[1]" 0.3584009;
	setAttr -s 2 ".wl[136].w";
	setAttr ".wl[136].w[0]" 0.5819547;
	setAttr ".wl[136].w[1]" 0.4180453;
	setAttr -s 2 ".wl[137].w";
	setAttr ".wl[137].w[0]" 0.96248;
	setAttr ".wl[137].w[1]" 0.03751999;
	setAttr -s 1 ".wl[138].w";
	setAttr ".wl[138].w[0]" 1;
	setAttr -s 2 ".wl[139].w";
	setAttr ".wl[139].w[0]" 0.8214183;
	setAttr ".wl[139].w[2]" 0.1785817;
	setAttr -s 3 ".wl[140].w";
	setAttr ".wl[140].w[0]" 0.5326077;
	setAttr ".wl[140].w[2]" 0.3573656;
	setAttr ".wl[140].w[12]" 0.1100266;
	setAttr -s 3 ".wl[141].w";
	setAttr ".wl[141].w[0]" 0.6138833;
	setAttr ".wl[141].w[2]" 0.3268898;
	setAttr ".wl[141].w[12]" 0.05922696;
	setAttr -s 2 ".wl[142].w";
	setAttr ".wl[142].w[0]" 0.691714;
	setAttr ".wl[142].w[2]" 0.308286;
	setAttr -s 1 ".wl[143].w";
	setAttr ".wl[143].w[0]" 1;
	setAttr -s 1 ".wl[144].w";
	setAttr ".wl[144].w[0]" 1;
	setAttr -s 1 ".wl[145].w";
	setAttr ".wl[145].w[0]" 1;
	setAttr -s 2 ".wl[146].w";
	setAttr ".wl[146].w[0]" 0.8708194;
	setAttr ".wl[146].w[1]" 0.1291807;
	setAttr -s 2 ".wl[147].w";
	setAttr ".wl[147].w[9]" 0.7627876;
	setAttr ".wl[147].w[12]" 0.2372123;
	setAttr -s 2 ".wl[148].w";
	setAttr ".wl[148].w[9]" 0.8039818;
	setAttr ".wl[148].w[12]" 0.1960182;
	setAttr -s 2 ".wl[149].w";
	setAttr ".wl[149].w[9]" 0.9693603;
	setAttr ".wl[149].w[12]" 0.03063976;
	setAttr -s 1 ".wl[150].w";
	setAttr ".wl[150].w[9]" 1;
	setAttr -s 2 ".wl[151].w";
	setAttr ".wl[151].w[9]" 0.9885496;
	setAttr ".wl[151].w[12]" 0.01145044;
	setAttr -s 1 ".wl[152].w";
	setAttr ".wl[152].w[9]" 1;
	setAttr -s 1 ".wl[153].w";
	setAttr ".wl[153].w[9]" 1;
	setAttr -s 1 ".wl[154].w";
	setAttr ".wl[154].w[9]" 1;
	setAttr -s 1 ".wl[155].w";
	setAttr ".wl[155].w[9]" 1;
	setAttr -s 1 ".wl[156].w";
	setAttr ".wl[156].w[9]" 1;
	setAttr -s 1 ".wl[157].w";
	setAttr ".wl[157].w[9]" 1;
	setAttr -s 1 ".wl[158].w";
	setAttr ".wl[158].w[9]" 1;
	setAttr -s 2 ".wl[159].w";
	setAttr ".wl[159].w[9]" 0.9712741;
	setAttr ".wl[159].w[12]" 0.02872597;
	setAttr -s 1 ".wl[160].w";
	setAttr ".wl[160].w[9]" 1;
	setAttr -s 2 ".wl[161].w";
	setAttr ".wl[161].w[9]" 0.9996492;
	setAttr ".wl[161].w[12]" 0.0003507822;
	setAttr -s 1 ".wl[162].w";
	setAttr ".wl[162].w[9]" 1;
	setAttr -s 1 ".wl[163].w";
	setAttr ".wl[163].w[9]" 1;
	setAttr -s 1 ".wl[164].w";
	setAttr ".wl[164].w[9]" 1;
	setAttr -s 2 ".wl[165].w";
	setAttr ".wl[165].w[9]" 0.9975378;
	setAttr ".wl[165].w[12]" 0.002462265;
	setAttr -s 1 ".wl[166].w";
	setAttr ".wl[166].w[9]" 1;
	setAttr -s 3 ".wl[167].w";
	setAttr ".wl[167].w[9]" 0.996501;
	setAttr ".wl[167].w[10]" 0.002726073;
	setAttr ".wl[167].w[12]" 0.0007729501;
	setAttr -s 1 ".wl[168].w";
	setAttr ".wl[168].w[9]" 1;
	setAttr -s 1 ".wl[169].w";
	setAttr ".wl[169].w[9]" 1;
	setAttr -s 2 ".wl[170].w";
	setAttr ".wl[170].w[9]" 0.9945582;
	setAttr ".wl[170].w[12]" 0.00544181;
	setAttr -s 3 ".wl[171].w";
	setAttr ".wl[171].w[10]" 0.4601997;
	setAttr ".wl[171].w[9]" 0.452598;
	setAttr ".wl[171].w[11]" 0.08720237;
	setAttr -s 3 ".wl[172].w";
	setAttr ".wl[172].w[11]" 0.5394285;
	setAttr ".wl[172].w[10]" 0.311722;
	setAttr ".wl[172].w[9]" 0.1488495;
	setAttr -s 2 ".wl[173].w";
	setAttr ".wl[173].w[9]" 0.7519794;
	setAttr ".wl[173].w[12]" 0.2480205;
	setAttr -s 2 ".wl[174].w";
	setAttr ".wl[174].w[9]" 0.8497383;
	setAttr ".wl[174].w[12]" 0.1502617;
	setAttr -s 2 ".wl[175].w";
	setAttr ".wl[175].w[9]" 0.9940783;
	setAttr ".wl[175].w[12]" 0.00592171;
	setAttr -s 1 ".wl[176].w";
	setAttr ".wl[176].w[9]" 1;
	setAttr -s 3 ".wl[177].w";
	setAttr ".wl[177].w[11]" 0.9133313;
	setAttr ".wl[177].w[10]" 0.0847624;
	setAttr ".wl[177].w[9]" 0.00190638;
	setAttr -s 3 ".wl[178].w";
	setAttr ".wl[178].w[9]" 0.6923813;
	setAttr ".wl[178].w[10]" 0.3060593;
	setAttr ".wl[178].w[11]" 0.001559463;
	setAttr -s 1 ".wl[179].w";
	setAttr ".wl[179].w[9]" 1;
	setAttr -s 3 ".wl[180].w";
	setAttr ".wl[180].w[9]" 0.9643668;
	setAttr ".wl[180].w[15]" 0.01817808;
	setAttr ".wl[180].w[10]" 0.01745514;
	setAttr -s 2 ".wl[181].w";
	setAttr ".wl[181].w[9]" 0.9566733;
	setAttr ".wl[181].w[12]" 0.04332675;
	setAttr -s 2 ".wl[182].w";
	setAttr ".wl[182].w[9]" 0.9339928;
	setAttr ".wl[182].w[12]" 0.06600726;
	setAttr -s 2 ".wl[183].w";
	setAttr ".wl[183].w[9]" 0.9695173;
	setAttr ".wl[183].w[12]" 0.03048271;
	setAttr -s 1 ".wl[184].w";
	setAttr ".wl[184].w[9]" 1;
	setAttr -s 1 ".wl[185].w";
	setAttr ".wl[185].w[9]" 1;
	setAttr -s 2 ".wl[186].w";
	setAttr ".wl[186].w[9]" 0.880007;
	setAttr ".wl[186].w[12]" 0.1199929;
	setAttr -s 2 ".wl[187].w";
	setAttr ".wl[187].w[11]" 0.8743559;
	setAttr ".wl[187].w[10]" 0.1256442;
	setAttr -s 2 ".wl[188].w";
	setAttr ".wl[188].w[10]" 0.5433139;
	setAttr ".wl[188].w[11]" 0.4566862;
	setAttr -s 2 ".wl[189].w";
	setAttr ".wl[189].w[10]" 0.7972118;
	setAttr ".wl[189].w[9]" 0.2027881;
	setAttr -s 2 ".wl[190].w";
	setAttr ".wl[190].w[9]" 0.7910092;
	setAttr ".wl[190].w[12]" 0.2089908;
	setAttr -s 3 ".wl[191].w";
	setAttr ".wl[191].w[9]" 0.6434913;
	setAttr ".wl[191].w[15]" 0.1809017;
	setAttr ".wl[191].w[10]" 0.175607;
	setAttr -s 2 ".wl[192].w";
	setAttr ".wl[192].w[9]" 0.7457671;
	setAttr ".wl[192].w[12]" 0.2542329;
	setAttr -s 3 ".wl[193].w";
	setAttr ".wl[193].w[11]" 0.5815027;
	setAttr ".wl[193].w[10]" 0.4179515;
	setAttr ".wl[193].w[9]" 0.0005458727;
	setAttr -s 2 ".wl[194].w";
	setAttr ".wl[194].w[10]" 0.5235745;
	setAttr ".wl[194].w[9]" 0.4764254;
	setAttr -s 3 ".wl[195].w";
	setAttr ".wl[195].w[9]" 0.6434913;
	setAttr ".wl[195].w[15]" 0.1809017;
	setAttr ".wl[195].w[10]" 0.175607;
	setAttr -s 1 ".wl[196].w";
	setAttr ".wl[196].w[9]" 1;
	setAttr -s 2 ".wl[197].w";
	setAttr ".wl[197].w[9]" 0.7951357;
	setAttr ".wl[197].w[13]" 0.2048643;
	setAttr -s 3 ".wl[198].w";
	setAttr ".wl[198].w[9]" 0.9288688;
	setAttr ".wl[198].w[13]" 0.07093675;
	setAttr ".wl[198].w[10]" 0.0001945683;
	setAttr -s 3 ".wl[199].w";
	setAttr ".wl[199].w[11]" 0.5533186;
	setAttr ".wl[199].w[10]" 0.4447941;
	setAttr ".wl[199].w[9]" 0.001887321;
	setAttr -s 2 ".wl[200].w";
	setAttr ".wl[200].w[11]" 0.5785979;
	setAttr ".wl[200].w[10]" 0.4214022;
	setAttr -s 2 ".wl[201].w";
	setAttr ".wl[201].w[11]" 0.6008091;
	setAttr ".wl[201].w[10]" 0.3991909;
	setAttr -s 3 ".wl[202].w";
	setAttr ".wl[202].w[9]" 0.5500647;
	setAttr ".wl[202].w[10]" 0.40845;
	setAttr ".wl[202].w[11]" 0.04148534;
	setAttr -s 2 ".wl[203].w";
	setAttr ".wl[203].w[11]" 0.8173239;
	setAttr ".wl[203].w[10]" 0.1826762;
	setAttr -s 2 ".wl[204].w";
	setAttr ".wl[204].w[9]" 0.8004405;
	setAttr ".wl[204].w[12]" 0.1995595;
	setAttr -s 2 ".wl[205].w";
	setAttr ".wl[205].w[9]" 0.8297216;
	setAttr ".wl[205].w[12]" 0.1702784;
	setAttr -s 1 ".wl[206].w";
	setAttr ".wl[206].w[9]" 1;
	setAttr -s 1 ".wl[207].w";
	setAttr ".wl[207].w[9]" 1;
	setAttr -s 1 ".wl[208].w";
	setAttr ".wl[208].w[9]" 1;
	setAttr -s 2 ".wl[209].w";
	setAttr ".wl[209].w[9]" 0.6580387;
	setAttr ".wl[209].w[12]" 0.3419613;
	setAttr -s 2 ".wl[210].w";
	setAttr ".wl[210].w[9]" 0.6168724;
	setAttr ".wl[210].w[12]" 0.3831275;
	setAttr -s 2 ".wl[211].w";
	setAttr ".wl[211].w[9]" 0.7820381;
	setAttr ".wl[211].w[12]" 0.2179618;
	setAttr -s 2 ".wl[212].w";
	setAttr ".wl[212].w[9]" 0.6789303;
	setAttr ".wl[212].w[12]" 0.3210697;
	setAttr -s 2 ".wl[213].w";
	setAttr ".wl[213].w[9]" 0.6353353;
	setAttr ".wl[213].w[12]" 0.3646647;
	setAttr -s 3 ".wl[214].w";
	setAttr ".wl[214].w[9]" 0.6321918;
	setAttr ".wl[214].w[12]" 0.3428333;
	setAttr ".wl[214].w[2]" 0.02497493;
	setAttr -s 2 ".wl[215].w";
	setAttr ".wl[215].w[9]" 0.9250797;
	setAttr ".wl[215].w[12]" 0.07492032;
	setAttr -s 2 ".wl[216].w";
	setAttr ".wl[216].w[9]" 0.8322262;
	setAttr ".wl[216].w[12]" 0.1677738;
	setAttr -s 2 ".wl[217].w";
	setAttr ".wl[217].w[9]" 0.7830579;
	setAttr ".wl[217].w[12]" 0.2169421;
	setAttr -s 3 ".wl[218].w";
	setAttr ".wl[218].w[0]" 0.7149951;
	setAttr ".wl[218].w[1]" 0.2798978;
	setAttr ".wl[218].w[2]" 0.005107077;
	setAttr -s 3 ".wl[219].w";
	setAttr ".wl[219].w[0]" 0.9266044;
	setAttr ".wl[219].w[4]" 0.07196712;
	setAttr ".wl[219].w[2]" 0.001428417;
	setAttr -s 3 ".wl[220].w";
	setAttr ".wl[220].w[0]" 0.8042763;
	setAttr ".wl[220].w[1]" 0.1885659;
	setAttr ".wl[220].w[2]" 0.007157913;
	setAttr -s 3 ".wl[221].w";
	setAttr ".wl[221].w[0]" 0.9266044;
	setAttr ".wl[221].w[1]" 0.07196712;
	setAttr ".wl[221].w[2]" 0.001428417;
	setAttr -s 2 ".wl[222].w";
	setAttr ".wl[222].w[1]" 0.6534504;
	setAttr ".wl[222].w[0]" 0.3465496;
	setAttr -s 2 ".wl[223].w";
	setAttr ".wl[223].w[0]" 0.8203217;
	setAttr ".wl[223].w[1]" 0.1796784;
	setAttr -s 2 ".wl[224].w";
	setAttr ".wl[224].w[3]" 0.538581;
	setAttr ".wl[224].w[6]" 0.461419;
	setAttr -s 1 ".wl[225].w";
	setAttr ".wl[225].w[6]" 1;
	setAttr -s 2 ".wl[226].w";
	setAttr ".wl[226].w[3]" 0.6658454;
	setAttr ".wl[226].w[6]" 0.3341546;
	setAttr -s 2 ".wl[227].w";
	setAttr ".wl[227].w[6]" 0.9074266;
	setAttr ".wl[227].w[3]" 0.0925734;
	setAttr -s 3 ".wl[228].w";
	setAttr ".wl[228].w[6]" 0.8048857;
	setAttr ".wl[228].w[3]" 0.1915717;
	setAttr ".wl[228].w[7]" 0.003542679;
	setAttr -s 3 ".wl[229].w";
	setAttr ".wl[229].w[3]" 0.5959446;
	setAttr ".wl[229].w[6]" 0.4036717;
	setAttr ".wl[229].w[7]" 0.0003836759;
	setAttr -s 3 ".wl[230].w";
	setAttr ".wl[230].w[3]" 0.6013371;
	setAttr ".wl[230].w[6]" 0.3960975;
	setAttr ".wl[230].w[7]" 0.002565446;
	setAttr -s 3 ".wl[231].w";
	setAttr ".wl[231].w[3]" 0.6185507;
	setAttr ".wl[231].w[6]" 0.3806313;
	setAttr ".wl[231].w[7]" 0.0008179725;
	setAttr -s 2 ".wl[232].w";
	setAttr ".wl[232].w[6]" 0.868618;
	setAttr ".wl[232].w[3]" 0.131382;
	setAttr -s 2 ".wl[233].w";
	setAttr ".wl[233].w[3]" 0.8111409;
	setAttr ".wl[233].w[6]" 0.1888591;
	setAttr -s 1 ".wl[234].w";
	setAttr ".wl[234].w[6]" 1;
	setAttr -s 2 ".wl[235].w";
	setAttr ".wl[235].w[3]" 0.8718266;
	setAttr ".wl[235].w[6]" 0.1281734;
	setAttr -s 2 ".wl[236].w";
	setAttr ".wl[236].w[6]" 0.868618;
	setAttr ".wl[236].w[3]" 0.131382;
	setAttr -s 2 ".wl[237].w";
	setAttr ".wl[237].w[3]" 0.8111409;
	setAttr ".wl[237].w[6]" 0.1888591;
	setAttr -s 1 ".wl[238].w";
	setAttr ".wl[238].w[6]" 1;
	setAttr -s 1 ".wl[239].w";
	setAttr ".wl[239].w[6]" 1;
	setAttr -s 3 ".wl[240].w";
	setAttr ".wl[240].w[6]" 0.9913138;
	setAttr ".wl[240].w[8]" 0.005828438;
	setAttr ".wl[240].w[7]" 0.002857821;
	setAttr -s 2 ".wl[241].w";
	setAttr ".wl[241].w[6]" 0.9977797;
	setAttr ".wl[241].w[8]" 0.002220323;
	setAttr -s 1 ".wl[242].w";
	setAttr ".wl[242].w[6]" 1;
	setAttr -s 1 ".wl[243].w";
	setAttr ".wl[243].w[6]" 1;
	setAttr -s 3 ".wl[244].w";
	setAttr ".wl[244].w[8]" 0.6157522;
	setAttr ".wl[244].w[6]" 0.3841046;
	setAttr ".wl[244].w[7]" 0.0001432853;
	setAttr -s 2 ".wl[245].w";
	setAttr ".wl[245].w[6]" 0.994729;
	setAttr ".wl[245].w[7]" 0.005271038;
	setAttr -s 3 ".wl[246].w";
	setAttr ".wl[246].w[6]" 0.8856883;
	setAttr ".wl[246].w[8]" 0.1118606;
	setAttr ".wl[246].w[7]" 0.002451113;
	setAttr -s 3 ".wl[247].w";
	setAttr ".wl[247].w[8]" 0.636133;
	setAttr ".wl[247].w[6]" 0.3631503;
	setAttr ".wl[247].w[7]" 0.0007167039;
	setAttr -s 2 ".wl[248].w";
	setAttr ".wl[248].w[8]" 0.9993547;
	setAttr ".wl[248].w[6]" 0.0006453266;
	setAttr -s 2 ".wl[249].w";
	setAttr ".wl[249].w[6]" 0.6818876;
	setAttr ".wl[249].w[8]" 0.3181124;
	setAttr -s 2 ".wl[250].w";
	setAttr ".wl[250].w[8]" 0.9983937;
	setAttr ".wl[250].w[6]" 0.001606331;
	setAttr -s 1 ".wl[251].w";
	setAttr ".wl[251].w[8]" 1;
	setAttr -s 1 ".wl[252].w";
	setAttr ".wl[252].w[8]" 1;
	setAttr -s 1 ".wl[253].w";
	setAttr ".wl[253].w[8]" 1;
	setAttr -s 1 ".wl[254].w";
	setAttr ".wl[254].w[8]" 1;
	setAttr -s 2 ".wl[255].w";
	setAttr ".wl[255].w[8]" 0.8471656;
	setAttr ".wl[255].w[6]" 0.1528344;
	setAttr -s 2 ".wl[256].w";
	setAttr ".wl[256].w[8]" 0.6014475;
	setAttr ".wl[256].w[6]" 0.3985524;
	setAttr -s 2 ".wl[257].w";
	setAttr ".wl[257].w[6]" 0.8654683;
	setAttr ".wl[257].w[8]" 0.1345318;
	setAttr -s 1 ".wl[258].w";
	setAttr ".wl[258].w[6]" 1;
	setAttr -s 2 ".wl[259].w";
	setAttr ".wl[259].w[8]" 0.6820971;
	setAttr ".wl[259].w[6]" 0.3179029;
	setAttr -s 2 ".wl[260].w";
	setAttr ".wl[260].w[6]" 0.9938424;
	setAttr ".wl[260].w[8]" 0.006157682;
	setAttr -s 1 ".wl[261].w";
	setAttr ".wl[261].w[6]" 1;
	setAttr -s 1 ".wl[262].w";
	setAttr ".wl[262].w[6]" 1;
	setAttr -s 1 ".wl[263].w";
	setAttr ".wl[263].w[6]" 1;
	setAttr -s 1 ".wl[264].w";
	setAttr ".wl[264].w[6]" 1;
	setAttr -s 1 ".wl[265].w";
	setAttr ".wl[265].w[6]" 1;
	setAttr -s 1 ".wl[266].w";
	setAttr ".wl[266].w[6]" 1;
	setAttr -s 3 ".wl[267].w";
	setAttr ".wl[267].w[8]" 0.636133;
	setAttr ".wl[267].w[6]" 0.3631503;
	setAttr ".wl[267].w[7]" 0.0007167039;
	setAttr -s 1 ".wl[268].w";
	setAttr ".wl[268].w[8]" 1;
	setAttr -s 2 ".wl[269].w";
	setAttr ".wl[269].w[8]" 0.8471656;
	setAttr ".wl[269].w[6]" 0.1528344;
	setAttr -s 1 ".wl[270].w";
	setAttr ".wl[270].w[8]" 1;
	setAttr -s 2 ".wl[271].w";
	setAttr ".wl[271].w[8]" 0.9993547;
	setAttr ".wl[271].w[6]" 0.0006453266;
	setAttr -s 3 ".wl[272].w";
	setAttr ".wl[272].w[6]" 0.8856883;
	setAttr ".wl[272].w[8]" 0.1118606;
	setAttr ".wl[272].w[7]" 0.002451113;
	setAttr -s 2 ".wl[273].w";
	setAttr ".wl[273].w[6]" 0.8654683;
	setAttr ".wl[273].w[8]" 0.1345318;
	setAttr -s 2 ".wl[274].w";
	setAttr ".wl[274].w[6]" 0.994729;
	setAttr ".wl[274].w[7]" 0.005271038;
	setAttr -s 1 ".wl[275].w";
	setAttr ".wl[275].w[6]" 1;
	setAttr -s 1 ".wl[276].w";
	setAttr ".wl[276].w[6]" 1;
	setAttr -s 1 ".wl[277].w";
	setAttr ".wl[277].w[6]" 1;
	setAttr -s 1 ".wl[278].w";
	setAttr ".wl[278].w[6]" 1;
	setAttr -s 1 ".wl[279].w";
	setAttr ".wl[279].w[6]" 1;
	setAttr -s 1 ".wl[280].w";
	setAttr ".wl[280].w[6]" 1;
	setAttr -s 1 ".wl[281].w";
	setAttr ".wl[281].w[6]" 1;
	setAttr -s 1 ".wl[282].w";
	setAttr ".wl[282].w[6]" 1;
	setAttr -s 1 ".wl[283].w";
	setAttr ".wl[283].w[6]" 1;
	setAttr -s 1 ".wl[284].w";
	setAttr ".wl[284].w[6]" 1;
	setAttr -s 1 ".wl[285].w";
	setAttr ".wl[285].w[6]" 1;
	setAttr -s 1 ".wl[286].w";
	setAttr ".wl[286].w[6]" 1;
	setAttr -s 1 ".wl[287].w";
	setAttr ".wl[287].w[6]" 1;
	setAttr -s 1 ".wl[288].w";
	setAttr ".wl[288].w[6]" 1;
	setAttr -s 1 ".wl[289].w";
	setAttr ".wl[289].w[6]" 1;
	setAttr -s 1 ".wl[290].w";
	setAttr ".wl[290].w[6]" 1;
	setAttr -s 1 ".wl[291].w";
	setAttr ".wl[291].w[6]" 1;
	setAttr -s 1 ".wl[292].w";
	setAttr ".wl[292].w[6]" 1;
	setAttr -s 1 ".wl[293].w";
	setAttr ".wl[293].w[6]" 1;
	setAttr -s 1 ".wl[294].w";
	setAttr ".wl[294].w[6]" 1;
	setAttr -s 1 ".wl[295].w";
	setAttr ".wl[295].w[6]" 1;
	setAttr -s 1 ".wl[296].w";
	setAttr ".wl[296].w[6]" 1;
	setAttr -s 1 ".wl[297].w";
	setAttr ".wl[297].w[6]" 1;
	setAttr -s 1 ".wl[298].w";
	setAttr ".wl[298].w[6]" 1;
	setAttr -s 1 ".wl[299].w";
	setAttr ".wl[299].w[6]" 1;
	setAttr -s 1 ".wl[300].w";
	setAttr ".wl[300].w[6]" 1;
	setAttr -s 1 ".wl[301].w";
	setAttr ".wl[301].w[6]" 1;
	setAttr -s 1 ".wl[302].w";
	setAttr ".wl[302].w[6]" 1;
	setAttr -s 1 ".wl[303].w";
	setAttr ".wl[303].w[6]" 1;
	setAttr -s 1 ".wl[304].w";
	setAttr ".wl[304].w[6]" 1;
	setAttr -s 1 ".wl[305].w";
	setAttr ".wl[305].w[6]" 1;
	setAttr -s 3 ".wl[306].w";
	setAttr ".wl[306].w[9]" 0.6964366;
	setAttr ".wl[306].w[13]" 0.1785288;
	setAttr ".wl[306].w[14]" 0.1250346;
	setAttr -s 3 ".wl[307].w";
	setAttr ".wl[307].w[14]" 0.8069903;
	setAttr ".wl[307].w[9]" 0.154478;
	setAttr ".wl[307].w[13]" 0.03853176;
	setAttr -s 3 ".wl[308].w";
	setAttr ".wl[308].w[14]" 0.7677537;
	setAttr ".wl[308].w[9]" 0.1570532;
	setAttr ".wl[308].w[13]" 0.07519316;
	setAttr -s 3 ".wl[309].w";
	setAttr ".wl[309].w[9]" 0.8057647;
	setAttr ".wl[309].w[13]" 0.1589569;
	setAttr ".wl[309].w[14]" 0.03527848;
	setAttr -s 3 ".wl[310].w";
	setAttr ".wl[310].w[14]" 0.8168874;
	setAttr ".wl[310].w[13]" 0.1050938;
	setAttr ".wl[310].w[9]" 0.07801875;
	setAttr -s 3 ".wl[311].w";
	setAttr ".wl[311].w[14]" 0.9550073;
	setAttr ".wl[311].w[13]" 0.03623441;
	setAttr ".wl[311].w[9]" 0.00875834;
	setAttr -s 3 ".wl[312].w";
	setAttr ".wl[312].w[9]" 0.4582397;
	setAttr ".wl[312].w[13]" 0.3147446;
	setAttr ".wl[312].w[14]" 0.2270158;
	setAttr -s 3 ".wl[313].w";
	setAttr ".wl[313].w[9]" 0.8832272;
	setAttr ".wl[313].w[13]" 0.08853719;
	setAttr ".wl[313].w[10]" 0.02823571;
	setAttr -s 3 ".wl[314].w";
	setAttr ".wl[314].w[9]" 0.8057647;
	setAttr ".wl[314].w[13]" 0.1589569;
	setAttr ".wl[314].w[14]" 0.03527848;
	setAttr -s 3 ".wl[315].w";
	setAttr ".wl[315].w[9]" 0.8536008;
	setAttr ".wl[315].w[13]" 0.1459182;
	setAttr ".wl[315].w[15]" 0.000481076;
	setAttr -s 3 ".wl[316].w";
	setAttr ".wl[316].w[9]" 0.8786641;
	setAttr ".wl[316].w[13]" 0.1171513;
	setAttr ".wl[316].w[10]" 0.004184599;
	setAttr -s 3 ".wl[317].w";
	setAttr ".wl[317].w[9]" 0.9084792;
	setAttr ".wl[317].w[10]" 0.05637308;
	setAttr ".wl[317].w[13]" 0.03514786;
	setAttr -s 3 ".wl[318].w";
	setAttr ".wl[318].w[9]" 0.9643668;
	setAttr ".wl[318].w[15]" 0.01817808;
	setAttr ".wl[318].w[10]" 0.01745514;
	setAttr -s 3 ".wl[319].w";
	setAttr ".wl[319].w[9]" 0.5500647;
	setAttr ".wl[319].w[10]" 0.40845;
	setAttr ".wl[319].w[11]" 0.04148534;
	setAttr -s 3 ".wl[320].w";
	setAttr ".wl[320].w[11]" 0.5533186;
	setAttr ".wl[320].w[10]" 0.4447941;
	setAttr ".wl[320].w[9]" 0.001887321;
	setAttr -s 3 ".wl[321].w";
	setAttr ".wl[321].w[11]" 0.5826809;
	setAttr ".wl[321].w[10]" 0.3711915;
	setAttr ".wl[321].w[9]" 0.0461275;
	setAttr -s 3 ".wl[322].w";
	setAttr ".wl[322].w[11]" 0.6021942;
	setAttr ".wl[322].w[10]" 0.3911084;
	setAttr ".wl[322].w[9]" 0.006697411;
	setAttr -s 2 ".wl[323].w";
	setAttr ".wl[323].w[11]" 0.5785979;
	setAttr ".wl[323].w[10]" 0.4214022;
	setAttr -s 3 ".wl[324].w";
	setAttr ".wl[324].w[9]" 0.8786641;
	setAttr ".wl[324].w[13]" 0.1171513;
	setAttr ".wl[324].w[10]" 0.004184599;
	setAttr -s 3 ".wl[325].w";
	setAttr ".wl[325].w[9]" 0.9288688;
	setAttr ".wl[325].w[13]" 0.07093675;
	setAttr ".wl[325].w[10]" 0.0001945683;
	setAttr -s 3 ".wl[326].w";
	setAttr ".wl[326].w[9]" 0.9084792;
	setAttr ".wl[326].w[10]" 0.05637308;
	setAttr ".wl[326].w[13]" 0.03514786;
	setAttr -s 3 ".wl[327].w";
	setAttr ".wl[327].w[9]" 0.3753502;
	setAttr ".wl[327].w[14]" 0.331714;
	setAttr ".wl[327].w[13]" 0.2929358;
	setAttr -s 3 ".wl[328].w";
	setAttr ".wl[328].w[9]" 0.4582397;
	setAttr ".wl[328].w[13]" 0.3147446;
	setAttr ".wl[328].w[14]" 0.2270158;
	setAttr -s 3 ".wl[329].w";
	setAttr ".wl[329].w[14]" 0.9670147;
	setAttr ".wl[329].w[13]" 0.03217596;
	setAttr ".wl[329].w[9]" 0.000809312;
	setAttr -s 3 ".wl[330].w";
	setAttr ".wl[330].w[14]" 0.9550073;
	setAttr ".wl[330].w[13]" 0.03623441;
	setAttr ".wl[330].w[9]" 0.00875834;
	setAttr -s 3 ".wl[331].w";
	setAttr ".wl[331].w[14]" 0.965869;
	setAttr ".wl[331].w[13]" 0.03370658;
	setAttr ".wl[331].w[9]" 0.0004243352;
	setAttr -s 3 ".wl[332].w";
	setAttr ".wl[332].w[14]" 0.3574236;
	setAttr ".wl[332].w[9]" 0.3463027;
	setAttr ".wl[332].w[13]" 0.2962736;
	setAttr -s 3 ".wl[333].w";
	setAttr ".wl[333].w[14]" 0.3574236;
	setAttr ".wl[333].w[9]" 0.3463027;
	setAttr ".wl[333].w[13]" 0.2962736;
	setAttr -s 2 ".wl[334].w";
	setAttr ".wl[334].w[9]" 0.7951357;
	setAttr ".wl[334].w[13]" 0.2048643;
	setAttr -s 3 ".wl[335].w";
	setAttr ".wl[335].w[9]" 0.9216899;
	setAttr ".wl[335].w[10]" 0.06210121;
	setAttr ".wl[335].w[13]" 0.01620893;
	setAttr -s 2 ".wl[336].w";
	setAttr ".wl[336].w[10]" 0.5235745;
	setAttr ".wl[336].w[9]" 0.4764254;
	setAttr -s 3 ".wl[337].w";
	setAttr ".wl[337].w[0]" 0.7813205;
	setAttr ".wl[337].w[1]" 0.1824452;
	setAttr ".wl[337].w[2]" 0.03623432;
	setAttr -s 2 ".wl[338].w";
	setAttr ".wl[338].w[0]" 0.7000042;
	setAttr ".wl[338].w[1]" 0.2999958;
	setAttr -s 1 ".wl[339].w";
	setAttr ".wl[339].w[16]" 1;
	setAttr -s 1 ".wl[340].w";
	setAttr ".wl[340].w[16]" 1;
	setAttr -s 2 ".wl[341].w";
	setAttr ".wl[341].w[5]" 0.54;
	setAttr ".wl[341].w[16]" 0.46;
	setAttr -s 2 ".wl[342].w";
	setAttr ".wl[342].w[0]" 0.6415991;
	setAttr ".wl[342].w[1]" 0.3584009;
	setAttr -s 2 ".wl[343].w";
	setAttr ".wl[343].w[0]" 0.8708194;
	setAttr ".wl[343].w[1]" 0.1291807;
	setAttr -s 1 ".wl[344].w";
	setAttr ".wl[344].w[5]" 1;
	setAttr -s 1 ".wl[345].w";
	setAttr ".wl[345].w[17]" 1;
	setAttr -s 2 ".wl[346].w";
	setAttr ".wl[346].w[17]" 0.68;
	setAttr ".wl[346].w[18]" 0.32;
	setAttr -s 2 ".wl[347].w";
	setAttr ".wl[347].w[17]" 0.6894622;
	setAttr ".wl[347].w[16]" 0.3105378;
	setAttr -s 3 ".wl[348].w";
	setAttr ".wl[348].w[17]" 0.5137707;
	setAttr ".wl[348].w[18]" 0.28;
	setAttr ".wl[348].w[16]" 0.2062294;
	setAttr -s 2 ".wl[349].w";
	setAttr ".wl[349].w[16]" 0.5;
	setAttr ".wl[349].w[5]" 0.5;
	setAttr -s 2 ".wl[350].w";
	setAttr ".wl[350].w[17]" 0.5599999;
	setAttr ".wl[350].w[18]" 0.44;
	setAttr -s 2 ".wl[351].w";
	setAttr ".wl[351].w[5]" 0.9;
	setAttr ".wl[351].w[17]" 0.09999998;
	setAttr -s 2 ".wl[352].w";
	setAttr ".wl[352].w[18]" 0.82;
	setAttr ".wl[352].w[17]" 0.18;
	setAttr -s 1 ".wl[353].w";
	setAttr ".wl[353].w[17]" 1;
	setAttr -s 2 ".wl[354].w";
	setAttr ".wl[354].w[17]" 0.78;
	setAttr ".wl[354].w[18]" 0.22;
	setAttr -s 2 ".wl[355].w";
	setAttr ".wl[355].w[17]" 0.56;
	setAttr ".wl[355].w[18]" 0.44;
	setAttr -s 2 ".wl[356].w";
	setAttr ".wl[356].w[18]" 0.76;
	setAttr ".wl[356].w[17]" 0.24;
	setAttr -s 2 ".wl[357].w";
	setAttr ".wl[357].w[19]" 0.62;
	setAttr ".wl[357].w[17]" 0.38;
	setAttr -s 3 ".wl[358].w";
	setAttr ".wl[358].w[19]" 0.4412555;
	setAttr ".wl[358].w[17]" 0.3587444;
	setAttr ".wl[358].w[20]" 0.2;
	setAttr -s 2 ".wl[359].w";
	setAttr ".wl[359].w[19]" 0.6;
	setAttr ".wl[359].w[20]" 0.4;
	setAttr -s 2 ".wl[360].w";
	setAttr ".wl[360].w[20]" 0.7;
	setAttr ".wl[360].w[19]" 0.3;
	setAttr -s 1 ".wl[361].w";
	setAttr ".wl[361].w[19]" 1;
	setAttr -s 2 ".wl[362].w";
	setAttr ".wl[362].w[19]" 0.8;
	setAttr ".wl[362].w[20]" 0.2;
	setAttr -s 2 ".wl[363].w";
	setAttr ".wl[363].w[19]" 0.62;
	setAttr ".wl[363].w[20]" 0.38;
	setAttr -s 2 ".wl[364].w";
	setAttr ".wl[364].w[20]" 0.66;
	setAttr ".wl[364].w[19]" 0.34;
	setAttr -s 2 ".wl[365].w";
	setAttr ".wl[365].w[18]" 0.94;
	setAttr ".wl[365].w[17]" 0.06;
	setAttr -s 1 ".wl[366].w";
	setAttr ".wl[366].w[5]" 1;
	setAttr -s 2 ".wl[367].w";
	setAttr ".wl[367].w[5]" 0.9994642;
	setAttr ".wl[367].w[1]" 0.0005357815;
	setAttr -s 1 ".wl[368].w";
	setAttr ".wl[368].w[0]" 1;
	setAttr -s 3 ".wl[369].w";
	setAttr ".wl[369].w[20]" 0.686;
	setAttr ".wl[369].w[18]" 0.3;
	setAttr ".wl[369].w[19]" 0.014;
	setAttr -s 2 ".wl[370].w";
	setAttr ".wl[370].w[20]" 0.96;
	setAttr ".wl[370].w[19]" 0.03999998;
	setAttr -s 1 ".wl[371].w";
	setAttr ".wl[371].w[5]" 1;
	setAttr -s 1 ".wl[372].w";
	setAttr ".wl[372].w[0]" 1;
	setAttr -s 2 ".wl[373].w";
	setAttr ".wl[373].w[18]" 0.92;
	setAttr ".wl[373].w[16]" 0.08;
	setAttr -s 1 ".wl[374].w";
	setAttr ".wl[374].w[5]" 1;
	setAttr -s 1 ".wl[375].w";
	setAttr ".wl[375].w[18]" 1;
	setAttr -s 2 ".wl[376].w";
	setAttr ".wl[376].w[18]" 0.96;
	setAttr ".wl[376].w[17]" 0.04;
	setAttr -s 2 ".wl[377].w";
	setAttr ".wl[377].w[20]" 0.72;
	setAttr ".wl[377].w[18]" 0.28;
	setAttr -s 1 ".wl[378].w";
	setAttr ".wl[378].w[20]" 1;
	setAttr -s 2 ".wl[379].w";
	setAttr ".wl[379].w[4]" 0.6898402;
	setAttr ".wl[379].w[0]" 0.3101598;
	setAttr -s 2 ".wl[380].w";
	setAttr ".wl[380].w[4]" 0.6534504;
	setAttr ".wl[380].w[0]" 0.3465496;
	setAttr -s 2 ".wl[381].w";
	setAttr ".wl[381].w[4]" 0.9212674;
	setAttr ".wl[381].w[0]" 0.07873255;
	setAttr -s 2 ".wl[382].w";
	setAttr ".wl[382].w[4]" 0.933769;
	setAttr ".wl[382].w[0]" 0.06623094;
	setAttr -s 2 ".wl[383].w";
	setAttr ".wl[383].w[4]" 0.9343715;
	setAttr ".wl[383].w[0]" 0.06562854;
	setAttr -s 2 ".wl[384].w";
	setAttr ".wl[384].w[4]" 0.6244793;
	setAttr ".wl[384].w[0]" 0.3755207;
	setAttr -s 2 ".wl[385].w";
	setAttr ".wl[385].w[0]" 0.8203217;
	setAttr ".wl[385].w[4]" 0.1796784;
	setAttr -s 2 ".wl[386].w";
	setAttr ".wl[386].w[0]" 0.5965537;
	setAttr ".wl[386].w[4]" 0.4034463;
	setAttr -s 2 ".wl[387].w";
	setAttr ".wl[387].w[0]" 0.7663428;
	setAttr ".wl[387].w[4]" 0.2336572;
	setAttr -s 2 ".wl[388].w";
	setAttr ".wl[388].w[4]" 0.7007336;
	setAttr ".wl[388].w[0]" 0.2992664;
	setAttr -s 3 ".wl[389].w";
	setAttr ".wl[389].w[4]" 0.4801184;
	setAttr ".wl[389].w[22]" 0.3987602;
	setAttr ".wl[389].w[0]" 0.1211215;
	setAttr -s 2 ".wl[390].w";
	setAttr ".wl[390].w[4]" 0.6085414;
	setAttr ".wl[390].w[0]" 0.3914586;
	setAttr -s 2 ".wl[391].w";
	setAttr ".wl[391].w[4]" 0.9479094;
	setAttr ".wl[391].w[0]" 0.05209067;
	setAttr -s 2 ".wl[392].w";
	setAttr ".wl[392].w[4]" 0.9456252;
	setAttr ".wl[392].w[0]" 0.05437482;
	setAttr -s 2 ".wl[393].w";
	setAttr ".wl[393].w[0]" 0.7137654;
	setAttr ".wl[393].w[4]" 0.2862346;
	setAttr -s 1 ".wl[394].w";
	setAttr ".wl[394].w[0]" 1;
	setAttr -s 2 ".wl[395].w";
	setAttr ".wl[395].w[0]" 0.8131757;
	setAttr ".wl[395].w[4]" 0.1868242;
	setAttr -s 1 ".wl[396].w";
	setAttr ".wl[396].w[0]" 1;
	setAttr -s 2 ".wl[397].w";
	setAttr ".wl[397].w[0]" 0.8447731;
	setAttr ".wl[397].w[4]" 0.155227;
	setAttr -s 2 ".wl[398].w";
	setAttr ".wl[398].w[0]" 0.773568;
	setAttr ".wl[398].w[4]" 0.226432;
	setAttr -s 2 ".wl[399].w";
	setAttr ".wl[399].w[0]" 0.9989803;
	setAttr ".wl[399].w[1]" 0.001019734;
	setAttr -s 2 ".wl[400].w";
	setAttr ".wl[400].w[0]" 0.999855;
	setAttr ".wl[400].w[4]" 0.0001449993;
	setAttr -s 3 ".wl[401].w";
	setAttr ".wl[401].w[0]" 0.9266044;
	setAttr ".wl[401].w[4]" 0.07196712;
	setAttr ".wl[401].w[2]" 0.001428417;
	setAttr -s 3 ".wl[402].w";
	setAttr ".wl[402].w[0]" 0.946496;
	setAttr ".wl[402].w[4]" 0.05194984;
	setAttr ".wl[402].w[2]" 0.001554311;
	setAttr -s 2 ".wl[403].w";
	setAttr ".wl[403].w[0]" 0.5858436;
	setAttr ".wl[403].w[4]" 0.4141564;
	setAttr -s 1 ".wl[404].w";
	setAttr ".wl[404].w[4]" 1;
	setAttr -s 2 ".wl[405].w";
	setAttr ".wl[405].w[4]" 0.8331701;
	setAttr ".wl[405].w[0]" 0.1668299;
	setAttr -s 3 ".wl[406].w";
	setAttr ".wl[406].w[4]" 0.7358258;
	setAttr ".wl[406].w[1]" 0.140508;
	setAttr ".wl[406].w[0]" 0.1236662;
	setAttr -s 2 ".wl[407].w";
	setAttr ".wl[407].w[4]" 0.9046999;
	setAttr ".wl[407].w[0]" 0.09530009;
	setAttr -s 1 ".wl[408].w";
	setAttr ".wl[408].w[4]" 1;
	setAttr -s 1 ".wl[409].w";
	setAttr ".wl[409].w[4]" 1;
	setAttr -s 2 ".wl[410].w";
	setAttr ".wl[410].w[4]" 0.9756504;
	setAttr ".wl[410].w[0]" 0.02434956;
	setAttr -s 1 ".wl[411].w";
	setAttr ".wl[411].w[4]" 1;
	setAttr -s 1 ".wl[412].w";
	setAttr ".wl[412].w[4]" 1;
	setAttr -s 2 ".wl[413].w";
	setAttr ".wl[413].w[4]" 0.9866534;
	setAttr ".wl[413].w[0]" 0.01334659;
	setAttr -s 2 ".wl[414].w";
	setAttr ".wl[414].w[4]" 0.9719223;
	setAttr ".wl[414].w[0]" 0.02807772;
	setAttr -s 1 ".wl[415].w";
	setAttr ".wl[415].w[4]" 1;
	setAttr -s 1 ".wl[416].w";
	setAttr ".wl[416].w[4]" 1;
	setAttr -s 2 ".wl[417].w";
	setAttr ".wl[417].w[4]" 0.946177;
	setAttr ".wl[417].w[0]" 0.053823;
	setAttr -s 2 ".wl[418].w";
	setAttr ".wl[418].w[4]" 0.9046999;
	setAttr ".wl[418].w[0]" 0.09530009;
	setAttr -s 1 ".wl[419].w";
	setAttr ".wl[419].w[4]" 1;
	setAttr -s 2 ".wl[420].w";
	setAttr ".wl[420].w[4]" 0.9049901;
	setAttr ".wl[420].w[0]" 0.09500991;
	setAttr -s 3 ".wl[421].w";
	setAttr ".wl[421].w[4]" 0.7358258;
	setAttr ".wl[421].w[1]" 0.140508;
	setAttr ".wl[421].w[0]" 0.1236662;
	setAttr -s 3 ".wl[422].w";
	setAttr ".wl[422].w[0]" 0.7149951;
	setAttr ".wl[422].w[4]" 0.2798978;
	setAttr ".wl[422].w[2]" 0.005107077;
	setAttr -s 3 ".wl[423].w";
	setAttr ".wl[423].w[0]" 0.946496;
	setAttr ".wl[423].w[4]" 0.05194984;
	setAttr ".wl[423].w[2]" 0.001554311;
	setAttr -s 2 ".wl[424].w";
	setAttr ".wl[424].w[4]" 0.9994791;
	setAttr ".wl[424].w[21]" 0.0005208992;
	setAttr -s 2 ".wl[425].w";
	setAttr ".wl[425].w[4]" 0.9069431;
	setAttr ".wl[425].w[21]" 0.09305691;
	setAttr -s 2 ".wl[426].w";
	setAttr ".wl[426].w[4]" 0.874151;
	setAttr ".wl[426].w[21]" 0.125849;
	setAttr -s 2 ".wl[427].w";
	setAttr ".wl[427].w[21]" 0.5446157;
	setAttr ".wl[427].w[4]" 0.4553843;
	setAttr -s 2 ".wl[428].w";
	setAttr ".wl[428].w[4]" 0.900577;
	setAttr ".wl[428].w[21]" 0.09942298;
	setAttr -s 2 ".wl[429].w";
	setAttr ".wl[429].w[21]" 0.5451044;
	setAttr ".wl[429].w[4]" 0.4548956;
	setAttr -s 2 ".wl[430].w";
	setAttr ".wl[430].w[21]" 0.5514522;
	setAttr ".wl[430].w[4]" 0.4485478;
	setAttr -s 2 ".wl[431].w";
	setAttr ".wl[431].w[4]" 0.8964417;
	setAttr ".wl[431].w[21]" 0.1035583;
	setAttr -s 2 ".wl[432].w";
	setAttr ".wl[432].w[4]" 0.8701774;
	setAttr ".wl[432].w[21]" 0.1298226;
	setAttr -s 2 ".wl[433].w";
	setAttr ".wl[433].w[4]" 0.9695292;
	setAttr ".wl[433].w[21]" 0.03047085;
	setAttr -s 1 ".wl[434].w";
	setAttr ".wl[434].w[4]" 1;
	setAttr -s 2 ".wl[435].w";
	setAttr ".wl[435].w[4]" 0.8;
	setAttr ".wl[435].w[21]" 0.2;
	setAttr -s 2 ".wl[436].w";
	setAttr ".wl[436].w[4]" 0.874151;
	setAttr ".wl[436].w[21]" 0.125849;
	setAttr -s 2 ".wl[437].w";
	setAttr ".wl[437].w[4]" 0.9994791;
	setAttr ".wl[437].w[21]" 0.0005208992;
	setAttr -s 2 ".wl[438].w";
	setAttr ".wl[438].w[21]" 0.6090078;
	setAttr ".wl[438].w[4]" 0.3909922;
	setAttr -s 2 ".wl[439].w";
	setAttr ".wl[439].w[21]" 0.6128421;
	setAttr ".wl[439].w[4]" 0.3871579;
	setAttr -s 2 ".wl[440].w";
	setAttr ".wl[440].w[21]" 0.9365585;
	setAttr ".wl[440].w[4]" 0.06344152;
	setAttr -s 2 ".wl[441].w";
	setAttr ".wl[441].w[21]" 0.8171901;
	setAttr ".wl[441].w[4]" 0.1828099;
	setAttr -s 2 ".wl[442].w";
	setAttr ".wl[442].w[21]" 0.7189458;
	setAttr ".wl[442].w[4]" 0.2810542;
	setAttr -s 1 ".wl[443].w";
	setAttr ".wl[443].w[21]" 1;
	setAttr -s 2 ".wl[444].w";
	setAttr ".wl[444].w[21]" 0.6196927;
	setAttr ".wl[444].w[4]" 0.3803073;
	setAttr -s 2 ".wl[445].w";
	setAttr ".wl[445].w[21]" 0.8684993;
	setAttr ".wl[445].w[4]" 0.1315006;
	setAttr -s 2 ".wl[446].w";
	setAttr ".wl[446].w[21]" 0.6658781;
	setAttr ".wl[446].w[4]" 0.3341219;
	setAttr -s 2 ".wl[447].w";
	setAttr ".wl[447].w[21]" 0.6658781;
	setAttr ".wl[447].w[4]" 0.3341219;
	setAttr -s 1 ".wl[448].w";
	setAttr ".wl[448].w[21]" 1;
	setAttr -s 1 ".wl[449].w";
	setAttr ".wl[449].w[21]" 1;
	setAttr -s 1 ".wl[450].w";
	setAttr ".wl[450].w[21]" 1;
	setAttr -s 1 ".wl[451].w";
	setAttr ".wl[451].w[21]" 1;
	setAttr -s 1 ".wl[452].w";
	setAttr ".wl[452].w[21]" 1;
	setAttr -s 1 ".wl[453].w";
	setAttr ".wl[453].w[21]" 1;
	setAttr -s 1 ".wl[454].w";
	setAttr ".wl[454].w[21]" 1;
	setAttr -s 1 ".wl[455].w";
	setAttr ".wl[455].w[21]" 1;
	setAttr -s 1 ".wl[456].w";
	setAttr ".wl[456].w[21]" 1;
	setAttr -s 1 ".wl[457].w";
	setAttr ".wl[457].w[21]" 1;
	setAttr -s 1 ".wl[458].w";
	setAttr ".wl[458].w[21]" 1;
	setAttr -s 1 ".wl[459].w";
	setAttr ".wl[459].w[21]" 1;
	setAttr -s 1 ".wl[460].w";
	setAttr ".wl[460].w[21]" 1;
	setAttr -s 1 ".wl[461].w";
	setAttr ".wl[461].w[21]" 1;
	setAttr -s 1 ".wl[462].w";
	setAttr ".wl[462].w[21]" 1;
	setAttr -s 2 ".wl[463].w";
	setAttr ".wl[463].w[21]" 0.9340276;
	setAttr ".wl[463].w[7]" 0.06597248;
	setAttr -s 1 ".wl[464].w";
	setAttr ".wl[464].w[21]" 1;
	setAttr -s 2 ".wl[465].w";
	setAttr ".wl[465].w[21]" 0.8938984;
	setAttr ".wl[465].w[7]" 0.1061016;
	setAttr -s 2 ".wl[466].w";
	setAttr ".wl[466].w[21]" 0.9650317;
	setAttr ".wl[466].w[7]" 0.03496833;
	setAttr -s 1 ".wl[467].w";
	setAttr ".wl[467].w[21]" 1;
	setAttr -s 1 ".wl[468].w";
	setAttr ".wl[468].w[21]" 1;
	setAttr -s 1 ".wl[469].w";
	setAttr ".wl[469].w[21]" 1;
	setAttr -s 1 ".wl[470].w";
	setAttr ".wl[470].w[21]" 1;
	setAttr -s 1 ".wl[471].w";
	setAttr ".wl[471].w[21]" 1;
	setAttr -s 1 ".wl[472].w";
	setAttr ".wl[472].w[21]" 1;
	setAttr -s 1 ".wl[473].w";
	setAttr ".wl[473].w[21]" 1;
	setAttr -s 1 ".wl[474].w";
	setAttr ".wl[474].w[21]" 1;
	setAttr -s 1 ".wl[475].w";
	setAttr ".wl[475].w[21]" 1;
	setAttr -s 2 ".wl[476].w";
	setAttr ".wl[476].w[21]" 0.538581;
	setAttr ".wl[476].w[7]" 0.461419;
	setAttr -s 2 ".wl[477].w";
	setAttr ".wl[477].w[21]" 0.8718266;
	setAttr ".wl[477].w[7]" 0.1281734;
	setAttr -s 2 ".wl[478].w";
	setAttr ".wl[478].w[21]" 0.8111409;
	setAttr ".wl[478].w[7]" 0.1888591;
	setAttr -s 3 ".wl[479].w";
	setAttr ".wl[479].w[21]" 0.6185507;
	setAttr ".wl[479].w[7]" 0.3806313;
	setAttr ".wl[479].w[6]" 0.0008179725;
	setAttr -s 3 ".wl[480].w";
	setAttr ".wl[480].w[21]" 0.6185507;
	setAttr ".wl[480].w[7]" 0.3806313;
	setAttr ".wl[480].w[6]" 0.0008179725;
	setAttr -s 3 ".wl[481].w";
	setAttr ".wl[481].w[21]" 0.5959446;
	setAttr ".wl[481].w[7]" 0.4036717;
	setAttr ".wl[481].w[6]" 0.0003836759;
	setAttr -s 2 ".wl[482].w";
	setAttr ".wl[482].w[21]" 0.6658454;
	setAttr ".wl[482].w[7]" 0.3341546;
	setAttr -s 3 ".wl[483].w";
	setAttr ".wl[483].w[0]" 0.7408457;
	setAttr ".wl[483].w[4]" 0.2515441;
	setAttr ".wl[483].w[2]" 0.007610158;
	setAttr -s 3 ".wl[484].w";
	setAttr ".wl[484].w[0]" 0.9946765;
	setAttr ".wl[484].w[2]" 0.003683615;
	setAttr ".wl[484].w[4]" 0.001639784;
	setAttr -s 3 ".wl[485].w";
	setAttr ".wl[485].w[0]" 0.7813205;
	setAttr ".wl[485].w[4]" 0.1824452;
	setAttr ".wl[485].w[2]" 0.03623432;
	setAttr -s 2 ".wl[486].w";
	setAttr ".wl[486].w[0]" 0.6041744;
	setAttr ".wl[486].w[2]" 0.3958256;
	setAttr -s 2 ".wl[487].w";
	setAttr ".wl[487].w[2]" 0.7166801;
	setAttr ".wl[487].w[0]" 0.2833199;
	setAttr -s 2 ".wl[488].w";
	setAttr ".wl[488].w[0]" 0.7000042;
	setAttr ".wl[488].w[4]" 0.2999958;
	setAttr -s 3 ".wl[489].w";
	setAttr ".wl[489].w[0]" 0.7036212;
	setAttr ".wl[489].w[4]" 0.182813;
	setAttr ".wl[489].w[2]" 0.1135658;
	setAttr -s 3 ".wl[490].w";
	setAttr ".wl[490].w[2]" 0.3963817;
	setAttr ".wl[490].w[0]" 0.3304221;
	setAttr ".wl[490].w[12]" 0.2731962;
	setAttr -s 3 ".wl[491].w";
	setAttr ".wl[491].w[2]" 0.4281893;
	setAttr ".wl[491].w[0]" 0.3833962;
	setAttr ".wl[491].w[12]" 0.1884145;
	setAttr -s 2 ".wl[492].w";
	setAttr ".wl[492].w[0]" 0.747767;
	setAttr ".wl[492].w[2]" 0.252233;
	setAttr -s 3 ".wl[493].w";
	setAttr ".wl[493].w[2]" 0.3817513;
	setAttr ".wl[493].w[12]" 0.3225715;
	setAttr ".wl[493].w[0]" 0.2956772;
	setAttr -s 3 ".wl[494].w";
	setAttr ".wl[494].w[2]" 0.4753192;
	setAttr ".wl[494].w[12]" 0.3154007;
	setAttr ".wl[494].w[9]" 0.2092801;
	setAttr -s 3 ".wl[495].w";
	setAttr ".wl[495].w[9]" 0.4165206;
	setAttr ".wl[495].w[12]" 0.3032078;
	setAttr ".wl[495].w[2]" 0.2802716;
	setAttr -s 3 ".wl[496].w";
	setAttr ".wl[496].w[12]" 0.3538751;
	setAttr ".wl[496].w[2]" 0.353516;
	setAttr ".wl[496].w[9]" 0.2926089;
	setAttr -s 2 ".wl[497].w";
	setAttr ".wl[497].w[9]" 0.6422058;
	setAttr ".wl[497].w[12]" 0.3577942;
	setAttr -s 3 ".wl[498].w";
	setAttr ".wl[498].w[9]" 0.6458685;
	setAttr ".wl[498].w[12]" 0.3532304;
	setAttr ".wl[498].w[2]" 0.0009010609;
	setAttr -s 3 ".wl[499].w";
	setAttr ".wl[499].w[9]" 0.5344091;
	setAttr ".wl[499].w[12]" 0.3679413;
	setAttr ".wl[499].w[2]" 0.09764969;
	setAttr -s 2 ".wl[500].w";
	setAttr ".wl[500].w[9]" 0.6216236;
	setAttr ".wl[500].w[12]" 0.3783765;
	setAttr -s 3 ".wl[501].w";
	setAttr ".wl[501].w[9]" 0.5546184;
	setAttr ".wl[501].w[12]" 0.4210339;
	setAttr ".wl[501].w[2]" 0.02434768;
	setAttr -s 3 ".wl[502].w";
	setAttr ".wl[502].w[2]" 0.6495084;
	setAttr ".wl[502].w[12]" 0.2361149;
	setAttr ".wl[502].w[9]" 0.1143767;
	setAttr -s 3 ".wl[503].w";
	setAttr ".wl[503].w[2]" 0.6733572;
	setAttr ".wl[503].w[12]" 0.1957479;
	setAttr ".wl[503].w[9]" 0.1308949;
	setAttr -s 3 ".wl[504].w";
	setAttr ".wl[504].w[12]" 0.4601645;
	setAttr ".wl[504].w[9]" 0.4601645;
	setAttr ".wl[504].w[2]" 0.07967105;
	setAttr -s 3 ".wl[505].w";
	setAttr ".wl[505].w[0]" 0.5090395;
	setAttr ".wl[505].w[2]" 0.2619981;
	setAttr ".wl[505].w[12]" 0.2289625;
	setAttr -s 3 ".wl[506].w";
	setAttr ".wl[506].w[0]" 0.3861488;
	setAttr ".wl[506].w[2]" 0.3248605;
	setAttr ".wl[506].w[12]" 0.2889908;
	setAttr -s 2 ".wl[507].w";
	setAttr ".wl[507].w[0]" 0.7387445;
	setAttr ".wl[507].w[4]" 0.2612556;
	setAttr -s 2 ".wl[508].w";
	setAttr ".wl[508].w[0]" 0.5702819;
	setAttr ".wl[508].w[4]" 0.4297181;
	setAttr -s 2 ".wl[509].w";
	setAttr ".wl[509].w[0]" 0.5255495;
	setAttr ".wl[509].w[4]" 0.4744505;
	setAttr -s 2 ".wl[510].w";
	setAttr ".wl[510].w[0]" 0.96248;
	setAttr ".wl[510].w[4]" 0.03751999;
	setAttr -s 1 ".wl[511].w";
	setAttr ".wl[511].w[0]" 1;
	setAttr -s 2 ".wl[512].w";
	setAttr ".wl[512].w[0]" 0.8214183;
	setAttr ".wl[512].w[2]" 0.1785817;
	setAttr -s 3 ".wl[513].w";
	setAttr ".wl[513].w[0]" 0.5326077;
	setAttr ".wl[513].w[2]" 0.3573656;
	setAttr ".wl[513].w[12]" 0.1100266;
	setAttr -s 3 ".wl[514].w";
	setAttr ".wl[514].w[0]" 0.6138833;
	setAttr ".wl[514].w[2]" 0.3268898;
	setAttr ".wl[514].w[12]" 0.05922696;
	setAttr -s 2 ".wl[515].w";
	setAttr ".wl[515].w[0]" 0.691714;
	setAttr ".wl[515].w[2]" 0.308286;
	setAttr -s 1 ".wl[516].w";
	setAttr ".wl[516].w[0]" 1;
	setAttr -s 1 ".wl[517].w";
	setAttr ".wl[517].w[0]" 1;
	setAttr -s 1 ".wl[518].w";
	setAttr ".wl[518].w[0]" 1;
	setAttr -s 2 ".wl[519].w";
	setAttr ".wl[519].w[0]" 0.7920493;
	setAttr ".wl[519].w[4]" 0.2079507;
	setAttr -s 3 ".wl[520].w";
	setAttr ".wl[520].w[0]" 0.7149951;
	setAttr ".wl[520].w[4]" 0.2798978;
	setAttr ".wl[520].w[2]" 0.005107077;
	setAttr -s 3 ".wl[521].w";
	setAttr ".wl[521].w[0]" 0.8042763;
	setAttr ".wl[521].w[1]" 0.1885659;
	setAttr ".wl[521].w[2]" 0.007157913;
	setAttr -s 3 ".wl[522].w";
	setAttr ".wl[522].w[0]" 0.9266044;
	setAttr ".wl[522].w[4]" 0.07196712;
	setAttr ".wl[522].w[2]" 0.001428417;
	setAttr -s 3 ".wl[523].w";
	setAttr ".wl[523].w[0]" 0.946496;
	setAttr ".wl[523].w[4]" 0.05194984;
	setAttr ".wl[523].w[2]" 0.001554311;
	setAttr -s 2 ".wl[524].w";
	setAttr ".wl[524].w[4]" 0.6534504;
	setAttr ".wl[524].w[0]" 0.3465496;
	setAttr -s 2 ".wl[525].w";
	setAttr ".wl[525].w[0]" 0.8203217;
	setAttr ".wl[525].w[4]" 0.1796784;
	setAttr -s 2 ".wl[526].w";
	setAttr ".wl[526].w[21]" 0.538581;
	setAttr ".wl[526].w[7]" 0.461419;
	setAttr -s 2 ".wl[527].w";
	setAttr ".wl[527].w[21]" 0.6658454;
	setAttr ".wl[527].w[7]" 0.3341546;
	setAttr -s 1 ".wl[528].w";
	setAttr ".wl[528].w[7]" 1;
	setAttr -s 2 ".wl[529].w";
	setAttr ".wl[529].w[7]" 0.9074266;
	setAttr ".wl[529].w[21]" 0.0925734;
	setAttr -s 3 ".wl[530].w";
	setAttr ".wl[530].w[7]" 0.8048857;
	setAttr ".wl[530].w[21]" 0.1915717;
	setAttr ".wl[530].w[6]" 0.003542679;
	setAttr -s 3 ".wl[531].w";
	setAttr ".wl[531].w[21]" 0.5959446;
	setAttr ".wl[531].w[7]" 0.4036717;
	setAttr ".wl[531].w[6]" 0.0003836759;
	setAttr -s 3 ".wl[532].w";
	setAttr ".wl[532].w[21]" 0.6013371;
	setAttr ".wl[532].w[7]" 0.3960975;
	setAttr ".wl[532].w[6]" 0.002565446;
	setAttr -s 3 ".wl[533].w";
	setAttr ".wl[533].w[21]" 0.6185507;
	setAttr ".wl[533].w[7]" 0.3806313;
	setAttr ".wl[533].w[6]" 0.0008179725;
	setAttr -s 2 ".wl[534].w";
	setAttr ".wl[534].w[7]" 0.868618;
	setAttr ".wl[534].w[21]" 0.131382;
	setAttr -s 2 ".wl[535].w";
	setAttr ".wl[535].w[21]" 0.8111409;
	setAttr ".wl[535].w[7]" 0.1888591;
	setAttr -s 1 ".wl[536].w";
	setAttr ".wl[536].w[7]" 1;
	setAttr -s 2 ".wl[537].w";
	setAttr ".wl[537].w[21]" 0.8718266;
	setAttr ".wl[537].w[7]" 0.1281734;
	setAttr -s 2 ".wl[538].w";
	setAttr ".wl[538].w[7]" 0.868618;
	setAttr ".wl[538].w[21]" 0.131382;
	setAttr -s 2 ".wl[539].w";
	setAttr ".wl[539].w[21]" 0.8111409;
	setAttr ".wl[539].w[7]" 0.1888591;
	setAttr -s 1 ".wl[540].w";
	setAttr ".wl[540].w[7]" 1;
	setAttr -s 1 ".wl[541].w";
	setAttr ".wl[541].w[7]" 1;
	setAttr -s 2 ".wl[542].w";
	setAttr ".wl[542].w[7]" 0.9133865;
	setAttr ".wl[542].w[23]" 0.08661351;
	setAttr -s 2 ".wl[543].w";
	setAttr ".wl[543].w[7]" 0.9354781;
	setAttr ".wl[543].w[23]" 0.06452194;
	setAttr -s 1 ".wl[544].w";
	setAttr ".wl[544].w[7]" 1;
	setAttr -s 1 ".wl[545].w";
	setAttr ".wl[545].w[7]" 1;
	setAttr -s 2 ".wl[546].w";
	setAttr ".wl[546].w[23]" 0.5577467;
	setAttr ".wl[546].w[7]" 0.4422533;
	setAttr -s 2 ".wl[547].w";
	setAttr ".wl[547].w[7]" 0.994729;
	setAttr ".wl[547].w[6]" 0.005271038;
	setAttr -s 2 ".wl[548].w";
	setAttr ".wl[548].w[7]" 0.7614214;
	setAttr ".wl[548].w[23]" 0.2385787;
	setAttr -s 2 ".wl[549].w";
	setAttr ".wl[549].w[23]" 0.5476525;
	setAttr ".wl[549].w[7]" 0.4523475;
	setAttr -s 2 ".wl[550].w";
	setAttr ".wl[550].w[23]" 0.8398324;
	setAttr ".wl[550].w[7]" 0.1601676;
	setAttr -s 2 ".wl[551].w";
	setAttr ".wl[551].w[7]" 0.6818876;
	setAttr ".wl[551].w[23]" 0.3181124;
	setAttr -s 2 ".wl[552].w";
	setAttr ".wl[552].w[23]" 0.8486428;
	setAttr ".wl[552].w[7]" 0.1513572;
	setAttr -s 2 ".wl[553].w";
	setAttr ".wl[553].w[23]" 0.9587628;
	setAttr ".wl[553].w[7]" 0.04123716;
	setAttr -s 2 ".wl[554].w";
	setAttr ".wl[554].w[23]" 0.9945485;
	setAttr ".wl[554].w[7]" 0.005451509;
	setAttr -s 2 ".wl[555].w";
	setAttr ".wl[555].w[23]" 0.8873868;
	setAttr ".wl[555].w[7]" 0.1126132;
	setAttr -s 2 ".wl[556].w";
	setAttr ".wl[556].w[23]" 0.8699647;
	setAttr ".wl[556].w[7]" 0.1300353;
	setAttr -s 2 ".wl[557].w";
	setAttr ".wl[557].w[23]" 0.5822281;
	setAttr ".wl[557].w[7]" 0.4177719;
	setAttr -s 2 ".wl[558].w";
	setAttr ".wl[558].w[7]" 0.5095772;
	setAttr ".wl[558].w[23]" 0.4904229;
	setAttr -s 2 ".wl[559].w";
	setAttr ".wl[559].w[7]" 0.781493;
	setAttr ".wl[559].w[23]" 0.218507;
	setAttr -s 2 ".wl[560].w";
	setAttr ".wl[560].w[7]" 0.966428;
	setAttr ".wl[560].w[23]" 0.03357202;
	setAttr -s 2 ".wl[561].w";
	setAttr ".wl[561].w[23]" 0.6820971;
	setAttr ".wl[561].w[7]" 0.3179029;
	setAttr -s 2 ".wl[562].w";
	setAttr ".wl[562].w[7]" 0.9267483;
	setAttr ".wl[562].w[23]" 0.07325167;
	setAttr -s 1 ".wl[563].w";
	setAttr ".wl[563].w[7]" 1;
	setAttr -s 1 ".wl[564].w";
	setAttr ".wl[564].w[7]" 1;
	setAttr -s 1 ".wl[565].w";
	setAttr ".wl[565].w[7]" 1;
	setAttr -s 1 ".wl[566].w";
	setAttr ".wl[566].w[7]" 1;
	setAttr -s 1 ".wl[567].w";
	setAttr ".wl[567].w[7]" 1;
	setAttr -s 1 ".wl[568].w";
	setAttr ".wl[568].w[7]" 1;
	setAttr -s 2 ".wl[569].w";
	setAttr ".wl[569].w[23]" 0.5476525;
	setAttr ".wl[569].w[7]" 0.4523475;
	setAttr -s 2 ".wl[570].w";
	setAttr ".wl[570].w[23]" 0.5822281;
	setAttr ".wl[570].w[7]" 0.4177719;
	setAttr -s 2 ".wl[571].w";
	setAttr ".wl[571].w[23]" 0.8873868;
	setAttr ".wl[571].w[7]" 0.1126132;
	setAttr -s 2 ".wl[572].w";
	setAttr ".wl[572].w[23]" 0.9945485;
	setAttr ".wl[572].w[7]" 0.005451509;
	setAttr -s 2 ".wl[573].w";
	setAttr ".wl[573].w[23]" 0.8398324;
	setAttr ".wl[573].w[7]" 0.1601676;
	setAttr -s 2 ".wl[574].w";
	setAttr ".wl[574].w[7]" 0.7614214;
	setAttr ".wl[574].w[23]" 0.2385787;
	setAttr -s 2 ".wl[575].w";
	setAttr ".wl[575].w[7]" 0.781493;
	setAttr ".wl[575].w[23]" 0.218507;
	setAttr -s 2 ".wl[576].w";
	setAttr ".wl[576].w[7]" 0.994729;
	setAttr ".wl[576].w[6]" 0.005271038;
	setAttr -s 2 ".wl[577].w";
	setAttr ".wl[577].w[7]" 0.966428;
	setAttr ".wl[577].w[23]" 0.03357202;
	setAttr -s 1 ".wl[578].w";
	setAttr ".wl[578].w[7]" 1;
	setAttr -s 1 ".wl[579].w";
	setAttr ".wl[579].w[7]" 1;
	setAttr -s 1 ".wl[580].w";
	setAttr ".wl[580].w[7]" 1;
	setAttr -s 1 ".wl[581].w";
	setAttr ".wl[581].w[7]" 1;
	setAttr -s 1 ".wl[582].w";
	setAttr ".wl[582].w[7]" 1;
	setAttr -s 1 ".wl[583].w";
	setAttr ".wl[583].w[7]" 1;
	setAttr -s 1 ".wl[584].w";
	setAttr ".wl[584].w[7]" 1;
	setAttr -s 1 ".wl[585].w";
	setAttr ".wl[585].w[7]" 1;
	setAttr -s 1 ".wl[586].w";
	setAttr ".wl[586].w[7]" 1;
	setAttr -s 1 ".wl[587].w";
	setAttr ".wl[587].w[7]" 1;
	setAttr -s 1 ".wl[588].w";
	setAttr ".wl[588].w[7]" 1;
	setAttr -s 1 ".wl[589].w";
	setAttr ".wl[589].w[7]" 1;
	setAttr -s 1 ".wl[590].w";
	setAttr ".wl[590].w[7]" 1;
	setAttr -s 1 ".wl[591].w";
	setAttr ".wl[591].w[7]" 1;
	setAttr -s 1 ".wl[592].w";
	setAttr ".wl[592].w[7]" 1;
	setAttr -s 1 ".wl[593].w";
	setAttr ".wl[593].w[7]" 1;
	setAttr -s 1 ".wl[594].w";
	setAttr ".wl[594].w[7]" 1;
	setAttr -s 1 ".wl[595].w";
	setAttr ".wl[595].w[7]" 1;
	setAttr -s 1 ".wl[596].w";
	setAttr ".wl[596].w[7]" 1;
	setAttr -s 1 ".wl[597].w";
	setAttr ".wl[597].w[7]" 1;
	setAttr -s 1 ".wl[598].w";
	setAttr ".wl[598].w[7]" 1;
	setAttr -s 1 ".wl[599].w";
	setAttr ".wl[599].w[7]" 1;
	setAttr -s 1 ".wl[600].w";
	setAttr ".wl[600].w[7]" 1;
	setAttr -s 1 ".wl[601].w";
	setAttr ".wl[601].w[7]" 1;
	setAttr -s 1 ".wl[602].w";
	setAttr ".wl[602].w[7]" 1;
	setAttr -s 1 ".wl[603].w";
	setAttr ".wl[603].w[7]" 1;
	setAttr -s 1 ".wl[604].w";
	setAttr ".wl[604].w[7]" 1;
	setAttr -s 1 ".wl[605].w";
	setAttr ".wl[605].w[7]" 1;
	setAttr -s 1 ".wl[606].w";
	setAttr ".wl[606].w[7]" 1;
	setAttr -s 1 ".wl[607].w";
	setAttr ".wl[607].w[7]" 1;
	setAttr -s 3 ".wl[608].w";
	setAttr ".wl[608].w[9]" 0.6321918;
	setAttr ".wl[608].w[12]" 0.3428333;
	setAttr ".wl[608].w[2]" 0.02497493;
	setAttr -s 2 ".wl[609].w";
	setAttr ".wl[609].w[9]" 0.6170117;
	setAttr ".wl[609].w[12]" 0.3829883;
	setAttr -s 2 ".wl[610].w";
	setAttr ".wl[610].w[9]" 0.6353353;
	setAttr ".wl[610].w[12]" 0.3646647;
	setAttr -s 2 ".wl[611].w";
	setAttr ".wl[611].w[9]" 0.6302949;
	setAttr ".wl[611].w[12]" 0.3697052;
	setAttr -s 2 ".wl[612].w";
	setAttr ".wl[612].w[9]" 0.6988568;
	setAttr ".wl[612].w[12]" 0.3011432;
	setAttr -s 2 ".wl[613].w";
	setAttr ".wl[613].w[9]" 0.8336895;
	setAttr ".wl[613].w[12]" 0.1663105;
	setAttr -s 2 ".wl[614].w";
	setAttr ".wl[614].w[9]" 0.8038979;
	setAttr ".wl[614].w[12]" 0.1961021;
	setAttr -s 2 ".wl[615].w";
	setAttr ".wl[615].w[9]" 0.6760802;
	setAttr ".wl[615].w[12]" 0.3239199;
	setAttr -s 2 ".wl[616].w";
	setAttr ".wl[616].w[9]" 0.6772948;
	setAttr ".wl[616].w[12]" 0.3227052;
	setAttr -s 2 ".wl[617].w";
	setAttr ".wl[617].w[9]" 0.6170117;
	setAttr ".wl[617].w[12]" 0.3829883;
	setAttr -s 2 ".wl[618].w";
	setAttr ".wl[618].w[9]" 0.8062173;
	setAttr ".wl[618].w[12]" 0.1937829;
	setAttr -s 2 ".wl[619].w";
	setAttr ".wl[619].w[9]" 0.8393185;
	setAttr ".wl[619].w[12]" 0.1606815;
	setAttr -s 2 ".wl[620].w";
	setAttr ".wl[620].w[9]" 0.854206;
	setAttr ".wl[620].w[12]" 0.145794;
	setAttr -s 2 ".wl[621].w";
	setAttr ".wl[621].w[9]" 0.7550038;
	setAttr ".wl[621].w[12]" 0.2449963;
	setAttr -s 2 ".wl[622].w";
	setAttr ".wl[622].w[9]" 0.8845441;
	setAttr ".wl[622].w[12]" 0.1154558;
	setAttr -s 2 ".wl[623].w";
	setAttr ".wl[623].w[9]" 0.7924393;
	setAttr ".wl[623].w[12]" 0.2075608;
	setAttr -s 2 ".wl[624].w";
	setAttr ".wl[624].w[15]" 0.8085091;
	setAttr ".wl[624].w[9]" 0.1914909;
	setAttr -s 3 ".wl[625].w";
	setAttr ".wl[625].w[9]" 0.6434913;
	setAttr ".wl[625].w[15]" 0.1809017;
	setAttr ".wl[625].w[10]" 0.175607;
	setAttr -s 2 ".wl[626].w";
	setAttr ".wl[626].w[9]" 0.7457671;
	setAttr ".wl[626].w[12]" 0.2542329;
	setAttr -s 1 ".wl[627].w";
	setAttr ".wl[627].w[15]" 1;
	setAttr -s 3 ".wl[628].w";
	setAttr ".wl[628].w[24]" 0.5814222;
	setAttr ".wl[628].w[15]" 0.4181659;
	setAttr ".wl[628].w[9]" 0.0004119508;
	setAttr -s 3 ".wl[629].w";
	setAttr ".wl[629].w[15]" 0.5328196;
	setAttr ".wl[629].w[9]" 0.4669028;
	setAttr ".wl[629].w[24]" 0.0002775798;
	setAttr -s 3 ".wl[630].w";
	setAttr ".wl[630].w[9]" 0.6434913;
	setAttr ".wl[630].w[15]" 0.1809017;
	setAttr ".wl[630].w[10]" 0.175607;
	setAttr -s 1 ".wl[631].w";
	setAttr ".wl[631].w[9]" 1;
	setAttr -s 2 ".wl[632].w";
	setAttr ".wl[632].w[9]" 0.7951357;
	setAttr ".wl[632].w[13]" 0.2048643;
	setAttr -s 3 ".wl[633].w";
	setAttr ".wl[633].w[9]" 0.9399835;
	setAttr ".wl[633].w[13]" 0.05978424;
	setAttr ".wl[633].w[15]" 0.0002323374;
	setAttr -s 3 ".wl[634].w";
	setAttr ".wl[634].w[24]" 0.5561817;
	setAttr ".wl[634].w[15]" 0.4422765;
	setAttr ".wl[634].w[9]" 0.001541882;
	setAttr -s 2 ".wl[635].w";
	setAttr ".wl[635].w[24]" 0.5869711;
	setAttr ".wl[635].w[15]" 0.413029;
	setAttr -s 3 ".wl[636].w";
	setAttr ".wl[636].w[9]" 0.536597;
	setAttr ".wl[636].w[15]" 0.4141304;
	setAttr ".wl[636].w[24]" 0.04927274;
	setAttr -s 2 ".wl[637].w";
	setAttr ".wl[637].w[24]" 0.8843817;
	setAttr ".wl[637].w[15]" 0.1156183;
	setAttr -s 3 ".wl[638].w";
	setAttr ".wl[638].w[24]" 0.919126;
	setAttr ".wl[638].w[15]" 0.07946624;
	setAttr ".wl[638].w[9]" 0.001407889;
	setAttr -s 3 ".wl[639].w";
	setAttr ".wl[639].w[24]" 0.5663139;
	setAttr ".wl[639].w[15]" 0.3026365;
	setAttr ".wl[639].w[9]" 0.1310495;
	setAttr -s 2 ".wl[640].w";
	setAttr ".wl[640].w[9]" 0.9995164;
	setAttr ".wl[640].w[12]" 0.0004835699;
	setAttr -s 3 ".wl[641].w";
	setAttr ".wl[641].w[15]" 0.4741346;
	setAttr ".wl[641].w[9]" 0.4309207;
	setAttr ".wl[641].w[24]" 0.0949446;
	setAttr -s 3 ".wl[642].w";
	setAttr ".wl[642].w[9]" 0.9963796;
	setAttr ".wl[642].w[15]" 0.003019141;
	setAttr ".wl[642].w[12]" 0.0006013208;
	setAttr -s 3 ".wl[643].w";
	setAttr ".wl[643].w[24]" 0.5843998;
	setAttr ".wl[643].w[15]" 0.3726463;
	setAttr ".wl[643].w[9]" 0.04295397;
	setAttr -s 3 ".wl[644].w";
	setAttr ".wl[644].w[9]" 0.6913972;
	setAttr ".wl[644].w[15]" 0.3062586;
	setAttr ".wl[644].w[24]" 0.002344227;
	setAttr -s 3 ".wl[645].w";
	setAttr ".wl[645].w[24]" 0.5561817;
	setAttr ".wl[645].w[15]" 0.4422765;
	setAttr ".wl[645].w[9]" 0.001541882;
	setAttr -s 3 ".wl[646].w";
	setAttr ".wl[646].w[9]" 0.536597;
	setAttr ".wl[646].w[15]" 0.4141304;
	setAttr ".wl[646].w[24]" 0.04927274;
	setAttr -s 3 ".wl[647].w";
	setAttr ".wl[647].w[9]" 0.8937723;
	setAttr ".wl[647].w[13]" 0.07721443;
	setAttr ".wl[647].w[15]" 0.02901332;
	setAttr -s 3 ".wl[648].w";
	setAttr ".wl[648].w[24]" 0.6057195;
	setAttr ".wl[648].w[15]" 0.3884461;
	setAttr ".wl[648].w[9]" 0.005834457;
	setAttr -s 2 ".wl[649].w";
	setAttr ".wl[649].w[24]" 0.5869711;
	setAttr ".wl[649].w[15]" 0.413029;
	setAttr -s 1 ".wl[650].w";
	setAttr ".wl[650].w[9]" 1;
	setAttr -s 1 ".wl[651].w";
	setAttr ".wl[651].w[9]" 1;
	setAttr -s 3 ".wl[652].w";
	setAttr ".wl[652].w[9]" 0.9643668;
	setAttr ".wl[652].w[15]" 0.01817808;
	setAttr ".wl[652].w[10]" 0.01745514;
	setAttr -s 3 ".wl[653].w";
	setAttr ".wl[653].w[9]" 0.9643668;
	setAttr ".wl[653].w[15]" 0.01817808;
	setAttr ".wl[653].w[10]" 0.01745514;
	setAttr -s 3 ".wl[654].w";
	setAttr ".wl[654].w[9]" 0.8536008;
	setAttr ".wl[654].w[13]" 0.1459182;
	setAttr ".wl[654].w[15]" 0.000481076;
	setAttr -s 3 ".wl[655].w";
	setAttr ".wl[655].w[9]" 0.8057647;
	setAttr ".wl[655].w[13]" 0.1589569;
	setAttr ".wl[655].w[14]" 0.03527848;
	setAttr -s 3 ".wl[656].w";
	setAttr ".wl[656].w[9]" 0.7090704;
	setAttr ".wl[656].w[13]" 0.165337;
	setAttr ".wl[656].w[14]" 0.1255925;
	setAttr -s 3 ".wl[657].w";
	setAttr ".wl[657].w[9]" 0.4762427;
	setAttr ".wl[657].w[13]" 0.2908184;
	setAttr ".wl[657].w[14]" 0.2329389;
	setAttr -s 3 ".wl[658].w";
	setAttr ".wl[658].w[14]" 0.9512126;
	setAttr ".wl[658].w[13]" 0.03963711;
	setAttr ".wl[658].w[9]" 0.009150327;
	setAttr -s 3 ".wl[659].w";
	setAttr ".wl[659].w[14]" 0.809838;
	setAttr ".wl[659].w[13]" 0.1110791;
	setAttr ".wl[659].w[9]" 0.07908292;
	setAttr -s 3 ".wl[660].w";
	setAttr ".wl[660].w[9]" 0.8933135;
	setAttr ".wl[660].w[13]" 0.1021754;
	setAttr ".wl[660].w[15]" 0.004511122;
	setAttr -s 3 ".wl[661].w";
	setAttr ".wl[661].w[9]" 0.9061065;
	setAttr ".wl[661].w[15]" 0.07710823;
	setAttr ".wl[661].w[13]" 0.01678522;
	setAttr -s 2 ".wl[662].w";
	setAttr ".wl[662].w[9]" 0.9986984;
	setAttr ".wl[662].w[12]" 0.001301697;
	setAttr -s 2 ".wl[663].w";
	setAttr ".wl[663].w[9]" 0.9566733;
	setAttr ".wl[663].w[12]" 0.04332675;
	setAttr -s 2 ".wl[664].w";
	setAttr ".wl[664].w[9]" 0.934508;
	setAttr ".wl[664].w[12]" 0.06549198;
	setAttr -s 2 ".wl[665].w";
	setAttr ".wl[665].w[9]" 0.9703145;
	setAttr ".wl[665].w[12]" 0.02968558;
	setAttr -s 1 ".wl[666].w";
	setAttr ".wl[666].w[9]" 1;
	setAttr -s 1 ".wl[667].w";
	setAttr ".wl[667].w[9]" 1;
	setAttr -s 1 ".wl[668].w";
	setAttr ".wl[668].w[9]" 1;
	setAttr -s 1 ".wl[669].w";
	setAttr ".wl[669].w[9]" 1;
	setAttr -s 2 ".wl[670].w";
	setAttr ".wl[670].w[9]" 0.9996609;
	setAttr ".wl[670].w[12]" 0.0003391376;
	setAttr -s 1 ".wl[671].w";
	setAttr ".wl[671].w[9]" 1;
	setAttr -s 1 ".wl[672].w";
	setAttr ".wl[672].w[9]" 1;
	setAttr -s 1 ".wl[673].w";
	setAttr ".wl[673].w[9]" 1;
	setAttr -s 1 ".wl[674].w";
	setAttr ".wl[674].w[9]" 1;
	setAttr -s 1 ".wl[675].w";
	setAttr ".wl[675].w[9]" 1;
	setAttr -s 1 ".wl[676].w";
	setAttr ".wl[676].w[9]" 1;
	setAttr -s 1 ".wl[677].w";
	setAttr ".wl[677].w[9]" 1;
	setAttr -s 1 ".wl[678].w";
	setAttr ".wl[678].w[9]" 1;
	setAttr -s 1 ".wl[679].w";
	setAttr ".wl[679].w[9]" 1;
	setAttr -s 1 ".wl[680].w";
	setAttr ".wl[680].w[9]" 1;
	setAttr -s 1 ".wl[681].w";
	setAttr ".wl[681].w[9]" 1;
	setAttr -s 1 ".wl[682].w";
	setAttr ".wl[682].w[9]" 1;
	setAttr -s 2 ".wl[683].w";
	setAttr ".wl[683].w[9]" 0.9834933;
	setAttr ".wl[683].w[12]" 0.0165067;
	setAttr -s 2 ".wl[684].w";
	setAttr ".wl[684].w[9]" 0.9588864;
	setAttr ".wl[684].w[12]" 0.04111361;
	setAttr -s 1 ".wl[685].w";
	setAttr ".wl[685].w[9]" 1;
	setAttr -s 1 ".wl[686].w";
	setAttr ".wl[686].w[9]" 1;
	setAttr -s 2 ".wl[687].w";
	setAttr ".wl[687].w[9]" 0.7656663;
	setAttr ".wl[687].w[12]" 0.2343337;
	setAttr -s 2 ".wl[688].w";
	setAttr ".wl[688].w[9]" 0.9932219;
	setAttr ".wl[688].w[12]" 0.006778102;
	setAttr -s 2 ".wl[689].w";
	setAttr ".wl[689].w[9]" 0.8067998;
	setAttr ".wl[689].w[12]" 0.1932002;
	setAttr -s 2 ".wl[690].w";
	setAttr ".wl[690].w[9]" 0.9892915;
	setAttr ".wl[690].w[12]" 0.01070854;
	setAttr -s 1 ".wl[691].w";
	setAttr ".wl[691].w[9]" 1;
	setAttr -s 1 ".wl[692].w";
	setAttr ".wl[692].w[9]" 1;
	setAttr -s 2 ".wl[693].w";
	setAttr ".wl[693].w[9]" 0.927053;
	setAttr ".wl[693].w[12]" 0.07294708;
	setAttr -s 2 ".wl[694].w";
	setAttr ".wl[694].w[9]" 0.7740865;
	setAttr ".wl[694].w[12]" 0.2259135;
	setAttr -s 2 ".wl[695].w";
	setAttr ".wl[695].w[9]" 0.6756002;
	setAttr ".wl[695].w[12]" 0.3243998;
	setAttr -s 2 ".wl[696].w";
	setAttr ".wl[696].w[9]" 0.6651199;
	setAttr ".wl[696].w[12]" 0.3348801;
	setAttr -s 2 ".wl[697].w";
	setAttr ".wl[697].w[9]" 0.6353353;
	setAttr ".wl[697].w[12]" 0.3646647;
	setAttr -s 2 ".wl[698].w";
	setAttr ".wl[698].w[9]" 0.8339949;
	setAttr ".wl[698].w[12]" 0.1660051;
	setAttr -s 2 ".wl[699].w";
	setAttr ".wl[699].w[9]" 0.7830579;
	setAttr ".wl[699].w[12]" 0.2169421;
	setAttr -s 3 ".wl[700].w";
	setAttr ".wl[700].w[14]" 0.7596923;
	setAttr ".wl[700].w[9]" 0.1613218;
	setAttr ".wl[700].w[13]" 0.07898587;
	setAttr -s 3 ".wl[701].w";
	setAttr ".wl[701].w[14]" 0.8069903;
	setAttr ".wl[701].w[9]" 0.154478;
	setAttr ".wl[701].w[13]" 0.03853176;
	setAttr -s 3 ".wl[702].w";
	setAttr ".wl[702].w[9]" 0.8057647;
	setAttr ".wl[702].w[13]" 0.1589569;
	setAttr ".wl[702].w[14]" 0.03527848;
	setAttr -s 3 ".wl[703].w";
	setAttr ".wl[703].w[9]" 0.8933135;
	setAttr ".wl[703].w[13]" 0.1021754;
	setAttr ".wl[703].w[15]" 0.004511122;
	setAttr -s 3 ".wl[704].w";
	setAttr ".wl[704].w[9]" 0.9061065;
	setAttr ".wl[704].w[15]" 0.07710823;
	setAttr ".wl[704].w[13]" 0.01678522;
	setAttr -s 3 ".wl[705].w";
	setAttr ".wl[705].w[9]" 0.9399835;
	setAttr ".wl[705].w[13]" 0.05978424;
	setAttr ".wl[705].w[15]" 0.0002323374;
	setAttr -s 3 ".wl[706].w";
	setAttr ".wl[706].w[9]" 0.3870718;
	setAttr ".wl[706].w[14]" 0.3394055;
	setAttr ".wl[706].w[13]" 0.2735227;
	setAttr -s 3 ".wl[707].w";
	setAttr ".wl[707].w[9]" 0.4762427;
	setAttr ".wl[707].w[13]" 0.2908184;
	setAttr ".wl[707].w[14]" 0.2329389;
	setAttr -s 3 ".wl[708].w";
	setAttr ".wl[708].w[14]" 0.9651196;
	setAttr ".wl[708].w[13]" 0.03402404;
	setAttr ".wl[708].w[9]" 0.0008563855;
	setAttr -s 3 ".wl[709].w";
	setAttr ".wl[709].w[14]" 0.9512126;
	setAttr ".wl[709].w[13]" 0.03963711;
	setAttr ".wl[709].w[9]" 0.009150327;
	setAttr -s 3 ".wl[710].w";
	setAttr ".wl[710].w[14]" 0.965869;
	setAttr ".wl[710].w[13]" 0.03370658;
	setAttr ".wl[710].w[9]" 0.0004243352;
	setAttr -s 3 ".wl[711].w";
	setAttr ".wl[711].w[14]" 0.3574236;
	setAttr ".wl[711].w[9]" 0.3463027;
	setAttr ".wl[711].w[13]" 0.2962736;
	setAttr -s 3 ".wl[712].w";
	setAttr ".wl[712].w[14]" 0.3574236;
	setAttr ".wl[712].w[9]" 0.3463027;
	setAttr ".wl[712].w[13]" 0.2962736;
	setAttr -s 2 ".wl[713].w";
	setAttr ".wl[713].w[9]" 0.7951357;
	setAttr ".wl[713].w[13]" 0.2048643;
	setAttr -s 3 ".wl[714].w";
	setAttr ".wl[714].w[9]" 0.8961579;
	setAttr ".wl[714].w[15]" 0.09971564;
	setAttr ".wl[714].w[13]" 0.004126466;
	setAttr -s 3 ".wl[715].w";
	setAttr ".wl[715].w[15]" 0.5328196;
	setAttr ".wl[715].w[9]" 0.4669028;
	setAttr ".wl[715].w[24]" 0.0002775798;
	setAttr -s 3 ".wl[716].w";
	setAttr ".wl[716].w[15]" 0.4741346;
	setAttr ".wl[716].w[9]" 0.4309207;
	setAttr ".wl[716].w[24]" 0.0949446;
	setAttr -s 2 ".wl[717].w";
	setAttr ".wl[717].w[24]" 0.7116395;
	setAttr ".wl[717].w[15]" 0.2883605;
	setAttr -s 3 ".wl[718].w";
	setAttr ".wl[718].w[24]" 0.6057195;
	setAttr ".wl[718].w[15]" 0.3884461;
	setAttr ".wl[718].w[9]" 0.005834457;
	setAttr -s 3 ".wl[719].w";
	setAttr ".wl[719].w[24]" 0.5663139;
	setAttr ".wl[719].w[15]" 0.3026365;
	setAttr ".wl[719].w[9]" 0.1310495;
	setAttr -s 2 ".wl[720].w";
	setAttr ".wl[720].w[24]" 0.7492817;
	setAttr ".wl[720].w[15]" 0.2507183;
	setAttr -s 2 ".wl[721].w";
	setAttr ".wl[721].w[24]" 0.5869711;
	setAttr ".wl[721].w[15]" 0.413029;
	setAttr -s 2 ".wl[722].w";
	setAttr ".wl[722].w[24]" 0.6062742;
	setAttr ".wl[722].w[15]" 0.3937257;
	setAttr -s 2 ".wl[723].w";
	setAttr ".wl[723].w[24]" 0.7334052;
	setAttr ".wl[723].w[15]" 0.2665949;
	setAttr -s 2 ".wl[724].w";
	setAttr ".wl[724].w[24]" 0.8233563;
	setAttr ".wl[724].w[15]" 0.1766438;
	setAttr -s 1 ".wl[725].w";
	setAttr ".wl[725].w[24]" 1;
	setAttr -s 1 ".wl[726].w";
	setAttr ".wl[726].w[24]" 1;
	setAttr -s 2 ".wl[727].w";
	setAttr ".wl[727].w[24]" 0.869795;
	setAttr ".wl[727].w[54]" 0.130205;
	setAttr -s 2 ".wl[728].w";
	setAttr ".wl[728].w[24]" 0.7780187;
	setAttr ".wl[728].w[54]" 0.2219813;
	setAttr -s 2 ".wl[729].w";
	setAttr ".wl[729].w[54]" 0.6407403;
	setAttr ".wl[729].w[24]" 0.3592597;
	setAttr -s 2 ".wl[730].w";
	setAttr ".wl[730].w[54]" 0.5923601;
	setAttr ".wl[730].w[24]" 0.4076399;
	setAttr -s 2 ".wl[731].w";
	setAttr ".wl[731].w[24]" 0.7100382;
	setAttr ".wl[731].w[54]" 0.2899618;
	setAttr -s 2 ".wl[732].w";
	setAttr ".wl[732].w[54]" 0.5933467;
	setAttr ".wl[732].w[24]" 0.4066533;
	setAttr -s 2 ".wl[733].w";
	setAttr ".wl[733].w[24]" 0.8660251;
	setAttr ".wl[733].w[54]" 0.1339749;
	setAttr -s 2 ".wl[734].w";
	setAttr ".wl[734].w[54]" 0.6670635;
	setAttr ".wl[734].w[24]" 0.3329365;
	setAttr -s 2 ".wl[735].w";
	setAttr ".wl[735].w[24]" 0.9582605;
	setAttr ".wl[735].w[54]" 0.04173946;
	setAttr -s 2 ".wl[736].w";
	setAttr ".wl[736].w[54]" 0.5106873;
	setAttr ".wl[736].w[24]" 0.4893127;
	setAttr -s 2 ".wl[737].w";
	setAttr ".wl[737].w[24]" 0.8554751;
	setAttr ".wl[737].w[54]" 0.1445249;
	setAttr -s 2 ".wl[738].w";
	setAttr ".wl[738].w[54]" 0.5928982;
	setAttr ".wl[738].w[24]" 0.4071019;
	setAttr -s 2 ".wl[739].w";
	setAttr ".wl[739].w[24]" 0.7100382;
	setAttr ".wl[739].w[54]" 0.2899618;
	setAttr -s 2 ".wl[740].w";
	setAttr ".wl[740].w[54]" 0.5923601;
	setAttr ".wl[740].w[24]" 0.4076399;
	setAttr -s 1 ".wl[741].w";
	setAttr ".wl[741].w[54]" 1;
	setAttr -s 2 ".wl[742].w";
	setAttr ".wl[742].w[54]" 0.9966856;
	setAttr ".wl[742].w[24]" 0.003314461;
	setAttr -s 2 ".wl[743].w";
	setAttr ".wl[743].w[54]" 0.9835009;
	setAttr ".wl[743].w[24]" 0.01649918;
	setAttr -s 2 ".wl[744].w";
	setAttr ".wl[744].w[54]" 0.9637673;
	setAttr ".wl[744].w[24]" 0.03623274;
	setAttr -s 1 ".wl[745].w";
	setAttr ".wl[745].w[54]" 1;
	setAttr -s 2 ".wl[746].w";
	setAttr ".wl[746].w[54]" 0.9721004;
	setAttr ".wl[746].w[24]" 0.02789958;
	setAttr -s 1 ".wl[747].w";
	setAttr ".wl[747].w[54]" 1;
	setAttr -s 1 ".wl[748].w";
	setAttr ".wl[748].w[54]" 1;
	setAttr -s 1 ".wl[749].w";
	setAttr ".wl[749].w[54]" 1;
	setAttr -s 1 ".wl[750].w";
	setAttr ".wl[750].w[54]" 1;
	setAttr -s 3 ".wl[751].w";
	setAttr ".wl[751].w[54]" 0.4178532;
	setAttr ".wl[751].w[55]" 0.2910734;
	setAttr ".wl[751].w[47]" 0.2910734;
	setAttr -s 3 ".wl[752].w";
	setAttr ".wl[752].w[54]" 0.668471;
	setAttr ".wl[752].w[47]" 0.2741562;
	setAttr ".wl[752].w[55]" 0.05737278;
	setAttr -s 2 ".wl[753].w";
	setAttr ".wl[753].w[54]" 0.9577262;
	setAttr ".wl[753].w[47]" 0.04227382;
	setAttr -s 2 ".wl[754].w";
	setAttr ".wl[754].w[54]" 0.713107;
	setAttr ".wl[754].w[47]" 0.286893;
	setAttr -s 1 ".wl[755].w";
	setAttr ".wl[755].w[54]" 1;
	setAttr -s 2 ".wl[756].w";
	setAttr ".wl[756].w[54]" 0.7469361;
	setAttr ".wl[756].w[47]" 0.2530639;
	setAttr -s 2 ".wl[757].w";
	setAttr ".wl[757].w[47]" 0.7289597;
	setAttr ".wl[757].w[54]" 0.2710403;
	setAttr -s 2 ".wl[758].w";
	setAttr ".wl[758].w[47]" 0.5531521;
	setAttr ".wl[758].w[54]" 0.4468479;
	setAttr -s 2 ".wl[759].w";
	setAttr ".wl[759].w[54]" 0.8761898;
	setAttr ".wl[759].w[47]" 0.1238102;
	setAttr -s 3 ".wl[760].w";
	setAttr ".wl[760].w[47]" 0.5713439;
	setAttr ".wl[760].w[54]" 0.4218917;
	setAttr ".wl[760].w[55]" 0.006764418;
	setAttr -s 3 ".wl[761].w";
	setAttr ".wl[761].w[47]" 0.5713439;
	setAttr ".wl[761].w[54]" 0.4218917;
	setAttr ".wl[761].w[55]" 0.006764418;
	setAttr -s 2 ".wl[762].w";
	setAttr ".wl[762].w[54]" 0.8761898;
	setAttr ".wl[762].w[47]" 0.1238102;
	setAttr -s 1 ".wl[763].w";
	setAttr ".wl[763].w[54]" 1;
	setAttr -s 1 ".wl[764].w";
	setAttr ".wl[764].w[54]" 1;
	setAttr -s 1 ".wl[765].w";
	setAttr ".wl[765].w[54]" 1;
	setAttr -s 1 ".wl[766].w";
	setAttr ".wl[766].w[54]" 1;
	setAttr -s 1 ".wl[767].w";
	setAttr ".wl[767].w[54]" 1;
	setAttr -s 1 ".wl[768].w";
	setAttr ".wl[768].w[54]" 1;
	setAttr -s 3 ".wl[769].w";
	setAttr ".wl[769].w[0]" 0.7813205;
	setAttr ".wl[769].w[4]" 0.1824452;
	setAttr ".wl[769].w[2]" 0.03623432;
	setAttr -s 1 ".wl[770].w";
	setAttr ".wl[770].w[25]" 1;
	setAttr -s 1 ".wl[771].w";
	setAttr ".wl[771].w[25]" 1;
	setAttr -s 2 ".wl[772].w";
	setAttr ".wl[772].w[0]" 0.7000042;
	setAttr ".wl[772].w[4]" 0.2999958;
	setAttr -s 2 ".wl[773].w";
	setAttr ".wl[773].w[22]" 0.54;
	setAttr ".wl[773].w[25]" 0.46;
	setAttr -s 2 ".wl[774].w";
	setAttr ".wl[774].w[0]" 0.5702819;
	setAttr ".wl[774].w[4]" 0.4297181;
	setAttr -s 2 ".wl[775].w";
	setAttr ".wl[775].w[0]" 0.7920493;
	setAttr ".wl[775].w[4]" 0.2079507;
	setAttr -s 1 ".wl[776].w";
	setAttr ".wl[776].w[22]" 1;
	setAttr -s 1 ".wl[777].w";
	setAttr ".wl[777].w[26]" 1;
	setAttr -s 2 ".wl[778].w";
	setAttr ".wl[778].w[26]" 0.68;
	setAttr ".wl[778].w[27]" 0.32;
	setAttr -s 2 ".wl[779].w";
	setAttr ".wl[779].w[26]" 0.6894622;
	setAttr ".wl[779].w[25]" 0.3105378;
	setAttr -s 3 ".wl[780].w";
	setAttr ".wl[780].w[26]" 0.5137707;
	setAttr ".wl[780].w[27]" 0.28;
	setAttr ".wl[780].w[25]" 0.2062294;
	setAttr -s 2 ".wl[781].w";
	setAttr ".wl[781].w[25]" 0.5;
	setAttr ".wl[781].w[22]" 0.5;
	setAttr -s 2 ".wl[782].w";
	setAttr ".wl[782].w[26]" 0.5599999;
	setAttr ".wl[782].w[27]" 0.44;
	setAttr -s 2 ".wl[783].w";
	setAttr ".wl[783].w[22]" 0.9;
	setAttr ".wl[783].w[26]" 0.09999998;
	setAttr -s 2 ".wl[784].w";
	setAttr ".wl[784].w[27]" 0.82;
	setAttr ".wl[784].w[26]" 0.18;
	setAttr -s 1 ".wl[785].w";
	setAttr ".wl[785].w[26]" 1;
	setAttr -s 2 ".wl[786].w";
	setAttr ".wl[786].w[26]" 0.78;
	setAttr ".wl[786].w[27]" 0.22;
	setAttr -s 2 ".wl[787].w";
	setAttr ".wl[787].w[26]" 0.56;
	setAttr ".wl[787].w[27]" 0.44;
	setAttr -s 2 ".wl[788].w";
	setAttr ".wl[788].w[27]" 0.76;
	setAttr ".wl[788].w[26]" 0.24;
	setAttr -s 2 ".wl[789].w";
	setAttr ".wl[789].w[29]" 0.62;
	setAttr ".wl[789].w[26]" 0.38;
	setAttr -s 3 ".wl[790].w";
	setAttr ".wl[790].w[29]" 0.4412555;
	setAttr ".wl[790].w[26]" 0.3587444;
	setAttr ".wl[790].w[28]" 0.2;
	setAttr -s 2 ".wl[791].w";
	setAttr ".wl[791].w[29]" 0.6;
	setAttr ".wl[791].w[28]" 0.4;
	setAttr -s 2 ".wl[792].w";
	setAttr ".wl[792].w[28]" 0.7;
	setAttr ".wl[792].w[29]" 0.3;
	setAttr -s 1 ".wl[793].w";
	setAttr ".wl[793].w[29]" 1;
	setAttr -s 2 ".wl[794].w";
	setAttr ".wl[794].w[29]" 0.8;
	setAttr ".wl[794].w[28]" 0.2;
	setAttr -s 2 ".wl[795].w";
	setAttr ".wl[795].w[29]" 0.62;
	setAttr ".wl[795].w[28]" 0.38;
	setAttr -s 2 ".wl[796].w";
	setAttr ".wl[796].w[28]" 0.66;
	setAttr ".wl[796].w[29]" 0.34;
	setAttr -s 2 ".wl[797].w";
	setAttr ".wl[797].w[27]" 0.94;
	setAttr ".wl[797].w[26]" 0.06;
	setAttr -s 1 ".wl[798].w";
	setAttr ".wl[798].w[22]" 1;
	setAttr -s 2 ".wl[799].w";
	setAttr ".wl[799].w[22]" 0.9994642;
	setAttr ".wl[799].w[4]" 0.0005357815;
	setAttr -s 1 ".wl[800].w";
	setAttr ".wl[800].w[0]" 1;
	setAttr -s 3 ".wl[801].w";
	setAttr ".wl[801].w[28]" 0.686;
	setAttr ".wl[801].w[27]" 0.3;
	setAttr ".wl[801].w[29]" 0.014;
	setAttr -s 2 ".wl[802].w";
	setAttr ".wl[802].w[28]" 0.96;
	setAttr ".wl[802].w[29]" 0.03999998;
	setAttr -s 1 ".wl[803].w";
	setAttr ".wl[803].w[22]" 1;
	setAttr -s 1 ".wl[804].w";
	setAttr ".wl[804].w[0]" 1;
	setAttr -s 2 ".wl[805].w";
	setAttr ".wl[805].w[27]" 0.92;
	setAttr ".wl[805].w[25]" 0.08;
	setAttr -s 1 ".wl[806].w";
	setAttr ".wl[806].w[22]" 1;
	setAttr -s 1 ".wl[807].w";
	setAttr ".wl[807].w[27]" 1;
	setAttr -s 2 ".wl[808].w";
	setAttr ".wl[808].w[27]" 0.96;
	setAttr ".wl[808].w[26]" 0.04;
	setAttr -s 2 ".wl[809].w";
	setAttr ".wl[809].w[28]" 0.72;
	setAttr ".wl[809].w[27]" 0.28;
	setAttr -s 1 ".wl[810].w";
	setAttr ".wl[810].w[28]" 1;
	setAttr -s 3 ".wl[811].w";
	setAttr ".wl[811].w[9]" 0.5500647;
	setAttr ".wl[811].w[10]" 0.40845;
	setAttr ".wl[811].w[11]" 0.04148534;
	setAttr -s 3 ".wl[812].w";
	setAttr ".wl[812].w[9]" 0.9216899;
	setAttr ".wl[812].w[10]" 0.06210121;
	setAttr ".wl[812].w[13]" 0.01620893;
	setAttr -s 2 ".wl[813].w";
	setAttr ".wl[813].w[10]" 0.5235745;
	setAttr ".wl[813].w[9]" 0.4764254;
	setAttr -s 3 ".wl[814].w";
	setAttr ".wl[814].w[9]" 0.9084792;
	setAttr ".wl[814].w[10]" 0.05637308;
	setAttr ".wl[814].w[13]" 0.03514786;
	setAttr -s 3 ".wl[815].w";
	setAttr ".wl[815].w[9]" 0.8961579;
	setAttr ".wl[815].w[15]" 0.09971564;
	setAttr ".wl[815].w[13]" 0.004126466;
	setAttr -s 3 ".wl[816].w";
	setAttr ".wl[816].w[9]" 0.9061065;
	setAttr ".wl[816].w[15]" 0.07710823;
	setAttr ".wl[816].w[13]" 0.01678522;
	setAttr -s 3 ".wl[817].w";
	setAttr ".wl[817].w[9]" 0.536597;
	setAttr ".wl[817].w[15]" 0.4141304;
	setAttr ".wl[817].w[24]" 0.04927274;
	setAttr -s 3 ".wl[818].w";
	setAttr ".wl[818].w[15]" 0.5328196;
	setAttr ".wl[818].w[9]" 0.4669028;
	setAttr ".wl[818].w[24]" 0.0002775798;
	setAttr -s 3 ".wl[819].w";
	setAttr ".wl[819].w[30]" 0.6524561;
	setAttr ".wl[819].w[31]" 0.267641;
	setAttr ".wl[819].w[32]" 0.07990287;
	setAttr -s 1 ".wl[820].w";
	setAttr ".wl[820].w[30]" 1;
	setAttr -s 1 ".wl[821].w";
	setAttr ".wl[821].w[30]" 1;
	setAttr -s 3 ".wl[822].w";
	setAttr ".wl[822].w[33]" 0.4879941;
	setAttr ".wl[822].w[30]" 0.443079;
	setAttr ".wl[822].w[32]" 0.06892698;
	setAttr -s 2 ".wl[823].w";
	setAttr ".wl[823].w[30]" 0.7762845;
	setAttr ".wl[823].w[33]" 0.2237155;
	setAttr -s 1 ".wl[824].w";
	setAttr ".wl[824].w[30]" 1;
	setAttr -s 2 ".wl[825].w";
	setAttr ".wl[825].w[34]" 0.7875984;
	setAttr ".wl[825].w[30]" 0.2124015;
	setAttr -s 1 ".wl[826].w";
	setAttr ".wl[826].w[30]" 1;
	setAttr -s 3 ".wl[827].w";
	setAttr ".wl[827].w[30]" 0.3850635;
	setAttr ".wl[827].w[38]" 0.3312616;
	setAttr ".wl[827].w[45]" 0.2836748;
	setAttr -s 3 ".wl[828].w";
	setAttr ".wl[828].w[30]" 0.4898138;
	setAttr ".wl[828].w[38]" 0.272979;
	setAttr ".wl[828].w[45]" 0.2372072;
	setAttr -s 2 ".wl[829].w";
	setAttr ".wl[829].w[30]" 0.790236;
	setAttr ".wl[829].w[31]" 0.209764;
	setAttr -s 2 ".wl[830].w";
	setAttr ".wl[830].w[31]" 0.744296;
	setAttr ".wl[830].w[30]" 0.255704;
	setAttr -s 2 ".wl[831].w";
	setAttr ".wl[831].w[46]" 0.5403537;
	setAttr ".wl[831].w[45]" 0.4596463;
	setAttr -s 2 ".wl[832].w";
	setAttr ".wl[832].w[46]" 0.5354339;
	setAttr ".wl[832].w[45]" 0.4645661;
	setAttr -s 2 ".wl[833].w";
	setAttr ".wl[833].w[38]" 0.556097;
	setAttr ".wl[833].w[45]" 0.4439031;
	setAttr -s 3 ".wl[834].w";
	setAttr ".wl[834].w[30]" 0.5704053;
	setAttr ".wl[834].w[38]" 0.4283747;
	setAttr ".wl[834].w[37]" 0.001220042;
	setAttr -s 3 ".wl[835].w";
	setAttr ".wl[835].w[30]" 0.5713439;
	setAttr ".wl[835].w[37]" 0.4218917;
	setAttr ".wl[835].w[38]" 0.006764418;
	setAttr -s 3 ".wl[836].w";
	setAttr ".wl[836].w[37]" 0.4178532;
	setAttr ".wl[836].w[38]" 0.2910734;
	setAttr ".wl[836].w[30]" 0.2910734;
	setAttr -s 1 ".wl[837].w";
	setAttr ".wl[837].w[30]" 1;
	setAttr -s 1 ".wl[838].w";
	setAttr ".wl[838].w[30]" 1;
	setAttr -s 2 ".wl[839].w";
	setAttr ".wl[839].w[30]" 0.5531521;
	setAttr ".wl[839].w[37]" 0.4468479;
	setAttr -s 2 ".wl[840].w";
	setAttr ".wl[840].w[38]" 0.5438827;
	setAttr ".wl[840].w[45]" 0.4561174;
	setAttr -s 1 ".wl[841].w";
	setAttr ".wl[841].w[46]" 1;
	setAttr -s 2 ".wl[842].w";
	setAttr ".wl[842].w[46]" 0.5349972;
	setAttr ".wl[842].w[45]" 0.4650028;
	setAttr -s 1 ".wl[843].w";
	setAttr ".wl[843].w[46]" 1;
	setAttr -s 1 ".wl[844].w";
	setAttr ".wl[844].w[46]" 1;
	setAttr -s 1 ".wl[845].w";
	setAttr ".wl[845].w[30]" 1;
	setAttr -s 2 ".wl[846].w";
	setAttr ".wl[846].w[37]" 0.7469361;
	setAttr ".wl[846].w[30]" 0.2530639;
	setAttr -s 1 ".wl[847].w";
	setAttr ".wl[847].w[46]" 1;
	setAttr -s 2 ".wl[848].w";
	setAttr ".wl[848].w[30]" 0.9951783;
	setAttr ".wl[848].w[34]" 0.004821655;
	setAttr -s 2 ".wl[849].w";
	setAttr ".wl[849].w[37]" 0.713107;
	setAttr ".wl[849].w[30]" 0.286893;
	setAttr -s 2 ".wl[850].w";
	setAttr ".wl[850].w[30]" 0.9716766;
	setAttr ".wl[850].w[33]" 0.0283234;
	setAttr -s 2 ".wl[851].w";
	setAttr ".wl[851].w[30]" 0.9993956;
	setAttr ".wl[851].w[32]" 0.0006044157;
	setAttr -s 2 ".wl[852].w";
	setAttr ".wl[852].w[30]" 0.9948245;
	setAttr ".wl[852].w[31]" 0.005175603;
	setAttr -s 3 ".wl[853].w";
	setAttr ".wl[853].w[37]" 0.668471;
	setAttr ".wl[853].w[30]" 0.2741562;
	setAttr ".wl[853].w[38]" 0.05737278;
	setAttr -s 3 ".wl[854].w";
	setAttr ".wl[854].w[38]" 0.7200829;
	setAttr ".wl[854].w[45]" 0.2588594;
	setAttr ".wl[854].w[30]" 0.02105775;
	setAttr -s 3 ".wl[855].w";
	setAttr ".wl[855].w[37]" 0.4178532;
	setAttr ".wl[855].w[38]" 0.2910734;
	setAttr ".wl[855].w[30]" 0.2910734;
	setAttr -s 2 ".wl[856].w";
	setAttr ".wl[856].w[38]" 0.5438827;
	setAttr ".wl[856].w[45]" 0.4561174;
	setAttr -s 2 ".wl[857].w";
	setAttr ".wl[857].w[46]" 0.550202;
	setAttr ".wl[857].w[45]" 0.449798;
	setAttr -s 2 ".wl[858].w";
	setAttr ".wl[858].w[46]" 0.5349972;
	setAttr ".wl[858].w[45]" 0.4650028;
	setAttr -s 1 ".wl[859].w";
	setAttr ".wl[859].w[46]" 1;
	setAttr -s 1 ".wl[860].w";
	setAttr ".wl[860].w[46]" 1;
	setAttr -s 2 ".wl[861].w";
	setAttr ".wl[861].w[46]" 0.5403537;
	setAttr ".wl[861].w[45]" 0.4596463;
	setAttr -s 1 ".wl[862].w";
	setAttr ".wl[862].w[46]" 1;
	setAttr -s 3 ".wl[863].w";
	setAttr ".wl[863].w[30]" 0.4898138;
	setAttr ".wl[863].w[38]" 0.272979;
	setAttr ".wl[863].w[45]" 0.2372072;
	setAttr -s 2 ".wl[864].w";
	setAttr ".wl[864].w[30]" 0.790236;
	setAttr ".wl[864].w[31]" 0.209764;
	setAttr -s 2 ".wl[865].w";
	setAttr ".wl[865].w[30]" 0.5464561;
	setAttr ".wl[865].w[31]" 0.4535439;
	setAttr -s 2 ".wl[866].w";
	setAttr ".wl[866].w[31]" 0.8856522;
	setAttr ".wl[866].w[30]" 0.1143478;
	setAttr -s 2 ".wl[867].w";
	setAttr ".wl[867].w[31]" 0.744296;
	setAttr ".wl[867].w[30]" 0.255704;
	setAttr -s 2 ".wl[868].w";
	setAttr ".wl[868].w[31]" 0.5658172;
	setAttr ".wl[868].w[35]" 0.4341828;
	setAttr -s 2 ".wl[869].w";
	setAttr ".wl[869].w[35]" 0.5097693;
	setAttr ".wl[869].w[31]" 0.4902307;
	setAttr -s 2 ".wl[870].w";
	setAttr ".wl[870].w[35]" 0.5800167;
	setAttr ".wl[870].w[36]" 0.4199833;
	setAttr -s 2 ".wl[871].w";
	setAttr ".wl[871].w[35]" 0.6065637;
	setAttr ".wl[871].w[36]" 0.3934364;
	setAttr -s 2 ".wl[872].w";
	setAttr ".wl[872].w[35]" 0.5554221;
	setAttr ".wl[872].w[36]" 0.4445779;
	setAttr -s 2 ".wl[873].w";
	setAttr ".wl[873].w[35]" 0.6991994;
	setAttr ".wl[873].w[31]" 0.3008005;
	setAttr -s 1 ".wl[874].w";
	setAttr ".wl[874].w[36]" 1;
	setAttr -s 1 ".wl[875].w";
	setAttr ".wl[875].w[36]" 1;
	setAttr -s 1 ".wl[876].w";
	setAttr ".wl[876].w[36]" 1;
	setAttr -s 2 ".wl[877].w";
	setAttr ".wl[877].w[31]" 0.5549423;
	setAttr ".wl[877].w[30]" 0.4450577;
	setAttr -s 2 ".wl[878].w";
	setAttr ".wl[878].w[35]" 0.6157189;
	setAttr ".wl[878].w[36]" 0.3842811;
	setAttr -s 2 ".wl[879].w";
	setAttr ".wl[879].w[31]" 0.6518586;
	setAttr ".wl[879].w[35]" 0.3481414;
	setAttr -s 3 ".wl[880].w";
	setAttr ".wl[880].w[30]" 0.8940128;
	setAttr ".wl[880].w[32]" 0.06794014;
	setAttr ".wl[880].w[31]" 0.03804705;
	setAttr -s 2 ".wl[881].w";
	setAttr ".wl[881].w[30]" 0.911111;
	setAttr ".wl[881].w[32]" 0.08888903;
	setAttr -s 1 ".wl[882].w";
	setAttr ".wl[882].w[36]" 1;
	setAttr -s 2 ".wl[883].w";
	setAttr ".wl[883].w[30]" 0.649488;
	setAttr ".wl[883].w[32]" 0.350512;
	setAttr -s 2 ".wl[884].w";
	setAttr ".wl[884].w[30]" 0.8252374;
	setAttr ".wl[884].w[33]" 0.1747627;
	setAttr -s 2 ".wl[885].w";
	setAttr ".wl[885].w[39]" 0.5095993;
	setAttr ".wl[885].w[32]" 0.4904007;
	setAttr -s 2 ".wl[886].w";
	setAttr ".wl[886].w[32]" 0.5071591;
	setAttr ".wl[886].w[39]" 0.4928409;
	setAttr -s 2 ".wl[887].w";
	setAttr ".wl[887].w[40]" 0.5191164;
	setAttr ".wl[887].w[39]" 0.4808837;
	setAttr -s 2 ".wl[888].w";
	setAttr ".wl[888].w[40]" 0.5151658;
	setAttr ".wl[888].w[39]" 0.4848342;
	setAttr -s 2 ".wl[889].w";
	setAttr ".wl[889].w[32]" 0.540648;
	setAttr ".wl[889].w[39]" 0.459352;
	setAttr -s 2 ".wl[890].w";
	setAttr ".wl[890].w[40]" 0.5305191;
	setAttr ".wl[890].w[39]" 0.4694809;
	setAttr -s 1 ".wl[891].w";
	setAttr ".wl[891].w[40]" 1;
	setAttr -s 1 ".wl[892].w";
	setAttr ".wl[892].w[40]" 1;
	setAttr -s 2 ".wl[893].w";
	setAttr ".wl[893].w[30]" 0.6730971;
	setAttr ".wl[893].w[33]" 0.3269029;
	setAttr -s 3 ".wl[894].w";
	setAttr ".wl[894].w[30]" 0.8348209;
	setAttr ".wl[894].w[33]" 0.1637815;
	setAttr ".wl[894].w[34]" 0.001397581;
	setAttr -s 3 ".wl[895].w";
	setAttr ".wl[895].w[30]" 0.6619374;
	setAttr ".wl[895].w[34]" 0.3045424;
	setAttr ".wl[895].w[33]" 0.03352027;
	setAttr -s 1 ".wl[896].w";
	setAttr ".wl[896].w[30]" 1;
	setAttr -s 2 ".wl[897].w";
	setAttr ".wl[897].w[34]" 0.6519096;
	setAttr ".wl[897].w[30]" 0.3480904;
	setAttr -s 1 ".wl[898].w";
	setAttr ".wl[898].w[40]" 1;
	setAttr -s 2 ".wl[899].w";
	setAttr ".wl[899].w[33]" 0.5084676;
	setAttr ".wl[899].w[41]" 0.4915324;
	setAttr -s 2 ".wl[900].w";
	setAttr ".wl[900].w[33]" 0.5074429;
	setAttr ".wl[900].w[41]" 0.4925571;
	setAttr -s 2 ".wl[901].w";
	setAttr ".wl[901].w[42]" 0.5714781;
	setAttr ".wl[901].w[41]" 0.4285219;
	setAttr -s 2 ".wl[902].w";
	setAttr ".wl[902].w[42]" 0.5200778;
	setAttr ".wl[902].w[41]" 0.4799222;
	setAttr -s 2 ".wl[903].w";
	setAttr ".wl[903].w[41]" 0.612297;
	setAttr ".wl[903].w[33]" 0.387703;
	setAttr -s 2 ".wl[904].w";
	setAttr ".wl[904].w[42]" 0.6090368;
	setAttr ".wl[904].w[41]" 0.3909632;
	setAttr -s 1 ".wl[905].w";
	setAttr ".wl[905].w[42]" 1;
	setAttr -s 1 ".wl[906].w";
	setAttr ".wl[906].w[42]" 1;
	setAttr -s 1 ".wl[907].w";
	setAttr ".wl[907].w[42]" 1;
	setAttr -s 2 ".wl[908].w";
	setAttr ".wl[908].w[43]" 0.506798;
	setAttr ".wl[908].w[34]" 0.4932019;
	setAttr -s 2 ".wl[909].w";
	setAttr ".wl[909].w[43]" 0.5105663;
	setAttr ".wl[909].w[34]" 0.4894337;
	setAttr -s 2 ".wl[910].w";
	setAttr ".wl[910].w[44]" 0.5998065;
	setAttr ".wl[910].w[43]" 0.4001934;
	setAttr -s 2 ".wl[911].w";
	setAttr ".wl[911].w[44]" 0.5674628;
	setAttr ".wl[911].w[43]" 0.4325372;
	setAttr -s 2 ".wl[912].w";
	setAttr ".wl[912].w[43]" 0.5614705;
	setAttr ".wl[912].w[34]" 0.4385295;
	setAttr -s 2 ".wl[913].w";
	setAttr ".wl[913].w[44]" 0.5914962;
	setAttr ".wl[913].w[43]" 0.4085039;
	setAttr -s 1 ".wl[914].w";
	setAttr ".wl[914].w[44]" 1;
	setAttr -s 1 ".wl[915].w";
	setAttr ".wl[915].w[44]" 1;
	setAttr -s 1 ".wl[916].w";
	setAttr ".wl[916].w[44]" 1;
	setAttr -s 1 ".wl[917].w";
	setAttr ".wl[917].w[44]" 1;
	setAttr -s 2 ".wl[918].w";
	setAttr ".wl[918].w[44]" 0.6182421;
	setAttr ".wl[918].w[43]" 0.3817579;
	setAttr -s 1 ".wl[919].w";
	setAttr ".wl[919].w[44]" 1;
	setAttr -s 2 ".wl[920].w";
	setAttr ".wl[920].w[44]" 0.5914962;
	setAttr ".wl[920].w[43]" 0.4085039;
	setAttr -s 2 ".wl[921].w";
	setAttr ".wl[921].w[43]" 0.5614705;
	setAttr ".wl[921].w[34]" 0.4385295;
	setAttr -s 2 ".wl[922].w";
	setAttr ".wl[922].w[34]" 0.5929241;
	setAttr ".wl[922].w[43]" 0.4070759;
	setAttr -s 3 ".wl[923].w";
	setAttr ".wl[923].w[30]" 0.8348209;
	setAttr ".wl[923].w[33]" 0.1637815;
	setAttr ".wl[923].w[34]" 0.001397581;
	setAttr -s 2 ".wl[924].w";
	setAttr ".wl[924].w[33]" 0.5074429;
	setAttr ".wl[924].w[41]" 0.4925571;
	setAttr -s 2 ".wl[925].w";
	setAttr ".wl[925].w[41]" 0.7761228;
	setAttr ".wl[925].w[33]" 0.2238772;
	setAttr -s 2 ".wl[926].w";
	setAttr ".wl[926].w[42]" 0.5714781;
	setAttr ".wl[926].w[41]" 0.4285219;
	setAttr -s 2 ".wl[927].w";
	setAttr ".wl[927].w[42]" 0.7833986;
	setAttr ".wl[927].w[41]" 0.2166014;
	setAttr -s 2 ".wl[928].w";
	setAttr ".wl[928].w[41]" 0.612297;
	setAttr ".wl[928].w[33]" 0.387703;
	setAttr -s 2 ".wl[929].w";
	setAttr ".wl[929].w[42]" 0.6090368;
	setAttr ".wl[929].w[41]" 0.3909632;
	setAttr -s 1 ".wl[930].w";
	setAttr ".wl[930].w[42]" 1;
	setAttr -s 1 ".wl[931].w";
	setAttr ".wl[931].w[42]" 1;
	setAttr -s 2 ".wl[932].w";
	setAttr ".wl[932].w[30]" 0.6730971;
	setAttr ".wl[932].w[33]" 0.3269029;
	setAttr -s 2 ".wl[933].w";
	setAttr ".wl[933].w[32]" 0.540648;
	setAttr ".wl[933].w[39]" 0.459352;
	setAttr -s 2 ".wl[934].w";
	setAttr ".wl[934].w[32]" 0.5019475;
	setAttr ".wl[934].w[39]" 0.4980525;
	setAttr -s 2 ".wl[935].w";
	setAttr ".wl[935].w[40]" 0.5151658;
	setAttr ".wl[935].w[39]" 0.4848342;
	setAttr -s 2 ".wl[936].w";
	setAttr ".wl[936].w[40]" 0.6133712;
	setAttr ".wl[936].w[39]" 0.3866288;
	setAttr -s 2 ".wl[937].w";
	setAttr ".wl[937].w[32]" 0.5071591;
	setAttr ".wl[937].w[39]" 0.4928409;
	setAttr -s 2 ".wl[938].w";
	setAttr ".wl[938].w[40]" 0.5305191;
	setAttr ".wl[938].w[39]" 0.4694809;
	setAttr -s 1 ".wl[939].w";
	setAttr ".wl[939].w[40]" 1;
	setAttr -s 1 ".wl[940].w";
	setAttr ".wl[940].w[40]" 1;
	setAttr -s 3 ".wl[941].w";
	setAttr ".wl[941].w[30]" 0.8940128;
	setAttr ".wl[941].w[32]" 0.06794014;
	setAttr ".wl[941].w[31]" 0.03804705;
	setAttr -s 2 ".wl[942].w";
	setAttr ".wl[942].w[31]" 0.6518586;
	setAttr ".wl[942].w[35]" 0.3481414;
	setAttr -s 2 ".wl[943].w";
	setAttr ".wl[943].w[35]" 0.6991994;
	setAttr ".wl[943].w[31]" 0.3008005;
	setAttr -s 2 ".wl[944].w";
	setAttr ".wl[944].w[35]" 0.6157189;
	setAttr ".wl[944].w[36]" 0.3842811;
	setAttr -s 2 ".wl[945].w";
	setAttr ".wl[945].w[35]" 0.5554221;
	setAttr ".wl[945].w[36]" 0.4445779;
	setAttr -s 1 ".wl[946].w";
	setAttr ".wl[946].w[36]" 1;
	setAttr -s 1 ".wl[947].w";
	setAttr ".wl[947].w[36]" 1;
	setAttr -s 1 ".wl[948].w";
	setAttr ".wl[948].w[40]" 1;
	setAttr -s 1 ".wl[949].w";
	setAttr ".wl[949].w[36]" 1;
	setAttr -s 1 ".wl[950].w";
	setAttr ".wl[950].w[36]" 1;
	setAttr -s 1 ".wl[951].w";
	setAttr ".wl[951].w[40]" 1;
	setAttr -s 1 ".wl[952].w";
	setAttr ".wl[952].w[42]" 1;
	setAttr -s 1 ".wl[953].w";
	setAttr ".wl[953].w[42]" 1;
	setAttr -s 2 ".wl[954].w";
	setAttr ".wl[954].w[37]" 0.851334;
	setAttr ".wl[954].w[30]" 0.148666;
	setAttr -s 3 ".wl[955].w";
	setAttr ".wl[955].w[37]" 0.668471;
	setAttr ".wl[955].w[30]" 0.2741562;
	setAttr ".wl[955].w[38]" 0.05737278;
	setAttr -s 3 ".wl[956].w";
	setAttr ".wl[956].w[37]" 0.4178532;
	setAttr ".wl[956].w[38]" 0.2910734;
	setAttr ".wl[956].w[30]" 0.2910734;
	setAttr -s 2 ".wl[957].w";
	setAttr ".wl[957].w[37]" 0.968129;
	setAttr ".wl[957].w[30]" 0.03187102;
	setAttr -s 2 ".wl[958].w";
	setAttr ".wl[958].w[37]" 0.9546341;
	setAttr ".wl[958].w[30]" 0.04536594;
	setAttr -s 2 ".wl[959].w";
	setAttr ".wl[959].w[37]" 0.713107;
	setAttr ".wl[959].w[30]" 0.286893;
	setAttr -s 1 ".wl[960].w";
	setAttr ".wl[960].w[37]" 1;
	setAttr -s 2 ".wl[961].w";
	setAttr ".wl[961].w[37]" 0.7469361;
	setAttr ".wl[961].w[30]" 0.2530639;
	setAttr -s 1 ".wl[962].w";
	setAttr ".wl[962].w[37]" 1;
	setAttr -s 2 ".wl[963].w";
	setAttr ".wl[963].w[30]" 0.5531521;
	setAttr ".wl[963].w[37]" 0.4468479;
	setAttr -s 2 ".wl[964].w";
	setAttr ".wl[964].w[37]" 0.8761898;
	setAttr ".wl[964].w[30]" 0.1238102;
	setAttr -s 3 ".wl[965].w";
	setAttr ".wl[965].w[30]" 0.5713439;
	setAttr ".wl[965].w[37]" 0.4218917;
	setAttr ".wl[965].w[38]" 0.006764418;
	setAttr -s 3 ".wl[966].w";
	setAttr ".wl[966].w[30]" 0.5713439;
	setAttr ".wl[966].w[37]" 0.4218917;
	setAttr ".wl[966].w[38]" 0.006764418;
	setAttr -s 2 ".wl[967].w";
	setAttr ".wl[967].w[37]" 0.8761898;
	setAttr ".wl[967].w[30]" 0.1238102;
	setAttr -s 1 ".wl[968].w";
	setAttr ".wl[968].w[37]" 1;
	setAttr -s 1 ".wl[969].w";
	setAttr ".wl[969].w[37]" 1;
	setAttr -s 1 ".wl[970].w";
	setAttr ".wl[970].w[37]" 1;
	setAttr -s 1 ".wl[971].w";
	setAttr ".wl[971].w[37]" 1;
	setAttr -s 1 ".wl[972].w";
	setAttr ".wl[972].w[37]" 1;
	setAttr -s 1 ".wl[973].w";
	setAttr ".wl[973].w[37]" 1;
	setAttr -s 1 ".wl[974].w";
	setAttr ".wl[974].w[37]" 1;
	setAttr -s 2 ".wl[975].w";
	setAttr ".wl[975].w[37]" 0.9721004;
	setAttr ".wl[975].w[11]" 0.02789958;
	setAttr -s 2 ".wl[976].w";
	setAttr ".wl[976].w[37]" 0.9637673;
	setAttr ".wl[976].w[11]" 0.03623274;
	setAttr -s 2 ".wl[977].w";
	setAttr ".wl[977].w[37]" 0.6407403;
	setAttr ".wl[977].w[11]" 0.3592597;
	setAttr -s 2 ".wl[978].w";
	setAttr ".wl[978].w[37]" 0.5923601;
	setAttr ".wl[978].w[11]" 0.4076399;
	setAttr -s 2 ".wl[979].w";
	setAttr ".wl[979].w[11]" 0.869795;
	setAttr ".wl[979].w[37]" 0.130205;
	setAttr -s 2 ".wl[980].w";
	setAttr ".wl[980].w[11]" 0.7100382;
	setAttr ".wl[980].w[37]" 0.2899618;
	setAttr -s 2 ".wl[981].w";
	setAttr ".wl[981].w[11]" 0.7780187;
	setAttr ".wl[981].w[37]" 0.2219813;
	setAttr -s 2 ".wl[982].w";
	setAttr ".wl[982].w[37]" 0.5933467;
	setAttr ".wl[982].w[11]" 0.4066533;
	setAttr -s 2 ".wl[983].w";
	setAttr ".wl[983].w[11]" 0.8660251;
	setAttr ".wl[983].w[37]" 0.1339749;
	setAttr -s 2 ".wl[984].w";
	setAttr ".wl[984].w[37]" 0.6670635;
	setAttr ".wl[984].w[11]" 0.3329365;
	setAttr -s 2 ".wl[985].w";
	setAttr ".wl[985].w[11]" 0.9582605;
	setAttr ".wl[985].w[37]" 0.04173946;
	setAttr -s 2 ".wl[986].w";
	setAttr ".wl[986].w[37]" 0.5054393;
	setAttr ".wl[986].w[11]" 0.4945607;
	setAttr -s 2 ".wl[987].w";
	setAttr ".wl[987].w[11]" 0.8554751;
	setAttr ".wl[987].w[37]" 0.1445249;
	setAttr -s 2 ".wl[988].w";
	setAttr ".wl[988].w[37]" 0.5902203;
	setAttr ".wl[988].w[11]" 0.4097798;
	setAttr -s 2 ".wl[989].w";
	setAttr ".wl[989].w[11]" 0.7100382;
	setAttr ".wl[989].w[37]" 0.2899618;
	setAttr -s 2 ".wl[990].w";
	setAttr ".wl[990].w[37]" 0.5923601;
	setAttr ".wl[990].w[11]" 0.4076399;
	setAttr -s 1 ".wl[991].w";
	setAttr ".wl[991].w[37]" 1;
	setAttr -s 2 ".wl[992].w";
	setAttr ".wl[992].w[37]" 0.9948849;
	setAttr ".wl[992].w[11]" 0.005115095;
	setAttr -s 2 ".wl[993].w";
	setAttr ".wl[993].w[37]" 0.9801667;
	setAttr ".wl[993].w[11]" 0.01983323;
	setAttr -s 1 ".wl[994].w";
	setAttr ".wl[994].w[37]" 1;
	setAttr -s 1 ".wl[995].w";
	setAttr ".wl[995].w[11]" 1;
	setAttr -s 3 ".wl[996].w";
	setAttr ".wl[996].w[11]" 0.9133313;
	setAttr ".wl[996].w[10]" 0.0847624;
	setAttr ".wl[996].w[9]" 0.00190638;
	setAttr -s 1 ".wl[997].w";
	setAttr ".wl[997].w[11]" 1;
	setAttr -s 1 ".wl[998].w";
	setAttr ".wl[998].w[11]" 1;
	setAttr -s 2 ".wl[999].w";
	setAttr ".wl[999].w[11]" 0.8743559;
	setAttr ".wl[999].w[10]" 0.1256442;
	setAttr -s 2 ".wl[1000].w";
	setAttr ".wl[1000].w[11]" 0.725379;
	setAttr ".wl[1000].w[10]" 0.2746211;
	setAttr -s 2 ".wl[1001].w";
	setAttr ".wl[1001].w[11]" 0.8173239;
	setAttr ".wl[1001].w[10]" 0.1826762;
	setAttr -s 2 ".wl[1002].w";
	setAttr ".wl[1002].w[11]" 0.6008091;
	setAttr ".wl[1002].w[10]" 0.3991909;
	setAttr -s 2 ".wl[1003].w";
	setAttr ".wl[1003].w[11]" 0.7382636;
	setAttr ".wl[1003].w[10]" 0.2617364;
	setAttr -s 2 ".wl[1004].w";
	setAttr ".wl[1004].w[11]" 0.5785979;
	setAttr ".wl[1004].w[10]" 0.4214022;
	setAttr -s 3 ".wl[1005].w";
	setAttr ".wl[1005].w[11]" 0.6021942;
	setAttr ".wl[1005].w[10]" 0.3911084;
	setAttr ".wl[1005].w[9]" 0.006697411;
	setAttr -s 2 ".wl[1006].w";
	setAttr ".wl[1006].w[11]" 0.7091557;
	setAttr ".wl[1006].w[10]" 0.2908443;
	setAttr -s 3 ".wl[1007].w";
	setAttr ".wl[1007].w[10]" 0.4601997;
	setAttr ".wl[1007].w[9]" 0.452598;
	setAttr ".wl[1007].w[11]" 0.08720237;
	setAttr -s 1 ".wl[1008].w";
	setAttr ".wl[1008].w[11]" 1;
	setAttr -s 1 ".wl[1009].w";
	setAttr ".wl[1009].w[11]" 1;
	setAttr -s 3 ".wl[1010].w";
	setAttr ".wl[1010].w[11]" 0.9133313;
	setAttr ".wl[1010].w[10]" 0.0847624;
	setAttr ".wl[1010].w[9]" 0.00190638;
	setAttr -s 3 ".wl[1011].w";
	setAttr ".wl[1011].w[11]" 0.5394285;
	setAttr ".wl[1011].w[10]" 0.311722;
	setAttr ".wl[1011].w[9]" 0.1488495;
	setAttr -s 1 ".wl[1012].w";
	setAttr ".wl[1012].w[44]" 1;
	setAttr -s 1 ".wl[1013].w";
	setAttr ".wl[1013].w[37]" 1;
	setAttr -s 2 ".wl[1014].w";
	setAttr ".wl[1014].w[24]" 0.6062742;
	setAttr ".wl[1014].w[15]" 0.3937257;
	setAttr -s 2 ".wl[1015].w";
	setAttr ".wl[1015].w[24]" 0.8233563;
	setAttr ".wl[1015].w[15]" 0.1766438;
	setAttr -s 3 ".wl[1016].w";
	setAttr ".wl[1016].w[47]" 0.8071573;
	setAttr ".wl[1016].w[49]" 0.09884833;
	setAttr ".wl[1016].w[48]" 0.09399445;
	setAttr -s 1 ".wl[1017].w";
	setAttr ".wl[1017].w[47]" 1;
	setAttr -s 1 ".wl[1018].w";
	setAttr ".wl[1018].w[47]" 1;
	setAttr -s 3 ".wl[1019].w";
	setAttr ".wl[1019].w[50]" 0.4879941;
	setAttr ".wl[1019].w[47]" 0.443079;
	setAttr ".wl[1019].w[49]" 0.06892698;
	setAttr -s 2 ".wl[1020].w";
	setAttr ".wl[1020].w[47]" 0.7762845;
	setAttr ".wl[1020].w[50]" 0.2237155;
	setAttr -s 1 ".wl[1021].w";
	setAttr ".wl[1021].w[47]" 1;
	setAttr -s 2 ".wl[1022].w";
	setAttr ".wl[1022].w[51]" 0.8570381;
	setAttr ".wl[1022].w[47]" 0.1429619;
	setAttr -s 1 ".wl[1023].w";
	setAttr ".wl[1023].w[47]" 1;
	setAttr -s 3 ".wl[1024].w";
	setAttr ".wl[1024].w[47]" 0.4712093;
	setAttr ".wl[1024].w[55]" 0.2909337;
	setAttr ".wl[1024].w[62]" 0.237857;
	setAttr -s 3 ".wl[1025].w";
	setAttr ".wl[1025].w[47]" 0.6453688;
	setAttr ".wl[1025].w[55]" 0.201952;
	setAttr ".wl[1025].w[62]" 0.1526792;
	setAttr -s 2 ".wl[1026].w";
	setAttr ".wl[1026].w[47]" 0.7764939;
	setAttr ".wl[1026].w[48]" 0.2235061;
	setAttr -s 2 ".wl[1027].w";
	setAttr ".wl[1027].w[48]" 0.8427122;
	setAttr ".wl[1027].w[47]" 0.1572878;
	setAttr -s 2 ".wl[1028].w";
	setAttr ".wl[1028].w[63]" 0.5538786;
	setAttr ".wl[1028].w[62]" 0.4461214;
	setAttr -s 2 ".wl[1029].w";
	setAttr ".wl[1029].w[63]" 0.5378537;
	setAttr ".wl[1029].w[62]" 0.4621464;
	setAttr -s 2 ".wl[1030].w";
	setAttr ".wl[1030].w[55]" 0.5500913;
	setAttr ".wl[1030].w[62]" 0.4499087;
	setAttr -s 3 ".wl[1031].w";
	setAttr ".wl[1031].w[47]" 0.5572127;
	setAttr ".wl[1031].w[55]" 0.4413639;
	setAttr ".wl[1031].w[54]" 0.001423424;
	setAttr -s 3 ".wl[1032].w";
	setAttr ".wl[1032].w[47]" 0.5713439;
	setAttr ".wl[1032].w[54]" 0.4218917;
	setAttr ".wl[1032].w[55]" 0.006764418;
	setAttr -s 3 ".wl[1033].w";
	setAttr ".wl[1033].w[54]" 0.4178532;
	setAttr ".wl[1033].w[55]" 0.2910734;
	setAttr ".wl[1033].w[47]" 0.2910734;
	setAttr -s 1 ".wl[1034].w";
	setAttr ".wl[1034].w[47]" 1;
	setAttr -s 1 ".wl[1035].w";
	setAttr ".wl[1035].w[47]" 1;
	setAttr -s 2 ".wl[1036].w";
	setAttr ".wl[1036].w[47]" 0.5531521;
	setAttr ".wl[1036].w[54]" 0.4468479;
	setAttr -s 2 ".wl[1037].w";
	setAttr ".wl[1037].w[55]" 0.540329;
	setAttr ".wl[1037].w[62]" 0.459671;
	setAttr -s 1 ".wl[1038].w";
	setAttr ".wl[1038].w[63]" 1;
	setAttr -s 2 ".wl[1039].w";
	setAttr ".wl[1039].w[63]" 0.5248129;
	setAttr ".wl[1039].w[62]" 0.4751871;
	setAttr -s 1 ".wl[1040].w";
	setAttr ".wl[1040].w[63]" 1;
	setAttr -s 1 ".wl[1041].w";
	setAttr ".wl[1041].w[63]" 1;
	setAttr -s 1 ".wl[1042].w";
	setAttr ".wl[1042].w[47]" 1;
	setAttr -s 2 ".wl[1043].w";
	setAttr ".wl[1043].w[54]" 0.7469361;
	setAttr ".wl[1043].w[47]" 0.2530639;
	setAttr -s 1 ".wl[1044].w";
	setAttr ".wl[1044].w[63]" 1;
	setAttr -s 2 ".wl[1045].w";
	setAttr ".wl[1045].w[47]" 0.9947489;
	setAttr ".wl[1045].w[51]" 0.005251141;
	setAttr -s 2 ".wl[1046].w";
	setAttr ".wl[1046].w[54]" 0.713107;
	setAttr ".wl[1046].w[47]" 0.286893;
	setAttr -s 2 ".wl[1047].w";
	setAttr ".wl[1047].w[47]" 0.9722229;
	setAttr ".wl[1047].w[50]" 0.02777712;
	setAttr -s 2 ".wl[1048].w";
	setAttr ".wl[1048].w[47]" 0.9994596;
	setAttr ".wl[1048].w[49]" 0.000540487;
	setAttr -s 2 ".wl[1049].w";
	setAttr ".wl[1049].w[47]" 0.9899292;
	setAttr ".wl[1049].w[48]" 0.01007082;
	setAttr -s 3 ".wl[1050].w";
	setAttr ".wl[1050].w[54]" 0.668471;
	setAttr ".wl[1050].w[47]" 0.2741562;
	setAttr ".wl[1050].w[55]" 0.05737278;
	setAttr -s 3 ".wl[1051].w";
	setAttr ".wl[1051].w[55]" 0.7299622;
	setAttr ".wl[1051].w[62]" 0.2364311;
	setAttr ".wl[1051].w[47]" 0.03360678;
	setAttr -s 3 ".wl[1052].w";
	setAttr ".wl[1052].w[54]" 0.4178532;
	setAttr ".wl[1052].w[55]" 0.2910734;
	setAttr ".wl[1052].w[47]" 0.2910734;
	setAttr -s 2 ".wl[1053].w";
	setAttr ".wl[1053].w[55]" 0.540329;
	setAttr ".wl[1053].w[62]" 0.459671;
	setAttr -s 2 ".wl[1054].w";
	setAttr ".wl[1054].w[63]" 0.5525092;
	setAttr ".wl[1054].w[62]" 0.4474908;
	setAttr -s 2 ".wl[1055].w";
	setAttr ".wl[1055].w[63]" 0.5248129;
	setAttr ".wl[1055].w[62]" 0.4751871;
	setAttr -s 1 ".wl[1056].w";
	setAttr ".wl[1056].w[63]" 1;
	setAttr -s 1 ".wl[1057].w";
	setAttr ".wl[1057].w[63]" 1;
	setAttr -s 2 ".wl[1058].w";
	setAttr ".wl[1058].w[63]" 0.5538786;
	setAttr ".wl[1058].w[62]" 0.4461214;
	setAttr -s 1 ".wl[1059].w";
	setAttr ".wl[1059].w[63]" 1;
	setAttr -s 3 ".wl[1060].w";
	setAttr ".wl[1060].w[47]" 0.6453688;
	setAttr ".wl[1060].w[55]" 0.201952;
	setAttr ".wl[1060].w[62]" 0.1526792;
	setAttr -s 2 ".wl[1061].w";
	setAttr ".wl[1061].w[47]" 0.7764939;
	setAttr ".wl[1061].w[48]" 0.2235061;
	setAttr -s 2 ".wl[1062].w";
	setAttr ".wl[1062].w[47]" 0.5609277;
	setAttr ".wl[1062].w[48]" 0.4390722;
	setAttr -s 1 ".wl[1063].w";
	setAttr ".wl[1063].w[48]" 1;
	setAttr -s 2 ".wl[1064].w";
	setAttr ".wl[1064].w[48]" 0.8427122;
	setAttr ".wl[1064].w[47]" 0.1572878;
	setAttr -s 2 ".wl[1065].w";
	setAttr ".wl[1065].w[48]" 0.5617339;
	setAttr ".wl[1065].w[52]" 0.4382662;
	setAttr -s 2 ".wl[1066].w";
	setAttr ".wl[1066].w[52]" 0.5006994;
	setAttr ".wl[1066].w[48]" 0.4993006;
	setAttr -s 2 ".wl[1067].w";
	setAttr ".wl[1067].w[52]" 0.6119671;
	setAttr ".wl[1067].w[53]" 0.3880328;
	setAttr -s 2 ".wl[1068].w";
	setAttr ".wl[1068].w[52]" 0.6156192;
	setAttr ".wl[1068].w[53]" 0.3843808;
	setAttr -s 2 ".wl[1069].w";
	setAttr ".wl[1069].w[52]" 0.533022;
	setAttr ".wl[1069].w[53]" 0.466978;
	setAttr -s 2 ".wl[1070].w";
	setAttr ".wl[1070].w[52]" 0.6991994;
	setAttr ".wl[1070].w[48]" 0.3008005;
	setAttr -s 1 ".wl[1071].w";
	setAttr ".wl[1071].w[53]" 1;
	setAttr -s 1 ".wl[1072].w";
	setAttr ".wl[1072].w[53]" 1;
	setAttr -s 1 ".wl[1073].w";
	setAttr ".wl[1073].w[53]" 1;
	setAttr -s 2 ".wl[1074].w";
	setAttr ".wl[1074].w[48]" 0.5549423;
	setAttr ".wl[1074].w[47]" 0.4450577;
	setAttr -s 2 ".wl[1075].w";
	setAttr ".wl[1075].w[52]" 0.6093913;
	setAttr ".wl[1075].w[53]" 0.3906088;
	setAttr -s 2 ".wl[1076].w";
	setAttr ".wl[1076].w[48]" 0.6217374;
	setAttr ".wl[1076].w[52]" 0.3782626;
	setAttr -s 3 ".wl[1077].w";
	setAttr ".wl[1077].w[47]" 0.9217043;
	setAttr ".wl[1077].w[49]" 0.04899577;
	setAttr ".wl[1077].w[48]" 0.02929994;
	setAttr -s 2 ".wl[1078].w";
	setAttr ".wl[1078].w[47]" 0.9378798;
	setAttr ".wl[1078].w[49]" 0.06212021;
	setAttr -s 1 ".wl[1079].w";
	setAttr ".wl[1079].w[53]" 1;
	setAttr -s 2 ".wl[1080].w";
	setAttr ".wl[1080].w[47]" 0.649488;
	setAttr ".wl[1080].w[49]" 0.350512;
	setAttr -s 2 ".wl[1081].w";
	setAttr ".wl[1081].w[47]" 0.8586602;
	setAttr ".wl[1081].w[50]" 0.1413399;
	setAttr -s 2 ".wl[1082].w";
	setAttr ".wl[1082].w[56]" 0.504531;
	setAttr ".wl[1082].w[49]" 0.4954689;
	setAttr -s 2 ".wl[1083].w";
	setAttr ".wl[1083].w[49]" 0.5071591;
	setAttr ".wl[1083].w[56]" 0.4928409;
	setAttr -s 2 ".wl[1084].w";
	setAttr ".wl[1084].w[57]" 0.5274847;
	setAttr ".wl[1084].w[56]" 0.4725153;
	setAttr -s 2 ".wl[1085].w";
	setAttr ".wl[1085].w[57]" 0.5069454;
	setAttr ".wl[1085].w[56]" 0.4930546;
	setAttr -s 2 ".wl[1086].w";
	setAttr ".wl[1086].w[49]" 0.540648;
	setAttr ".wl[1086].w[56]" 0.459352;
	setAttr -s 2 ".wl[1087].w";
	setAttr ".wl[1087].w[57]" 0.5192409;
	setAttr ".wl[1087].w[56]" 0.4807591;
	setAttr -s 1 ".wl[1088].w";
	setAttr ".wl[1088].w[57]" 1;
	setAttr -s 1 ".wl[1089].w";
	setAttr ".wl[1089].w[57]" 1;
	setAttr -s 2 ".wl[1090].w";
	setAttr ".wl[1090].w[47]" 0.6730971;
	setAttr ".wl[1090].w[50]" 0.3269029;
	setAttr -s 3 ".wl[1091].w";
	setAttr ".wl[1091].w[47]" 0.8348209;
	setAttr ".wl[1091].w[50]" 0.1637815;
	setAttr ".wl[1091].w[51]" 0.001397581;
	setAttr -s 3 ".wl[1092].w";
	setAttr ".wl[1092].w[47]" 0.7032498;
	setAttr ".wl[1092].w[51]" 0.259856;
	setAttr ".wl[1092].w[50]" 0.03689429;
	setAttr -s 1 ".wl[1093].w";
	setAttr ".wl[1093].w[47]" 1;
	setAttr -s 2 ".wl[1094].w";
	setAttr ".wl[1094].w[51]" 0.6519096;
	setAttr ".wl[1094].w[47]" 0.3480904;
	setAttr -s 1 ".wl[1095].w";
	setAttr ".wl[1095].w[57]" 1;
	setAttr -s 2 ".wl[1096].w";
	setAttr ".wl[1096].w[50]" 0.5200028;
	setAttr ".wl[1096].w[58]" 0.4799972;
	setAttr -s 2 ".wl[1097].w";
	setAttr ".wl[1097].w[50]" 0.5123962;
	setAttr ".wl[1097].w[58]" 0.4876039;
	setAttr -s 2 ".wl[1098].w";
	setAttr ".wl[1098].w[59]" 0.5435259;
	setAttr ".wl[1098].w[58]" 0.4564742;
	setAttr -s 2 ".wl[1099].w";
	setAttr ".wl[1099].w[59]" 0.535002;
	setAttr ".wl[1099].w[58]" 0.4649981;
	setAttr -s 2 ".wl[1100].w";
	setAttr ".wl[1100].w[58]" 0.5944491;
	setAttr ".wl[1100].w[50]" 0.4055509;
	setAttr -s 2 ".wl[1101].w";
	setAttr ".wl[1101].w[59]" 0.5793287;
	setAttr ".wl[1101].w[58]" 0.4206713;
	setAttr -s 1 ".wl[1102].w";
	setAttr ".wl[1102].w[59]" 1;
	setAttr -s 1 ".wl[1103].w";
	setAttr ".wl[1103].w[59]" 1;
	setAttr -s 1 ".wl[1104].w";
	setAttr ".wl[1104].w[59]" 1;
	setAttr -s 2 ".wl[1105].w";
	setAttr ".wl[1105].w[60]" 0.5010323;
	setAttr ".wl[1105].w[51]" 0.4989677;
	setAttr -s 2 ".wl[1106].w";
	setAttr ".wl[1106].w[60]" 0.5022557;
	setAttr ".wl[1106].w[51]" 0.4977443;
	setAttr -s 2 ".wl[1107].w";
	setAttr ".wl[1107].w[61]" 0.5693012;
	setAttr ".wl[1107].w[60]" 0.4306988;
	setAttr -s 2 ".wl[1108].w";
	setAttr ".wl[1108].w[61]" 0.6044985;
	setAttr ".wl[1108].w[60]" 0.3955015;
	setAttr -s 2 ".wl[1109].w";
	setAttr ".wl[1109].w[60]" 0.5402355;
	setAttr ".wl[1109].w[51]" 0.4597645;
	setAttr -s 2 ".wl[1110].w";
	setAttr ".wl[1110].w[61]" 0.5734871;
	setAttr ".wl[1110].w[60]" 0.4265129;
	setAttr -s 1 ".wl[1111].w";
	setAttr ".wl[1111].w[61]" 1;
	setAttr -s 1 ".wl[1112].w";
	setAttr ".wl[1112].w[61]" 1;
	setAttr -s 1 ".wl[1113].w";
	setAttr ".wl[1113].w[61]" 1;
	setAttr -s 1 ".wl[1114].w";
	setAttr ".wl[1114].w[61]" 1;
	setAttr -s 2 ".wl[1115].w";
	setAttr ".wl[1115].w[61]" 0.5694788;
	setAttr ".wl[1115].w[60]" 0.4305212;
	setAttr -s 1 ".wl[1116].w";
	setAttr ".wl[1116].w[61]" 1;
	setAttr -s 2 ".wl[1117].w";
	setAttr ".wl[1117].w[61]" 0.5734871;
	setAttr ".wl[1117].w[60]" 0.4265129;
	setAttr -s 2 ".wl[1118].w";
	setAttr ".wl[1118].w[60]" 0.5402355;
	setAttr ".wl[1118].w[51]" 0.4597645;
	setAttr -s 2 ".wl[1119].w";
	setAttr ".wl[1119].w[51]" 0.5873106;
	setAttr ".wl[1119].w[60]" 0.4126894;
	setAttr -s 3 ".wl[1120].w";
	setAttr ".wl[1120].w[47]" 0.8348209;
	setAttr ".wl[1120].w[50]" 0.1637815;
	setAttr ".wl[1120].w[51]" 0.001397581;
	setAttr -s 2 ".wl[1121].w";
	setAttr ".wl[1121].w[50]" 0.5123962;
	setAttr ".wl[1121].w[58]" 0.4876039;
	setAttr -s 2 ".wl[1122].w";
	setAttr ".wl[1122].w[58]" 0.7406913;
	setAttr ".wl[1122].w[50]" 0.2593087;
	setAttr -s 2 ".wl[1123].w";
	setAttr ".wl[1123].w[59]" 0.5435259;
	setAttr ".wl[1123].w[58]" 0.4564742;
	setAttr -s 2 ".wl[1124].w";
	setAttr ".wl[1124].w[59]" 0.7352803;
	setAttr ".wl[1124].w[58]" 0.2647197;
	setAttr -s 2 ".wl[1125].w";
	setAttr ".wl[1125].w[58]" 0.5944491;
	setAttr ".wl[1125].w[50]" 0.4055509;
	setAttr -s 2 ".wl[1126].w";
	setAttr ".wl[1126].w[59]" 0.5793287;
	setAttr ".wl[1126].w[58]" 0.4206713;
	setAttr -s 1 ".wl[1127].w";
	setAttr ".wl[1127].w[59]" 1;
	setAttr -s 1 ".wl[1128].w";
	setAttr ".wl[1128].w[59]" 1;
	setAttr -s 2 ".wl[1129].w";
	setAttr ".wl[1129].w[47]" 0.6730971;
	setAttr ".wl[1129].w[50]" 0.3269029;
	setAttr -s 2 ".wl[1130].w";
	setAttr ".wl[1130].w[49]" 0.540648;
	setAttr ".wl[1130].w[56]" 0.459352;
	setAttr -s 2 ".wl[1131].w";
	setAttr ".wl[1131].w[49]" 0.5019475;
	setAttr ".wl[1131].w[56]" 0.4980525;
	setAttr -s 2 ".wl[1132].w";
	setAttr ".wl[1132].w[57]" 0.5069454;
	setAttr ".wl[1132].w[56]" 0.4930546;
	setAttr -s 2 ".wl[1133].w";
	setAttr ".wl[1133].w[57]" 0.5620909;
	setAttr ".wl[1133].w[56]" 0.4379091;
	setAttr -s 2 ".wl[1134].w";
	setAttr ".wl[1134].w[49]" 0.5071591;
	setAttr ".wl[1134].w[56]" 0.4928409;
	setAttr -s 2 ".wl[1135].w";
	setAttr ".wl[1135].w[57]" 0.5192409;
	setAttr ".wl[1135].w[56]" 0.4807591;
	setAttr -s 1 ".wl[1136].w";
	setAttr ".wl[1136].w[57]" 1;
	setAttr -s 1 ".wl[1137].w";
	setAttr ".wl[1137].w[57]" 1;
	setAttr -s 3 ".wl[1138].w";
	setAttr ".wl[1138].w[47]" 0.9217043;
	setAttr ".wl[1138].w[49]" 0.04899577;
	setAttr ".wl[1138].w[48]" 0.02929994;
	setAttr -s 2 ".wl[1139].w";
	setAttr ".wl[1139].w[48]" 0.6217374;
	setAttr ".wl[1139].w[52]" 0.3782626;
	setAttr -s 2 ".wl[1140].w";
	setAttr ".wl[1140].w[52]" 0.6991994;
	setAttr ".wl[1140].w[48]" 0.3008005;
	setAttr -s 2 ".wl[1141].w";
	setAttr ".wl[1141].w[52]" 0.6093913;
	setAttr ".wl[1141].w[53]" 0.3906088;
	setAttr -s 2 ".wl[1142].w";
	setAttr ".wl[1142].w[52]" 0.533022;
	setAttr ".wl[1142].w[53]" 0.466978;
	setAttr -s 1 ".wl[1143].w";
	setAttr ".wl[1143].w[53]" 1;
	setAttr -s 1 ".wl[1144].w";
	setAttr ".wl[1144].w[53]" 1;
	setAttr -s 1 ".wl[1145].w";
	setAttr ".wl[1145].w[57]" 1;
	setAttr -s 1 ".wl[1146].w";
	setAttr ".wl[1146].w[53]" 1;
	setAttr -s 1 ".wl[1147].w";
	setAttr ".wl[1147].w[53]" 1;
	setAttr -s 1 ".wl[1148].w";
	setAttr ".wl[1148].w[57]" 1;
	setAttr -s 1 ".wl[1149].w";
	setAttr ".wl[1149].w[59]" 1;
	setAttr -s 1 ".wl[1150].w";
	setAttr ".wl[1150].w[59]" 1;
	setAttr -s 1 ".wl[1151].w";
	setAttr ".wl[1151].w[61]" 1;
	setAttr -s 3 ".wl[1152].w";
	setAttr ".wl[1152].w[24]" 0.919126;
	setAttr ".wl[1152].w[15]" 0.07946624;
	setAttr ".wl[1152].w[9]" 0.001407889;
	setAttr -s 1 ".wl[1153].w";
	setAttr ".wl[1153].w[24]" 1;
	setAttr -s 3 ".wl[1154].w";
	setAttr ".wl[1154].w[24]" 0.919126;
	setAttr ".wl[1154].w[15]" 0.07946624;
	setAttr ".wl[1154].w[9]" 0.001407889;
	setAttr -s 1 ".wl[1155].w";
	setAttr ".wl[1155].w[24]" 1;
	setAttr -s 1 ".wl[1156].w";
	setAttr ".wl[1156].w[24]" 1;
	setAttr -s 2 ".wl[1157].w";
	setAttr ".wl[1157].w[24]" 0.8843817;
	setAttr ".wl[1157].w[15]" 0.1156183;
	setAttr -s 1 ".wl[1158].w";
	setAttr ".wl[1158].w[10]" 1;
	setAttr -s 1 ".wl[1159].w";
	setAttr ".wl[1159].w[10]" 1;
	setAttr -s 1 ".wl[1160].w";
	setAttr ".wl[1160].w[10]" 1;
	setAttr -s 1 ".wl[1161].w";
	setAttr ".wl[1161].w[10]" 1;
	setAttr -s 1 ".wl[1162].w";
	setAttr ".wl[1162].w[10]" 1;
	setAttr -s 1 ".wl[1163].w";
	setAttr ".wl[1163].w[10]" 1;
	setAttr -s 1 ".wl[1164].w";
	setAttr ".wl[1164].w[10]" 1;
	setAttr -s 1 ".wl[1165].w";
	setAttr ".wl[1165].w[10]" 1;
	setAttr -s 1 ".wl[1166].w";
	setAttr ".wl[1166].w[10]" 1;
	setAttr -s 1 ".wl[1167].w";
	setAttr ".wl[1167].w[10]" 1;
	setAttr -s 1 ".wl[1168].w";
	setAttr ".wl[1168].w[10]" 1;
	setAttr -s 1 ".wl[1169].w";
	setAttr ".wl[1169].w[10]" 1;
	setAttr -s 1 ".wl[1170].w";
	setAttr ".wl[1170].w[10]" 1;
	setAttr -s 1 ".wl[1171].w";
	setAttr ".wl[1171].w[10]" 1;
	setAttr -s 1 ".wl[1172].w";
	setAttr ".wl[1172].w[10]" 1;
	setAttr -s 1 ".wl[1173].w";
	setAttr ".wl[1173].w[10]" 1;
	setAttr -s 1 ".wl[1174].w";
	setAttr ".wl[1174].w[10]" 1;
	setAttr -s 1 ".wl[1175].w";
	setAttr ".wl[1175].w[10]" 1;
	setAttr -s 1 ".wl[1176].w";
	setAttr ".wl[1176].w[10]" 1;
	setAttr -s 1 ".wl[1177].w";
	setAttr ".wl[1177].w[10]" 1;
	setAttr -s 1 ".wl[1178].w";
	setAttr ".wl[1178].w[10]" 1;
	setAttr -s 1 ".wl[1179].w";
	setAttr ".wl[1179].w[10]" 1;
	setAttr -s 1 ".wl[1180].w";
	setAttr ".wl[1180].w[10]" 1;
	setAttr -s 1 ".wl[1181].w";
	setAttr ".wl[1181].w[10]" 1;
	setAttr -s 1 ".wl[1182].w";
	setAttr ".wl[1182].w[10]" 1;
	setAttr -s 1 ".wl[1183].w";
	setAttr ".wl[1183].w[10]" 1;
	setAttr -s 1 ".wl[1184].w";
	setAttr ".wl[1184].w[10]" 1;
	setAttr -s 1 ".wl[1185].w";
	setAttr ".wl[1185].w[10]" 1;
	setAttr -s 1 ".wl[1186].w";
	setAttr ".wl[1186].w[10]" 1;
	setAttr -s 1 ".wl[1187].w";
	setAttr ".wl[1187].w[10]" 1;
	setAttr -s 1 ".wl[1188].w";
	setAttr ".wl[1188].w[10]" 1;
	setAttr -s 1 ".wl[1189].w";
	setAttr ".wl[1189].w[10]" 1;
	setAttr -s 1 ".wl[1190].w";
	setAttr ".wl[1190].w[10]" 1;
	setAttr -s 1 ".wl[1191].w";
	setAttr ".wl[1191].w[10]" 1;
	setAttr -s 1 ".wl[1192].w";
	setAttr ".wl[1192].w[10]" 1;
	setAttr -s 1 ".wl[1193].w";
	setAttr ".wl[1193].w[10]" 1;
	setAttr -s 1 ".wl[1194].w";
	setAttr ".wl[1194].w[10]" 1;
	setAttr -s 1 ".wl[1195].w";
	setAttr ".wl[1195].w[10]" 1;
	setAttr -s 1 ".wl[1196].w";
	setAttr ".wl[1196].w[10]" 1;
	setAttr -s 1 ".wl[1197].w";
	setAttr ".wl[1197].w[10]" 1;
	setAttr -s 1 ".wl[1198].w";
	setAttr ".wl[1198].w[10]" 1;
	setAttr -s 1 ".wl[1199].w";
	setAttr ".wl[1199].w[10]" 1;
	setAttr -s 1 ".wl[1200].w";
	setAttr ".wl[1200].w[10]" 1;
	setAttr -s 1 ".wl[1201].w";
	setAttr ".wl[1201].w[10]" 1;
	setAttr -s 1 ".wl[1202].w";
	setAttr ".wl[1202].w[10]" 1;
	setAttr -s 1 ".wl[1203].w";
	setAttr ".wl[1203].w[10]" 1;
	setAttr -s 1 ".wl[1204].w";
	setAttr ".wl[1204].w[10]" 1;
	setAttr -s 1 ".wl[1205].w";
	setAttr ".wl[1205].w[10]" 1;
	setAttr -s 1 ".wl[1206].w";
	setAttr ".wl[1206].w[10]" 1;
	setAttr -s 1 ".wl[1207].w";
	setAttr ".wl[1207].w[10]" 1;
	setAttr -s 1 ".wl[1208].w";
	setAttr ".wl[1208].w[10]" 1;
	setAttr -s 1 ".wl[1209].w";
	setAttr ".wl[1209].w[10]" 1;
	setAttr -s 1 ".wl[1210].w";
	setAttr ".wl[1210].w[10]" 1;
	setAttr -s 1 ".wl[1211].w";
	setAttr ".wl[1211].w[10]" 1;
	setAttr -s 1 ".wl[1212].w";
	setAttr ".wl[1212].w[10]" 1;
	setAttr -s 1 ".wl[1213].w";
	setAttr ".wl[1213].w[10]" 1;
	setAttr -s 1 ".wl[1214].w";
	setAttr ".wl[1214].w[10]" 1;
	setAttr -s 1 ".wl[1215].w";
	setAttr ".wl[1215].w[10]" 1;
	setAttr -s 1 ".wl[1216].w";
	setAttr ".wl[1216].w[10]" 1;
	setAttr -s 1 ".wl[1217].w";
	setAttr ".wl[1217].w[10]" 1;
	setAttr -s 1 ".wl[1218].w";
	setAttr ".wl[1218].w[10]" 1;
	setAttr -s 1 ".wl[1219].w";
	setAttr ".wl[1219].w[10]" 1;
	setAttr -s 1 ".wl[1220].w";
	setAttr ".wl[1220].w[10]" 1;
	setAttr -s 1 ".wl[1221].w";
	setAttr ".wl[1221].w[10]" 1;
	setAttr -s 1 ".wl[1222].w";
	setAttr ".wl[1222].w[10]" 1;
	setAttr -s 1 ".wl[1223].w";
	setAttr ".wl[1223].w[10]" 1;
	setAttr -s 1 ".wl[1224].w";
	setAttr ".wl[1224].w[10]" 1;
	setAttr -s 1 ".wl[1225].w";
	setAttr ".wl[1225].w[10]" 1;
	setAttr -s 1 ".wl[1226].w";
	setAttr ".wl[1226].w[10]" 1;
	setAttr -s 1 ".wl[1227].w";
	setAttr ".wl[1227].w[10]" 1;
	setAttr -s 1 ".wl[1228].w";
	setAttr ".wl[1228].w[10]" 1;
	setAttr -s 1 ".wl[1229].w";
	setAttr ".wl[1229].w[10]" 1;
	setAttr -s 1 ".wl[1230].w";
	setAttr ".wl[1230].w[10]" 1;
	setAttr -s 1 ".wl[1231].w";
	setAttr ".wl[1231].w[10]" 1;
	setAttr -s 1 ".wl[1232].w";
	setAttr ".wl[1232].w[10]" 1;
	setAttr -s 1 ".wl[1233].w";
	setAttr ".wl[1233].w[10]" 1;
	setAttr -s 1 ".wl[1234].w";
	setAttr ".wl[1234].w[10]" 1;
	setAttr -s 1 ".wl[1235].w";
	setAttr ".wl[1235].w[10]" 1;
	setAttr -s 1 ".wl[1236].w";
	setAttr ".wl[1236].w[10]" 1;
	setAttr -s 1 ".wl[1237].w";
	setAttr ".wl[1237].w[10]" 1;
	setAttr -s 1 ".wl[1238].w";
	setAttr ".wl[1238].w[10]" 1;
	setAttr -s 1 ".wl[1239].w";
	setAttr ".wl[1239].w[10]" 1;
	setAttr -s 1 ".wl[1240].w";
	setAttr ".wl[1240].w[10]" 1;
	setAttr -s 1 ".wl[1241].w";
	setAttr ".wl[1241].w[10]" 1;
	setAttr -s 1 ".wl[1242].w";
	setAttr ".wl[1242].w[10]" 1;
	setAttr -s 1 ".wl[1243].w";
	setAttr ".wl[1243].w[10]" 1;
	setAttr -s 1 ".wl[1244].w";
	setAttr ".wl[1244].w[10]" 1;
	setAttr -s 1 ".wl[1245].w";
	setAttr ".wl[1245].w[10]" 1;
	setAttr -s 1 ".wl[1246].w";
	setAttr ".wl[1246].w[10]" 1;
	setAttr -s 1 ".wl[1247].w";
	setAttr ".wl[1247].w[10]" 1;
	setAttr -s 1 ".wl[1248].w";
	setAttr ".wl[1248].w[10]" 1;
	setAttr -s 1 ".wl[1249].w";
	setAttr ".wl[1249].w[10]" 1;
	setAttr -s 1 ".wl[1250].w";
	setAttr ".wl[1250].w[10]" 1;
	setAttr -s 1 ".wl[1251].w";
	setAttr ".wl[1251].w[10]" 1;
	setAttr -s 1 ".wl[1252].w";
	setAttr ".wl[1252].w[10]" 1;
	setAttr -s 1 ".wl[1253].w";
	setAttr ".wl[1253].w[10]" 1;
	setAttr -s 1 ".wl[1254].w";
	setAttr ".wl[1254].w[10]" 1;
	setAttr -s 1 ".wl[1255].w";
	setAttr ".wl[1255].w[10]" 1;
	setAttr -s 1 ".wl[1256].w";
	setAttr ".wl[1256].w[10]" 1;
	setAttr -s 1 ".wl[1257].w";
	setAttr ".wl[1257].w[10]" 1;
	setAttr -s 1 ".wl[1258].w";
	setAttr ".wl[1258].w[10]" 1;
	setAttr -s 1 ".wl[1259].w";
	setAttr ".wl[1259].w[10]" 1;
	setAttr -s 1 ".wl[1260].w";
	setAttr ".wl[1260].w[10]" 1;
	setAttr -s 1 ".wl[1261].w";
	setAttr ".wl[1261].w[10]" 1;
	setAttr -s 1 ".wl[1262].w";
	setAttr ".wl[1262].w[10]" 1;
	setAttr -s 1 ".wl[1263].w";
	setAttr ".wl[1263].w[10]" 1;
	setAttr -s 1 ".wl[1264].w";
	setAttr ".wl[1264].w[10]" 1;
	setAttr -s 1 ".wl[1265].w";
	setAttr ".wl[1265].w[10]" 1;
	setAttr -s 1 ".wl[1266].w";
	setAttr ".wl[1266].w[10]" 1;
	setAttr -s 1 ".wl[1267].w";
	setAttr ".wl[1267].w[10]" 1;
	setAttr -s 1 ".wl[1268].w";
	setAttr ".wl[1268].w[10]" 1;
	setAttr -s 1 ".wl[1269].w";
	setAttr ".wl[1269].w[10]" 1;
	setAttr -s 1 ".wl[1270].w";
	setAttr ".wl[1270].w[10]" 1;
	setAttr -s 1 ".wl[1271].w";
	setAttr ".wl[1271].w[10]" 1;
	setAttr -s 1 ".wl[1272].w";
	setAttr ".wl[1272].w[10]" 1;
	setAttr -s 1 ".wl[1273].w";
	setAttr ".wl[1273].w[10]" 1;
	setAttr -s 1 ".wl[1274].w";
	setAttr ".wl[1274].w[10]" 1;
	setAttr -s 1 ".wl[1275].w";
	setAttr ".wl[1275].w[10]" 1;
	setAttr -s 1 ".wl[1276].w";
	setAttr ".wl[1276].w[10]" 1;
	setAttr -s 1 ".wl[1277].w";
	setAttr ".wl[1277].w[10]" 1;
	setAttr -s 1 ".wl[1278].w";
	setAttr ".wl[1278].w[10]" 1;
	setAttr -s 1 ".wl[1279].w";
	setAttr ".wl[1279].w[10]" 1;
	setAttr -s 1 ".wl[1280].w";
	setAttr ".wl[1280].w[10]" 1;
	setAttr -s 1 ".wl[1281].w";
	setAttr ".wl[1281].w[10]" 1;
	setAttr -s 1 ".wl[1282].w";
	setAttr ".wl[1282].w[10]" 1;
	setAttr -s 1 ".wl[1283].w";
	setAttr ".wl[1283].w[10]" 1;
	setAttr -s 1 ".wl[1284].w";
	setAttr ".wl[1284].w[10]" 1;
	setAttr -s 1 ".wl[1285].w";
	setAttr ".wl[1285].w[10]" 1;
	setAttr -s 1 ".wl[1286].w";
	setAttr ".wl[1286].w[10]" 1;
	setAttr -s 1 ".wl[1287].w";
	setAttr ".wl[1287].w[10]" 1;
	setAttr -s 1 ".wl[1288].w";
	setAttr ".wl[1288].w[10]" 1;
	setAttr -s 1 ".wl[1289].w";
	setAttr ".wl[1289].w[10]" 1;
	setAttr -s 1 ".wl[1290].w";
	setAttr ".wl[1290].w[10]" 1;
	setAttr -s 1 ".wl[1291].w";
	setAttr ".wl[1291].w[10]" 1;
	setAttr -s 1 ".wl[1292].w";
	setAttr ".wl[1292].w[10]" 1;
	setAttr -s 1 ".wl[1293].w";
	setAttr ".wl[1293].w[10]" 1;
	setAttr -s 1 ".wl[1294].w";
	setAttr ".wl[1294].w[10]" 1;
	setAttr -s 1 ".wl[1295].w";
	setAttr ".wl[1295].w[10]" 1;
	setAttr -s 1 ".wl[1296].w";
	setAttr ".wl[1296].w[10]" 1;
	setAttr -s 1 ".wl[1297].w";
	setAttr ".wl[1297].w[10]" 1;
	setAttr -s 1 ".wl[1298].w";
	setAttr ".wl[1298].w[10]" 1;
	setAttr -s 1 ".wl[1299].w";
	setAttr ".wl[1299].w[10]" 1;
	setAttr -s 1 ".wl[1300].w";
	setAttr ".wl[1300].w[10]" 1;
	setAttr -s 1 ".wl[1301].w";
	setAttr ".wl[1301].w[10]" 1;
	setAttr -s 1 ".wl[1302].w";
	setAttr ".wl[1302].w[10]" 1;
	setAttr -s 1 ".wl[1303].w";
	setAttr ".wl[1303].w[10]" 1;
	setAttr -s 1 ".wl[1304].w";
	setAttr ".wl[1304].w[10]" 1;
	setAttr -s 1 ".wl[1305].w";
	setAttr ".wl[1305].w[10]" 1;
	setAttr -s 1 ".wl[1306].w";
	setAttr ".wl[1306].w[10]" 1;
	setAttr -s 1 ".wl[1307].w";
	setAttr ".wl[1307].w[10]" 1;
	setAttr -s 1 ".wl[1308].w";
	setAttr ".wl[1308].w[10]" 1;
	setAttr -s 1 ".wl[1309].w";
	setAttr ".wl[1309].w[10]" 1;
	setAttr -s 1 ".wl[1310].w";
	setAttr ".wl[1310].w[10]" 1;
	setAttr -s 1 ".wl[1311].w";
	setAttr ".wl[1311].w[10]" 1;
	setAttr -s 1 ".wl[1312].w";
	setAttr ".wl[1312].w[10]" 1;
	setAttr -s 1 ".wl[1313].w";
	setAttr ".wl[1313].w[10]" 1;
	setAttr -s 1 ".wl[1314].w";
	setAttr ".wl[1314].w[10]" 1;
	setAttr -s 1 ".wl[1315].w";
	setAttr ".wl[1315].w[10]" 1;
	setAttr -s 1 ".wl[1316].w";
	setAttr ".wl[1316].w[10]" 1;
	setAttr -s 1 ".wl[1317].w";
	setAttr ".wl[1317].w[10]" 1;
	setAttr -s 1 ".wl[1318].w";
	setAttr ".wl[1318].w[10]" 1;
	setAttr -s 1 ".wl[1319].w";
	setAttr ".wl[1319].w[10]" 1;
	setAttr -s 1 ".wl[1320].w";
	setAttr ".wl[1320].w[10]" 1;
	setAttr -s 1 ".wl[1321].w";
	setAttr ".wl[1321].w[10]" 1;
	setAttr -s 1 ".wl[1322].w";
	setAttr ".wl[1322].w[10]" 1;
	setAttr -s 1 ".wl[1323].w";
	setAttr ".wl[1323].w[10]" 1;
	setAttr -s 1 ".wl[1324].w";
	setAttr ".wl[1324].w[10]" 1;
	setAttr -s 1 ".wl[1325].w";
	setAttr ".wl[1325].w[10]" 1;
	setAttr -s 1 ".wl[1326].w";
	setAttr ".wl[1326].w[10]" 1;
	setAttr -s 1 ".wl[1327].w";
	setAttr ".wl[1327].w[10]" 1;
	setAttr -s 1 ".wl[1328].w";
	setAttr ".wl[1328].w[10]" 1;
	setAttr -s 1 ".wl[1329].w";
	setAttr ".wl[1329].w[10]" 1;
	setAttr -s 1 ".wl[1330].w";
	setAttr ".wl[1330].w[10]" 1;
	setAttr -s 1 ".wl[1331].w";
	setAttr ".wl[1331].w[10]" 1;
	setAttr -s 1 ".wl[1332].w";
	setAttr ".wl[1332].w[10]" 1;
	setAttr -s 1 ".wl[1333].w";
	setAttr ".wl[1333].w[10]" 1;
	setAttr -s 1 ".wl[1334].w";
	setAttr ".wl[1334].w[10]" 1;
	setAttr -s 1 ".wl[1335].w";
	setAttr ".wl[1335].w[10]" 1;
	setAttr -s 1 ".wl[1336].w";
	setAttr ".wl[1336].w[10]" 1;
	setAttr -s 1 ".wl[1337].w";
	setAttr ".wl[1337].w[10]" 1;
	setAttr -s 1 ".wl[1338].w";
	setAttr ".wl[1338].w[10]" 1;
	setAttr -s 1 ".wl[1339].w";
	setAttr ".wl[1339].w[10]" 1;
	setAttr -s 1 ".wl[1340].w";
	setAttr ".wl[1340].w[10]" 1;
	setAttr -s 1 ".wl[1341].w";
	setAttr ".wl[1341].w[10]" 1;
	setAttr -s 1 ".wl[1342].w";
	setAttr ".wl[1342].w[10]" 1;
	setAttr -s 1 ".wl[1343].w";
	setAttr ".wl[1343].w[10]" 1;
	setAttr -s 1 ".wl[1344].w";
	setAttr ".wl[1344].w[10]" 1;
	setAttr -s 1 ".wl[1345].w";
	setAttr ".wl[1345].w[10]" 1;
	setAttr -s 1 ".wl[1346].w";
	setAttr ".wl[1346].w[10]" 1;
	setAttr -s 1 ".wl[1347].w";
	setAttr ".wl[1347].w[10]" 1;
	setAttr -s 1 ".wl[1348].w";
	setAttr ".wl[1348].w[10]" 1;
	setAttr -s 1 ".wl[1349].w";
	setAttr ".wl[1349].w[10]" 1;
	setAttr -s 1 ".wl[1350].w";
	setAttr ".wl[1350].w[10]" 1;
	setAttr -s 1 ".wl[1351].w";
	setAttr ".wl[1351].w[10]" 1;
	setAttr -s 1 ".wl[1352].w";
	setAttr ".wl[1352].w[15]" 1;
	setAttr -s 1 ".wl[1353].w";
	setAttr ".wl[1353].w[15]" 1;
	setAttr -s 1 ".wl[1354].w";
	setAttr ".wl[1354].w[15]" 1;
	setAttr -s 1 ".wl[1355].w";
	setAttr ".wl[1355].w[15]" 1;
	setAttr -s 1 ".wl[1356].w";
	setAttr ".wl[1356].w[15]" 1;
	setAttr -s 1 ".wl[1357].w";
	setAttr ".wl[1357].w[15]" 1;
	setAttr -s 1 ".wl[1358].w";
	setAttr ".wl[1358].w[15]" 1;
	setAttr -s 1 ".wl[1359].w";
	setAttr ".wl[1359].w[15]" 1;
	setAttr -s 1 ".wl[1360].w";
	setAttr ".wl[1360].w[15]" 1;
	setAttr -s 1 ".wl[1361].w";
	setAttr ".wl[1361].w[15]" 1;
	setAttr -s 1 ".wl[1362].w";
	setAttr ".wl[1362].w[15]" 1;
	setAttr -s 1 ".wl[1363].w";
	setAttr ".wl[1363].w[15]" 1;
	setAttr -s 1 ".wl[1364].w";
	setAttr ".wl[1364].w[15]" 1;
	setAttr -s 1 ".wl[1365].w";
	setAttr ".wl[1365].w[15]" 1;
	setAttr -s 1 ".wl[1366].w";
	setAttr ".wl[1366].w[15]" 1;
	setAttr -s 1 ".wl[1367].w";
	setAttr ".wl[1367].w[15]" 1;
	setAttr -s 1 ".wl[1368].w";
	setAttr ".wl[1368].w[15]" 1;
	setAttr -s 1 ".wl[1369].w";
	setAttr ".wl[1369].w[15]" 1;
	setAttr -s 1 ".wl[1370].w";
	setAttr ".wl[1370].w[15]" 1;
	setAttr -s 1 ".wl[1371].w";
	setAttr ".wl[1371].w[15]" 1;
	setAttr -s 1 ".wl[1372].w";
	setAttr ".wl[1372].w[15]" 1;
	setAttr -s 1 ".wl[1373].w";
	setAttr ".wl[1373].w[15]" 1;
	setAttr -s 1 ".wl[1374].w";
	setAttr ".wl[1374].w[15]" 1;
	setAttr -s 1 ".wl[1375].w";
	setAttr ".wl[1375].w[15]" 1;
	setAttr -s 1 ".wl[1376].w";
	setAttr ".wl[1376].w[15]" 1;
	setAttr -s 2 ".wl[1377].w";
	setAttr ".wl[1377].w[0]" 0.6854529;
	setAttr ".wl[1377].w[1]" 0.3145471;
	setAttr -s 1 ".wl[1378].w";
	setAttr ".wl[1378].w[16]" 1;
	setAttr -s 1 ".wl[1379].w";
	setAttr ".wl[1379].w[16]" 1;
	setAttr -s 2 ".wl[1380].w";
	setAttr ".wl[1380].w[0]" 0.9076717;
	setAttr ".wl[1380].w[1]" 0.09232824;
	setAttr -s 2 ".wl[1381].w";
	setAttr ".wl[1381].w[5]" 0.54;
	setAttr ".wl[1381].w[16]" 0.46;
	setAttr -s 2 ".wl[1382].w";
	setAttr ".wl[1382].w[0]" 0.7360066;
	setAttr ".wl[1382].w[1]" 0.2639935;
	setAttr -s 2 ".wl[1383].w";
	setAttr ".wl[1383].w[0]" 0.8217025;
	setAttr ".wl[1383].w[1]" 0.1782975;
	setAttr -s 1 ".wl[1384].w";
	setAttr ".wl[1384].w[5]" 1;
	setAttr -s 1 ".wl[1385].w";
	setAttr ".wl[1385].w[17]" 1;
	setAttr -s 2 ".wl[1386].w";
	setAttr ".wl[1386].w[17]" 0.68;
	setAttr ".wl[1386].w[18]" 0.32;
	setAttr -s 2 ".wl[1387].w";
	setAttr ".wl[1387].w[17]" 0.7022429;
	setAttr ".wl[1387].w[16]" 0.2977571;
	setAttr -s 3 ".wl[1388].w";
	setAttr ".wl[1388].w[17]" 0.5102618;
	setAttr ".wl[1388].w[18]" 0.28;
	setAttr ".wl[1388].w[16]" 0.2097382;
	setAttr -s 2 ".wl[1389].w";
	setAttr ".wl[1389].w[16]" 0.5;
	setAttr ".wl[1389].w[5]" 0.5;
	setAttr -s 2 ".wl[1390].w";
	setAttr ".wl[1390].w[17]" 0.5599999;
	setAttr ".wl[1390].w[18]" 0.44;
	setAttr -s 2 ".wl[1391].w";
	setAttr ".wl[1391].w[5]" 0.9;
	setAttr ".wl[1391].w[17]" 0.09999998;
	setAttr -s 2 ".wl[1392].w";
	setAttr ".wl[1392].w[18]" 0.82;
	setAttr ".wl[1392].w[17]" 0.18;
	setAttr -s 1 ".wl[1393].w";
	setAttr ".wl[1393].w[17]" 1;
	setAttr -s 2 ".wl[1394].w";
	setAttr ".wl[1394].w[17]" 0.78;
	setAttr ".wl[1394].w[18]" 0.22;
	setAttr -s 2 ".wl[1395].w";
	setAttr ".wl[1395].w[17]" 0.56;
	setAttr ".wl[1395].w[18]" 0.44;
	setAttr -s 2 ".wl[1396].w";
	setAttr ".wl[1396].w[18]" 0.76;
	setAttr ".wl[1396].w[17]" 0.24;
	setAttr -s 2 ".wl[1397].w";
	setAttr ".wl[1397].w[19]" 0.62;
	setAttr ".wl[1397].w[17]" 0.38;
	setAttr -s 3 ".wl[1398].w";
	setAttr ".wl[1398].w[19]" 0.4412555;
	setAttr ".wl[1398].w[17]" 0.3587444;
	setAttr ".wl[1398].w[20]" 0.2;
	setAttr -s 2 ".wl[1399].w";
	setAttr ".wl[1399].w[19]" 0.6;
	setAttr ".wl[1399].w[20]" 0.4;
	setAttr -s 2 ".wl[1400].w";
	setAttr ".wl[1400].w[20]" 0.7;
	setAttr ".wl[1400].w[19]" 0.3;
	setAttr -s 1 ".wl[1401].w";
	setAttr ".wl[1401].w[19]" 1;
	setAttr -s 2 ".wl[1402].w";
	setAttr ".wl[1402].w[19]" 0.8;
	setAttr ".wl[1402].w[20]" 0.2;
	setAttr -s 2 ".wl[1403].w";
	setAttr ".wl[1403].w[19]" 0.62;
	setAttr ".wl[1403].w[20]" 0.38;
	setAttr -s 2 ".wl[1404].w";
	setAttr ".wl[1404].w[20]" 0.66;
	setAttr ".wl[1404].w[19]" 0.34;
	setAttr -s 2 ".wl[1405].w";
	setAttr ".wl[1405].w[18]" 0.94;
	setAttr ".wl[1405].w[17]" 0.06;
	setAttr -s 1 ".wl[1406].w";
	setAttr ".wl[1406].w[5]" 1;
	setAttr -s 2 ".wl[1407].w";
	setAttr ".wl[1407].w[5]" 0.9941306;
	setAttr ".wl[1407].w[1]" 0.005869383;
	setAttr -s 2 ".wl[1408].w";
	setAttr ".wl[1408].w[0]" 0.9450022;
	setAttr ".wl[1408].w[1]" 0.05499781;
	setAttr -s 3 ".wl[1409].w";
	setAttr ".wl[1409].w[20]" 0.686;
	setAttr ".wl[1409].w[18]" 0.3;
	setAttr ".wl[1409].w[19]" 0.014;
	setAttr -s 2 ".wl[1410].w";
	setAttr ".wl[1410].w[20]" 0.96;
	setAttr ".wl[1410].w[19]" 0.03999998;
	setAttr -s 1 ".wl[1411].w";
	setAttr ".wl[1411].w[5]" 1;
	setAttr -s 1 ".wl[1412].w";
	setAttr ".wl[1412].w[0]" 1;
	setAttr -s 2 ".wl[1413].w";
	setAttr ".wl[1413].w[18]" 0.92;
	setAttr ".wl[1413].w[16]" 0.08;
	setAttr -s 1 ".wl[1414].w";
	setAttr ".wl[1414].w[5]" 1;
	setAttr -s 1 ".wl[1415].w";
	setAttr ".wl[1415].w[18]" 1;
	setAttr -s 2 ".wl[1416].w";
	setAttr ".wl[1416].w[18]" 0.96;
	setAttr ".wl[1416].w[17]" 0.04;
	setAttr -s 2 ".wl[1417].w";
	setAttr ".wl[1417].w[20]" 0.72;
	setAttr ".wl[1417].w[18]" 0.28;
	setAttr -s 1 ".wl[1418].w";
	setAttr ".wl[1418].w[20]" 1;
	setAttr -s 1 ".wl[1419].w";
	setAttr ".wl[1419].w[37]" 1;
	setAttr -s 1 ".wl[1420].w";
	setAttr ".wl[1420].w[37]" 1;
	setAttr -s 1 ".wl[1421].w";
	setAttr ".wl[1421].w[37]" 1;
	setAttr -s 1 ".wl[1422].w";
	setAttr ".wl[1422].w[37]" 1;
	setAttr -s 1 ".wl[1423].w";
	setAttr ".wl[1423].w[37]" 1;
	setAttr -s 1 ".wl[1424].w";
	setAttr ".wl[1424].w[37]" 1;
	setAttr -s 2 ".wl[1425].w";
	setAttr ".wl[1425].w[37]" 0.9681274;
	setAttr ".wl[1425].w[30]" 0.03187263;
	setAttr -s 2 ".wl[1426].w";
	setAttr ".wl[1426].w[37]" 0.8513428;
	setAttr ".wl[1426].w[30]" 0.1486572;
	setAttr -s 2 ".wl[1427].w";
	setAttr ".wl[1427].w[37]" 0.9546254;
	setAttr ".wl[1427].w[30]" 0.04537463;
	setAttr -s 1 ".wl[1428].w";
	setAttr ".wl[1428].w[37]" 1;
	setAttr -s 1 ".wl[1429].w";
	setAttr ".wl[1429].w[37]" 1;
	setAttr -s 1 ".wl[1430].w";
	setAttr ".wl[1430].w[37]" 1;
	setAttr -s 1 ".wl[1431].w";
	setAttr ".wl[1431].w[37]" 1;
	setAttr -s 1 ".wl[1432].w";
	setAttr ".wl[1432].w[11]" 1;
	setAttr -s 1 ".wl[1433].w";
	setAttr ".wl[1433].w[37]" 1;
	setAttr -s 1 ".wl[1434].w";
	setAttr ".wl[1434].w[37]" 1;
	setAttr -s 1 ".wl[1435].w";
	setAttr ".wl[1435].w[37]" 1;
	setAttr -s 1 ".wl[1436].w";
	setAttr ".wl[1436].w[37]" 1;
	setAttr -s 1 ".wl[1437].w";
	setAttr ".wl[1437].w[37]" 1;
	setAttr -s 1 ".wl[1438].w";
	setAttr ".wl[1438].w[37]" 1;
	setAttr -s 1 ".wl[1439].w";
	setAttr ".wl[1439].w[37]" 1;
	setAttr -s 1 ".wl[1440].w";
	setAttr ".wl[1440].w[37]" 1;
	setAttr -s 1 ".wl[1441].w";
	setAttr ".wl[1441].w[37]" 1;
	setAttr -s 1 ".wl[1442].w";
	setAttr ".wl[1442].w[37]" 1;
	setAttr -s 2 ".wl[1443].w";
	setAttr ".wl[1443].w[37]" 0.9546254;
	setAttr ".wl[1443].w[30]" 0.04537463;
	setAttr -s 1 ".wl[1444].w";
	setAttr ".wl[1444].w[37]" 1;
	setAttr -s 1 ".wl[1445].w";
	setAttr ".wl[1445].w[37]" 1;
	setAttr -s 1 ".wl[1446].w";
	setAttr ".wl[1446].w[37]" 1;
	setAttr -s 1 ".wl[1447].w";
	setAttr ".wl[1447].w[37]" 1;
	setAttr -s 1 ".wl[1448].w";
	setAttr ".wl[1448].w[11]" 1;
	setAttr -s 1 ".wl[1449].w";
	setAttr ".wl[1449].w[37]" 1;
	setAttr -s 1 ".wl[1450].w";
	setAttr ".wl[1450].w[37]" 1;
	setAttr -s 2 ".wl[1451].w";
	setAttr ".wl[1451].w[0]" 0.6854529;
	setAttr ".wl[1451].w[4]" 0.3145471;
	setAttr -s 2 ".wl[1452].w";
	setAttr ".wl[1452].w[0]" 0.9076717;
	setAttr ".wl[1452].w[4]" 0.09232824;
	setAttr -s 1 ".wl[1453].w";
	setAttr ".wl[1453].w[25]" 1;
	setAttr -s 1 ".wl[1454].w";
	setAttr ".wl[1454].w[25]" 1;
	setAttr -s 2 ".wl[1455].w";
	setAttr ".wl[1455].w[22]" 0.54;
	setAttr ".wl[1455].w[25]" 0.46;
	setAttr -s 2 ".wl[1456].w";
	setAttr ".wl[1456].w[0]" 0.7005525;
	setAttr ".wl[1456].w[4]" 0.2994475;
	setAttr -s 2 ".wl[1457].w";
	setAttr ".wl[1457].w[0]" 0.7591977;
	setAttr ".wl[1457].w[4]" 0.2408023;
	setAttr -s 1 ".wl[1458].w";
	setAttr ".wl[1458].w[22]" 1;
	setAttr -s 1 ".wl[1459].w";
	setAttr ".wl[1459].w[26]" 1;
	setAttr -s 2 ".wl[1460].w";
	setAttr ".wl[1460].w[26]" 0.68;
	setAttr ".wl[1460].w[27]" 0.32;
	setAttr -s 2 ".wl[1461].w";
	setAttr ".wl[1461].w[26]" 0.7022429;
	setAttr ".wl[1461].w[25]" 0.2977571;
	setAttr -s 3 ".wl[1462].w";
	setAttr ".wl[1462].w[26]" 0.5102618;
	setAttr ".wl[1462].w[27]" 0.28;
	setAttr ".wl[1462].w[25]" 0.2097382;
	setAttr -s 2 ".wl[1463].w";
	setAttr ".wl[1463].w[25]" 0.5;
	setAttr ".wl[1463].w[22]" 0.5;
	setAttr -s 2 ".wl[1464].w";
	setAttr ".wl[1464].w[26]" 0.5599999;
	setAttr ".wl[1464].w[27]" 0.44;
	setAttr -s 2 ".wl[1465].w";
	setAttr ".wl[1465].w[22]" 0.9;
	setAttr ".wl[1465].w[26]" 0.09999998;
	setAttr -s 2 ".wl[1466].w";
	setAttr ".wl[1466].w[27]" 0.82;
	setAttr ".wl[1466].w[26]" 0.18;
	setAttr -s 1 ".wl[1467].w";
	setAttr ".wl[1467].w[26]" 1;
	setAttr -s 2 ".wl[1468].w";
	setAttr ".wl[1468].w[26]" 0.78;
	setAttr ".wl[1468].w[27]" 0.22;
	setAttr -s 2 ".wl[1469].w";
	setAttr ".wl[1469].w[26]" 0.56;
	setAttr ".wl[1469].w[27]" 0.44;
	setAttr -s 2 ".wl[1470].w";
	setAttr ".wl[1470].w[27]" 0.76;
	setAttr ".wl[1470].w[26]" 0.24;
	setAttr -s 2 ".wl[1471].w";
	setAttr ".wl[1471].w[29]" 0.62;
	setAttr ".wl[1471].w[26]" 0.38;
	setAttr -s 3 ".wl[1472].w";
	setAttr ".wl[1472].w[29]" 0.4412555;
	setAttr ".wl[1472].w[26]" 0.3587444;
	setAttr ".wl[1472].w[28]" 0.2;
	setAttr -s 2 ".wl[1473].w";
	setAttr ".wl[1473].w[29]" 0.6;
	setAttr ".wl[1473].w[28]" 0.4;
	setAttr -s 2 ".wl[1474].w";
	setAttr ".wl[1474].w[28]" 0.7;
	setAttr ".wl[1474].w[29]" 0.3;
	setAttr -s 1 ".wl[1475].w";
	setAttr ".wl[1475].w[29]" 1;
	setAttr -s 2 ".wl[1476].w";
	setAttr ".wl[1476].w[29]" 0.8;
	setAttr ".wl[1476].w[28]" 0.2;
	setAttr -s 2 ".wl[1477].w";
	setAttr ".wl[1477].w[29]" 0.62;
	setAttr ".wl[1477].w[28]" 0.38;
	setAttr -s 2 ".wl[1478].w";
	setAttr ".wl[1478].w[28]" 0.66;
	setAttr ".wl[1478].w[29]" 0.34;
	setAttr -s 2 ".wl[1479].w";
	setAttr ".wl[1479].w[27]" 0.94;
	setAttr ".wl[1479].w[26]" 0.06;
	setAttr -s 1 ".wl[1480].w";
	setAttr ".wl[1480].w[22]" 1;
	setAttr -s 2 ".wl[1481].w";
	setAttr ".wl[1481].w[22]" 0.9941306;
	setAttr ".wl[1481].w[4]" 0.005869383;
	setAttr -s 2 ".wl[1482].w";
	setAttr ".wl[1482].w[0]" 0.9450022;
	setAttr ".wl[1482].w[4]" 0.05499781;
	setAttr -s 3 ".wl[1483].w";
	setAttr ".wl[1483].w[28]" 0.686;
	setAttr ".wl[1483].w[27]" 0.3;
	setAttr ".wl[1483].w[29]" 0.014;
	setAttr -s 2 ".wl[1484].w";
	setAttr ".wl[1484].w[28]" 0.96;
	setAttr ".wl[1484].w[29]" 0.03999998;
	setAttr -s 1 ".wl[1485].w";
	setAttr ".wl[1485].w[22]" 1;
	setAttr -s 1 ".wl[1486].w";
	setAttr ".wl[1486].w[0]" 1;
	setAttr -s 2 ".wl[1487].w";
	setAttr ".wl[1487].w[27]" 0.92;
	setAttr ".wl[1487].w[25]" 0.08;
	setAttr -s 1 ".wl[1488].w";
	setAttr ".wl[1488].w[22]" 1;
	setAttr -s 1 ".wl[1489].w";
	setAttr ".wl[1489].w[27]" 1;
	setAttr -s 2 ".wl[1490].w";
	setAttr ".wl[1490].w[27]" 0.96;
	setAttr ".wl[1490].w[26]" 0.04;
	setAttr -s 2 ".wl[1491].w";
	setAttr ".wl[1491].w[28]" 0.72;
	setAttr ".wl[1491].w[27]" 0.28;
	setAttr -s 1 ".wl[1492].w";
	setAttr ".wl[1492].w[28]" 1;
	setAttr -s 1 ".wl[1493].w";
	setAttr ".wl[1493].w[54]" 1;
	setAttr -s 1 ".wl[1494].w";
	setAttr ".wl[1494].w[54]" 1;
	setAttr -s 1 ".wl[1495].w";
	setAttr ".wl[1495].w[54]" 1;
	setAttr -s 1 ".wl[1496].w";
	setAttr ".wl[1496].w[54]" 1;
	setAttr -s 1 ".wl[1497].w";
	setAttr ".wl[1497].w[54]" 1;
	setAttr -s 1 ".wl[1498].w";
	setAttr ".wl[1498].w[54]" 1;
	setAttr -s 1 ".wl[1499].w";
	setAttr ".wl[1499].w[54]" 1;
	setAttr -s 1 ".wl[1500].w";
	setAttr ".wl[1500].w[54]" 1;
	setAttr -s 1 ".wl[1501].w";
	setAttr ".wl[1501].w[54]" 1;
	setAttr -s 1 ".wl[1502].w";
	setAttr ".wl[1502].w[54]" 1;
	setAttr -s 1 ".wl[1503].w";
	setAttr ".wl[1503].w[54]" 1;
	setAttr -s 1 ".wl[1504].w";
	setAttr ".wl[1504].w[54]" 1;
	setAttr -s 1 ".wl[1505].w";
	setAttr ".wl[1505].w[54]" 1;
	setAttr -s 1 ".wl[1506].w";
	setAttr ".wl[1506].w[24]" 1;
	setAttr -s 1 ".wl[1507].w";
	setAttr ".wl[1507].w[54]" 1;
	setAttr -s 1 ".wl[1508].w";
	setAttr ".wl[1508].w[54]" 1;
	setAttr -s 1 ".wl[1509].w";
	setAttr ".wl[1509].w[54]" 1;
	setAttr -s 1 ".wl[1510].w";
	setAttr ".wl[1510].w[54]" 1;
	setAttr -s 1 ".wl[1511].w";
	setAttr ".wl[1511].w[54]" 1;
	setAttr -s 1 ".wl[1512].w";
	setAttr ".wl[1512].w[54]" 1;
	setAttr -s 1 ".wl[1513].w";
	setAttr ".wl[1513].w[54]" 1;
	setAttr -s 1 ".wl[1514].w";
	setAttr ".wl[1514].w[54]" 1;
	setAttr -s 1 ".wl[1515].w";
	setAttr ".wl[1515].w[54]" 1;
	setAttr -s 1 ".wl[1516].w";
	setAttr ".wl[1516].w[54]" 1;
	setAttr -s 1 ".wl[1517].w";
	setAttr ".wl[1517].w[54]" 1;
	setAttr -s 1 ".wl[1518].w";
	setAttr ".wl[1518].w[54]" 1;
	setAttr -s 1 ".wl[1519].w";
	setAttr ".wl[1519].w[54]" 1;
	setAttr -s 1 ".wl[1520].w";
	setAttr ".wl[1520].w[54]" 1;
	setAttr -s 1 ".wl[1521].w";
	setAttr ".wl[1521].w[54]" 1;
	setAttr -s 1 ".wl[1522].w";
	setAttr ".wl[1522].w[24]" 1;
	setAttr -s 1 ".wl[1523].w";
	setAttr ".wl[1523].w[54]" 1;
	setAttr -s 1 ".wl[1524].w";
	setAttr ".wl[1524].w[54]" 1;
	setAttr -s 2 ".wl[1525].w";
	setAttr ".wl[1525].w[14]" 0.9866233;
	setAttr ".wl[1525].w[9]" 0.01337666;
	setAttr -s 2 ".wl[1526].w";
	setAttr ".wl[1526].w[14]" 0.9797876;
	setAttr ".wl[1526].w[9]" 0.02021238;
	setAttr -s 2 ".wl[1527].w";
	setAttr ".wl[1527].w[14]" 0.9788738;
	setAttr ".wl[1527].w[9]" 0.0211262;
	setAttr -s 2 ".wl[1528].w";
	setAttr ".wl[1528].w[14]" 0.9788738;
	setAttr ".wl[1528].w[9]" 0.0211262;
	setAttr -s 2 ".wl[1529].w";
	setAttr ".wl[1529].w[14]" 0.9982535;
	setAttr ".wl[1529].w[9]" 0.00174648;
	setAttr -s 2 ".wl[1530].w";
	setAttr ".wl[1530].w[14]" 0.9797876;
	setAttr ".wl[1530].w[9]" 0.02021238;
	setAttr -s 2 ".wl[1531].w";
	setAttr ".wl[1531].w[14]" 0.9982535;
	setAttr ".wl[1531].w[9]" 0.00174648;
	setAttr -s 2 ".wl[1532].w";
	setAttr ".wl[1532].w[14]" 0.9788738;
	setAttr ".wl[1532].w[9]" 0.0211262;
	setAttr -s 2 ".wl[1533].w";
	setAttr ".wl[1533].w[14]" 0.9796768;
	setAttr ".wl[1533].w[9]" 0.02032325;
	setAttr -s 2 ".wl[1534].w";
	setAttr ".wl[1534].w[14]" 0.9932117;
	setAttr ".wl[1534].w[9]" 0.006788342;
	setAttr -s 2 ".wl[1535].w";
	setAttr ".wl[1535].w[14]" 0.995031;
	setAttr ".wl[1535].w[9]" 0.004969083;
	setAttr -s 2 ".wl[1536].w";
	setAttr ".wl[1536].w[14]" 0.9622121;
	setAttr ".wl[1536].w[9]" 0.03778786;
	setAttr -s 2 ".wl[1537].w";
	setAttr ".wl[1537].w[14]" 0.9658077;
	setAttr ".wl[1537].w[9]" 0.03419226;
	setAttr -s 2 ".wl[1538].w";
	setAttr ".wl[1538].w[14]" 0.9968286;
	setAttr ".wl[1538].w[9]" 0.003171418;
	setAttr -s 2 ".wl[1539].w";
	setAttr ".wl[1539].w[14]" 0.9684927;
	setAttr ".wl[1539].w[9]" 0.03150732;
	setAttr -s 3 ".wl[1540].w";
	setAttr ".wl[1540].w[14]" 0.945817;
	setAttr ".wl[1540].w[9]" 0.05367779;
	setAttr ".wl[1540].w[13]" 0.0005052797;
	setAttr -s 2 ".wl[1541].w";
	setAttr ".wl[1541].w[14]" 0.9895664;
	setAttr ".wl[1541].w[9]" 0.01043358;
	setAttr -s 2 ".wl[1542].w";
	setAttr ".wl[1542].w[14]" 0.9782565;
	setAttr ".wl[1542].w[9]" 0.02174358;
	setAttr -s 2 ".wl[1543].w";
	setAttr ".wl[1543].w[14]" 0.9305031;
	setAttr ".wl[1543].w[9]" 0.06949696;
	setAttr -s 2 ".wl[1544].w";
	setAttr ".wl[1544].w[14]" 0.9767477;
	setAttr ".wl[1544].w[9]" 0.02325229;
	setAttr -s 2 ".wl[1545].w";
	setAttr ".wl[1545].w[14]" 0.9196501;
	setAttr ".wl[1545].w[9]" 0.08034986;
	setAttr -s 2 ".wl[1546].w";
	setAttr ".wl[1546].w[14]" 0.9696217;
	setAttr ".wl[1546].w[9]" 0.03037837;
	setAttr -s 2 ".wl[1547].w";
	setAttr ".wl[1547].w[14]" 0.8940703;
	setAttr ".wl[1547].w[9]" 0.1059297;
	setAttr -s 3 ".wl[1548].w";
	setAttr ".wl[1548].w[14]" 0.9605673;
	setAttr ".wl[1548].w[9]" 0.03743379;
	setAttr ".wl[1548].w[13]" 0.001998904;
	setAttr -s 3 ".wl[1549].w";
	setAttr ".wl[1549].w[14]" 0.8707293;
	setAttr ".wl[1549].w[9]" 0.1241876;
	setAttr ".wl[1549].w[13]" 0.005083155;
	setAttr -s 2 ".wl[1550].w";
	setAttr ".wl[1550].w[14]" 0.9655679;
	setAttr ".wl[1550].w[9]" 0.03443211;
	setAttr -s 2 ".wl[1551].w";
	setAttr ".wl[1551].w[14]" 0.9949455;
	setAttr ".wl[1551].w[9]" 0.005054584;
	setAttr -s 2 ".wl[1552].w";
	setAttr ".wl[1552].w[14]" 0.9617627;
	setAttr ".wl[1552].w[9]" 0.03823727;
	setAttr -s 2 ".wl[1553].w";
	setAttr ".wl[1553].w[14]" 0.9930474;
	setAttr ".wl[1553].w[9]" 0.00695258;
	setAttr -s 2 ".wl[1554].w";
	setAttr ".wl[1554].w[14]" 0.9968286;
	setAttr ".wl[1554].w[9]" 0.003171418;
	setAttr -s 2 ".wl[1555].w";
	setAttr ".wl[1555].w[14]" 0.9684927;
	setAttr ".wl[1555].w[9]" 0.03150732;
	setAttr -s 3 ".wl[1556].w";
	setAttr ".wl[1556].w[14]" 0.9450126;
	setAttr ".wl[1556].w[9]" 0.05440013;
	setAttr ".wl[1556].w[13]" 0.0005872857;
	setAttr -s 2 ".wl[1557].w";
	setAttr ".wl[1557].w[14]" 0.9893328;
	setAttr ".wl[1557].w[9]" 0.01066721;
	setAttr -s 2 ".wl[1558].w";
	setAttr ".wl[1558].w[14]" 0.9191697;
	setAttr ".wl[1558].w[9]" 0.08083043;
	setAttr -s 2 ".wl[1559].w";
	setAttr ".wl[1559].w[14]" 0.9305031;
	setAttr ".wl[1559].w[9]" 0.06949696;
	setAttr -s 2 ".wl[1560].w";
	setAttr ".wl[1560].w[14]" 0.9765654;
	setAttr ".wl[1560].w[9]" 0.02343458;
	setAttr -s 2 ".wl[1561].w";
	setAttr ".wl[1561].w[14]" 0.9782565;
	setAttr ".wl[1561].w[9]" 0.02174358;
	setAttr -s 2 ".wl[1562].w";
	setAttr ".wl[1562].w[14]" 0.969245;
	setAttr ".wl[1562].w[9]" 0.03075496;
	setAttr -s 2 ".wl[1563].w";
	setAttr ".wl[1563].w[14]" 0.8930141;
	setAttr ".wl[1563].w[9]" 0.106986;
	setAttr -s 3 ".wl[1564].w";
	setAttr ".wl[1564].w[14]" 0.9597957;
	setAttr ".wl[1564].w[9]" 0.03799504;
	setAttr ".wl[1564].w[13]" 0.002209289;
	setAttr -s 3 ".wl[1565].w";
	setAttr ".wl[1565].w[14]" 0.8691923;
	setAttr ".wl[1565].w[9]" 0.1253575;
	setAttr ".wl[1565].w[13]" 0.005450214;
	setAttr -s 2 ".wl[1566].w";
	setAttr ".wl[1566].w[15]" 0.78;
	setAttr ".wl[1566].w[9]" 0.22;
	setAttr -s 2 ".wl[1567].w";
	setAttr ".wl[1567].w[15]" 0.7;
	setAttr ".wl[1567].w[9]" 0.3;
	setAttr -s 2 ".wl[1568].w";
	setAttr ".wl[1568].w[15]" 0.68;
	setAttr ".wl[1568].w[9]" 0.32;
	setAttr -s 1 ".wl[1569].w";
	setAttr ".wl[1569].w[9]" 1;
	setAttr -s 1 ".wl[1570].w";
	setAttr ".wl[1570].w[9]" 1;
	setAttr -s 2 ".wl[1571].w";
	setAttr ".wl[1571].w[15]" 0.76;
	setAttr ".wl[1571].w[9]" 0.24;
	setAttr -s 1 ".wl[1572].w";
	setAttr ".wl[1572].w[9]" 1;
	setAttr -s 2 ".wl[1573].w";
	setAttr ".wl[1573].w[9]" 0.58;
	setAttr ".wl[1573].w[15]" 0.42;
	setAttr -s 2 ".wl[1574].w";
	setAttr ".wl[1574].w[9]" 0.72;
	setAttr ".wl[1574].w[15]" 0.28;
	setAttr -s 1 ".wl[1575].w";
	setAttr ".wl[1575].w[9]" 1;
	setAttr -s 2 ".wl[1576].w";
	setAttr ".wl[1576].w[15]" 0.58;
	setAttr ".wl[1576].w[9]" 0.42;
	setAttr -s 1 ".wl[1577].w";
	setAttr ".wl[1577].w[9]" 1;
	setAttr -s 2 ".wl[1578].w";
	setAttr ".wl[1578].w[9]" 0.84;
	setAttr ".wl[1578].w[15]" 0.16;
	setAttr -s 2 ".wl[1579].w";
	setAttr ".wl[1579].w[9]" 0.78;
	setAttr ".wl[1579].w[15]" 0.22;
	setAttr -s 2 ".wl[1580].w";
	setAttr ".wl[1580].w[9]" 0.84;
	setAttr ".wl[1580].w[15]" 0.16;
	setAttr -s 1 ".wl[1581].w";
	setAttr ".wl[1581].w[9]" 1;
	setAttr -s 1 ".wl[1582].w";
	setAttr ".wl[1582].w[9]" 1;
	setAttr -s 1 ".wl[1583].w";
	setAttr ".wl[1583].w[9]" 1;
	setAttr -s 2 ".wl[1584].w";
	setAttr ".wl[1584].w[15]" 0.7;
	setAttr ".wl[1584].w[9]" 0.3;
	setAttr -s 2 ".wl[1585].w";
	setAttr ".wl[1585].w[15]" 0.78;
	setAttr ".wl[1585].w[9]" 0.22;
	setAttr -s 2 ".wl[1586].w";
	setAttr ".wl[1586].w[15]" 0.68;
	setAttr ".wl[1586].w[9]" 0.32;
	setAttr -s 1 ".wl[1587].w";
	setAttr ".wl[1587].w[9]" 1;
	setAttr -s 1 ".wl[1588].w";
	setAttr ".wl[1588].w[9]" 1;
	setAttr -s 2 ".wl[1589].w";
	setAttr ".wl[1589].w[15]" 0.76;
	setAttr ".wl[1589].w[9]" 0.24;
	setAttr -s 1 ".wl[1590].w";
	setAttr ".wl[1590].w[9]" 1;
	setAttr -s 2 ".wl[1591].w";
	setAttr ".wl[1591].w[9]" 0.58;
	setAttr ".wl[1591].w[15]" 0.42;
	setAttr -s 2 ".wl[1592].w";
	setAttr ".wl[1592].w[9]" 0.72;
	setAttr ".wl[1592].w[15]" 0.28;
	setAttr -s 1 ".wl[1593].w";
	setAttr ".wl[1593].w[9]" 1;
	setAttr -s 2 ".wl[1594].w";
	setAttr ".wl[1594].w[15]" 0.58;
	setAttr ".wl[1594].w[9]" 0.42;
	setAttr -s 1 ".wl[1595].w";
	setAttr ".wl[1595].w[9]" 1;
	setAttr -s 2 ".wl[1596].w";
	setAttr ".wl[1596].w[9]" 0.84;
	setAttr ".wl[1596].w[15]" 0.16;
	setAttr -s 2 ".wl[1597].w";
	setAttr ".wl[1597].w[9]" 0.78;
	setAttr ".wl[1597].w[15]" 0.22;
	setAttr -s 2 ".wl[1598].w";
	setAttr ".wl[1598].w[9]" 0.84;
	setAttr ".wl[1598].w[15]" 0.16;
	setAttr -s 1 ".wl[1599].w";
	setAttr ".wl[1599].w[9]" 1;
	setAttr -s 1 ".wl[1600].w";
	setAttr ".wl[1600].w[9]" 1;
	setAttr -s 1 ".wl[1601].w";
	setAttr ".wl[1601].w[9]" 1;
	setAttr -s 2 ".wl[1602].w";
	setAttr ".wl[1602].w[10]" 0.78;
	setAttr ".wl[1602].w[9]" 0.22;
	setAttr -s 2 ".wl[1603].w";
	setAttr ".wl[1603].w[10]" 0.58;
	setAttr ".wl[1603].w[9]" 0.42;
	setAttr -s 2 ".wl[1604].w";
	setAttr ".wl[1604].w[10]" 0.7600001;
	setAttr ".wl[1604].w[9]" 0.2399999;
	setAttr -s 1 ".wl[1605].w";
	setAttr ".wl[1605].w[9]" 1;
	setAttr -s 1 ".wl[1606].w";
	setAttr ".wl[1606].w[9]" 1;
	setAttr -s 2 ".wl[1607].w";
	setAttr ".wl[1607].w[10]" 0.84;
	setAttr ".wl[1607].w[9]" 0.16;
	setAttr -s 1 ".wl[1608].w";
	setAttr ".wl[1608].w[9]" 1;
	setAttr -s 2 ".wl[1609].w";
	setAttr ".wl[1609].w[10]" 0.7;
	setAttr ".wl[1609].w[9]" 0.3;
	setAttr -s 2 ".wl[1610].w";
	setAttr ".wl[1610].w[10]" 0.5400001;
	setAttr ".wl[1610].w[9]" 0.4599999;
	setAttr -s 1 ".wl[1611].w";
	setAttr ".wl[1611].w[9]" 1;
	setAttr -s 2 ".wl[1612].w";
	setAttr ".wl[1612].w[10]" 0.5200001;
	setAttr ".wl[1612].w[9]" 0.4799999;
	setAttr -s 1 ".wl[1613].w";
	setAttr ".wl[1613].w[9]" 1;
	setAttr -s 2 ".wl[1614].w";
	setAttr ".wl[1614].w[9]" 0.7999999;
	setAttr ".wl[1614].w[10]" 0.2000001;
	setAttr -s 2 ".wl[1615].w";
	setAttr ".wl[1615].w[9]" 0.66;
	setAttr ".wl[1615].w[10]" 0.34;
	setAttr -s 2 ".wl[1616].w";
	setAttr ".wl[1616].w[9]" 0.7399999;
	setAttr ".wl[1616].w[10]" 0.2600001;
	setAttr -s 1 ".wl[1617].w";
	setAttr ".wl[1617].w[9]" 1;
	setAttr -s 1 ".wl[1618].w";
	setAttr ".wl[1618].w[9]" 1;
	setAttr -s 1 ".wl[1619].w";
	setAttr ".wl[1619].w[9]" 1;
	setAttr -s 2 ".wl[1620].w";
	setAttr ".wl[1620].w[10]" 0.58;
	setAttr ".wl[1620].w[9]" 0.42;
	setAttr -s 2 ".wl[1621].w";
	setAttr ".wl[1621].w[10]" 0.78;
	setAttr ".wl[1621].w[9]" 0.22;
	setAttr -s 2 ".wl[1622].w";
	setAttr ".wl[1622].w[10]" 0.7600001;
	setAttr ".wl[1622].w[9]" 0.2399999;
	setAttr -s 1 ".wl[1623].w";
	setAttr ".wl[1623].w[9]" 1;
	setAttr -s 1 ".wl[1624].w";
	setAttr ".wl[1624].w[9]" 1;
	setAttr -s 2 ".wl[1625].w";
	setAttr ".wl[1625].w[10]" 0.84;
	setAttr ".wl[1625].w[9]" 0.16;
	setAttr -s 1 ".wl[1626].w";
	setAttr ".wl[1626].w[9]" 1;
	setAttr -s 2 ".wl[1627].w";
	setAttr ".wl[1627].w[10]" 0.7;
	setAttr ".wl[1627].w[9]" 0.3;
	setAttr -s 2 ".wl[1628].w";
	setAttr ".wl[1628].w[10]" 0.5400001;
	setAttr ".wl[1628].w[9]" 0.4599999;
	setAttr -s 1 ".wl[1629].w";
	setAttr ".wl[1629].w[9]" 1;
	setAttr -s 2 ".wl[1630].w";
	setAttr ".wl[1630].w[10]" 0.5200001;
	setAttr ".wl[1630].w[9]" 0.4799999;
	setAttr -s 1 ".wl[1631].w";
	setAttr ".wl[1631].w[9]" 1;
	setAttr -s 2 ".wl[1632].w";
	setAttr ".wl[1632].w[9]" 0.7999999;
	setAttr ".wl[1632].w[10]" 0.2000001;
	setAttr -s 2 ".wl[1633].w";
	setAttr ".wl[1633].w[9]" 0.66;
	setAttr ".wl[1633].w[10]" 0.34;
	setAttr -s 2 ".wl[1634].w";
	setAttr ".wl[1634].w[9]" 0.7399999;
	setAttr ".wl[1634].w[10]" 0.2600001;
	setAttr -s 1 ".wl[1635].w";
	setAttr ".wl[1635].w[9]" 1;
	setAttr -s 1 ".wl[1636].w";
	setAttr ".wl[1636].w[9]" 1;
	setAttr -s 1 ".wl[1637].w";
	setAttr ".wl[1637].w[9]" 1;
	setAttr -s 64 ".pm";
	setAttr ".pm[0]" -type "matrix" 1.3868E-06 2.876916E-06 1 0 1 1.192053E-07 -1.386801E-06 0 -1.192093E-07 1 -2.876917E-06 0 -1.142959 -0.02112356 -0.0002509642 1 ;
	setAttr ".pm[1]" -type "matrix" -0.01768246 0.00121952 -0.9998429 0 -0.9997265 -0.01533251 0.01766167 0 -0.01530856 0.999882 0.001490283 0 1.144609 -0.003709435 0.07247189 1 ;
	setAttr ".pm[2]" -type "matrix" 2.457946E-07 -1.303896E-06 1 0 0.986302 -0.1649498 -4.575053E-07 0 0.1649498 0.986302 1.245491E-06 0 -1.215677 0.1514625 -0.0002521135 1 ;
	setAttr ".pm[3]" -type "matrix" -0.01772428 7.613562E-05 -0.9998429 0 -0.9966545 -0.07979944 0.01766163 0 -0.07978556 0.996811 0.0014903 0 0.6376989 0.03751078 0.07247189 1 ;
	setAttr ".pm[4]" -type "matrix" 0.01768219 -0.001216529 -0.9998429 0 -0.9997266 -0.01533251 -0.01766147 0 -0.01530862 0.9998819 -0.001487306 0 1.1446 -0.003708839 -0.07196704 1 ;
	setAttr ".pm[5]" -type "matrix" 0.2513918 0.5490894 0.7970589 0 -0.9296095 0.3662724 0.04087522 0 -0.2694967 -0.7512292 0.6025167 0 1.009475 -0.5217817 -0.07163849 1 ;
	setAttr ".pm[6]" -type "matrix" -1.164153E-08 0.130577 -0.9914383 0 -1 1.298302E-07 3.924454E-09 0 1.075678E-07 0.9914383 0.130577 0 0.1689777 0.0140529 0.0779345 1 ;
	setAttr ".pm[7]" -type "matrix" 1.309786E-08 -0.1305741 -0.9914386 0 -1 1.164784E-07 -2.855148E-08 0 1.192094E-07 0.9914387 -0.1305741 0 0.1689778 0.01411887 -0.07743385 1 ;
	setAttr ".pm[8]" -type "matrix" 0.1305771 2.328306E-08 -0.9914383 0 1.181887E-07 1 -1.896307E-09 0 0.9914384 -1.075678E-07 0.130577 0 -0.07447696 -0.01062372 0.07793449 1 ;
	setAttr ".pm[9]" -type "matrix" -4.074536E-07 -1.420267E-06 0.9999998 0 0.9673297 0.2535224 7.217752E-07 0 -0.2535224 0.9673296 1.210719E-06 0 -1.351035 -0.4211773 -0.0002537221 1 ;
	setAttr ".pm[10]" -type "matrix" 0.9999999 -1.466833E-06 -3.49246E-07 0 -8.149091E-08 -0.2542927 0.9671275 0 -1.478475E-06 -0.9671275 -0.2542927 0 -0.01548019 0.3755483 -1.481527 1 ;
	setAttr ".pm[11]" -type "matrix" 0.6719133 0.02280469 0.7402787 0 -0.739414 0.07790866 0.6687283 0 -0.04242399 -0.9966998 0.06920993 0 1.044312 -0.1354544 -1.114941 1 ;
	setAttr ".pm[12]" -type "matrix" -2.328306E-08 -1.303852E-06 1 0 0.9999297 0.01187057 2.910399E-08 0 -0.01187048 0.9999297 1.29221E-06 0 -1.313684 -0.08180344 -0.0002527684 1 ;
	setAttr ".pm[13]" -type "matrix" 4.656613E-08 -1.257285E-06 1 0 0.9991597 -0.04099321 -1.164152E-07 0 0.04099321 0.9991595 1.280569E-06 0 -1.592341 0.0758428 -0.0002523512 1 ;
	setAttr ".pm[14]" -type "matrix" 3.143214E-07 -1.327135E-06 1 0 0.9806898 -0.1955695 -5.817582E-07 0 0.1955695 0.9806898 1.257286E-06 0 -1.62156 0.3315317 -0.0002516508 1 ;
	setAttr ".pm[15]" -type "matrix" -1 -1.466833E-06 3.958121E-07 0 -2.328288E-08 -0.2542926 -0.9671274 0 1.583249E-06 -0.9671275 0.2542925 0 -0.01497522 0.3755483 1.481527 1 ;
	setAttr ".pm[16]" -type "matrix" 0.3190166 0.8593779 -0.3996224 0 -0.9475358 0.2981551 -0.1152383 0 0.02011626 0.4154194 0.9094079 0 1.044181 -0.4993287 0.14058 1 ;
	setAttr ".pm[17]" -type "matrix" 0.31455 0.8610227 -0.3996223 0 -0.9490713 0.293231 -0.1152383 0 0.01795891 0.4155182 0.9094077 0 0.8440611 -0.4949525 0.1405799 1 ;
	setAttr ".pm[18]" -type "matrix" 0.2485373 0.5503873 0.7970589 0 -0.9314989 0.3614405 0.04087516 0 -0.2655923 -0.7526185 0.6025168 0 0.8094718 -0.5175855 -0.07163848 1 ;
	setAttr ".pm[19]" -type "matrix" 0.2525062 0.8812165 -0.3996224 0 -0.9675252 0.2249781 -0.1152382 0 -0.01164357 0.4157431 0.9094077 0 0.5759786 -0.4551344 0.1405799 1 ;
	setAttr ".pm[20]" -type "matrix" 0.2087571 0.5666724 0.7970589 0 -0.9548494 0.2942649 0.04087524 0 -0.2113836 -0.7696043 0.6025168 0 0.5430868 -0.4801704 -0.07163854 1 ;
	setAttr ".pm[21]" -type "matrix" 0.01772383 -7.323688E-05 -0.9998429 0 -0.9966545 -0.0797994 -0.01766144 0 -0.07978562 0.996811 -0.001487332 0 0.63769 0.0375108 -0.07196704 1 ;
	setAttr ".pm[22]" -type "matrix" -0.2513916 -0.5490891 -0.7970593 0 -0.9296092 0.3662724 0.04087504 0 -0.2694966 -0.7512295 0.6025164 0 1.007211 -0.5267253 -0.07881473 1 ;
	setAttr ".pm[23]" -type "matrix" -0.1305741 -4.667655E-10 -0.9914387 0 7.1276E-08 1 -9.858209E-09 0 0.9914388 -7.195288E-08 -0.1305741 0 -0.074411 -0.01062371 -0.07743384 1 ;
	setAttr ".pm[24]" -type "matrix" -0.6719134 -0.02280772 0.7402785 0 -0.739414 0.07790864 -0.6687283 0 -0.04242208 -0.9966997 -0.06921218 0 1.044651 -0.1354429 1.114567 1 ;
	setAttr ".pm[25]" -type "matrix" -0.3245444 -0.8576224 0.3989421 0 -0.9456568 0.3031686 -0.1175699 0 0.0201161 0.4154189 0.9094082 0 1.043497 -0.4987021 0.1403086 1 ;
	setAttr ".pm[26]" -type "matrix" -0.320087 -0.859296 0.3989421 0 -0.9472181 0.2982541 -0.1175699 0 0.01795881 0.4155177 0.9094082 0 0.8433735 -0.4943294 0.1403086 1 ;
	setAttr ".pm[27]" -type "matrix" -0.2485371 -0.550387 -0.7970592 0 -0.9314986 0.3614404 0.04087509 0 -0.2655924 -0.7526187 0.6025164 0 0.8072338 -0.5225407 -0.07881485 1 ;
	setAttr ".pm[28]" -type "matrix" -0.2087568 -0.5666719 -0.7970592 0 -0.9548493 0.2942647 0.0408751 0 -0.2113836 -0.7696045 0.6025163 0 0.5412072 -0.4852723 -0.07881483 1 ;
	setAttr ".pm[29]" -type "matrix" -0.2581519 -0.8798881 0.398942 0 -0.9660342 0.2301203 -0.1175699 0 -0.01164365 0.4157425 0.9094079 0 0.5752485 -0.4545618 0.1403085 1 ;
	setAttr ".pm[30]" -type "matrix" 0.5556132 -0.8276257 0.07955979 0 -0.8313501 -0.5515881 0.06788159 0 -0.01229629 -0.1038579 -0.9945162 0 0.7106256 1.019502 -0.09999219 1 ;
	setAttr ".pm[31]" -type "matrix" 0.3236991 -0.93797 0.1242265 0 -0.9427049 -0.3309362 -0.04230517 0 0.080792 -0.1034148 -0.9913515 0 0.8500172 0.8407996 0.023646 1 ;
	setAttr ".pm[32]" -type "matrix" 0.007562916 -0.9836695 -0.1798261 0 -0.9996727 -0.01183176 0.02267808 0 -0.02443539 0.1795959 -0.9834368 0 1.07403 0.5165467 0.08880895 1 ;
	setAttr ".pm[33]" -type "matrix" -0.121129 -0.9791161 -0.1632792 0 -0.9906977 0.1089706 0.08150184 0 -0.06200707 0.1716326 -0.9832084 0 1.130545 0.3854097 -0.006049603 1 ;
	setAttr ".pm[34]" -type "matrix" -0.1665185 -0.9708416 -0.1724441 0 -0.9728396 0.1332393 0.1892878 0 -0.160792 0.1992804 -0.9666615 0 1.133529 0.3509005 -0.1377763 1 ;
	setAttr ".pm[35]" -type "matrix" 0.09142574 -0.9880334 0.124228 0 -0.994353 -0.0973298 -0.04230508 0 0.05388995 -0.1196587 -0.9913514 0 0.9728295 0.6275108 0.02364513 1 ;
	setAttr ".pm[36]" -type "matrix" 0.06601886 -0.9900557 0.1242287 0 -0.9965249 -0.07175859 -0.04230503 0 0.05079886 -0.1210041 -0.9913511 0 0.9606838 0.6030356 0.02364475 1 ;
	setAttr ".pm[37]" -type "matrix" 0.6576135 0.1397567 0.7402787 0 -0.7416601 -0.05237432 0.6687283 0 0.1322309 -0.9888 0.06920997 0 0.8430285 0.01190389 -1.114941 1 ;
	setAttr ".pm[38]" -type "matrix" -0.09966688 0.8615714 0.4977566 0 -0.9597626 -0.2152293 0.1803675 0 0.2625311 -0.4597512 0.8483558 0 1.122792 -0.1309134 -0.4571103 1 ;
	setAttr ".pm[39]" -type "matrix" -0.1911065 -0.9649462 -0.1798804 0 -0.9814921 0.1901558 0.02267768 0 0.0123226 0.1808851 -0.9834268 0 1.103544 0.3000067 0.08883721 1 ;
	setAttr ".pm[40]" -type "matrix" -0.5605396 -0.8083552 -0.1798797 0 -0.823905 0.5662745 0.0226778 0 0.08352976 0.1609155 -0.9834267 0 1.106294 -0.1546329 0.08883682 1 ;
	setAttr ".pm[41]" -type "matrix" -0.3669747 -0.9157894 -0.1632786 0 -0.9300899 0.358175 0.08150141 0 -0.01615578 0.1817729 -0.9832082 0 1.14018 0.09768581 -0.00604941 1 ;
	setAttr ".pm[42]" -type "matrix" -0.7647738 -0.623266 -0.1632795 0 -0.6400404 0.7640065 0.08150131 0 0.07394951 0.1668355 -0.9832082 0 1.02281 -0.4549107 -0.006048843 1 ;
	setAttr ".pm[43]" -type "matrix" -0.5085357 -0.8435956 -0.1724449 0 -0.8575722 0.4782675 0.1892876 0 -0.07720736 0.2441433 -0.9666613 0 1.144401 -0.0705725 -0.1377758 1 ;
	setAttr ".pm[44]" -type "matrix" -0.8018922 -0.5720409 -0.1724453 0 -0.5968948 0.7796707 0.1892876 0 0.02617023 0.2547198 -0.9666613 0 1.003238 -0.5113559 -0.1377756 1 ;
	setAttr ".pm[45]" -type "matrix" 0.1168182 0.8594131 0.4977584 0 -0.9831665 0.02917384 0.1803678 0 0.1404887 -0.5104493 0.8483548 0 1.006772 -0.3924807 -0.4571112 1 ;
	setAttr ".pm[46]" -type "matrix" 0.2676102 0.8249989 0.4977571 0 -0.9623512 0.2033408 0.180368 0 0.04758907 -0.5272852 0.8483556 0 0.8844157 -0.5584518 -0.4571109 1 ;
	setAttr ".pm[47]" -type "matrix" -0.5556132 0.8276254 0.07956275 0 -0.8313501 -0.5515881 -0.06788155 0 -0.01229464 -0.1038604 0.994516 0 0.7109063 1.019084 0.09995204 1 ;
	setAttr ".pm[48]" -type "matrix" -0.3236988 0.9379694 0.1242294 0 -0.9427047 -0.3309362 0.04230515 0 0.08079296 -0.1034176 0.991351 0 0.8501804 0.8403256 -0.02370878 1 ;
	setAttr ".pm[49]" -type "matrix" -0.00756288 0.9836701 -0.1798227 0 -0.9996727 -0.01183173 -0.02267809 0 -0.02443538 0.1795924 0.9834371 0 1.074033 0.5160497 -0.08871792 1 ;
	setAttr ".pm[50]" -type "matrix" 0.1211287 0.9791166 -0.1632762 0 -0.9906977 0.1089705 -0.08150182 0 -0.06200743 0.1716296 0.9832087 0 1.130483 0.3849151 0.006132081 1 ;
	setAttr ".pm[51]" -type "matrix" 0.1665181 0.9708423 -0.1724412 0 -0.9728398 0.1332393 -0.1892878 0 -0.1607926 0.1992774 0.9666619 0 1.133445 0.3504102 0.1378635 1 ;
	setAttr ".pm[52]" -type "matrix" -0.09142572 0.9880331 0.1242307 0 -0.994353 -0.09732983 0.04230508 0 0.05389018 -0.1196615 0.9913508 0 0.9728758 0.6270119 -0.02370799 1 ;
	setAttr ".pm[53]" -type "matrix" -0.06601875 0.9900552 0.1242314 0 -0.9965246 -0.07175861 0.04230507 0 0.05079903 -0.1210068 0.9913507 0 0.960717 0.6025357 -0.02370763 1 ;
	setAttr ".pm[54]" -type "matrix" -0.6576132 -0.1397597 0.7402786 0 -0.7416601 -0.05237431 -0.6687283 0 0.1322328 -0.9887995 -0.06921218 0 0.8433606 0.01197445 1.114567 1 ;
	setAttr ".pm[55]" -type "matrix" 0.09966752 -0.8615729 0.4977542 0 -0.9597626 -0.2152293 -0.1803675 0 0.2625308 -0.4597486 -0.8483573 0 1.122741 -0.1304784 0.4568589 1 ;
	setAttr ".pm[56]" -type "matrix" 0.1911064 0.9649467 -0.1798774 0 -0.9814921 0.1901558 -0.02267764 0 0.01232198 0.1808821 0.9834272 0 1.103448 0.2995194 -0.08874635 1 ;
	setAttr ".pm[57]" -type "matrix" 0.5605398 0.8083557 -0.1798768 0 -0.8239048 0.5662746 -0.02267782 0 0.08352811 0.1609131 0.9834274 0 1.106011 -0.1550412 -0.08874594 1 ;
	setAttr ".pm[58]" -type "matrix" 0.3669746 0.9157899 -0.1632757 0 -0.9300899 0.358175 -0.08150142 0 -0.01615678 0.1817702 0.9832089 0 1.139995 0.0972234 0.006131798 1 ;
	setAttr ".pm[59]" -type "matrix" 0.7647739 0.6232665 -0.1632766 0 -0.6400402 0.7640064 -0.08150128 0 0.0739473 0.1668337 0.9832087 0 1.022424 -0.4552255 0.006131306 1 ;
	setAttr ".pm[60]" -type "matrix" 0.5085355 0.8435962 -0.172442 0 -0.8575722 0.4782674 -0.1892876 0 -0.07720888 0.2441408 0.9666618 0 1.144144 -0.07099867 0.137863 1 ;
	setAttr ".pm[61]" -type "matrix" 0.8018923 0.5720416 -0.1724424 0 -0.5968948 0.7796707 -0.1892875 0 0.02616777 0.2547181 0.9666618 0 1.002833 -0.5116448 0.1378627 1 ;
	setAttr ".pm[62]" -type "matrix" -0.1168178 -0.8594144 0.4977561 0 -0.9831665 0.02917381 -0.1803678 0 0.1404891 -0.5104469 -0.8483562 0 1.006831 -0.3920465 0.4568599 1 ;
	setAttr ".pm[63]" -type "matrix" -0.2676101 -0.8250005 0.4977548 0 -0.9623513 0.2033408 -0.180368 0 0.04758977 -0.527283 -0.8483571 0 0.8845509 -0.5580351 0.4568596 1 ;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 -1.192093E-07 -1 0 0 1 -1.192093E-07 0 0 0 0 1 ;
	setAttr -s 64 ".ma";
	setAttr -s 64 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
createNode groupParts -n "skinClusterGroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "skinClusterGroupId";
	setAttr ".ihi" 0;
createNode tweak -n "tweak";
createNode groupParts -n "groupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId";
	setAttr ".ihi" 0;
createNode displayLayerManager -n "layerManager";
	setAttr -s 0 ".dli[0]" ;
	setAttr -s 0 ".dli";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :defaultRenderUtilityList1;
	setAttr -s 1 ".u";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo";
createNode shadingEngine -n "femaleSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode blinn -n "female";
	setAttr ".c" -type "float3" 0.5882353 0.5882353 0.5882353;
	setAttr ".ic" -type "float3" 0 0 0;
createNode file -n "file";
	setAttr ".ftn" -type "string" "C:/Users/solaAnt/Desktop/新建文件夹/female.dds";
createNode place2dTexture -n "place2dTexture";
	setAttr ".re" -type "float2" 1 1;
	setAttr ".of" -type "float2" 0 0;
connectAttr "femaleSG.msg" "materialInfo.sg";
relationship "link" ":lightLinker1" "femaleSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "femaleSG.message" ":defaultLightSet.message";
connectAttr "femaleSG.pa" ":renderPartition.st" -na;
connectAttr "female.msg" "materialInfo.m";
connectAttr "female.oc" "femaleSG.ss";
connectAttr "female.msg" ":defaultShaderList1.s" -na;
connectAttr "file.msg" "materialInfo.t" -na;
connectAttr "file.msg" ":defaultTextureList1.tx" -na;
connectAttr "file.oc" "female.c";
connectAttr "place2dTexture.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture.c" "file.c";
connectAttr "place2dTexture.tf" "file.tf";
connectAttr "place2dTexture.rf" "file.rf";
connectAttr "place2dTexture.mu" "file.mu";
connectAttr "place2dTexture.mv" "file.mv";
connectAttr "place2dTexture.s" "file.s";
connectAttr "place2dTexture.wu" "file.wu";
connectAttr "place2dTexture.wv" "file.wv";
connectAttr "place2dTexture.re" "file.re";
connectAttr "place2dTexture.of" "file.of";
connectAttr "place2dTexture.r" "file.ro";
connectAttr "place2dTexture.n" "file.n";
connectAttr "place2dTexture.vt1" "file.vt1";
connectAttr "place2dTexture.vt2" "file.vt2";
connectAttr "place2dTexture.vt3" "file.vt3";
connectAttr "place2dTexture.vc1" "file.vc1";
connectAttr "place2dTexture.o" "file.uv";
connectAttr "place2dTexture.ofs" "file.fs";
connectAttr "|qs|Object02|Object02Shape.iog" "femaleSG.dsm" -na;
connectAttr "|qs|Object02|Object02ShapeOrig.w" "groupParts.ig";
connectAttr "skinClusterGroupId.id" "|qs|Object02|Object02Shape.iog.og[0].gid";
connectAttr "skinClusterSet.mwc" "|qs|Object02|Object02Shape.iog.og[0].gco";
connectAttr "groupId.id" "|qs|Object02|Object02Shape.iog.og[1].gid";
connectAttr "tweakSet.mwc" "|qs|Object02|Object02Shape.iog.og[1].gco";
connectAttr "skinCluster.og[0]" "|qs|Object02|Object02Shape.i";
connectAttr "tweak.vl[0].vt[0]" "|qs|Object02|Object02Shape.twl";
connectAttr "skinClusterGroupParts.og" "skinCluster.ip[0].ig";
connectAttr "skinClusterGroupId.id" "skinCluster.ip[0].gi";
connectAttr "groupParts.og" "tweak.ip[0].ig";
connectAttr "groupId.id" "tweak.ip[0].gi";
connectAttr "skinClusterGroupId.msg" "skinClusterSet.gn" -na;
connectAttr "|qs|Object02|Object02Shape.iog.og[0]" "skinClusterSet.dsm" -na;
connectAttr "skinCluster.msg" "skinClusterSet.ub[0]";
connectAttr "skinClusterGroupId.id" "skinClusterGroupParts.gi";
connectAttr "groupId.msg" "tweakSet.gn" -na;
connectAttr "|qs|Object02|Object02Shape.iog.og[1]" "tweakSet.dsm" -na;
connectAttr "tweak.msg" "tweakSet.ub[0]";
connectAttr "groupId.id" "groupParts.gi";
connectAttr "|qs|Bip01|Bip01_Pelvis.wm" "skinCluster.ma[0]";
connectAttr "|qs|Bip01|Bip01_Pelvis.liw" "skinCluster.lw[0]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_L_Thigh.wm" "skinCluster.ma[1]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_L_Thigh.liw" "skinCluster.lw[1]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine.wm" "skinCluster.ma[2]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine.liw" "skinCluster.lw[2]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_L_Thigh|Bip01_L_Calf.wm" "skinCluster.ma[3]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_L_Thigh|Bip01_L_Calf.liw" "skinCluster.lw[3]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_R_Thigh.wm" "skinCluster.ma[4]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_R_Thigh.liw" "skinCluster.lw[4]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone04.wm" "skinCluster.ma[5]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone04.liw" "skinCluster.lw[5]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_L_Thigh|Bip01_L_Calf|Bip01_L_Foot.wm" "skinCluster.ma[6]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_L_Thigh|Bip01_L_Calf|Bip01_L_Foot.liw" "skinCluster.lw[6]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_R_Thigh|Bip01_R_Calf|Bip01_R_Foot.wm" "skinCluster.ma[7]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_R_Thigh|Bip01_R_Calf|Bip01_R_Foot.liw" "skinCluster.lw[7]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_L_Thigh|Bip01_L_Calf|Bip01_L_Foot|Bip01_L_Toe0.wm" "skinCluster.ma[8]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_L_Thigh|Bip01_L_Calf|Bip01_L_Foot|Bip01_L_Toe0.liw" "skinCluster.lw[8]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2.wm" "skinCluster.ma[9]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2.liw" "skinCluster.lw[9]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle.wm" "skinCluster.ma[10]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle.liw" "skinCluster.lw[10]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm.wm" "skinCluster.ma[11]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm.liw" "skinCluster.lw[11]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1.wm" "skinCluster.ma[12]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1.liw" "skinCluster.lw[12]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck.wm" "skinCluster.ma[13]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck.liw" "skinCluster.lw[13]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_Head.wm" "skinCluster.ma[14]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_Head.liw" "skinCluster.lw[14]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle.wm" "skinCluster.ma[15]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle.liw" "skinCluster.lw[15]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone01.wm" "skinCluster.ma[16]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone01.liw" "skinCluster.lw[16]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone01|Bone02.wm" "skinCluster.ma[17]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone01|Bone02.liw" "skinCluster.lw[17]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone04|Bone05.wm" "skinCluster.ma[18]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone04|Bone05.liw" "skinCluster.lw[18]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone01|Bone02|Bone03.wm" "skinCluster.ma[19]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone01|Bone02|Bone03.liw" "skinCluster.lw[19]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone04|Bone05|Bone06.wm" "skinCluster.ma[20]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone04|Bone05|Bone06.liw" "skinCluster.lw[20]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_R_Thigh|Bip01_R_Calf.wm" "skinCluster.ma[21]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_R_Thigh|Bip01_R_Calf.liw" "skinCluster.lw[21]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone10.wm" "skinCluster.ma[22]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone10.liw" "skinCluster.lw[22]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_R_Thigh|Bip01_R_Calf|Bip01_R_Foot|Bip01_R_Toe0.wm" "skinCluster.ma[23]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_R_Thigh|Bip01_R_Calf|Bip01_R_Foot|Bip01_R_Toe0.liw" "skinCluster.lw[23]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm.wm" "skinCluster.ma[24]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm.liw" "skinCluster.lw[24]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone07.wm" "skinCluster.ma[25]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone07.liw" "skinCluster.lw[25]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone07|Bone08.wm" "skinCluster.ma[26]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone07|Bone08.liw" "skinCluster.lw[26]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone10|Bone11.wm" "skinCluster.ma[27]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone10|Bone11.liw" "skinCluster.lw[27]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone10|Bone11|Bone12.wm" "skinCluster.ma[28]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone10|Bone11|Bone12.liw" "skinCluster.lw[28]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone07|Bone08|Bone09.wm" "skinCluster.ma[29]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bone07|Bone08|Bone09.liw" "skinCluster.lw[29]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand.wm" "skinCluster.ma[30]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand.liw" "skinCluster.lw[30]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger1.wm" "skinCluster.ma[31]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger1.liw" "skinCluster.lw[31]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger2.wm" "skinCluster.ma[32]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger2.liw" "skinCluster.lw[32]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger3.wm" "skinCluster.ma[33]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger3.liw" "skinCluster.lw[33]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger4.wm" "skinCluster.ma[34]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger4.liw" "skinCluster.lw[34]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger1|Bip01_L_Finger11.wm" "skinCluster.ma[35]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger1|Bip01_L_Finger11.liw" "skinCluster.lw[35]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger1|Bip01_L_Finger11|Bip01_L_Finger12.wm" "skinCluster.ma[36]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger1|Bip01_L_Finger11|Bip01_L_Finger12.liw" "skinCluster.lw[36]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm.wm" "skinCluster.ma[37]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm.liw" "skinCluster.lw[37]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger0.wm" "skinCluster.ma[38]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger0.liw" "skinCluster.lw[38]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger2|Bip01_L_Finger21.wm" "skinCluster.ma[39]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger2|Bip01_L_Finger21.liw" "skinCluster.lw[39]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger2|Bip01_L_Finger21|Bip01_L_Finger22.wm" "skinCluster.ma[40]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger2|Bip01_L_Finger21|Bip01_L_Finger22.liw" "skinCluster.lw[40]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger3|Bip01_L_Finger31.wm" "skinCluster.ma[41]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger3|Bip01_L_Finger31.liw" "skinCluster.lw[41]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger3|Bip01_L_Finger31|Bip01_L_Finger32.wm" "skinCluster.ma[42]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger3|Bip01_L_Finger31|Bip01_L_Finger32.liw" "skinCluster.lw[42]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger4|Bip01_L_Finger41.wm" "skinCluster.ma[43]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger4|Bip01_L_Finger41.liw" "skinCluster.lw[43]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger4|Bip01_L_Finger41|Bip01_L_Finger42.wm" "skinCluster.ma[44]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger4|Bip01_L_Finger41|Bip01_L_Finger42.liw" "skinCluster.lw[44]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger0|Bip01_L_Finger01.wm" "skinCluster.ma[45]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger0|Bip01_L_Finger01.liw" "skinCluster.lw[45]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger0|Bip01_L_Finger01|Bip01_L_Finger02.wm" "skinCluster.ma[46]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_L_Clavicle|Bip01_L_UpperArm|Bip01_L_Forearm|Bip01_L_Hand|Bip01_L_Finger0|Bip01_L_Finger01|Bip01_L_Finger02.liw" "skinCluster.lw[46]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand.wm" "skinCluster.ma[47]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand.liw" "skinCluster.lw[47]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger1.wm" "skinCluster.ma[48]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger1.liw" "skinCluster.lw[48]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger2.wm" "skinCluster.ma[49]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger2.liw" "skinCluster.lw[49]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger3.wm" "skinCluster.ma[50]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger3.liw" "skinCluster.lw[50]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger4.wm" "skinCluster.ma[51]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger4.liw" "skinCluster.lw[51]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger1|Bip01_R_Finger11.wm" "skinCluster.ma[52]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger1|Bip01_R_Finger11.liw" "skinCluster.lw[52]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger1|Bip01_R_Finger11|Bip01_R_Finger12.wm" "skinCluster.ma[53]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger1|Bip01_R_Finger11|Bip01_R_Finger12.liw" "skinCluster.lw[53]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm.wm" "skinCluster.ma[54]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm.liw" "skinCluster.lw[54]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger0.wm" "skinCluster.ma[55]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger0.liw" "skinCluster.lw[55]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger2|Bip01_R_Finger21.wm" "skinCluster.ma[56]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger2|Bip01_R_Finger21.liw" "skinCluster.lw[56]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger2|Bip01_R_Finger21|Bip01_R_Finger22.wm" "skinCluster.ma[57]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger2|Bip01_R_Finger21|Bip01_R_Finger22.liw" "skinCluster.lw[57]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger3|Bip01_R_Finger31.wm" "skinCluster.ma[58]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger3|Bip01_R_Finger31.liw" "skinCluster.lw[58]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger3|Bip01_R_Finger31|Bip01_R_Finger32.wm" "skinCluster.ma[59]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger3|Bip01_R_Finger31|Bip01_R_Finger32.liw" "skinCluster.lw[59]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger4|Bip01_R_Finger41.wm" "skinCluster.ma[60]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger4|Bip01_R_Finger41.liw" "skinCluster.lw[60]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger4|Bip01_R_Finger41|Bip01_R_Finger42.wm" "skinCluster.ma[61]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger4|Bip01_R_Finger41|Bip01_R_Finger42.liw" "skinCluster.lw[61]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger0|Bip01_R_Finger01.wm" "skinCluster.ma[62]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger0|Bip01_R_Finger01.liw" "skinCluster.lw[62]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger0|Bip01_R_Finger01|Bip01_R_Finger02.wm" "skinCluster.ma[63]";
connectAttr "|qs|Bip01|Bip01_Pelvis|Bip01_Spine|Bip01_Spine1|Bip01_Spine2|Bip01_Neck|Bip01_R_Clavicle|Bip01_R_UpperArm|Bip01_R_Forearm|Bip01_R_Hand|Bip01_R_Finger0|Bip01_R_Finger01|Bip01_R_Finger02.liw" "skinCluster.lw[63]";
connectAttr "tweak.og[0]" "skinClusterGroupParts.ig";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
