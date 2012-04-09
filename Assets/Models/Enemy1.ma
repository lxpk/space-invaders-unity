//Maya ASCII 2012 scene
//Name: Enemy1.ma
//Last modified: Sun, Apr 08, 2012 07:29:29 PM
//Codeset: 1252
requires maya "2012";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "001200000000-796618";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0 0.50000000000000011 1.110223024625157e-016 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 13 "f[10]" "f[18]" "f[20]" "f[24:25]" "f[36]" "f[38]" "f[41]" "f[43]" "f[48:49]" "f[52:58]" "f[60]" "f[70]" "f[73]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0 0.50000000000000011 1.110223024625157e-016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.9375 0.25 ;
	setAttr ".rs" 36200;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 0.87500000000000022 -1.2499999999999998 ;
	setAttr ".cbx" -type "double3" 2 1.0000000000000004 1.7500000000000002 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[12]" -type "float3" -0.21388686 0 0.1647376 ;
	setAttr ".tk[14]" -type "float3" -0.21388686 0 0.1647376 ;
	setAttr ".tk[16]" -type "float3" 0.21388686 0 0.1647376 ;
	setAttr ".tk[19]" -type "float3" 0.21388686 0 0.1647376 ;
	setAttr ".tk[32:33]" -type "float3" -0.15742895 0 0  -0.15742895 0 0 ;
	setAttr ".tk[35:36]" -type "float3" 0.15742895 0 0  0.15742895 0 0 ;
	setAttr ".tk[68]" -type "float3" 0.61680019 0 0 ;
	setAttr ".tk[70:72]" -type "float3" 0.61680019 0 0  -0.61680019 0 0  -0.61680019 
		0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0 0.50000000000000011 1.110223024625157e-016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4617108 0.5 1.25 ;
	setAttr ".rs" 35065;
	setAttr ".lt" -type "double3" -0.5 -1.1102230246251565e-016 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.1693687438964844 -1.1102230246251565e-016 1.2500000000000002 ;
	setAttr ".cbx" -type "double3" 1.754052996635437 1.0000000000000004 1.2500000000000002 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0 0.50000000000000011 1.110223024625157e-016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4617108 0.5 1.25 ;
	setAttr ".rs" 50362;
	setAttr ".lt" -type "double3" 0.5 -1.1102230246251565e-016 0.49999999999999978 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.754052996635437 -1.1102230246251565e-016 1.2500000000000002 ;
	setAttr ".cbx" -type "double3" -1.1693687438964844 1.0000000000000004 1.2500000000000002 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[60:67]" -type "float3"  -0.16936871 0 0 -0.25405297
		 0 0 -0.16936871 0 0 -0.25405297 0 0 0.25405297 0 0 0.25405297 0 0 0.16936871 0 0
		 0.16936871 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 2 "f[59]" "f[61]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0 0.50000000000000011 1.110223024625157e-016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0.875 ;
	setAttr ".rs" 40809;
	setAttr ".lt" -type "double3" 0 6.3983343287949496e-017 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.25 1.0000000000000004 0.75000000000000011 ;
	setAttr ".cbx" -type "double3" 0.25 1.0000000000000004 1.0000000000000002 ;
createNode polySplit -n "polySplit14";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 54;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".sps[0].sp[1].f" 59;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 59;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit13";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 52;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[1].f" 58;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 55;
	setAttr ".sps[0].sp[2].t" 2;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit12";
	setAttr -s 5 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 52;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".sps[0].sp[1].f" 52;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 52;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[3].f" 53;
	setAttr ".sps[0].sp[3].t" 1;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[4].f" 57;
	setAttr ".sps[0].sp[4].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit11";
	setAttr -s 2 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 46;
	setAttr ".sps[0].sp[0].t" 2;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0 0 1 ;
	setAttr ".sps[0].sp[1].f" 55;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit10";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 38;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0 1 0 ;
	setAttr ".sps[0].sp[1].f" 32;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 32;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 2 "f[21]" "f[26:27]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0 0.50000000000000011 1.110223024625157e-016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 1 ;
	setAttr ".rs" 38688;
	setAttr ".lt" -type "double3" 0 -1.1102230246251565e-016 0.25 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5 -1.1102230246251565e-016 1.0000000000000002 ;
	setAttr ".cbx" -type "double3" 1.5 1.0000000000000004 1.0000000000000002 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 2 "f[24]" "f[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0 0.50000000000000011 1.110223024625157e-016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0.25 ;
	setAttr ".rs" 55477;
	setAttr ".lt" -type "double3" 0 1.4664207966540432e-017 -0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 1.0000000000000004 1.110223024625157e-016 ;
	setAttr ".cbx" -type "double3" 1 1.0000000000000004 0.50000000000000011 ;
