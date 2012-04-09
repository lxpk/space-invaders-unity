//Maya ASCII 2012 scene
//Name: Barrier1.ma
//Last modified: Sun, Apr 08, 2012 07:30:43 PM
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
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 5 "f[1]" "f[8]" "f[12]" "f[17]" "f[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0 0.50000000000000011 1.110223024625157e-016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 1 ;
	setAttr ".rs" 37192;
	setAttr ".lt" -type "double3" 0 0 0.25 ;
	setAttr ".ls" -type "double3" 0.75 0.75 0.75 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3 1.0000000000000004 -0.99999999999999989 ;
	setAttr ".cbx" -type "double3" 3 1.0000000000000004 3 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0:3]" -type "float3" 0.26482129 0 1.0254819  -0.26482129 
		0 1.0254819  0.26482129 0 1.0254819  -0.26482129 0 1.0254819 ;
	setAttr ".tk[8]" -type "float3" 0 0 1.0198812 ;
	setAttr ".tk[10]" -type "float3" 0 0 1.0198812 ;
	setAttr ".tk[12]" -type "float3" 0 0 1.0198812 ;
	setAttr ".tk[15:17]" -type "float3" 0 0 1.0198812  0 0 0  0 0 0 ;
	setAttr ".tk[20:21]" -type "float3" 0 0 0  0 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 2 "f[9]" "f[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0 0.50000000000000011 1.110223024625157e-016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 1 ;
	setAttr ".rs" 48785;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3 -1.1102230246251565e-016 1.0000000000000002 ;
	setAttr ".cbx" -type "double3" 3 1.0000000000000004 1.0000000000000002 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0 0.50000000000000011 1.110223024625157e-016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 1.6653345e-016 ;
	setAttr ".rs" 52149;
	setAttr ".lt" -type "double3" -3.3767402432374651e-016 6.7462126551952587e-017 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 -1.1102230246251565e-016 -0.99999999999999989 ;
	setAttr ".cbx" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
createNode polyCube -n "polyCube1";
	setAttr ".ax" -type "double3" 0 1.0000000000000002 2.2204460492503131e-016 ;
	setAttr ".w" 2.0000000000000018;
	setAttr ".h" 1.0000000000000004;
	setAttr ".d" 2.0000000000000009;
	setAttr ".cuv" 4;
createNode animCurveTL -n "pCubeShape1_pnts_16__pntx";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape1_pnts_16__pnty";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape1_pnts_16__pntz";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape1_pnts_17__pntx";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape1_pnts_17__pnty";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape1_pnts_17__pntz";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape1_pnts_20__pntx";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape1_pnts_20__pnty";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape1_pnts_20__pntz";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape1_pnts_21__pntx";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape1_pnts_21__pnty";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape1_pnts_21__pntz";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
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
connectAttr "polyExtrudeFace3.out" "pCubeShape1.i";
connectAttr "polyTweak1.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak1.ip";
connectAttr "pCubeShape1_pnts_16__pntx.o" "polyTweak1.tk[16].tx";
connectAttr "pCubeShape1_pnts_16__pnty.o" "polyTweak1.tk[16].ty";
connectAttr "pCubeShape1_pnts_16__pntz.o" "polyTweak1.tk[16].tz";
connectAttr "pCubeShape1_pnts_17__pntx.o" "polyTweak1.tk[17].tx";
connectAttr "pCubeShape1_pnts_17__pnty.o" "polyTweak1.tk[17].ty";
connectAttr "pCubeShape1_pnts_17__pntz.o" "polyTweak1.tk[17].tz";
connectAttr "pCubeShape1_pnts_20__pntx.o" "polyTweak1.tk[20].tx";
connectAttr "pCubeShape1_pnts_20__pnty.o" "polyTweak1.tk[20].ty";
connectAttr "pCubeShape1_pnts_20__pntz.o" "polyTweak1.tk[20].tz";
connectAttr "pCubeShape1_pnts_21__pntx.o" "polyTweak1.tk[21].tx";
connectAttr "pCubeShape1_pnts_21__pnty.o" "polyTweak1.tk[21].ty";
connectAttr "pCubeShape1_pnts_21__pntz.o" "polyTweak1.tk[21].tz";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Barrier1.ma