createNode polySplit -n "polySplit9";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 30;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 30;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 32;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit8";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 29;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 29;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.50000005960464478 0.49999997019767761 
		-2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[2].f" 29;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit7";
	setAttr -s 5 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 25;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[1].f" 29;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 29;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[3].f" 30;
	setAttr ".sps[0].sp[3].t" 1;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[4].f" 30;
	setAttr ".sps[0].sp[4].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit6";
	setAttr -s 5 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 25;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[1].f" 28;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.50000005960464478 0.49999994039535522 ;
	setAttr ".sps[0].sp[2].f" 22;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[3].f" 22;
	setAttr ".sps[0].sp[3].t" 1;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0.50000005960464478 0.49999994039535522 
		0 ;
	setAttr ".sps[0].sp[4].f" 22;
	setAttr ".sps[0].sp[4].t" 1;
	setAttr ".sps[0].sp[4].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit5";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 12;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 11;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 11;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".c2v" yes;
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "e[50]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "e[61]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "e[47]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "e[58]";
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 2 "f[9]" "f[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0 0.50000000000000011 1.110223024625157e-016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0.25 ;
	setAttr ".rs" 56270;
	setAttr ".lt" -type "double3" -1.9367223787463127e-016 -3.525527393322312e-018 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5 -1.1102230246251565e-016 -0.49999999999999989 ;
	setAttr ".cbx" -type "double3" 1.5 1.0000000000000004 1.0000000000000002 ;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "e[25]";
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "e[44]";
createNode polySplit -n "polySplit4";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 7;
	setAttr ".sps[0].sp[0].t" 2;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".sps[0].sp[1].f" 9;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.50000005960464478 0.49999994039535522 
		0 ;
	setAttr ".sps[0].sp[2].f" 9;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit3";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 5;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 5;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.50000017881393433 0.49999982118606567 
		0 ;
	setAttr ".sps[0].sp[2].f" 9;
	setAttr ".sps[0].sp[2].t" 2;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit2";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 1;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 1;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.49999994039535522 0.50000005960464478 
		0 ;
	setAttr ".sps[0].sp[2].f" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit1";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 12;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 4;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 10;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".c2v" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0 0.50000000000000011 1.110223024625157e-016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 1.6653345e-016 ;
	setAttr ".rs" 41599;
	setAttr ".lt" -type "double3" -1.1478415235674543e-016 -4.7715182335011967e-017 
		0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 -1.1102230246251565e-016 -0.99999999999999989 ;
	setAttr ".cbx" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0 0.50000000000000011 1.110223024625157e-016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 -1 ;
	setAttr ".rs" 32939;
	setAttr ".lt" -type "double3" 0 5.14896372572367e-017 0.25 ;
	setAttr ".ls" -type "double3" 0.75 0.75 0.75 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 -1.1102230246251565e-016 -0.99999999999999989 ;
	setAttr ".cbx" -type "double3" 1 1.0000000000000004 -0.99999999999999989 ;
createNode polyCube -n "polyCube1";
	setAttr ".ax" -type "double3" 0 1.0000000000000002 2.2204460492503131e-016 ;
	setAttr ".w" 2.0000000000000018;
	setAttr ".h" 1.0000000000000004;
	setAttr ".d" 2.0000000000000009;
	setAttr ".cuv" 4;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyExtrudeFace9.out" "pCubeShape1.i";
connectAttr "polyTweak2.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak1.ip";
connectAttr "polySplit14.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polyExtrudeFace5.out" "polySplit10.ip";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polySplit9.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "deleteComponent6.og" "polySplit5.ip";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "polyExtrudeFace3.out" "deleteComponent3.ig";
connectAttr "deleteComponent2.og" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "polySplit4.out" "deleteComponent1.ig";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polyExtrudeFace2.out" "polySplit1.ip";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Enemy1.ma