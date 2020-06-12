//Maya ASCII 2018 scene
//Name: mp_rig_v008_for_animation.ma
//Last modified: Wed, Jun 10, 2020 11:53:50 AM
//Codeset: 1251
requires maya "2018";
requires -nodeType "displayPoints" "Type" "2.0a";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	rename -uid "869E4CF8-414E-99CD-458A-45A9AC8B7D6B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 78.763357375450965 78.671695774702087 66.625249883949905 ;
	setAttr ".r" -type "double3" -26.738352729313142 -1040.2000000002722 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "375AE09E-4F09-DAAE-A5A1-E2B19BDAF043";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 130.80380256445329;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 -9.8607613152626476e-32 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "09B5ADD4-4B9B-86B0-7050-0FACF47F598F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "774C9C87-4776-9C5F-196D-62920ECFF7FF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "6D6F5900-4EF9-C9B8-0109-CFAEF267B306";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A517EEC4-4F60-8939-3B8D-23B5887BDDDA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "D0D7D2BD-4D61-F2CE-94D4-3AA26C8B55CD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3FFDC61F-4572-70C5-12D8-248FB32ED4C1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "csgo_character";
	rename -uid "E93E103E-4143-8A57-66C8-4591E17A8266";
createNode transform -n "setup" -p "csgo_character";
	rename -uid "508F71EC-442D-D5D9-6760-A1A006641A0B";
createNode transform -n "body_ctls_grp" -p "setup";
	rename -uid "0D8B49CA-46B0-9671-790E-F6BCF9359E1D";
createNode transform -n "body_CTRL" -p "body_ctls_grp";
	rename -uid "206012A3-44E4-5C7A-6C06-DAB2A4F6718B";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0.082099915 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 3.0568620110834665e-07 43.759047019731248 -2.7628864268363986 ;
	setAttr ".sp" -type "double3" 3.0568620110834665e-07 43.759047019731248 -2.7628864268363986 ;
createNode nurbsCurve -n "body_CTRLShape" -p "body_CTRL";
	rename -uid "701BC3AD-47E1-97C3-ED06-2988AACC0D96";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		10.79670359230035 43.759043221888064 -13.559583256516447
		-10.796696523993189 43.759050817572138 -13.559589713451205
		-10.796702980927945 43.759050817574419 8.0338104028436703
		10.796697135365594 43.75904322189033 8.0338168597784279
		10.79670359230035 43.759043221888064 -13.559583256516447
		;
createNode parentConstraint -n "body_ctls_grp_parentConstraint1" -p "body_ctls_grp";
	rename -uid "C309F345-4984-02CD-694D-78BF7CEBA2EE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode scaleConstraint -n "body_ctls_grp_scaleConstraint1" -p "body_ctls_grp";
	rename -uid "44F3199F-40A0-9CD8-9AC9-16AAFFA9E0A5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "spine_rig1" -p "setup";
	rename -uid "9E976112-4266-2E0B-4EF2-928B892E757A";
createNode transform -n "ac_FK_hip_grp" -p "spine_rig1";
	rename -uid "062C9E5F-49AB-88EF-3F08-D493DBBB95D4";
	setAttr ".s" -type "double3" 1.0000000000000493 1 1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_hip" -p "ac_FK_hip_grp";
	rename -uid "3153827A-4B71-B6ED-F97F-D1814A3A45A6";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.7604 0 ;
	setAttr ".t" -type "double3" 7.1054273576010034e-15 2.8398992587956425e-29 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635176e-15 -1.7655625192200643e-31 6.3611093629270351e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000639 1.0000000000001132 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.1054273576010003e-15 -4.4408920985009102e-16 0 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 -4.4408920985006262e-16 0 ;
	setAttr ".spt" -type "double3" -1.5777218104420234e-30 -2.8398992587958241e-29 0 ;
createNode nurbsCurve -n "ac_hipShape" -p "ac_hip";
	rename -uid "3D54E7E2-4A9D-8B4C-C879-B1B418B958FB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.93852744711747493 -6.2886223506381906 -9.1759542677566799
		1.845445928847556 0.40632000234249743 -12.97675897317677
		1.0451870444163918 8.900681240799706 -9.1759542677566781
		-10.801418004815909 11.276193012785885 2.4904171050281439e-15
		1.0451870444163913 8.900681240799706 9.1759542677566728
		1.845445928847556 0.40632000234249954 12.976758973176771
		0.93852744711747493 -6.2886223506381906 9.1759542677566692
		-5.9189181185429813 -7.4152882781444536 3.7723604178817826e-15
		0.93852744711747493 -6.2886223506381906 -9.1759542677566799
		1.845445928847556 0.40632000234249743 -12.97675897317677
		1.0451870444163918 8.900681240799706 -9.1759542677566781
		;
createNode parentConstraint -n "ac_FK_hip_grp_parentConstraint1" -p "ac_FK_hip_grp";
	rename -uid "DD07F193-44F0-F54B-E06D-98AC2A2D0BF4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "body_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.6510252912193924e-22 1.2056988889326634e-21 
		5.5511151231477545e-16 ;
	setAttr ".tg[0].tor" -type "double3" 89.99998286720583 -0.00020741015680805829 89.999982013910639 ;
	setAttr ".lr" -type "double3" 89.99998286720583 -0.00020741015681123887 89.999982013910625 ;
	setAttr ".rst" -type "double3" 3.0568620110834649e-07 43.759047019731248 -2.7628864268363982 ;
	setAttr ".rsrr" -type "double3" 89.99998286720583 -0.00020741015681123887 89.999982013910625 ;
	setAttr -k on ".w0";
createNode transform -n "ac_FK_spine_1_grp" -p "spine_rig1";
	rename -uid "D8AFBD00-4EB8-6A3D-D050-FA838CBD966C";
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999956 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" 9.8697978017104935e-23 3.3246246335423705e-16 -3.3306635891981885e-16 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_FK_spine_1" -p "ac_FK_spine_1_grp";
	rename -uid "8C9A8C8E-4693-D59A-B5B2-9BA71CBAD44D";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 1 ;
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -8.8817841970012523e-16 -3.3881317890172014e-21 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.2722218725854067e-14 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_FK_spine_1Shape" -p "ac_FK_spine_1";
	rename -uid "A9B53EA3-4A8C-B2DF-7147-F5A441349831";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.015574571576984719 10.283663421377788 10.283651690240649
		2.8603623863857428 14.54329627831428 7.0264364935374272e-08
		-0.015574765087732589 10.283663421377787 -10.283651549711928
		-0.022026003940458949 7.431637824417324e-09 -11.606205677446008
		-0.015573803638380568 -8.9784840659652456 -10.28365245949659
		2.8603623863857335 -12.050654724045858 7.0264362467853834e-08
		0.015574571576974061 -8.9783519636266949 10.283651690240649
		0.022025810429710191 7.4316350872261049e-09 11.606205787352287
		0.015574571576984719 10.283663421377788 10.283651690240649
		2.8603623863857428 14.54329627831428 7.0264364935374272e-08
		-0.015574765087732589 10.283663421377787 -10.283651549711928
		;
createNode transform -n "ac_FK_spine_2_grp" -p "ac_FK_spine_1";
	rename -uid "CEEEC0ED-47A8-0A4A-4985-7DBE79B00929";
	setAttr ".t" -type "double3" 4.7440676689150933 -7.1749104755269855e-06 2.0428569890173973e-07 ;
	setAttr ".r" -type "double3" 0 -3.2131919763296086e-06 -10.503383797149159 ;
	setAttr ".s" -type "double3" 1.0000000000000024 0.99999999999999722 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754598e-16 0 ;
	setAttr ".rpt" -type "double3" -6.0715963802432789e-17 5.5808213682377339e-18 2.7550648847397372e-40 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626195e-31 0 ;
createNode transform -n "ac_FK_spine_2" -p "ac_FK_spine_2_grp";
	rename -uid "B3FFCFB6-4F05-ABF9-D59F-ECB87B924DEB";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 0.038466692 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_FK_spine_2Shape" -p "ac_FK_spine_2";
	rename -uid "587E5E7A-4105-51D6-7876-B8B823B823D7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.35190452615541762 9.9228468203285551 10.737153170796256
		1.9367738358575652 14.455283442753718 7.2862580241694907e-06
		0.33853632517982535 9.9228462888704367 -10.737132720703951
		-0.15945859852911082 -0.088971982189791812 -11.363813036272385
		0.084739581702323985 -10.894379842368098 -8.1506072695002434
		3.4742154127539688 -14.423711689711826 7.2285705189039151e-06
		0.098290028562148191 -10.894322580444923 8.1505846819104288
		-0.14043553670418518 -0.088988468182499975 11.363676002250276
		0.35190452615541762 9.9228468203285551 10.737153170796256
		1.9367738358575652 14.455283442753718 7.2862580241694907e-06
		0.33853632517982535 9.9228462888704367 -10.737132720703951
		;
createNode transform -n "ac_FK_spine_3_grp" -p "ac_FK_spine_2";
	rename -uid "1B648C85-4C63-512D-2E00-86B668776AD8";
	setAttr ".t" -type "double3" 6.3477694573680026 1.1920911058282968e-06 -8.7221565698450632e-08 ;
	setAttr ".r" -type "double3" 0 -2.2962259162171044e-06 14.000674586174817 ;
	setAttr ".s" -type "double3" 0.99999999999999734 1.0000000000000036 1.0000000000000004 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754815e-16 0 ;
	setAttr ".rpt" -type "double3" 8.0579982553858281e-17 9.894459291604348e-18 -1.4693679385278594e-39 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -1.1832913578315219e-30 0 ;
createNode transform -n "ac_chest" -p "ac_FK_spine_3_grp";
	rename -uid "672CE4F9-476D-C01D-D46A-FE828AD8FC67";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.091299891 1 0 ;
	setAttr ".t" -type "double3" 0.092042914206757587 0.50107765986418062 -6.8739747418882177e-07 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000493 1.0000000000000639 1.0000000000001132 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.1054273576013521e-15 0 -6.7762635780351701e-21 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 0 -6.7762635780344027e-21 ;
	setAttr ".spt" -type "double3" 3.5025424191814651e-28 0 -7.6736271221687618e-34 ;
createNode nurbsCurve -n "ac_chestShape" -p "ac_chest";
	rename -uid "AB85AFE9-46A3-DE94-11D9-52B2B6A2E1B8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.7633435722001112 -8.2997773641316002 -7.9735335529722287
		10.661863911589819 -3.519731920478729 -8.2671463452454024
		0.75839785693690875 8.2609238948129242 -7.9735336104041705
		-5.089818338071618 14.075515140430655 2.3315137145904677e-07
		0.75839991902470794 8.2609238627590766 7.973533915912518
		10.661866244882086 -3.5197321675933777 8.2671433686770257
		-2.7633379867130317 -8.2997777346717196 7.9735339733441251
		-7.7690888110486815 -11.481511048814736 6.6562807709918991e-07
		-2.7633435722001112 -8.2997773641316002 -7.9735335529722287
		10.661863911589819 -3.519731920478729 -8.2671463452454024
		0.75839785693690875 8.2609238948129242 -7.9735336104041705
		;
createNode transform -n "clavicle_rig" -p "ac_chest";
	rename -uid "12B16718-414F-A3CB-5D4E-BFB3835D28AC";
	setAttr ".t" -type "double3" -58.565208502465623 6.4435867539998091 1.992181707880744e-05 ;
	setAttr ".r" -type "double3" -93.393311347351045 -89.99997069950274 0 ;
	setAttr ".s" -type "double3" 0.99999999999988665 0.99999999999995137 0.99999999999993505 ;
createNode joint -n "jt_drv_clavicle_L" -p "clavicle_rig";
	rename -uid "B5BBCC00-42BF-1D00-7E00-43860689A528";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.270498628321711 62.907784418958727 -0.21629194767703819 ;
	setAttr ".r" -type "double3" -2.4148365630447906e-06 1.8094707413449135e-13 -1.9605736581730429e-12 ;
	setAttr ".jo" -type "double3" 90.090878435658468 25.799699988016403 -11.637312021640843 ;
	setAttr ".bps" -type "matrix" 0.88181399999999999 -0.18160699999999999 -0.43522699999999997 0
		 0.42595899999999998 -0.0893486 0.90032000000000001 0 -0.20239199999999999 -0.97930399999999995 -0.0014315199999999999 0
		 1.2704979999999999 62.907783999999999 -0.216221 1;
	setAttr ".radi" 0.49900000147521495;
	setAttr ".fbxID" 5;
createNode joint -n "jt_drv_upper_L_end" -p "jt_drv_clavicle_L";
	rename -uid "86F664B4-45FB-7D98-F1D7-9194D05D84D6";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 6.6654317242309542 -4.9945021629582698e-07 5.4115752732286637e-06 ;
	setAttr ".jo" -type "double3" 11.705199124068928 -38.000409730431706 16.037154397595746 ;
	setAttr ".bps" -type "matrix" 0.63595599999999997 -0.75991399999999998 -0.13450100000000001 0
		 0.0094146100000000003 -0.166633 0.98597400000000002 0 -0.77166800000000002 -0.62830200000000003 -0.098817100000000005 0
		 7.1481690000000002 61.697290000000002 -3.1171989999999998 1;
	setAttr ".radi" 0.49900000147521495;
	setAttr ".fbxID" 5;
createNode ikEffector -n "effector8" -p "jt_drv_clavicle_L";
	rename -uid "90230A53-4C84-36A0-DA1A-E1B58D18B248";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "jt_drv_clavicle_R" -p "clavicle_rig";
	rename -uid "75EB1A1D-4210-2C38-ACE9-078794BF80D8";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.2704833796556618 62.907792178879347 -0.21629330111775058 ;
	setAttr ".jo" -type "double3" -89.908914795124488 -25.799679877893205 11.637243542964699 ;
	setAttr ".bps" -type "matrix" 0.88181399999999999 0.18160599999999999 0.43522699999999997 0
		 0.42595899999999998 0.089351100000000003 -0.90031899999999998 0 -0.20239099999999999 0.97930300000000003 0.0014344500000000001 0
		 -1.2704839999999999 62.907789000000001 -0.216222 1;
	setAttr ".radi" 0.49900000147521495;
	setAttr ".fbxID" 5;
createNode joint -n "jt_drv_upper_L_end" -p "jt_drv_clavicle_R";
	rename -uid "65F9DE56-4A27-6D2A-064C-83B90FE1570F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -6.6654398304636846 -3.3152456362373073e-06 -1.1032756717099801e-06 ;
	setAttr ".jo" -type "double3" 168.29501005047442 38.000613042245 -163.96268850805339 ;
	setAttr ".bps" -type "matrix" -0.63595400000000002 -0.75991600000000004 -0.13450000000000001 0
		 0.0094136299999999992 0.166633 -0.98597400000000002 0 0.77166900000000005 -0.62829999999999997 -0.098817199999999994 0
		 -7.1481709999999996 61.697313999999999 -3.1171980000000001 1;
	setAttr ".radi" 0.49900000147521495;
	setAttr ".fbxID" 5;
createNode ikEffector -n "effector9" -p "jt_drv_clavicle_R";
	rename -uid "493E9153-4FD0-BF9B-E528-84BF5076C783";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "ac_clavicle_L" -p "clavicle_rig";
	rename -uid "B4BCC26C-414E-07C0-10E4-19AA04E1F01D";
	setAttr ".t" -type "double3" 7.1481692481862007 61.697276930326609 -3.1172641596710333 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "ac_clavicle_L" -p "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|ac_clavicle_L";
	rename -uid "579083D3-41D6-599F-7C92-69AAAFF80BF6";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0.066900253 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 0 -8.8817841970012523e-16 ;
createNode nurbsCurve -n "ac_clavicle_LShape" -p "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|ac_clavicle_L|ac_clavicle_L";
	rename -uid "2A41595C-461E-C72D-FB42-CFA18BF4371C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		3.1521555378078405 5.3470496025806336 1.1831805830413868
		3.513655013403981 5.5311188970885361 2.5442067597566553
		2.6788537564585155 6.6447464902710784 1.5132166545682839
		3.1521555378078405 5.3470496025806336 1.1831805830413868
		4.3049451771811835 6.1756360138887212 1.1447576295183477
		2.6788537564585155 6.6447464902710784 1.5132166545682839
		4.3049451771811835 6.1756360138887212 1.1447576295183477
		3.513655013403981 5.5311188970885361 2.5442067597566553
		;
createNode ikHandle -n "ikHandle_arm_clavicle_L" -p "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|ac_clavicle_L|ac_clavicle_L";
	rename -uid "A4F2CCFA-439F-C1C9-9EF8-00A9B8F49657";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
	setAttr ".pv" -type "double3" -0.44832907087690171 -2.1693021240015522 -0.0031624220172580095 ;
	setAttr ".roc" yes;
createNode transform -n "ac_clavicle_R" -p "clavicle_rig";
	rename -uid "BA3A5261-458E-B12D-C2ED-66B6FB4318A9";
	setAttr ".t" -type "double3" -7.1481660886174021 61.697293915869089 -3.1172634942712887 ;
	setAttr ".ro" 1;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 1.5006434125552911e-05 -2.2039652236571783e-06 8.2996239569865776e-06 ;
	setAttr ".rpt" -type "double3" -1.8166002928846356e-05 -1.4781577271157194e-05 -8.9650237113784584e-06 ;
	setAttr ".sp" -type "double3" 1.5006434125552914e-05 -2.2039652236571783e-06 8.2996239569865793e-06 ;
	setAttr ".spt" -type "double3" -3.388131789017201e-21 0 -1.6940658945086005e-21 ;
createNode transform -n "ac_clavicle_R_mir" -p "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|ac_clavicle_R";
	rename -uid "334506AC-4093-0BDC-2547-7BBE5757E420";
	setAttr ".t" -type "double3" 2.5420877848958412e-05 -7.5381220199233212e-07 1.3119989296317414e-05 ;
	setAttr ".r" -type "double3" -179.99999999999821 -3.8637416195040802e-05 179.99998837636542 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1 -1.0000000000000004 ;
createNode transform -n "ac_clavicle_R" -p "ac_clavicle_R_mir";
	rename -uid "382E25C9-41F1-F844-E31C-9EA3E3D8F092";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0.066900253 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.0414440176020889e-05 -1.4501551177659167e-06 -4.8203723626016881e-06 ;
	setAttr ".sp" -type "double3" 1.0414440176020889e-05 -1.4501551177659167e-06 -4.8203723626016881e-06 ;
createNode nurbsCurve -n "ac_clavicle_RShape" -p "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|ac_clavicle_R|ac_clavicle_R_mir|ac_clavicle_R";
	rename -uid "CA8BB332-4404-1789-B277-CC87EC931B24";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		3.152167834884859 5.3470475129453829 1.1831736370117056
		3.5136682656313503 5.5311167341155913 2.5441995699494266
		2.6788665393601847 6.6447444966548517 1.5132100277095064
		3.152167834884859 5.3470475129453829 1.1831736370117056
		4.304957616443291 6.1756336903862232 1.1447499061047475
		2.6788665393601847 6.6447444966548517 1.5132100277095064
		4.304957616443291 6.1756336903862232 1.1447499061047475
		3.5136682656313503 5.5311167341155913 2.5441995699494266
		;
createNode ikHandle -n "ikHandle_arm_clavicle_R" -p "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|ac_clavicle_R|ac_clavicle_R_mir|ac_clavicle_R";
	rename -uid "3E1B5BF1-4123-CAE1-4CDD-23A7FA2B9343";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.254875265871874e-06 1.553538798759746e-05 -4.1549704814514143e-06 ;
	setAttr ".r" -type "double3" -179.99999999999397 -3.8637416200790767e-05 179.99998837636551 ;
	setAttr ".s" -type "double3" 0.99999999999999933 1 -0.99999999999999911 ;
	setAttr ".pv" -type "double3" -0.94356144646005213 0.19791994339295729 -1.9943420355258847 ;
	setAttr ".roc" yes;
createNode transform -n "ac_neck_1_grp" -p "ac_chest";
	rename -uid "9292C132-4C31-B333-FF9F-31A7B4D43F49";
	setAttr ".t" -type "double3" 6.4231494456753566 -0.50113334480753036 3.454009384937405e-07 ;
	setAttr ".r" -type "double3" -9.4787915988670016e-23 6.952271753900938e-06 13.985358797573674 ;
	setAttr ".s" -type "double3" 0.99999999999995148 0.99999999999993561 0.99999999999988698 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738752551e-16 0 ;
	setAttr ".rpt" -type "double3" 8.0493592145515106e-17 9.8729309272548923e-18 -5.5101297694794743e-40 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 2.1447155860694877e-29 0 ;
createNode transform -n "ac_neck_2" -p "ac_neck_1_grp";
	rename -uid "FBBC5D0A-49B8-EAEA-E984-1BA8C9D30BB0";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.25950003 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_neck_2Shape" -p "ac_neck_2";
	rename -uid "11C6CB48-412C-7A81-46D8-E8A27DDC3549";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 1.5217679568320039 4.4445599370208972 
		-4.7692308301254629 0.59852469339933978 6.7477587097100447 -1.7477339020466331e-14 
		3.0657197403352425 4.4655300618888827 4.7956359806061002 1.550067087910366 0.18048792624822768 
		5.3562264763341361 1.5552027978889225 -3.0431796234516004 4.601085812970779 1.8809332106283256 
		-4.3720138475541379 -2.5094892958798722e-14 0.012746662930097852 -3.0673930510166629 
		-4.6238327016388698 -0.58383934585669328 0.17897127204569008 -5.3562264763341831 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "ac_head_0_grp" -p "ac_neck_2";
	rename -uid "EA00638A-4E0D-6A79-A26A-5288C1E87B3B";
	setAttr ".t" -type "double3" 5.7621525641369615 2.5889202678541778e-05 3.896962369711785e-07 ;
	setAttr ".r" -type "double3" 0 0 -17.378683805308974 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" -9.9482341735782433e-17 1.520399907726654e-17 0 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_head_0" -p "ac_head_0_grp";
	rename -uid "EC797F64-4FEC-F74C-E39E-36AD71C0C00C";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.090600014 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_head_0Shape" -p "ac_head_0";
	rename -uid "052BFC57-4534-3F98-A088-03949B0BEDFA";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78847430650527439 4.7873114146776059 
		5.5727901827124349 -2.1726560718607981 5.4180136642865699 -1.4687290004846484e-15 
		0.77874894327717215 4.7873114146776041 -5.5727901827124349 -0.23359760971419918 0.005396456428499668 
		-5.6848603874086949 1.9099762701091085 -4.3602405707748799 -5.5727901827124295 -1.2411753750323877 
		-4.1153361109456981 -2.6056927578701484e-15 0.34275302032666233 -4.3602405707748781 
		5.5727901827124402 -2.4499859848229706 0.0053964564284983141 5.6848603874086949 0 
		0 0 0 0 0 0 0 0;
createNode parentConstraint -n "ac_FK_spine_1_grp_parentConstraint1" -p "ac_FK_spine_1_grp";
	rename -uid "7923FD30-49DC-E074-C8D5-C6B5094224AC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "body_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.2974975571159971e-06 4.0392968040716326 0.4685131373207293 ;
	setAttr ".tg[0].tor" -type "double3" 89.999982871119059 0.1039794416688649 89.999981982090119 ;
	setAttr ".lr" -type "double3" 89.999982871119073 0.10397944166885539 89.999981982090134 ;
	setAttr ".rst" -type "double3" 1.6031837582243438e-06 47.798343823802881 -2.294373289515669 ;
	setAttr ".rsrr" -type "double3" 89.999982871119073 0.10397944166885539 89.999981982090134 ;
	setAttr -k on ".w0";
createNode transform -n "arm_rig_L" -p "setup";
	rename -uid "31104E8B-4035-DFDC-6953-309E6037EE34";
	setAttr ".t" -type "double3" -4.4408920985006262e-15 -2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" -6.2731461610689622e-15 -1.7807507396309837e-05 7.4493905919249071e-06 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "ac_DRV_arm_jt_L_grp" -p "arm_rig_L";
	rename -uid "50B054D9-4141-DCBC-2DDD-6B9264A42A22";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 9.3285028118455227 61.990927437044569 -0.88039539111279208 ;
	setAttr ".sp" -type "double3" 9.3285028118455227 61.990927437044569 -0.88039539111279208 ;
createNode joint -n "jt_drv_arm_upper_L" -p "ac_DRV_arm_jt_L_grp";
	rename -uid "26050CF7-472E-8250-2D7E-91AB1767E6E1";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 7.1481695784866588 61.697282471560378 -3.1171985104273245 ;
	setAttr ".jo" -type "double3" 95.722846169508998 7.7294872235213461 -50.074866057477834 ;
	setAttr ".bps" -type "matrix" 0.63595500000000005 -0.75991600000000004 -0.134496 0
		 0.0094166900000000001 -0.166626 0.98597500000000005 0 -0.77166900000000005 -0.62830200000000003 -0.098810499999999996 0
		 7.1481750000000002 61.697288999999998 -3.1172 1;
	setAttr ".radi" 2.3990000014752151;
	setAttr ".fbxID" 5;
createNode joint -n "jt_drv_arm_lower_L" -p "jt_drv_arm_upper_L";
	rename -uid "18188F3D-4279-3C4B-B580-7A8C8BE16038";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 11.596659612774069 -1.7475253383025802e-05 -3.7897477653814349e-06 ;
	setAttr ".jo" -type "double3" -0.00027066068038934359 -0.00013144144657187672 25.480077047793209 ;
	setAttr ".bps" -type "matrix" 0.578148 -0.75768599999999997 0.30274899999999999 0
		 -0.26508199999999998 0.17649799999999999 0.94793400000000005 0 -0.771671 -0.62829999999999997 -0.098806699999999997 0
		 14.523125 52.884808 -4.6769210000000001 1;
	setAttr ".radi" 2.3990000014752151;
	setAttr ".fbxID" 5;
createNode joint -n "jt_drv_hand_L" -p "jt_drv_arm_lower_L";
	rename -uid "4E8A2DA8-48FE-2DED-EA1A-60A103DFE7E7";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 11.486963280884801 9.1283854786183838e-07 -1.0709072675751941e-05 ;
	setAttr ".jo" -type "double3" 86.41045805788049 -3.0336178476906128 2.8071674080704887 ;
	setAttr ".bps" -type "matrix" 0.52284299999999995 -0.780335 0.34309299999999998 0
		 -0.81724200000000002 -0.57331299999999996 -0.058548900000000001 0 0.24238699999999999 -0.249778 -0.93747499999999995 0
		 21.164306 44.181302000000002 -1.1992529999999999 1;
	setAttr ".radi" 2.3990000014752151;
	setAttr ".fbxID" 5;
createNode orientConstraint -n "jt_drv_hand_L_orientConstraint1" -p "jt_drv_hand_L";
	rename -uid "3CDBF5CC-4876-A763-9C4E-66AB331C5927";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Hand_CNSTRW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -179.99937559307756 3.1371442621625931e-05 6.9592537506234177e-05 ;
	setAttr ".o" -type "double3" 180 0 0 ;
	setAttr ".rsrr" -type "double3" 0.00064089063030712981 -2.8545835346948767e-05 0.00011260986327491013 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "jt_drv_arm_lower_L_orientConstraint1" -p "jt_drv_arm_lower_L";
	rename -uid "CC361C45-4D3F-9B9B-8DCE-448F55878A56";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_arm_lower_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.4098170220756575e-08 1.073684098797921e-06 -3.7939057787890212e-07 ;
	setAttr ".rsrr" -type "double3" 1.4979050758244772e-14 1.0618994681991304e-14 6.3611172629999741e-15 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "jt_drv_arm_lower_L";
	rename -uid "270A970D-4F70-04CB-07C5-74A0EC71271C";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "L_pole_vector_arm_line_lower" -p "jt_drv_arm_lower_L";
	rename -uid "7043389C-4A04-2852-5EA9-6BB8B7C19B49";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.30274981410704527 -0.94793503652745681 0.098799628405899398 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0 0 0.99999999999999978 ;
	setAttr ".rpt" -type "double3" 0.30274954482860761 0.94793530976630536 -1.0987996032599809 ;
	setAttr ".sp" -type "double3" 0 0 1 ;
	setAttr ".spt" -type "double3" 0 0 -2.2204460492503126e-16 ;
createNode clusterHandle -n "L_pole_vector_arm_line_lowerShape" -p "L_pole_vector_arm_line_lower";
	rename -uid "7A7405AB-4C5B-10BA-15C7-2BBFCCFA7543";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 0 1 ;
createNode orientConstraint -n "jt_drv_arm_upper_L_orientConstraint2" -p "jt_drv_arm_upper_L";
	rename -uid "40BECA47-4616-C939-7E6A-53A28FF58D83";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_FK_arm_upper_L1W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.7462126366148257e-07 9.6318588662499701e-07 -3.7939569106964131e-07 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-15 1.3241718894150475e-30 1.5902773407317584e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ac_DRV_arm_jt_L_grp_parentConstraint1" -p "ac_DRV_arm_jt_L_grp";
	rename -uid "08C856A5-4DB8-56D7-77C4-288B33DE038F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jt_drv_upper_L_endW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.8625910704850952 2.1770912580836388 -2.0880298092441265 ;
	setAttr ".tg[0].tor" -type "double3" -98.937863065154545 50.503908970337342 0.84812241902871099 ;
	setAttr ".lr" -type "double3" -2.1294369898775729e-06 4.3855609422716433e-07 1.0510004819375441e-06 ;
	setAttr ".rst" -type "double3" -1.5987211554602254e-14 0 3.5527136788005009e-15 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-15 -1.5902773407317584e-14 
		-4.7708320221952736e-15 ;
	setAttr -k on ".w0";
createNode transform -n "FK_to_IK_or_IK_to_FK_null" -p "ac_DRV_arm_jt_L_grp";
	rename -uid "418B1650-4DF1-C11A-D6A7-D3AB65F89CDC";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ac_arm_setup_L_grp" -p "arm_rig_L";
	rename -uid "6EFB2493-41AA-FF54-FEBA-EB956B1478E9";
createNode transform -n "ac_FK_arm_upper_L_grp" -p "ac_arm_setup_L_grp";
	rename -uid "9AECC026-4DFA-FBFB-D411-B7B341C9A57F";
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "FK_arm_upper_L" -p "ac_FK_arm_upper_L_grp";
	rename -uid "49D106E7-4908-CCDE-D2DD-C0899D020B57";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.8320712122488203e-05 -6.577755205938729e-05 5.5843057680249331e-06 ;
	setAttr ".sp" -type "double3" 1.8320712122488203e-05 -6.577755205938729e-05 5.5843057680249331e-06 ;
createNode nurbsCurve -n "FK_arm_upper_LShape" -p "FK_arm_upper_L";
	rename -uid "D978E31D-470D-DAAE-24EB-89988E1EEA36";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.3353714557019289 2.9897964191786155 3.4784477155918689
		1.952880429646408 5.2995573795568802 -0.58464470091145038
		1.8103323109850227 2.4427487745738108 -4.8037431041845968
		0.65786476620018375 -0.48115509174014159 -4.5980544817404061
		-0.77531632354070734 -3.6245446287950274 -2.6035352768673237
		0.53211774237981613 -5.6817072635009689 -0.17447558917344355
		4.3004845953961164 -3.6536694987489251 3.4889117247175947
		7.7948234337483351 -0.50049535588194749 3.032533041985658
		4.3353714557019289 2.9897964191786155 3.4784477155918689
		1.952880429646408 5.2995573795568802 -0.58464470091145038
		1.8103323109850227 2.4427487745738108 -4.8037431041845968
		;
createNode transform -n "ac_FK_arm_lower_L_grp" -p "FK_arm_upper_L";
	rename -uid "1AD5613F-45DC-969C-1CAF-0A963B23F831";
	setAttr ".t" -type "double3" 11.596659612774072 -1.7475253379473088e-05 -3.7897477724868622e-06 ;
	setAttr ".r" -type "double3" -0.00027066068039106276 -0.00013144144656483588 25.480077047793209 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999967 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754681e-16 0 ;
	setAttr ".rpt" -type "double3" 1.4328445856940045e-16 3.2395776869994594e-17 1.5733814346326241e-21 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 1.4791141972893967e-31 0 ;
createNode transform -n "FK_arm_lower_L" -p "ac_FK_arm_lower_L_grp";
	rename -uid "A45F2FD5-469D-76AB-D731-28B7915D1A99";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.86480004 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "FK_arm_lower_LShape" -p "FK_arm_lower_L";
	rename -uid "D2D25B62-42B4-F6B6-F2D1-5BB9E06F9241";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.4408920985006262e-16 3.2263084799904376 3.2263084799904487
		-1.0612436848896709e-15 4.5626892088017925 2.1595666209556162e-14
		-1.4432899320127035e-15 3.2263084799904318 -3.2263084799904118
		-4.4408920985006262e-16 2.1512919706998985e-16 -4.5626892088017694
		-1.4432899320127035e-15 -3.2263084799904345 -3.2263084799904118
		-1.0612436848896849e-15 -4.562689208801797 2.0859234374191303e-14
		-4.4408920985006262e-16 -3.2263084799904318 3.2263084799904487
		-8.8817841970012523e-16 -6.4361373364473947e-16 4.5626892088018103
		-4.4408920985006262e-16 3.2263084799904376 3.2263084799904487
		-1.0612436848896709e-15 4.5626892088017925 2.1595666209556162e-14
		-1.4432899320127035e-15 3.2263084799904318 -3.2263084799904118
		;
createNode transform -n "ac_FK_hand_L_grp" -p "FK_arm_lower_L";
	rename -uid "C19AC198-4ACD-6853-E043-14ACCEC07E0B";
	setAttr ".t" -type "double3" 11.486947011626988 -3.8430336907182582e-05 5.4426989212197265e-06 ;
	setAttr ".r" -type "double3" 93.589308544616571 3.0336195448690515 182.80716608257242 ;
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000007 -1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" 1.8592096891220175e-17 3.1310072109880708e-16 -3.3194766174048529e-16 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "FK_hand_L" -p "ac_FK_hand_L_grp";
	rename -uid "F3CF3583-4520-8DD6-749D-309D0C48BC5D";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.86480004 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 -7.1054273576010019e-15 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 -7.1054273576010019e-15 8.8817841970012523e-16 ;
createNode nurbsCurve -n "FK_hand_LShape" -p "FK_hand_L";
	rename -uid "4F48724B-490B-D974-715D-94B02F623393";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.0014072567235754955 3.0139785249918729 3.0139781964607084
		-2.3040039316284981e-14 4.2624093067447602 -2.8950583877128986e-15
		-0.0014072567236205181 3.0139785249918725 -3.0139781964607257
		-0.0019901615442749639 1.5843143620273732e-14 -4.2624088421315527
		-0.0014072567236205181 -3.0139785249918445 -3.0139781964607257
		-2.3040360534376242e-14 -4.2624093067447291 -3.5830240638828141e-15
		0.0014072567235754955 -3.0139785249918432 3.0139781964607084
		0.0019901615442318756 1.5040916316928451e-14 4.2624088421315474
		0.0014072567235754955 3.0139785249918729 3.0139781964607084
		-2.3040039316284981e-14 4.2624093067447602 -2.8950583877128986e-15
		-0.0014072567236205181 3.0139785249918725 -3.0139781964607257
		;
createNode parentConstraint -n "ac_FK_arm_upper_L_grp_parentConstraint1" -p "ac_FK_arm_upper_L_grp";
	rename -uid "064B9F67-4882-42F8-DF89-BD8E674B6A46";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jt_drv_upper_L_endW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.4134107345853408e-05 6.3570954690228554e-05 
		-8.909132631629289e-06 ;
	setAttr ".tg[0].tor" -type "double3" -0.0002507282786047104 -7.4792611847595848e-05 
		0.00011053860799765039 ;
	setAttr ".lr" -type "double3" 95.7228444509296 7.7294858719500583 -50.074865237619683 ;
	setAttr ".rst" -type "double3" 7.1481695784866774 61.697282471560392 -3.1171985104273214 ;
	setAttr ".rsrr" -type "double3" 95.722846169508998 7.7294872235213425 -50.074866057477834 ;
	setAttr -k on ".w0";
createNode transform -n "ac_IK_hand_L_grp" -p "ac_arm_setup_L_grp";
	rename -uid "FFA68D21-47E2-12AF-CB80-6D9B3775E2F1";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754706e-16 0 ;
	setAttr ".rpt" -type "double3" 2.7219615159070742e-16 5.2401857721130111e-16 1.950076017579207e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -9.8607613152626498e-32 0 ;
createNode transform -n "ac_IK_hand_L_fixer" -p "ac_IK_hand_L_grp";
	rename -uid "E2FBBEEA-4D1A-592A-0BE2-F6817A7AA872";
	setAttr ".s" -type "double3" 0.99999999999999911 1.0000000000000002 -0.99999999999999956 ;
createNode transform -n "Left_Hand_CNSTR" -p "ac_IK_hand_L_fixer";
	rename -uid "7C1208C9-4343-E445-3380-76A2E3BD1804";
	addAttr -ci true -sn "Weapon" -ln "Weapon" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "World" -ln "World" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Finger_CTRLS" -ln "Finger_CTRLS" -min 0 -max 1 -at "long";
	addAttr -ci true -sn "Twist_Visibility" -ln "Twist_Visibility" -min 0 -max 1 -at "long";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 30;
	setAttr ".ovrgb" -type "float3" 0.71649981 0 1 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Weapon";
	setAttr -k on ".World" 1;
	setAttr -cb on ".Finger_CTRLS" 1;
	setAttr -cb on ".Twist_Visibility" 1;
createNode nurbsCurve -n "Left_Hand_CNSTRShape" -p "Left_Hand_CNSTR";
	rename -uid "BBF4C33C-42B2-F720-5304-35AD87D3D3E2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.3830964996816714e-05 -2.4631404655185629 -2.4631015063883521
		-3.4475717468283838e-05 -2.424071520880033 4.5967040864139203e-05
		-3.5673513195386925e-05 -2.4631270321086727 2.463194357377307
		-1.8222277320165122e-05 2.1134140246107853e-05 2.424124719858995
		-8.0026662603309723e-07 2.4631688315299236 2.4631795382137822
		-1.5551414774420093e-07 2.4240998868913941 3.2064784567161248e-05
		1.0422764085276233e-06 2.4631547052386797 -2.4631156326665509
		-1.6408954296860331e-05 7.2318711123346004e-06 -2.4240466880335707
		-3.3830964996816714e-05 -2.4631404655185629 -2.4631015063883521
		-3.4475717468283838e-05 -2.424071520880033 4.5967040864139203e-05
		-3.5673513195386925e-05 -2.4631270321086727 2.463194357377307
		;
createNode ikHandle -n "ikHandle_arm_hand_L" -p "Left_Hand_CNSTR";
	rename -uid "19FE068C-4DB1-0C68-1919-29918A2B5859";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle_arm_L_poleVectorConstraint1" -p "ikHandle_arm_hand_L";
	rename -uid "6618FA5B-4593-5A1A-C8F5-00A2367E95CF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_IK_arm_pole_LW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 9.3660951699466111 -1.902578639310839 22.400009646161898 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "ac_IK_hand_L_fixer_pointConstraint1" -p "ac_IK_hand_L_fixer";
	rename -uid "12FA22DF-457B-8897-EDC6-6DB3D1B9ED78";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_weapon_CTRL_ContrainW0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "ac_FK_hand_LW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".o" -type "double3" -5.7553961596568115e-13 1.2789769243681803e-13 1.6875389974302379e-12 ;
	setAttr ".rst" -type "double3" -1.7190343822193199e-05 1.4152493321262227e-05 3.89833984586474e-05 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "ac_IK_hand_L_fixer_orientConstraint1" -p "ac_IK_hand_L_fixer";
	rename -uid "39AC6AB5-4660-2B06-0085-D493A497FEE3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_weapon_CTRL_ContrainW0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "ac_FK_hand_LW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -179.99976776763501 0 0 ;
	setAttr ".o" -type "double3" 360.00000000000119 360 -180 ;
	setAttr ".rsrr" -type "double3" 179.99976776763617 360 -180 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "ac_IK_hand_L_grp_parentConstraint1" -p "ac_IK_hand_L_grp";
	rename -uid "97A8850A-496C-43CE-72FE-6FA2D4C73F38";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 21.164291580016101 44.181301805998345 -1.1992442161170762 ;
	setAttr ".tg[0].tor" -type "double3" -176.42627416702442 -20.065432749752482 -56.177001072113775 ;
	setAttr ".lr" -type "double3" -176.42628991679683 -20.065422837574367 -56.177003117867962 ;
	setAttr ".rst" -type "double3" 21.16429695158374 44.181299054293149 -1.1992507939729153 ;
	setAttr ".rsrr" -type "double3" -176.4262899167968 -20.065422837574371 -56.177003117867962 ;
	setAttr -k on ".w0";
createNode transform -n "ac_IK_arm_pole_L_grp" -p "ac_arm_setup_L_grp";
	rename -uid "040ED502-4F0F-DB5C-38BB-92838183242B";
createNode transform -n "ac_IK_arm_pole_L" -p "ac_IK_arm_pole_L_grp";
	rename -uid "EFCA6321-428E-9922-9D88-60B1791F8924";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 30;
	setAttr ".ovrgb" -type "float3" 0.71649981 0 1 ;
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_IK_arm_pole_LShape" -p "ac_IK_arm_pole_L";
	rename -uid "2DAE35F5-49A1-2EAC-BE21-1BB6BC452647";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		0.47678002635985439 -0.61708378629729721 -0.47678002635984673
		0.47678002635985101 -0.29695843396098381 -1.4303400790795524
		0.95356005271970157 -0.23898581930861038 -1.4303400790795522
		-3.717701514745987e-15 2.9977496790754553e-15 -2.3839001317992574
		-0.95356005271970445 -0.23898637102450862 -1.4303400790795522
		-0.476780026359852 -0.29695916958218138 -1.4303400790795524
		-0.47678002635984862 -0.61708378629729721 -0.47678002635984673
		-1.4303400790795548 -0.29695813971250495 -0.47678002635984917
		-1.4303400790795548 -0.23898552506013135 -0.95356005271970123
		-2.383900131799261 2.9977496790754553e-15 0
		-1.4303400790795548 -0.23898622390026933 0.95356005271970479
		-1.4303400790795548 -0.29695843396098381 0.47678002635985384
		-0.47678002635984862 -0.61708378629729721 0.47678002635985628
		-0.476780026359852 -0.29695916958218138 1.4303400790795568
		-0.95356005271970445 -0.23898552506013135 1.4303400790795571
		-3.717701514745987e-15 2.9977496790754553e-15 2.3839001317992574
		0.95356005271970157 -0.2389846423146941 1.4303400790795571
		0.47678002635985101 -0.29695843396098381 1.4303400790795568
		0.47678002635985439 -0.61708378629729721 0.47678002635985628
		1.4303400790795542 -0.29695843396098381 0.47678002635985384
		1.4303400790795542 -0.23898537793589181 0.95356005271970479
		2.3839001317992539 2.9977496790754553e-15 0
		1.4303400790795542 -0.23898552506013135 -0.95356005271970123
		1.4303400790795542 -0.29695872820946284 -0.47678002635984917
		0.47678002635985439 -0.61708378629729721 -0.47678002635984673
		;
createNode transform -n "L_pole_vector_arm_line_pole" -p "ac_IK_arm_pole_L";
	rename -uid "F841B0F2-4FD8-7842-E8C2-848C35699629";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.098807158558827268 0.94793446754375132 0.30274991232712267 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0 0 -0.99999999999999978 ;
	setAttr ".rpt" -type "double3" -0.098806954580273387 -0.94793459403427183 0.69725061327947935 ;
	setAttr ".sp" -type "double3" 0 0 -1 ;
	setAttr ".spt" -type "double3" 0 0 2.2204460492503126e-16 ;
createNode clusterHandle -n "L_pole_vector_arm_line_poleShape" -p "L_pole_vector_arm_line_pole";
	rename -uid "AAFD8B79-4876-E43E-B033-C38B1C39F89E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 0 -1 ;
createNode parentConstraint -n "ac_IK_arm_pole_L_grp_parentConstraint1" -p "ac_IK_arm_pole_L_grp";
	rename -uid "60619CD9-4EF4-48F6-3A58-D899DBE4D91A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 19.029513817931019 49.884338671316534 -20.791805326710818 ;
	setAttr ".tg[0].tor" -type "double3" 95.950675950319237 -17.622812740368598 -52.654759504809491 ;
	setAttr ".lr" -type "double3" 95.950661096351553 -17.622801938043551 -52.654762457171806 ;
	setAttr ".rst" -type "double3" 19.029513841626208 49.884336197167393 -20.791811241077788 ;
	setAttr ".rsrr" -type "double3" 95.950661096351553 -17.622801938043551 -52.654762457171806 ;
	setAttr -k on ".w0";
createNode transform -n "Left_weapon_setup" -p "ac_arm_setup_L_grp";
	rename -uid "D3DF717F-4098-EAA2-17B8-DD8E2D741FA3";
	setAttr ".t" -type "double3" 4.440895655765756e-15 2.8421708853014995e-14 -4.4409059007883568e-16 ;
	setAttr ".r" -type "double3" -1.8079360196814324e-28 1.7807507396309688e-05 -7.4493905919252662e-06 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "Left_weapon_CTRL_Contrain" -p "Left_weapon_setup";
	rename -uid "92B74EF7-47DD-AFA1-B61C-04A2230270F3";
	setAttr ".s" -type "double3" 0.99999999999999911 1.0000000000000004 -0.99999999999999978 ;
createNode parentConstraint -n "Left_weapon_CTRL_Contrain_parentConstraint1" -p "Left_weapon_CTRL_Contrain";
	rename -uid "E19BEC05-4ED6-EF22-0F82-44BB439CA282";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 21.164280475272744 44.181297369224531 -1.1992874885783142 ;
	setAttr ".tg[0].tor" -type "double3" -3.573958065340721 20.065432749750556 123.82299892788579 ;
	setAttr ".lr" -type "double3" -3.5739580653407188 20.065432749750553 123.82299892788579 ;
	setAttr ".rst" -type "double3" 21.164280475272744 44.181297369224481 -1.1992874885800995 ;
	setAttr ".rsrr" -type "double3" -3.5739580653407188 20.065432749750553 123.82299892788579 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Hand_CTRL" -p "Left_weapon_CTRL_Contrain";
	rename -uid "17021428-4682-13B6-46D2-629C8D93657B";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0.66190004 1 ;
	setAttr ".s" -type "double3" 0.999999999999999 1.0000000000000007 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Left_Hand_CTRLShape" -p "Left_Hand_CTRL";
	rename -uid "64833043-440D-6F54-B4FC-618F456DE49D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489121405 -3.0064861510813325 
		-2.2228745261900813 9.7240338504291132e-15 -2.6563591376233548e-14 -3.143619302391679 
		0.78361162489123348 3.0064861510812801 -2.22287452619008 1.1081941875543968 4.2518134899460449 
		5.244399808298869e-16 0.78361162489123315 3.0064861510812801 2.2228745261900822 9.3822027652528492e-15 
		-2.5741621175483337e-14 3.1436193023916834 -0.7836116248912145 -3.0064861510813325 
		2.2228745261900817 -1.1081941875543777 -4.2518134899460964 1.1161000149123214e-15 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "Left_arm_twists" -p "ac_arm_setup_L_grp";
	rename -uid "42959336-4366-F746-2CBC-A6A16A2696AD";
	setAttr ".t" -type "double3" 4.4408956557657568e-15 2.8421708853014995e-14 -4.4409059007883568e-16 ;
	setAttr ".r" -type "double3" -1.8079360196814324e-28 1.7807507396309688e-05 -7.4493905919252679e-06 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "jt_drv_arm_upper_L_nuLL" -p "Left_arm_twists";
	rename -uid "1AC2B193-46BB-FCCE-2314-B795451B4021";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 0.99999999999999944 ;
createNode parentConstraint -n "jt_drv_arm_upper_L_nuLL_parentConstraint1" -p "jt_drv_arm_upper_L_nuLL";
	rename -uid "59B09866-40A9-8D53-9555-2597F1EC6CF0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jt_drv_arm_upper_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".tg[0].tor" -type "double3" 2.9420130803537528e-14 -4.6714396883995402e-15 
		-7.9513867036587919e-15 ;
	setAttr ".lr" -type "double3" 95.722469940700861 7.7296416484658108 -50.074967025443556 ;
	setAttr ".rst" -type "double3" 7.1481625358151328 61.697283435577596 -3.1171963032340955 ;
	setAttr ".rsrr" -type "double3" 95.722432929828784 7.7294855465577932 -50.074950508979434 ;
	setAttr -k on ".w0";
createNode transform -n "ac_arm_upper_L_TWIST_grp" -p "jt_drv_arm_upper_L_nuLL";
	rename -uid "71741DEB-4B4F-0677-08EC-CEBB34B55E47";
	setAttr ".t" -type "double3" 3.8655412583811994 -1.0543537404927861e-05 -2.3340585045161788e-05 ;
	setAttr ".r" -type "double3" 0.00046448248172056258 3.4570977186062234e-05 -4.7993652476939881e-05 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1.0000000000000007 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754686e-16 0 ;
	setAttr ".rpt" -type "double3" -2.7899421012832534e-22 1.1061388801423297e-26 -2.7000896930866331e-21 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626465e-32 0 ;
createNode transform -n "ac_arm_upper_L_TWIST" -p "ac_arm_upper_L_TWIST_grp";
	rename -uid "63F2394B-4808-9935-796A-B19FD421E4CC";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.034999847 0 1 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_arm_upper_L_TWISTShape" -p "ac_arm_upper_L_TWIST";
	rename -uid "68E036F5-4A36-388E-F469-3DB0F03A3D61";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		5.4264087378817183e-15 -1.7763568394002493e-15 -6.1095930924710418
		6.7830109223521485e-15 -6.1095930924710293 -1.4600207593925875e-14
		5.4264087378817183e-15 -1.7763568394002493e-15 6.1095930924710133
		4.069806553411289e-15 6.1095930924710267 -1.4600207593925875e-14
		5.4264087378817183e-15 -1.7763568394002493e-15 -6.1095930924710418
		;
createNode transform -n "ac_arm_upper_L_TWIST1_grp" -p "jt_drv_arm_upper_L_nuLL";
	rename -uid "B9839950-4D2A-D7D0-36EF-EABE256E3752";
	setAttr ".t" -type "double3" 7.7310963908133914 -1.2573716562158666e-05 -3.050021698669525e-05 ;
	setAttr ".r" -type "double3" 0.0004852665920595767 3.4597268519748213e-05 -5.3316763469240093e-06 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000009 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" -3.0995346653348217e-23 1.1947283499587131e-26 -2.8209100992667664e-21 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_arm_upper_L_TWIST1" -p "ac_arm_upper_L_TWIST1_grp";
	rename -uid "1D708B8D-47BD-9AC6-D8C3-049E8F90C2F9";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.034999847 0 1 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_arm_upper_L_TWISTShape1" -p "ac_arm_upper_L_TWIST1";
	rename -uid "D32849AD-4592-BFB8-DC8D-75AB876217DB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		5.6549601941790086e-15 -1.7763568394002493e-15 -5.2779427568115258
		6.8268989084321523e-15 -5.2779427568115143 -1.3580002744782162e-14
		5.6549601941790086e-15 -1.7763568394002493e-15 5.2779427568115
		4.4830214799258658e-15 5.2779427568115116 -1.3580002744782162e-14
		5.6549601941790086e-15 -1.7763568394002493e-15 -5.2779427568115258
		;
createNode transform -n "jt_drv_arm_lower_L_null" -p "jt_drv_arm_upper_L_nuLL";
	rename -uid "0632116C-4B81-354C-EF50-BD869B443545";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000004 ;
createNode parentConstraint -n "jt_drv_arm_lower_L_null_parentConstraint1" -p "jt_drv_arm_lower_L_null";
	rename -uid "5283BF78-4437-B43B-1D27-17AC2B38E03C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jt_drv_arm_lower_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 4.4408920985006262e-16 0 ;
	setAttr ".tg[0].tor" -type "double3" 1.8954962501432609e-14 3.2640287117997792e-15 
		1.72512039278175e-15 ;
	setAttr ".lr" -type "double3" -0.0002706609046552049 -0.00013144098476866351 25.480174806226696 ;
	setAttr ".rst" -type "double3" 11.596659612774072 -1.7475253381249445e-05 -3.7897477653814349e-06 ;
	setAttr ".rsrr" -type "double3" -0.00027066068038934365 -0.00013144144657187672 
		25.480077047793209 ;
	setAttr -k on ".w0";
createNode transform -n "ac_arm_lower_L_TWIST_grp" -p "jt_drv_arm_lower_L_null";
	rename -uid "D125469E-40F8-18A1-691A-4CBD8A35856B";
	setAttr ".t" -type "double3" 3.828984062951367 -3.8468215592946109e-06 -2.5184845085846064e-05 ;
	setAttr ".r" -type "double3" 0.00090667295936829116 9.8311795528162687e-05 0.00012498986870719309 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754676e-16 0 ;
	setAttr ".rpt" -type "double3" 7.2657133234092668e-22 4.249455620598335e-26 -5.2705934214004751e-21 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525284e-31 0 ;
createNode transform -n "ac_arm_lower_L_TWIST" -p "ac_arm_lower_L_TWIST_grp";
	rename -uid "258C3B05-4088-C0FB-1DAA-0EAF36D539A1";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.034999847 0 1 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_arm_lower_L_TWISTShape" -p "ac_arm_lower_L_TWIST";
	rename -uid "FDF2E515-441B-0096-CFD5-EF90B36570A8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		5.3891802642590976e-15 -1.6640674402182633e-15 -4.610670271988738
		6.4129547232424212e-15 -4.6106702719887256 -1.3659759229695556e-14
		5.3891802642590976e-15 -1.6640674402182633e-15 4.6106702719887132
		4.3654058052757756e-15 4.6106702719887238 -1.3659759229695556e-14
		5.3891802642590976e-15 -1.6640674402182633e-15 -4.610670271988738
		;
createNode transform -n "ac_arm_lower_L_TWIST1_grp" -p "jt_drv_arm_lower_L_null";
	rename -uid "D5EAF51D-4EE5-C2D7-882C-0BB11C383C55";
	setAttr ".t" -type "double3" 7.6579747392826576 -4.4328456174635988e-06 -1.9360497240938912e-05 ;
	setAttr ".r" -type "double3" 0.00088212692883303642 9.6125199128811292e-05 4.0039344246198734e-05 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999933 1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754676e-16 0 ;
	setAttr ".rpt" -type "double3" 2.327446760094247e-22 3.9555908132742182e-26 -5.1279045436599448e-21 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525282e-31 0 ;
createNode transform -n "ac_arm_lower_L_TWIST1" -p "ac_arm_lower_L_TWIST1_grp";
	rename -uid "77E2235F-4217-FE84-A7D7-38B01C8401B1";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.034999847 0 1 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_arm_lower_L_TWISTShape1" -p "ac_arm_lower_L_TWIST1";
	rename -uid "740138C4-4133-B7DB-FFCB-EEBAA337F97E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		5.2520456003175637e-15 -1.3739987527873914e-15 -4.2663772021877948
		6.1993716406385096e-15 -4.2663772021877824 -1.4231495571300718e-14
		5.2520456003175637e-15 -1.3739987527873914e-15 4.2663772021877682
		4.3047195599966185e-15 4.2663772021877806 -1.4231495571300718e-14
		5.2520456003175637e-15 -1.3739987527873914e-15 -4.2663772021877948
		;
createNode transform -n "Left_hand_rig" -p "arm_rig_L";
	rename -uid "46B3C64C-4C97-BF6C-24AE-BB90543B34D2";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "ac_drv_fingers_L_grp" -p "Left_hand_rig";
	rename -uid "31E09304-42EA-DEBD-9561-52AD1617021B";
createNode transform -n "ac_drv_finger_thumb_0_L_grp" -p "ac_drv_fingers_L_grp";
	rename -uid "E5F060F2-4B6E-A63B-58F2-7F9117C0539A";
	setAttr ".t" -type "double3" 21.017137585930836 42.939502390234871 0.34842158746255203 ;
	setAttr ".r" -type "double3" -71.879475436336904 -40.71524168390367 -98.897823158173722 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_drv_finger_thumb_0_L" -p "ac_drv_finger_thumb_0_L_grp";
	rename -uid "5307AB2A-4CEF-7979-790C-5A8F92F2D6D5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_thumb_0_LShape" -p "ac_drv_finger_thumb_0_L";
	rename -uid "1C43317F-4741-80A9-0FCF-F997B15EF6FF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7741045053063869 0.36708652733943664 -0.71684588111778724
		1.5352390298167502 0.79218834934478799 0.096474460576855672
		1.3923310172558654 0.11810456795734459 1.1560582690938486
		1.2818327936464879 -0.43220988530602644 1.4973286671982269
		0.67326791783460849 -1.1828977841625621 0.74972251827470104
		1.0325992453825663 -1.1369741566411902 -0.53485194644115486
		1.6843727334812757 -0.50884776354636529 -1.1389437097335402
		1.738861099768243 0.037932634312675788 -1.1828603238744395
		1.7741045053063869 0.36708652733943664 -0.71684588111778724
		1.5352390298167502 0.79218834934478799 0.096474460576855672
		1.3923310172558654 0.11810456795734459 1.1560582690938486
		;
createNode transform -n "ac_drv_finger_thumb_1_L_grp" -p "ac_drv_finger_thumb_0_L";
	rename -uid "12DD9905-4697-37E6-A139-B0A62A2E8553";
	setAttr ".t" -type "double3" 1.6988678119630691 -1.3044790964755748e-05 -7.7458296594556941e-06 ;
	setAttr ".r" -type "double3" -1.0386481907853333 -5.5859984957086439 24.995512692221265 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" 1.4018075052067709e-16 3.0996027374839223e-17 6.0087792864100951e-18 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_drv_finger_thumb_1_L" -p "ac_drv_finger_thumb_1_L_grp";
	rename -uid "FCB3A2BD-4595-6A38-F36A-F6B42386E21B";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_thumb_1_LShape" -p "ac_drv_finger_thumb_1_L";
	rename -uid "48D3E960-4CED-8B14-2961-039C951614E3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.0038045230720886018 0.88192857577470762 -0.42867217889460962
		3.5978595501598975e-33 1.2472353529049776 -3.5066745697257598e-16
		0.0038045230720885194 0.8819285757747074 0.42867217889460857
		0.22728921947277672 6.1280565305796442e-15 0.60623400920477521
		0.51182766284621206 -0.88192857577469586 0.42867217889459558
		0.54738071687038392 -1.2472353529049653 -1.3891215422832421e-14
		0.51182779753704344 -0.88192857577469541 -0.42867217889462267
		0.227289432865175 5.893316821631664e-15 -0.60623400920478832
		0.0038045230720886018 0.88192857577470762 -0.42867217889460962
		3.5978595501598975e-33 1.2472353529049776 -3.5066745697257598e-16
		0.0038045230720885194 0.8819285757747074 0.42867217889460857
		;
createNode transform -n "ac_drv_finger_thumb_2_L_grp" -p "ac_drv_finger_thumb_1_L";
	rename -uid "642F2AF7-4B84-A832-E3C3-10818F3209F7";
	setAttr ".t" -type "double3" 1.5663315112374008 -2.990644075495652e-06 2.752087983282081e-06 ;
	setAttr ".r" -type "double3" 0.068127014844995629 0.35877518954663901 17.232174540064907 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" 9.8666781691814045e-17 1.4950145563124468e-17 -3.9602225739154085e-19 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_drv_finger_thumb_2_L" -p "ac_drv_finger_thumb_2_L_grp";
	rename -uid "7DA81BB4-4072-443C-0B8B-20AB75A1B5C1";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_thumb_2_LShape" -p "ac_drv_finger_thumb_2_L";
	rename -uid "B3166EA2-4534-204E-C786-57A68B4730D0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.4954342498617499e-14 0.15880462575786558 -0.61998746326049159
		-1.4983131922663429e-14 0.35861824875870196 -0.18208762433180734
		-1.5011921346709358e-14 0.15880462575786547 0.25581221459687703
		-1.5023846316602093e-14 -0.32358813283765847 0.43719626684213192
		-1.5011921346709358e-14 -0.80598089143318274 0.25581221459687703
		-1.4983131922663429e-14 -1.0057945144340188 -0.18208762433180717
		-1.4954342498617499e-14 -0.80598089143318252 -0.61998746326049159
		-1.4942417528724765e-14 -0.32358813283765864 -0.80137151550574637
		-1.4954342498617499e-14 0.15880462575786558 -0.61998746326049159
		-1.4983131922663429e-14 0.35861824875870196 -0.18208762433180734
		-1.5011921346709358e-14 0.15880462575786547 0.25581221459687703
		;
createNode transform -n "ac_finger_middle_meta_L_grp" -p "ac_drv_fingers_L_grp";
	rename -uid "B5867085-48E5-A164-E54B-D3A06EB969D5";
	setAttr ".t" -type "double3" 21.519644660920129 43.598129221290122 -0.71252790557064416 ;
	setAttr ".r" -type "double3" -172.19678593418814 -14.643519312459121 -51.212753948108023 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754686e-16 0 ;
	setAttr ".rpt" -type "double3" 2.5005275866175746e-16 5.4868913805311289e-16 4.375198652809959e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626465e-32 0 ;
createNode transform -n "ac_finger_middle_meta_L" -p "ac_finger_middle_meta_L_grp";
	rename -uid "4327E4F1-4419-2318-44A2-15AAEC72F2C9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_finger_middle_meta_LShape" -p "ac_finger_middle_meta_L";
	rename -uid "5DBC26C4-4C3A-E0FA-C396-1DB2961D13F5";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.18432273599100718 -1.2019075287389089 
		0.57943255779174629 -0.09540208224897806 -1.3973109957280909 3.277320694162677e-16 
		0.18432273599100729 -1.2019075287389089 -0.57943255779174585 0.92675002470097123 
		-0.97066615106406318 -0.81944138170961744 2.2572001506029831 -0.21966197024460288 
		-0.57943255779174618 2.5369249688429689 -0.013087558345832973 -2.6572852416217287e-17 
		2.2572001506029831 -0.21966197024460299 0.57943255779174596 0.92674894846979772 -0.97066611179223183 
		0.81944138170962166 0 0 0 0 0 0 0 0 0;
createNode transform -n "ac_drv_finger_middle_0_L_grp" -p "ac_finger_middle_meta_L";
	rename -uid "C97A480C-450A-E434-3EEB-058FC606733E";
	setAttr ".t" -type "double3" 3.2650829018773884 1.8898427335045653e-05 -1.0200929588366492e-05 ;
	setAttr ".r" -type "double3" 2.4027373396655505 -2.9804422034717475 24.774309827190717 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754681e-16 0 ;
	setAttr ".rpt" -type "double3" 1.4010652373778477e-16 3.1223768720041378e-17 -1.3944405407450232e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 1.4791141972893965e-31 0 ;
createNode transform -n "ac_drv_finger_middle_0_L" -p "ac_drv_finger_middle_0_L_grp";
	rename -uid "A3D37323-4FC5-B25E-9799-08869861E1D5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_middle_0_LShape" -p "ac_drv_finger_middle_0_L";
	rename -uid "3B6ED1D3-484D-C901-BAC9-F0B25A6254FE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.8789424045930834e-17 0.86206057545695147 -0.34593165274807569
		2.4930376108105533e-33 1.3355235156976744 0.0087805668000654029
		-2.8789424045930834e-17 0.94192192041173639 0.33817571072488262
		-4.0714393938665488e-17 -0.008316389099261131 0.47461564671837952
		-2.8789424045930834e-17 -0.9585546986102591 0.33817571072488262
		-4.0783886866851524e-33 -1.3521562938961975 0.0087805668000654775
		2.8789424045930834e-17 -0.95855469861025888 -0.32061457712475172
		4.0714393938665488e-17 -0.0069085437231778809 -0.49224256784322612
		2.8789424045930834e-17 0.86206057545695147 -0.34593165274807569
		2.4930376108105533e-33 1.3355235156976744 0.0087805668000654029
		-2.8789424045930834e-17 0.94192192041173639 0.33817571072488262
		;
createNode transform -n "ac_drv_finger_middle_1_L_grp" -p "ac_drv_finger_middle_0_L";
	rename -uid "AE72F91B-4D74-B887-A0AC-3E852E777E9A";
	setAttr ".t" -type "double3" 2.0757340776688018 -1.4094227722694086e-06 2.5701642787367973e-06 ;
	setAttr ".r" -type "double3" 0.24927044848270055 1.5569001065608563 20.250423181462491 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754686e-16 0 ;
	setAttr ".rpt" -type "double3" 1.1524441845187812e-16 2.0576602472774624e-17 -1.4484980724114812e-18 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626465e-32 0 ;
createNode transform -n "ac_drv_finger_middle_1_L" -p "ac_drv_finger_middle_1_L_grp";
	rename -uid "F445338B-43E2-BB64-2AAF-63A47B948940";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_middle_1_LShape" -p "ac_drv_finger_middle_1_L";
	rename -uid "7588250D-4005-C61F-0C15-26AC1252F629";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.8789424045930834e-17 0.52330128950535593 -0.43335275801352408
		2.4930376108105533e-33 0.74005978082580293 -7.2298764524406742e-17
		-2.8789424045930834e-17 0.5233012895053557 0.43335275801352408
		-4.0714393938665488e-17 1.263660311215234e-15 0.61285334767451161
		-2.8789424045930834e-17 -0.52330128950535337 0.43335275801352408
		-4.0783886866851524e-33 -0.74005978082580071 2.6617618990562238e-17
		2.8789424045930834e-17 -0.52330128950535326 -0.43335275801352408
		4.0714393938665488e-17 1.1243737904799452e-15 -0.61285334767451183
		2.8789424045930834e-17 0.52330128950535593 -0.43335275801352408
		2.4930376108105533e-33 0.74005978082580293 -7.2298764524406742e-17
		-2.8789424045930834e-17 0.5233012895053557 0.43335275801352408
		;
createNode transform -n "ac_drv_finger_middle_2_L_grp" -p "ac_drv_finger_middle_1_L";
	rename -uid "78908B34-4FF3-E836-EB81-98A6FD01886F";
	setAttr ".t" -type "double3" 1.4134131778793844 9.2651578853519823e-08 1.3172658208659982e-07 ;
	setAttr ".r" -type "double3" 0.032857191961383467 0.35460842730739539 12.342406254759622 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" 7.1193039821410432e-17 7.6977641101042885e-18 -1.9099893934614317e-19 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_drv_finger_middle_2_L" -p "ac_drv_finger_middle_2_L_grp";
	rename -uid "1C1B17D9-4356-F874-EF74-44B38859EC8D";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_middle_2_LShape" -p "ac_drv_finger_middle_2_L";
	rename -uid "ADBA502B-4579-E7C7-830E-71ADC35AEAC8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.8789424045930834e-17 0.39446982943566344 -0.3585981540973921
		2.4930376108105533e-33 0.55786458273491668 -3.1053024329550523e-17
		-2.8789424045930834e-17 0.39446982943566333 0.3585981540973921
		-4.0714393938665488e-17 -2.5707464455545529e-16 0.507134372966489
		-2.8789424045930834e-17 -0.394469829435664 0.3585981540973921
		-4.0783886866851524e-33 -0.55786458273491757 5.0799996985132342e-17
		2.8789424045930834e-17 -0.39446982943566394 -0.3585981540973921
		4.0714393938665488e-17 -3.6207023921388245e-16 -0.507134372966489
		2.8789424045930834e-17 0.39446982943566344 -0.3585981540973921
		2.4930376108105533e-33 0.55786458273491668 -3.1053024329550523e-17
		-2.8789424045930834e-17 0.39446982943566333 0.3585981540973921
		;
createNode transform -n "ac_finger_pinky_meta_L_grp" -p "ac_drv_fingers_L_grp";
	rename -uid "CB4FB00E-4D7D-028A-CC7F-C39EFE6A4E91";
	setAttr ".t" -type "double3" 21.596277470064344 43.42337592799106 -1.9408514089095537 ;
	setAttr ".r" -type "double3" -175.70268394498714 -0.045911867520790323 -59.74166160050514 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" 2.868717203866121e-16 5.0044465590376663e-16 2.4957366463055309e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_finger_pinky_meta_L" -p "ac_finger_pinky_meta_L_grp";
	rename -uid "4AC0E51E-4BEF-C6A3-ECB1-228A5EAFB1E2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_finger_pinky_meta_LShape" -p "ac_finger_pinky_meta_L";
	rename -uid "058B024F-4FEF-B8DE-F049-D18D5BD0879C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.8094592567225013 0.65142703901793175 
		0.75872814479038164 0.6628530710670637 0.68623142941923443 0.63366196557351928 0.61582242525189235 
		0.33999493599013975 0.059138396255527192 2.4900368007288733 0.6907041036427376 0.093205688809085085 
		2.5395793325722829 0.39211745964376143 0.22454135076634463 2.0014959740608291 0.10814919616577501 
		0.063602169243956092 0.29611627490796361 -0.38992258461977336 0.61700364492153081 
		-0.34839831444529362 0.27128659686305123 0.99998657637488486 0 0 0 0 0 0 0 0 0;
createNode transform -n "ac_drv_finger_pinky_0_L_grp" -p "ac_finger_pinky_meta_L";
	rename -uid "5841B645-4F6C-9D03-B960-7DA492CC1E7C";
	setAttr ".t" -type "double3" 2.7048786507393494 -1.3417713518037999e-07 -1.026256986502716e-05 ;
	setAttr ".r" -type "double3" -4.2109429536573701 -6.9707467873777622 11.127875221491552 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" 6.1195849395498843e-17 6.5714031416385723e-18 2.4275883520033443e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_drv_finger_pinky_0_L" -p "ac_drv_finger_pinky_0_L_grp";
	rename -uid "1F29576D-499F-6FDE-B03D-63B2D804D162";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_pinky_0_LShape" -p "ac_drv_finger_pinky_0_L";
	rename -uid "8D867FB1-4C06-83BB-0807-7B857A788C0E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.4178465906691242e-15 0.75153346335891036 -0.31188811168234221
		-1.7702717547071756e-15 1.1168687995196402 1.920006989241541e-16
		-1.4754257553102412e-15 0.75153340128515833 0.31188811168234232
		-1.9210513139973573e-16 -0.029686978504019142 0.44107639748410288
		-2.8789424045930834e-17 -1.0352116658184851 0.31188811168234226
		-4.0783886866851524e-33 -1.4640103777273459 4.4182924401943619e-17
		2.8789424045930834e-17 -1.0352116658184847 -0.31188811168234226
		-1.1067634352240478e-16 -0.029686978504019419 -0.44107639748410299
		-1.4178465906691242e-15 0.75153346335891036 -0.31188811168234221
		-1.7702717547071756e-15 1.1168687995196402 1.920006989241541e-16
		-1.4754257553102412e-15 0.75153340128515833 0.31188811168234232
		;
createNode transform -n "ac_drv_finger_pinky_1_L_grp" -p "ac_drv_finger_pinky_0_L";
	rename -uid "F9CD1094-4501-5151-08E4-CFB5B00EBB17";
	setAttr ".t" -type "double3" 1.5111258324126524 -2.2297629769241212e-06 -1.2813277106005216e-07 ;
	setAttr ".r" -type "double3" 0.13049935519043901 0.82312397276394789 20.105904916361474 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754706e-16 0 ;
	setAttr ".rpt" -type "double3" 1.1448337557962992e-16 2.0294552236405382e-17 -7.5852871157901251e-19 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -9.8607613152626498e-32 0 ;
createNode transform -n "ac_drv_finger_pinky_1_L" -p "ac_drv_finger_pinky_1_L_grp";
	rename -uid "71C46239-4A34-F394-982B-88B4B12CB8C7";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_pinky_1_LShape" -p "ac_drv_finger_pinky_1_L";
	rename -uid "EC9B1047-4A6B-7633-9FFF-6BBAB988F5AA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.9652854944410825e-15 0.5858010538813615 -0.12465888263245806
		9.936496070395151e-15 0.82844779525147549 0.14865811669220427
		9.9077066463492196e-15 0.58580105388136128 0.42197511601686655
		9.8957816764564855e-15 -5.060072523356748e-15 0.53518672396425981
		9.9077066463492196e-15 -0.58580105388137205 0.42197511601686655
		9.936496070395151e-15 -0.82844779525148649 0.14865811669220436
		9.9652854944410825e-15 -0.58580105388137194 -0.12465888263245806
		9.9772104643338166e-15 -5.2159945366874001e-15 -0.23787049057985121
		9.9652854944410825e-15 0.5858010538813615 -0.12465888263245806
		9.936496070395151e-15 0.82844779525147549 0.14865811669220427
		9.9077066463492196e-15 0.58580105388136128 0.42197511601686655
		;
createNode transform -n "ac_drv_finger_pinky_2_L_grp" -p "ac_drv_finger_pinky_1_L";
	rename -uid "775BF7B2-4DB3-473F-6865-47854840D088";
	setAttr ".t" -type "double3" 0.87266367879534101 3.8505341137806681e-06 1.7065493373991103e-07 ;
	setAttr ".r" -type "double3" 0.082152601532246072 -1.3270844113923144 2.6549801211919801 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754686e-16 0 ;
	setAttr ".rpt" -type "double3" 1.543921244385894e-17 3.5837492646065826e-19 -4.7743419280969913e-19 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626465e-32 0 ;
createNode transform -n "ac_drv_finger_pinky_2_L" -p "ac_drv_finger_pinky_2_L_grp";
	rename -uid "BF83409E-4421-B6E6-1A86-F5B12EB61FC0";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_pinky_2_LShape" -p "ac_drv_finger_pinky_2_L";
	rename -uid "B4E3502C-4919-F30D-117D-3FB0F4BB4B21";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.059792589549757899 0.39337290654117668 -0.27167548594893931
		0.040035979642703376 0.5548513272331953 0.034210891039356733
		0.060349773185738628 0.39794165520408864 0.34172073034773892
		0.089134049578417487 0.053844681545976859 0.46307364113462174
		0.10289250883331777 -0.34174732693166798 0.32898592328247733
		0.093083275344374689 -0.58928120868821277 0.015272729397140375
		0.10289250883331902 -0.35140099016719928 -0.2905421538165246
		0.089113381801669361 0.051607938586952243 -0.40986186315952777
		0.059792589549757899 0.39337290654117668 -0.27167548594893931
		0.040035979642703376 0.5548513272331953 0.034210891039356733
		0.060349773185738628 0.39794165520408864 0.34172073034773892
		;
createNode transform -n "ac_finger_index_meta_L_grp" -p "ac_drv_fingers_L_grp";
	rename -uid "8CE7EDB6-42E3-1F57-5711-9F8B456B28A9";
	setAttr ".t" -type "double3" 21.196645808433345 43.649868030966211 -0.1173770568178695 ;
	setAttr ".r" -type "double3" -165.64243400646259 -23.302902656196579 -52.314011402024924 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754681e-16 0 ;
	setAttr ".rpt" -type "double3" 2.3537399647707606e-16 5.5617852965665664e-16 7.5854140213705892e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 1.4791141972893967e-31 0 ;
createNode transform -n "ac_finger_index_meta_L" -p "ac_finger_index_meta_L_grp";
	rename -uid "93E61C52-4FC0-2616-0E4E-29A174B79F06";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_finger_index_meta_LShape" -p "ac_finger_index_meta_L";
	rename -uid "994363C3-4705-8841-A373-59982FE60243";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.12221464279969224 -1.1480481743030133 
		0.49823175200771397 -0.22546627186272006 -1.2654798941579801 2.1890287525306609e-15 
		0.12221464279969246 -1.1480481743030131 -0.49823175200770958 0.96898218302072114 
		-0.86454292357635365 -0.70742773836802719 2.4511831787554956 -0.21259223923586568 
		-0.49823175200771125 2.7988640934179068 -0.095160519380897535 3.4538726020482022e-16 
		2.4511831787554956 -0.21259223923586579 0.49823175200771236 1.1662502373781485 -0.86454292357635465 
		0.62647980723109975 0 0 0 0 0 0 0 0 0;
createNode transform -n "ac_drv_finger_index_0_L_grp" -p "ac_finger_index_meta_L";
	rename -uid "7326E759-4A3D-F9E3-E0A4-AD96CB632F3D";
	setAttr ".t" -type "double3" 3.2903749893684235 4.151672735019929e-05 -1.8797418364524532e-05 ;
	setAttr ".r" -type "double3" 5.8809168104338241 -1.3724996246957706 28.249690919231401 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754686e-16 0 ;
	setAttr ".rpt" -type "double3" 1.5753589596265667e-16 4.1601540375674663e-17 -3.4116654475232129e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626465e-32 0 ;
createNode transform -n "ac_drv_finger_index_0_L" -p "ac_drv_finger_index_0_L_grp";
	rename -uid "B291A6C4-4560-2C5C-22D3-DBBBF1F589F1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_index_0_LShape" -p "ac_drv_finger_index_0_L";
	rename -uid "29B13428-4052-E441-CA8E-869F7D179857";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.8756606700266013e-15 0.79640224027537609 -0.41891685386986305
		2.8353829795019237e-15 1.1262828493017518 1.7424533702643588e-16
		2.7951052889772472e-15 0.79640224027537598 0.41891685386986321
		2.7784217233008599e-15 2.8012422455081958e-15 0.59243789624942855
		2.7951052889772472e-15 -0.79640224027537077 0.41891685386986321
		2.8353829795019237e-15 -1.1262828493017474 2.6986660494734393e-16
		2.8756606700266013e-15 -0.79640224027537065 -0.41891685386986305
		2.8923442357029879e-15 2.5892647492199681e-15 -0.59243789624942822
		2.8756606700266013e-15 0.79640224027537609 -0.41891685386986305
		2.8353829795019237e-15 1.1262828493017518 1.7424533702643588e-16
		2.7951052889772472e-15 0.79640224027537598 0.41891685386986321
		;
createNode transform -n "ac_drv_finger_index_1_L_grp" -p "ac_drv_finger_index_0_L";
	rename -uid "AA6D020B-42F0-D74D-B6BC-B1ABC5389799";
	setAttr ".t" -type "double3" 1.995691157140655 -5.8451132325387789e-06 -3.4849155383653851e-07 ;
	setAttr ".r" -type "double3" 0.11284722486838777 0.63085884338314913 18.943744813989245 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" 1.0811968347735054e-16 1.8037910997819099e-17 -6.5595361359790908e-19 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_drv_finger_index_1_L" -p "ac_drv_finger_index_1_L_grp";
	rename -uid "4B45BAD5-46C3-F8F8-BB73-55886685B517";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_index_1_LShape" -p "ac_drv_finger_index_1_L";
	rename -uid "4F32E52E-453B-B10E-7739-35ABC3970810";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.6697329240974761e-17 0.59931286745737222 -0.41406072065588018
		3.1778274503889937e-33 0.84755638526292543 -1.4184449166225524e-16
		-3.6697329240974761e-17 0.599312867457372 0.41406072065587995
		-5.1897860715457268e-17 -1.9077877797792643e-15 0.5855702867975231
		-3.6697329240974761e-17 -0.59931286745737622 0.41406072065587995
		-5.1986442024395361e-33 -0.84755638526292987 -4.7331676673771213e-17
		3.6697329240974761e-17 -0.599312867457376 -0.41406072065588018
		5.1897860715457268e-17 -2.0673062174634745e-15 -0.58557028679752321
		3.6697329240974761e-17 0.59931286745737222 -0.41406072065588018
		3.1778274503889937e-33 0.84755638526292543 -1.4184449166225524e-16
		-3.6697329240974761e-17 0.599312867457372 0.41406072065587995
		;
createNode transform -n "ac_drv_finger_index_2_L_grp" -p "ac_drv_finger_index_1_L";
	rename -uid "C9DF732F-4065-3ED6-4BE6-61A55A3DC292";
	setAttr ".t" -type "double3" 1.269021573336758 -7.2190113051817661e-06 9.7755400840782158e-07 ;
	setAttr ".r" -type "double3" 0.19601383601811745 -2.0984868300271931 0.79566207662802246 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" 4.6668182875755107e-18 3.4643182477408559e-20 -1.138684425262866e-18 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_drv_finger_index_2_L" -p "ac_drv_finger_index_2_L_grp";
	rename -uid "1DF66CC4-4FD7-3631-39A3-3999CD8D9B71";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_index_2_LShape" -p "ac_drv_finger_index_2_L";
	rename -uid "D04E5B17-47E6-F4F8-163E-E3A7DF2D1342";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.8789424045930834e-17 0.5383098314352901 -0.41327395968569347
		2.4930376108105533e-33 0.76128506437456167 -2.50737507812703e-16
		-2.8789424045930834e-17 0.53830983143528999 0.41327395968569303
		-4.0714393938665488e-17 3.9465152170045597e-17 0.58445763876313883
		-2.8789424045930834e-17 -0.5383098314352901 0.41327395968569303
		-4.0783886866851524e-33 -0.761285064374562 -1.5640427758149235e-16
		2.8789424045930834e-17 -0.53830983143528999 -0.41327395968569347
		4.0714393938665488e-17 -1.0381617543588249e-16 -0.58445763876313928
		2.8789424045930834e-17 0.5383098314352901 -0.41327395968569347
		2.4930376108105533e-33 0.76128506437456167 -2.50737507812703e-16
		-2.8789424045930834e-17 0.53830983143528999 0.41327395968569303
		;
createNode transform -n "ac_finger_ring_meta_L_grp" -p "ac_drv_fingers_L_grp";
	rename -uid "3F38909F-4F66-F060-8107-8BA9C8BCFAE1";
	setAttr ".t" -type "double3" 21.588838051991605 43.490342376955688 -1.3432337931818454 ;
	setAttr ".r" -type "double3" -173.17480620956928 -7.8132856231866681 -54.293535939116147 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754706e-16 0 ;
	setAttr ".rpt" -type "double3" 2.6539908091915746e-16 5.3044756377775826e-16 3.9214399484638751e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -9.8607613152626498e-32 0 ;
createNode transform -n "ac_finger_ring_meta_L" -p "ac_finger_ring_meta_L_grp";
	rename -uid "A099B2B2-4C28-170B-668D-B7A5DAC0D703";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_finger_ring_meta_LShape" -p "ac_finger_ring_meta_L";
	rename -uid "AD0F4E7F-4523-DF91-DFAC-D7A1F6F5E757";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.0043007145164912254 -1.0517387401916662 
		0.69153094484353828 0.0024054754397896841 -1.0517387401916662 -0.035329682146120298 
		0.00051023636308817157 -1.0517387401916662 -0.7621903091357799 0.36537336477305399 
		-0.91722232078125965 -0.68671090413108316 2.1198662084605595 -0.32315669149244064 
		-0.35707231227103492 2.0890937487287791 -0.11277831794701365 0.22222298463452245 
		2.1345934540110587 -0.44583352241067908 0.80152210212917774 0.38215541503303668 -0.9906359000972409 
		0.90603474880612256 0 0 0 0 0 0 0 0 0;
createNode transform -n "ac_drv_finger_ring_0_L_grp" -p "ac_finger_ring_meta_L";
	rename -uid "08D3451A-4B7D-5F2A-2B95-218E84C20329";
	setAttr ".t" -type "double3" 2.9877138285425779 6.6724563225761813e-06 -8.2343154712560818e-06 ;
	setAttr ".r" -type "double3" -1.0139773821223543 -6.2118269619732001 23.368613661859808 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754686e-16 0 ;
	setAttr ".rpt" -type "double3" 1.3150321651301318e-16 2.7115709220992808e-17 5.8594525244529035e-18 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626465e-32 0 ;
createNode transform -n "ac_drv_finger_ring_0_L" -p "ac_drv_finger_ring_0_L_grp";
	rename -uid "B012D8C1-408E-4329-B91A-24B299CE932B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_ring_0_LShape" -p "ac_drv_finger_ring_0_L";
	rename -uid "433E77EC-48EC-7872-B5BC-58A4229DA568";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.8789424045930834e-17 1.0734919135700809 -0.3373261911325654
		2.4930376108105533e-33 1.5181468232686559 -2.8015653136637738e-16
		-2.8789424045930834e-17 1.0734919135700804 0.33732619113256485
		-4.0714393938665488e-17 -4.4792810950665028e-15 0.47705127444333223
		-2.8789424045930834e-17 -1.0734919135700898 0.33732619113256485
		-4.0783886866851524e-33 -1.5181468232686657 -2.0315901312127314e-16
		2.8789424045930834e-17 -1.0734919135700896 -0.3373261911325654
		4.0714393938665488e-17 -4.7674889212802699e-15 -0.47705127444333278
		2.8789424045930834e-17 1.0734919135700809 -0.3373261911325654
		2.4930376108105533e-33 1.5181468232686559 -2.8015653136637738e-16
		-2.8789424045930834e-17 1.0734919135700804 0.33732619113256485
		;
createNode transform -n "ac_drv_finger_ring_1_L_grp" -p "ac_drv_finger_ring_0_L";
	rename -uid "059742F9-4EED-952A-E472-6BA3311769CA";
	setAttr ".t" -type "double3" 1.9109352478880197 -3.5407993195235576e-06 -3.7195189150907026e-08 ;
	setAttr ".r" -type "double3" 0.0053871953978514246 0.032427106822162557 18.794655444786176 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754686e-16 0 ;
	setAttr ".rpt" -type "double3" 1.0730660976586476e-16 1.7759350680534702e-17 -3.1316376806346886e-20 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626465e-32 0 ;
createNode transform -n "ac_drv_finger_ring_1_L" -p "ac_drv_finger_ring_1_L_grp";
	rename -uid "DE0B4BDD-41A7-4D44-8F36-248591A11FA4";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_ring_1_LShape" -p "ac_drv_finger_ring_1_L";
	rename -uid "9C8DD6BE-4A95-34C8-0A20-A98D715D9135";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.8789424045930834e-17 0.50348745605905865 -0.35980862641686595
		2.4930376108105533e-33 0.7120387888434484 -2.3963251302672332e-16
		-2.8789424045930834e-17 0.50348745605905842 0.35980862641686551
		-4.0714393938665488e-17 -4.6664560603407142e-16 0.50884623933756556
		-2.8789424045930834e-17 -0.50348745605905965 0.35980862641686551
		-4.0783886866851524e-33 -0.71203878884344984 -1.5750319130325532e-16
		2.8789424045930834e-17 -0.50348745605905953 -0.35980862641686595
		4.0714393938665488e-17 -6.0065830081381622e-16 -0.50884623933756601
		2.8789424045930834e-17 0.50348745605905865 -0.35980862641686595
		2.4930376108105533e-33 0.7120387888434484 -2.3963251302672332e-16
		-2.8789424045930834e-17 0.50348745605905842 0.35980862641686551
		;
createNode transform -n "ac_drv_finger_ring_2_L_grp" -p "ac_drv_finger_ring_1_L";
	rename -uid "17BEE278-493F-6D88-4004-7CB3FC32D9AE";
	setAttr ".t" -type "double3" 1.2807067923539535 -9.0178239524618675e-06 5.7859427471385061e-07 ;
	setAttr ".r" -type "double3" 0.0096916824153091708 0.51985162078434066 7.6782570469864675 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754686e-16 0 ;
	setAttr ".rpt" -type "double3" 4.4500599387504017e-17 2.9862228919947977e-18 -5.6336537111363597e-20 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626465e-32 0 ;
createNode transform -n "ac_drv_finger_ring_2_L" -p "ac_drv_finger_ring_2_L_grp";
	rename -uid "DBA83AE8-4FA4-A95D-DCE1-57AE0B3397A2";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_ring_2_LShape" -p "ac_drv_finger_ring_2_L";
	rename -uid "F75DD8F9-46A6-A069-FE8A-A8976A5DC6E3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.8789424045930834e-17 0.36221974533330448 -0.36827469712426819
		2.4930376108105533e-33 0.51225607640968773 -3.189097043330525e-17
		-2.8789424045930834e-17 0.36221974533330442 0.36827469712426819
		-4.0714393938665488e-17 -3.8186424480928472e-16 0.52081907135198391
		-2.8789424045930834e-17 -0.36221974533330531 0.36827469712426819
		-4.0783886866851524e-33 -0.51225607640968895 5.2170802581801199e-17
		2.8789424045930834e-17 -0.3622197453333052 -0.36827469712426819
		4.0714393938665488e-17 -4.7925248866560233e-16 -0.52081907135198391
		2.8789424045930834e-17 0.36221974533330448 -0.36827469712426819
		2.4930376108105533e-33 0.51225607640968773 -3.189097043330525e-17
		-2.8789424045930834e-17 0.36221974533330442 0.36827469712426819
		;
createNode parentConstraint -n "Left_hand_rig_parentConstraint1" -p "Left_hand_rig";
	rename -uid "79B45213-427D-4453-B80F-588FF393F4A9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jt_drv_hand_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 23.822080157734678 42.555854076875661 4.7812796187847226 ;
	setAttr ".tg[0].tor" -type "double3" -165.08087721367255 -14.027501908589155 -57.39031348862126 ;
	setAttr ".lr" -type "double3" 0.00012142083252580086 -0.00018121915998112802 7.9677083634892336e-05 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-15 7.1054273576010019e-15 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" -1.9083328088781101e-14 -4.7708320221952791e-15 
		-1.9083328088781101e-14 ;
	setAttr -k on ".w0";
createNode transform -n "ac_arm_IK_FK_blend_L_grp" -p "arm_rig_L";
	rename -uid "7ECBFE39-4A82-0530-8EC5-3CB09EBB783A";
	setAttr ".s" -type "double3" 4.324399779890399 4.324399779890399 4.3243997798903999 ;
createNode transform -n "ac_arm_IK_FK_blend_L_range" -p "ac_arm_IK_FK_blend_L_grp";
	rename -uid "02750314-48FE-18E3-83AD-68AF3F6BDC32";
	setAttr ".tmp" yes;
createNode nurbsCurve -n "ac_arm_IK_FK_blend_L_rangeShape" -p "ac_arm_IK_FK_blend_L_range";
	rename -uid "91F7FC81-498A-75E1-7CE5-52BA5DAF0EA0";
	setAttr -k off ".v";
createNode transform -n "ac_arm_IK_FK_blend_L" -p "ac_arm_IK_FK_blend_L_grp";
	rename -uid "1F2950D1-471F-9D42-05BC-499336C7A3D4";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 28;
	setAttr ".ovrgb" -type "float3" 1 0.35469997 0 ;
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" 0 0 0 ;
	setAttr ".mxtl" -type "double3" 1 0 0 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" -1 0 0 ;
	setAttr ".mxrl" -type "double3" 1 0 0 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
	setAttr ".oclr" -type "float3" 1 0.15680003 0.90860003 ;
createNode nurbsCurve -n "ac_arm_IK_FK_blend_LShape" -p "ac_arm_IK_FK_blend_L";
	rename -uid "63AF9C23-4A68-494E-C201-BB8A9B847FC9";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.65912322799445311 -4.0359657570353935e-17 
		0.65912322799445344 -5.7077175108728426e-17 -5.707717510872845e-17 0.93214100830488922 
		0.65912322799445311 -4.0359657570353923e-17 0.65912322799445333 0.93214100830488933 
		-2.3694471518980542e-32 3.2847661477624176e-16 0.65912322799445311 4.0359657570353886e-17 
		-0.65912322799445278 9.3373202322327365e-17 5.707717510872845e-17 -0.93214100830488922 
		-0.65912322799445311 4.035965757035388e-17 -0.65912322799445278 -0.93214100830488933 
		-1.2951986465377912e-32 1.5303852011773344e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "display_mode_arm_L" -p "ac_arm_IK_FK_blend_L_grp";
	rename -uid "D8002E32-42DA-4C70-CBE9-33A253A4A6C7";
	setAttr ".t" -type "double3" 0.51867108488135205 -0.0081338329905843443 -0.30532844492470623 ;
	setAttr ".r" -type "double3" -100 0 0 ;
	setAttr ".s" -type "double3" 0.1294468496253891 0.12944684962538919 0.12944684962538908 ;
createNode transform -n "IK_dis" -p "display_mode_arm_L";
	rename -uid "02180CBF-4B2C-DE09-F93B-F2AC640A481D";
createNode transform -n "IK_display" -p "|csgo_character|setup|arm_rig_L|ac_arm_IK_FK_blend_L_grp|display_mode_arm_L|IK_dis";
	rename -uid "A1ACC8E8-47E7-6C49-250A-66BFD3D70160";
	setAttr ".tmp" yes;
	setAttr ".s" -type "double3" 0.31887601976691099 0.31887601976691099 0.31887601976691099 ;
createNode transform -n "polyToCurve3" -p "|csgo_character|setup|arm_rig_L|ac_arm_IK_FK_blend_L_grp|display_mode_arm_L|IK_dis|IK_display";
	rename -uid "D3D4C1CD-414C-7F06-A37B-298C95AE57A0";
createNode nurbsCurve -n "polyToCurveShape3" -p "|csgo_character|setup|arm_rig_L|ac_arm_IK_FK_blend_L_grp|display_mode_arm_L|IK_dis|IK_display|polyToCurve3";
	rename -uid "12C2E374-4425-E02F-2024-88B1546D8A41";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 31;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 2 no 3
		5 0 1 2 3 4
		5
		-3.1907775402069092 0 0
		-2.1731820106506348 0 0
		-2.1731820106506348 7.1716265678405762 0
		-3.1907775402069092 7.1716265678405762 0
		-3.1907775402069092 0 0
		;
createNode transform -n "polyToCurve4" -p "|csgo_character|setup|arm_rig_L|ac_arm_IK_FK_blend_L_grp|display_mode_arm_L|IK_dis|IK_display";
	rename -uid "DFCC074A-46C4-4F28-FF5D-5BA57FC8877B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "polyToCurveShape4" -p "|csgo_character|setup|arm_rig_L|ac_arm_IK_FK_blend_L_grp|display_mode_arm_L|IK_dis|IK_display|polyToCurve4";
	rename -uid "DC287103-4C03-7BA7-B3F6-BBA6FBAD9704";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 2 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-0.34385305643081665 0 0
		0.61074870824813843 0 0
		0.61074870824813843 3.634270191192627 0
		3.7459125518798828 0 0
		5.0321412086486816 0 0
		1.7269996404647827 3.749809741973877 0
		4.5361390113830566 7.1716265678405762 0
		3.5133190155029297 7.1716265678405762 0
		0.61074870824813843 3.6439614295959473 0
		0.61074870824813843 7.1716265678405762 0
		-0.34385305643081665 7.1716265678405762 0
		-0.34385305643081665 0 0
		;
createNode transform -n "FK_dis" -p "display_mode_arm_L";
	rename -uid "20F959D4-4F4E-461E-BA06-92BC317D20CC";
createNode transform -n "FK_display" -p "|csgo_character|setup|arm_rig_L|ac_arm_IK_FK_blend_L_grp|display_mode_arm_L|FK_dis";
	rename -uid "E910BB98-4ED1-AD93-FC0E-8FAEE026C638";
	setAttr ".tmp" yes;
	setAttr ".s" -type "double3" 0.31887601976691099 0.31887601976691099 0.31887601976691099 ;
createNode transform -n "polyToCurve1" -p "|csgo_character|setup|arm_rig_L|ac_arm_IK_FK_blend_L_grp|display_mode_arm_L|FK_dis|FK_display";
	rename -uid "DDCA0B84-4788-0B0B-6E2D-C18681DAAA38";
createNode nurbsCurve -n "polyToCurveShape1" -p "|csgo_character|setup|arm_rig_L|ac_arm_IK_FK_blend_L_grp|display_mode_arm_L|FK_dis|FK_display|polyToCurve1";
	rename -uid "5BA5D092-4225-A67D-4C11-CA81C0951E0B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 2 no 3
		11 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.4181828498840332 0 0
		-3.4005870819091797 0 0
		-3.4005870819091797 3.2563059329986572 0
		-0.89051783084869385 3.2563059329986572 0
		-0.89051783084869385 4.0073885917663574 0
		-3.4005870819091797 4.0073885917663574 0
		-3.4005870819091797 6.4108524322509766 0
		-0.41079393029212952 6.4108524322509766 0
		-0.41079393029212952 7.1716265678405762 0
		-4.4181828498840332 7.1716265678405762 0
		-4.4181828498840332 0 0
		;
createNode transform -n "polyToCurve2" -p "|csgo_character|setup|arm_rig_L|ac_arm_IK_FK_blend_L_grp|display_mode_arm_L|FK_dis|FK_display";
	rename -uid "4F2F1BDC-4D7D-C842-3256-5886A925D0EF";
createNode nurbsCurve -n "polyToCurveShape2" -p "|csgo_character|setup|arm_rig_L|ac_arm_IK_FK_blend_L_grp|display_mode_arm_L|FK_dis|FK_display|polyToCurve2";
	rename -uid "81962223-440A-241D-297F-35B354338D7E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 11 2 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		0.89324367046356201 0 0
		1.8478449583053589 0 0
		1.8478449583053589 3.634270191192627 0
		4.9830093383789063 0 0
		6.2692375183105469 0 0
		2.9640958309173584 3.749809741973877 0
		5.7732353210449219 7.1716265678405762 0
		4.7504158020019531 7.1716265678405762 0
		1.8478449583053589 3.6439614295959473 0
		1.8478449583053589 7.1716265678405762 0
		0.89324367046356201 7.1716265678405762 0
		0.89324367046356201 0 0
		;
createNode parentConstraint -n "ac_arm_IK_FK_blend_L_grp_parentConstraint1" -p "ac_arm_IK_FK_blend_L_grp";
	rename -uid "E5E9AB96-4040-62A1-E286-C08CA9A6BC51";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jt_drv_arm_lower_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.6843418860808015e-14 8.8817841970012523e-15 
		-6.9190381731927602 ;
	setAttr ".tg[0].tor" -type "double3" -1.1927080055488189e-14 -7.1562480332929151e-15 
		2.5444437451708147e-14 ;
	setAttr ".lr" -type "double3" 95.950251397313338 -17.622750879567292 -52.654705895645613 ;
	setAttr ".rst" -type "double3" 19.862340531628778 57.232019871745237 -3.993327044065897 ;
	setAttr ".rsrr" -type "double3" 95.950217048697951 -17.622811698432365 -52.654664213822812 ;
	setAttr -k on ".w0";
createNode transform -n "L_pole_vector_arm_line" -p "arm_rig_L";
	rename -uid "08531B26-4001-862E-A9BC-F7A275B79A90";
	setAttr ".t" -type "double3" 4.440895655765756e-15 2.8421708853014995e-14 -4.4409059007883568e-16 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.8079360196814324e-28 1.7807507396309688e-05 -7.4493905919252662e-06 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_pole_vector_arm_lineShape" -p "L_pole_vector_arm_line";
	rename -uid "DE91D3ED-41D0-2546-4CEC-FBB1A0A1C1C0";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "L_pole_vector_arm_lineShapeOrig" -p "L_pole_vector_arm_line";
	rename -uid "38C5E8DA-4C38-896C-17F8-61938B84E97D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 1
		0 0 -1
		;
createNode transform -n "arm_rig_R" -p "setup";
	rename -uid "776D2304-4AB4-FCA9-02F4-F88A81252257";
	setAttr ".t" -type "double3" -8.4703294725430034e-22 -7.1054273576010019e-15 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" -1.8079360196814324e-28 -1.7807507386353934e-05 7.4493905967781382e-06 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "ac_DRV_arm_jt_R" -p "arm_rig_R";
	rename -uid "2A41D2F6-4B5D-BCEE-9169-C8BA8F1A75BF";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -7.1481643720510171 61.697293257259815 -3.1172637180657938 ;
	setAttr ".sp" -type "double3" -7.1481643720510171 61.697293257259815 -3.1172637180657938 ;
createNode joint -n "jt_drv_arm_upper_R" -p "ac_DRV_arm_jt_R";
	rename -uid "5662489E-4D85-D704-971D-2F87FBAEB094";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -7.1481676041854394 61.697314487294385 -3.1171959992215452 ;
	setAttr ".jo" -type "double3" -95.722946334120607 7.729323872813767 -129.92494044269159 ;
	setAttr ".bps" -type "matrix" -0.63595400000000002 -0.75991699999999995 -0.134494 0
		 0.0094134100000000005 0.16662399999999999 -0.98597500000000005 0 0.77166900000000005 -0.628301 -0.098811999999999997 0
		 -7.1481709999999996 61.697325999999997 -3.1171980000000001 1;
	setAttr ".radi" 2.3990000014752151;
	setAttr ".fbxID" 5;
createNode joint -n "jt_drv_arm_lower_R" -p "jt_drv_arm_upper_R";
	rename -uid "62910851-4E17-24A9-C824-71AB7C858B0D";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 11.596653608600334 5.9465422497240183e-05 -6.7776057477431095e-06 ;
	setAttr ".jo" -type "double3" -90.000139108261564 -0.00024998931651378593 -25.479848236456018 ;
	setAttr ".bps" -type "matrix" -0.57814500000000002 -0.75768899999999995 0.30274800000000002 0
		 -0.771671 0.62829800000000002 0.098815600000000003 0 -0.26508700000000002 -0.17649200000000001 -0.94793400000000005 0
		 -14.523099 52.884822999999997 -4.6769309999999997 1;
	setAttr ".radi" 2.3990000014752151;
	setAttr ".fbxID" 5;
createNode joint -n "jt_drv_hand_R" -p "jt_drv_arm_lower_R";
	rename -uid "BA9100DF-43F9-3AF7-D2B1-BB86F36142D3";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 11.486982298928144 8.0848872769934133e-05 6.8842798293111684e-06 ;
	setAttr ".jo" -type "double3" 176.55897417492284 -2.8033641736053361 176.96273333718875 ;
	setAttr ".bps" -type "matrix" 0.52283900000000005 0.78033799999999998 -0.34309000000000001 0
		 -0.81724200000000002 0.57330999999999999 0.058553500000000001 0 0.24238899999999999 0.249774 0.93747499999999995 0
		 -21.164303 44.181316000000002 -1.1992719999999999 1;
	setAttr ".radi" 2.3990000014752151;
	setAttr ".fbxID" 5;
createNode orientConstraint -n "jt_drv_hand_R_orientConstraint1" -p "jt_drv_hand_R";
	rename -uid "0938BA35-4CC4-F4DD-46CF-97BAFC5C3368";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_IK_hand_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0.00039006034859780987 179.9999677201406 -0.00014842477663956505 ;
	setAttr ".o" -type "double3" -180.00000000037386 0 180.00000000093513 ;
	setAttr ".rsrr" -type "double3" -180.00039534805873 180.00001751318669 179.99983805929625 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "jt_drv_arm_lower_R_orientConstraint1" -p "jt_drv_arm_lower_R";
	rename -uid "9943F4F0-4906-FCBC-DCA5-19B2C67139A6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_arm_lower_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.9756933518292017e-16 -2.5444437451708134e-14 -8.746525374024671e-14 ;
	setAttr ".rsrr" -type "double3" -3.4588532160915748e-14 3.1805546814635183e-15 4.7708320221952744e-15 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector2" -p "jt_drv_arm_lower_R";
	rename -uid "B35D3A8F-4F74-C3E9-7F8E-FC97E16F806A";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "R_pole_vector_arm_line_lower" -p "jt_drv_arm_lower_R";
	rename -uid "8DD13FB4-4092-7653-7E17-01AC3F368499";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.30274893545555415 -0.098821963980228134 0.94793305533511374 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
	setAttr ".rp" -type "double3" 0 0 0.99999999999999956 ;
	setAttr ".rpt" -type "double3" 0.30274823654910532 0.098823017871018548 -1.9479332868959025 ;
	setAttr ".sp" -type "double3" 0 0 1 ;
	setAttr ".spt" -type "double3" 0 0 -4.4408920985006247e-16 ;
createNode clusterHandle -n "R_pole_vector_arm_line_lowerShape" -p "R_pole_vector_arm_line_lower";
	rename -uid "B12CB51A-4886-9844-7757-A7A802ABCBBC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 0 1 ;
createNode orientConstraint -n "jt_drv_arm_upper_R_orientConstraint1" -p "jt_drv_arm_upper_R";
	rename -uid "132DC366-4239-EF83-7E5B-E1A64D96A44C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_FK_arm_upper_RW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -6.3611093629270501e-15 -7.6333312355124402e-14 2.544443745170814e-14 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-15 3.5311250384401278e-31 -6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ac_DRV_arm_jt_R_parentConstraint1" -p "ac_DRV_arm_jt_R";
	rename -uid "F7E212BB-4469-61D2-8E6A-CBB054AA6D83";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jt_drv_upper_L_endW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.4253709669847012e-07 -1.1023968227164005e-07 
		4.4608547966618062e-07 ;
	setAttr ".tg[0].tor" -type "double3" -98.937928928846716 -50.504090848102209 179.15198917192615 ;
	setAttr ".lr" -type "double3" 7.7526020360673197e-14 -5.6454845595977447e-14 4.1347210859025677e-14 ;
	setAttr ".rst" -type "double3" 7.1054273576010019e-15 -7.1054273576010019e-15 1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-15 -4.7708320221952752e-15 -3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode transform -n "ac_arm_setup_R_grp" -p "arm_rig_R";
	rename -uid "9734B2F7-456F-39CA-5B7A-3F820F309676";
createNode transform -n "ac_IK_hand_R_grp" -p "ac_arm_setup_R_grp";
	rename -uid "E8E02A40-4741-88EE-3889-6BAEE8C36219";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754681e-16 0 ;
	setAttr ".rpt" -type "double3" 2.7219688989213612e-16 1.4211651208114581e-16 -1.950293470435007e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 1.4791141972893965e-31 0 ;
createNode parentConstraint -n "ac_IK_hand_R_grp_parentConstraint1" -p "|csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|ac_IK_hand_R_grp";
	rename -uid "60F98BF8-428A-8354-DCC7-77A11A71E625";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -21.164290116808619 44.181298438617027 -1.1992726060245651 ;
	setAttr ".tg[0].tor" -type "double3" 3.5740937679887206 20.06543101779247 56.177396599561717 ;
	setAttr ".lr" -type "double3" 3.5741095178357956 20.065440929867052 56.177394553835256 ;
	setAttr ".rst" -type "double3" -21.164284745247837 44.181301190321328 -1.1992660281726399 ;
	setAttr ".rsrr" -type "double3" 3.5741095178357956 20.065440929867052 56.177394553835256 ;
	setAttr -k on ".w0";
createNode transform -n "ac_IK_arm_pole_R_grp" -p "ac_arm_setup_R_grp";
	rename -uid "6BC44ECE-4CBD-3BFD-724D-6D924BE28DF4";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 1 ;
createNode transform -n "ac_IK_arm_pole_R_fixer" -p "ac_IK_arm_pole_R_grp";
	rename -uid "E9EBE44A-45C5-8AD3-05B5-789704F5EF9C";
	setAttr ".t" -type "double3" 1.5268804780532719e-05 -0.00012977965519667123 -5.6768409830709743e-06 ;
	setAttr ".r" -type "double3" -89.999931941221988 -0.00041712107920531218 90.000338195662223 ;
	setAttr ".s" -type "double3" 1 1 -1.0000000000000002 ;
createNode transform -n "ac_IK_arm_pole_R" -p "ac_IK_arm_pole_R_fixer";
	rename -uid "EA0B9180-4482-49DA-88C1-8B9299656055";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 30;
	setAttr ".ovrgb" -type "float3" 0.71649981 0 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0.00012977978663997192 -5.6758780342391901e-06 -1.5268045487459858e-05 ;
	setAttr ".sp" -type "double3" 0.00012977978663997192 -5.6758780342391901e-06 -1.5268045487459858e-05 ;
createNode nurbsCurve -n "ac_IK_arm_pole_RShape" -p "ac_IK_arm_pole_R";
	rename -uid "D52671DF-4982-9EF1-051F-6B9631A171E7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		-0.47664434011861317 -0.4267894987199487 0.4649320042591768
		-1.4302053341838461 -0.2912879529642925 0.47243341189892823
		-1.4302026360675542 -0.26429196245757758 0.9531947518725854
		-2.3837703519062288 -2.3030978985851469e-05 -9.1464944497877102e-07
		-1.4302141519964204 -0.26731094258110338 -0.96309174609699655
		-1.4302111207433974 -0.29127836144074398 -0.48862232467028788
		-0.47665015829828561 -0.42678949871994604 -0.50138699332993497
		-0.47665679059568994 -0.29385774723863134 -1.4421880894122268
		-0.95343698394933829 -0.26900906079837944 -1.4398746548550934
		0.00011542639059679642 -5.6758780276887006e-06 -2.3839153998015372
		0.95368312139190625 -0.26899334003346104 -1.4398860847977093
		0.47690326209268946 -0.29385234779916763 -1.4421938307706454
		0.47690989437886344 -0.42678255667956305 -0.50139273468835344
		1.4304690372697362 -0.29125498093040542 -0.4886395018351245
		1.4304660060237322 -0.2672885310663482 -0.9631089291256355
		2.3840299114795158 1.1679222930474066e-05 -2.9621441537376394e-05
		1.4304775219706811 -0.26427206872005732 0.95317752779733
		1.4304748238502893 -0.29126749973721466 0.47241618342582109
		0.47691571255818282 -0.42678255667956572 0.46492620426273501
		0.47692052093843534 -0.28883988065830707 1.4303219403162659
		0.95370035821962407 -0.26286744894102837 1.4303190696381951
		0.00014413318269025269 -5.6758780276887006e-06 2.3838848637105552
		-0.95341974712971567 -0.26288201411487766 1.430330552355032
		-0.47663953172715151 -0.2888484108857613 1.4303276816746844
		-0.47664434011861317 -0.4267894987199487 0.4649320042591768
		;
createNode transform -n "R_pole_vector_arm_line_pole" -p "ac_IK_arm_pole_R";
	rename -uid "9D40BA50-4DD5-B281-31D6-9D87C9C690B0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.098807158558834374 0.94793446754374955 0.30274991232711557 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0 0 0.99999999999999956 ;
	setAttr ".rpt" -type "double3" -0.098806954580273054 -0.94793459403427138 -1.3027493867205207 ;
	setAttr ".sp" -type "double3" 0 0 -1 ;
	setAttr ".spt" -type "double3" 0 0 1.9999999999999996 ;
createNode clusterHandle -n "R_pole_vector_arm_line_poleShape" -p "R_pole_vector_arm_line_pole";
	rename -uid "AE5F4CC8-447B-00AC-6CA2-9BA5C1EB47B5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 0 -1 ;
createNode parentConstraint -n "ac_IK_arm_pole_R_grp_parentConstraint1" -p "ac_IK_arm_pole_R_fixer";
	rename -uid "8D01C997-4D13-1643-AEAD-26945F403319";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.00012977978663997192 -5.6758780342391901e-06 -1.5268045487459858e-05 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -89.999582879322546 -89.999655023713373 0 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 -1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -19.029606642643252 49.884430778536704 -20.791802506317879 ;
	setAttr ".tg[0].tor" -type "double3" 174.04880231924412 -17.622709984061817 -127.34489496235634 ;
	setAttr ".lr" -type "double3" -5.9512125347852782 -162.37727921369961 52.655102085277292 ;
	setAttr ".rst" -type "double3" -19.029606618933045 49.884433252697107 -20.791796591924079 ;
	setAttr ".rsrr" -type "double3" -5.9512125347852782 -162.37727921369961 52.655102085277299 ;
	setAttr -k on ".w0";
createNode transform -n "ac_FK_arm_upper_R_grp" -p "ac_arm_setup_R_grp";
	rename -uid "DB86F418-425A-2D69-8144-14BBD437B103";
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode parentConstraint -n "ac_FK_arm_upper_R_grp_parentConstraint1" -p "ac_FK_arm_upper_R_grp";
	rename -uid "D59FE2B1-4082-F360-3C0A-FBA1A28D68B6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jt_drv_upper_L_endW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.2443033863339679e-05 -6.3372180406751077e-05 
		-2.2078547324611009e-05 ;
	setAttr ".tg[0].tor" -type "double3" 0.00016911693725768013 -6.8051165687355833e-05 
		-0.00023142983696387146 ;
	setAttr ".lr" -type "double3" -95.722946334120593 7.7293238728138034 -129.92494044269151 ;
	setAttr ".rst" -type "double3" -7.1481676041854438 61.697314487294392 -3.1171959992215421 ;
	setAttr ".rsrr" -type "double3" -95.722946334120579 7.7293238728137572 -129.92494044269159 ;
	setAttr -k on ".w0";
createNode transform -n "FK_arm_upper_R" -p "ac_FK_arm_upper_R_grp";
	rename -uid "26595F01-411F-C70D-36F3-48A2B29E79DA";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.88230002 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 3.3262558197577619e-05 5.8961903313559105e-05 3.3702485303876983e-05 ;
	setAttr ".sp" -type "double3" 3.3262558197577619e-05 5.8961903313559105e-05 3.3702485303876983e-05 ;
createNode nurbsCurve -n "FK_arm_upper_RShape" -p "FK_arm_upper_R";
	rename -uid "F5611BE5-42A9-6112-ECDE-55B7C3CE09DA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.3354066318732416 -2.9897972108590674 3.4784557924622863
		1.9529082492963388 -5.2995576842070919 -0.58463258722464373
		1.8103377472557529 -2.442742032371739 -4.8037254626562422
		0.65786269952352283 0.48115823746013325 -4.5980277546894941
		-0.77532041707585564 3.624540233119586 -2.6034981209354457
		0.53211614935869078 5.6817022486692235 -0.17443925477578459
		4.3005011680017891 3.653668590682432 3.4889316463328135
		7.7948472988012867 0.50050505724423322 3.0325354981502275
		4.3354066318732416 -2.9897972108590674 3.4784557924622863
		1.9529082492963388 -5.2995576842070919 -0.58463258722464373
		1.8103377472557529 -2.442742032371739 -4.8037254626562422
		;
createNode transform -n "ac_FK_arm_lower_R_grp" -p "FK_arm_upper_R";
	rename -uid "36F6610C-4CFA-BFFB-E123-2DB5ADE5FA98";
	setAttr ".t" -type "double3" 11.596653608600342 5.9465422504345611e-05 -6.7776057619539642e-06 ;
	setAttr ".r" -type "double3" -90.000139108261592 -0.00024998931652491787 -25.479848236456014 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754706e-16 0 ;
	setAttr ".rpt" -type "double3" -9.6399471331391027e-22 3.3306826255196293e-16 3.3306690738339519e-16 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -9.8607613152626498e-32 0 ;
createNode transform -n "FK_arm_lower_R" -p "ac_FK_arm_lower_R_grp";
	rename -uid "78AAF744-4A2A-1DC5-CD84-9BA3C4E7FB68";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.86480004 0 ;
	setAttr ".t" -type "double3" 3.2305884602124024e-05 1.3490294648477175e-05 6.4224451314931486e-06 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 -1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.1054273576010003e-15 -7.1054273576010034e-15 1.1102230246251571e-15 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 -7.1054273576010019e-15 -1.1102230246251565e-15 ;
	setAttr ".spt" -type "double3" -1.5777218104420234e-30 -1.5777218104420243e-30 2.2204460492503135e-15 ;
createNode nurbsCurve -n "FK_arm_lower_RShape" -p "FK_arm_lower_R";
	rename -uid "122409F3-48FA-7311-E747-BBA49172F104";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5947016697449652e-05 -3.2262832183811962 3.2263337413624851
		-3.7552678018920369e-06 3.5725094686279495e-05 4.5626892086603865
		-2.1257767353614898e-05 3.2263337412946123 3.2262832184184056
		-2.6307755094826276e-05 4.5626892085860646 -3.5725116359565112e-05
		-1.5947016699336824e-05 3.2262832183811594 -3.226333741362482
		3.755267799769798e-06 -3.5725094728734447e-05 -4.562689208660391
		2.1257767351727729e-05 -3.2263337412946491 -3.2262832184184056
		2.6307755093494246e-05 -4.5626892085861055 3.5725116359136947e-05
		1.5947016697449652e-05 -3.2262832183811962 3.2263337413624851
		-3.7552678018920369e-06 3.5725094686279495e-05 4.5626892086603865
		-2.1257767353614898e-05 3.2263337412946123 3.2262832184184056
		;
createNode transform -n "ac_FK_hand_R_grp" -p "FK_arm_lower_R";
	rename -uid "0CAEC200-4F0F-C9F3-A87B-3D8C424277BD";
	setAttr ".t" -type "double3" 11.486940723459501 5.7775943134051869e-05 -1.2202411261006391e-05 ;
	setAttr ".r" -type "double3" 3.4410258250760255 2.8033641736035149 176.96273333718804 ;
	setAttr ".s" -type "double3" 0.99999999999999889 1.0000000000000004 0.99999999999999933 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754676e-16 0 ;
	setAttr ".rpt" -type "double3" -1.8592250232122555e-17 1.1193109655812398e-18 1.9967129430408887e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525284e-31 0 ;
createNode transform -n "FK_hand_R" -p "ac_FK_hand_R_grp";
	rename -uid "9DDA6575-49BA-4F7D-F944-BBA2A01B92B2";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.86480004 0 ;
	setAttr ".t" -type "double3" -1.3275501466125661e-05 9.6429959342003713e-06 1.0789429244262294e-05 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 -1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -3.5527136788005025e-15 -7.1054273576010066e-15 0 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 -7.1054273576010019e-15 0 ;
	setAttr ".spt" -type "double3" -1.5777218104420243e-30 -4.7331654313260736e-30 0 ;
createNode nurbsCurve -n "FK_hand_RShape" -p "FK_hand_R";
	rename -uid "724E49B9-4E1B-D131-5DED-D39ACFB50BA2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.024333641840789993 -3.003526402547831 3.0034071136469089
		-3.0239949422651757e-05 -4.2476131257578285 -1.4402933664896478e-05
		-0.024376407587375151 -3.0035056876128738 -3.0034274824710385
		-0.034443206262563988 1.4647670965143525e-05 -4.2474734763809616
		-0.024333641840743207 3.0035264025478026 -3.0034071136469147
		3.0239949468528637e-05 4.2476131257578 1.4402933655146982e-05
		0.024376407587421337 3.0035056876128414 3.0034274824710283
		0.034443206262609417 -1.4647670996019395e-05 4.2474734763809643
		0.024333641840789993 -3.003526402547831 3.0034071136469089
		-3.0239949422651757e-05 -4.2476131257578285 -1.4402933664896478e-05
		-0.024376407587375151 -3.0035056876128738 -3.0034274824710385
		;
createNode transform -n "Right_arm_twists" -p "ac_arm_setup_R_grp";
	rename -uid "0056E18F-4C2F-3A15-A3E9-6F9DE182740F";
	setAttr ".t" -type "double3" 1.4948094552275145e-21 7.1054273576008323e-15 -8.8817841970063247e-16 ;
	setAttr ".r" -type "double3" -1.8079360196814324e-28 1.7807507386353778e-05 -7.4493905967784974e-06 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "jt_drv_arm_upper_R_null" -p "Right_arm_twists";
	rename -uid "BE9E094A-4D07-73F7-B552-D08EAA71340C";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999956 ;
createNode parentConstraint -n "jt_drv_arm_upper_R_null_parentConstraint1" -p "jt_drv_arm_upper_R_null";
	rename -uid "4865D096-4BD7-AAED-7E07-39A215108E96";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jt_drv_arm_upper_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 0 -7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.4558989054399249e-12 -1.5902773407317587e-14 
		-1.7906522856639603e-12 ;
	setAttr ".lr" -type "double3" -95.72335344823729 7.7295633452573025 -129.92500986844735 ;
	setAttr ".rst" -type "double3" -7.1481746570239535 61.697313557914875 -3.1171982208717712 ;
	setAttr ".rsrr" -type "double3" -95.723363571410687 7.7295146732455837 -129.92499496372102 ;
	setAttr -k on ".w0";
createNode transform -n "ac_arm_upper_R_TWIST_grp" -p "jt_drv_arm_upper_R_null";
	rename -uid "CC5B97E8-4BBC-6CF0-9E7A-FE804EFA5D1B";
	setAttr ".t" -type "double3" 3.8655469098382795 1.8481972237083255e-06 1.1315760296781718e-05 ;
	setAttr ".r" -type "double3" 179.99967088868874 -0.00015383796816953753 179.99984820198762 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" -8.8242431254066117e-22 6.6636256970961326e-27 -1.913161624765127e-21 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_arm_upper_R_TWIST" -p "ac_arm_upper_R_TWIST_grp";
	rename -uid "7391B736-453E-83DC-9633-D9BD076CBB22";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.034999847 0 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -9.2726010905153089e-06 3.0792361194187379e-07 1.0389372683050624e-05 ;
	setAttr ".sp" -type "double3" -9.2726010905153089e-06 3.0792361194187379e-07 1.0389372683050624e-05 ;
createNode nurbsCurve -n "ac_arm_upper_R_TWISTShape" -p "ac_arm_upper_R_TWIST";
	rename -uid "87496056-41B8-FC24-91FC-D0ABDF301F3D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1.594770338888017e-05 1.5703661570115966e-05 6.109603481820673
		9.5160071533207672e-06 6.1095934003463555 -5.0063447363143029e-06
		-2.5974988030032841e-06 -1.5087814339126686e-05 -6.1095827030752927
		-2.8061209345204225e-05 -6.1095927844991254 2.5785090117405096e-05
		-1.594770338888017e-05 1.5703661570115966e-05 6.109603481820673
		;
createNode transform -n "ac_arm_upper_R_TWIST1_grp" -p "jt_drv_arm_upper_R_null";
	rename -uid "9D70BA2A-4506-5358-B632-0A8ECF14DEDF";
	setAttr ".t" -type "double3" 7.7310923478123783 4.102362765934231e-06 1.1853311114862208e-05 ;
	setAttr ".r" -type "double3" 179.99965118503329 -0.00015383697415823736 179.99997482750001 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" -1.4633606062089265e-22 6.2044372994241811e-27 -2.0277012233803097e-21 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_arm_upper_R_TWIST1" -p "ac_arm_upper_R_TWIST1_grp";
	rename -uid "20AE4941-4E01-3CCE-3EF5-2EA63789636D";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.034999847 0 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.8967083107668259e-05 -1.5077854484957243e-06 2.1909631819028164e-05 ;
	setAttr ".sp" -type "double3" -1.8967083107668259e-05 -1.5077854484957243e-06 2.1909631819028164e-05 ;
createNode nurbsCurve -n "ac_arm_upper_R_TWISTShape1" -p "ac_arm_upper_R_TWIST1";
	rename -uid "87DBE068-46EC-9B9A-FAC0-63A8F1285F1C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-2.4731108115568328e-05 8.0626431349370841e-06 5.2779646664315143
		-1.8330357451552508e-05 5.277941249017351 1.2339203939206809e-05
		-1.3203058125288991e-05 -1.1078214028375771e-05 -5.2779208471678647
		-1.9603808789304815e-05 -5.2779442645882453 3.1480059711798653e-05
		-2.4731108115568328e-05 8.0626431349370841e-06 5.2779646664315143
		;
createNode transform -n "jt_drv_arm_lower_R_null" -p "jt_drv_arm_upper_R_null";
	rename -uid "22173916-4490-9DB0-9A25-1B836A1902D2";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode parentConstraint -n "jt_drv_arm_lower_R_null_parentConstraint1" -p "jt_drv_arm_lower_R_null";
	rename -uid "281CAB3B-4CAA-53BC-AEC6-6995C7B1F66B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jt_drv_arm_lower_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 1.4210854715202004e-14 
		-1.5543122344752192e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.3248557672398617e-12 1.7906918259255767e-12 
		6.2633205070163646e-13 ;
	setAttr ".lr" -type "double3" -90.000139106966657 -0.00024999003706685871 -25.480145018389106 ;
	setAttr ".rst" -type "double3" 11.596653608600334 5.9465422138416102e-05 -6.7776057548485369e-06 ;
	setAttr ".rsrr" -type "double3" -90.000139107243697 -0.00024998988290378296 -25.480081522042589 ;
	setAttr -k on ".w0";
createNode transform -n "ac_arm_lower_R_TWIST_grp" -p "jt_drv_arm_lower_R_null";
	rename -uid "99282E0C-497A-3E15-7B68-B396F7211DB2";
	setAttr ".t" -type "double3" 3.8289996045412877 2.0449020468049639e-05 -4.0373537905757928e-05 ;
	setAttr ".r" -type "double3" 89.999651710483363 -0.00020864195948567654 -179.99958158188272 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754706e-16 0 ;
	setAttr ".rpt" -type "double3" -1.2128743152344051e-21 3.3306893202541181e-16 -3.3306690737918509e-16 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -9.8607613152626498e-32 0 ;
createNode transform -n "ac_arm_lower_R_TWIST" -p "ac_arm_lower_R_TWIST_grp";
	rename -uid "6E2ACAB4-4538-85A5-D00A-F4949EFB3B94";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.034999847 0 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -2.6392805835939726e-05 3.594821023300554e-06 2.3434479793138507e-05 ;
	setAttr ".sp" -type "double3" -2.6392805835939726e-05 3.594821023300554e-06 2.3434479793138507e-05 ;
createNode nurbsCurve -n "ac_arm_lower_R_TWISTShape" -p "ac_arm_lower_R_TWIST";
	rename -uid "ECD9179D-45FE-211A-3117-81B432F565CF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-6.0242901838630348e-06 1.7576492260052655e-06 4.6106937064231674
		-2.1199489897098245e-05 4.610673866806458 2.5271628656648947e-05
		-4.6761321513005518e-05 5.4319928248121581e-06 -4.6106468374635705
		-3.1586121799770301e-05 -4.6106666771644083 2.159733094273678e-05
		-6.0242901838630348e-06 1.7576492260052655e-06 4.6106937064231674
		;
createNode transform -n "ac_arm_lower_R_TWIST1_grp" -p "jt_drv_arm_lower_R_null";
	rename -uid "7DEC6C1A-4F3C-D703-513D-9996A41C2D36";
	setAttr ".t" -type "double3" 7.6580135015718618 5.6579731406714018e-05 -3.698706774013516e-05 ;
	setAttr ".r" -type "double3" 89.999603899160675 -0.0001676607029777311 -179.99956477339947 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" -9.746482977728479e-22 3.3306920995954258e-16 -3.3306690737816159e-16 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_arm_lower_R_TWIST1" -p "ac_arm_lower_R_TWIST1_grp";
	rename -uid "2CE22504-48CB-1734-5F62-1EA2FE286105";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.034999847 0 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -3.1719668633911624e-06 -4.833636682022302e-07 1.9786868136861813e-05 ;
	setAttr ".sp" -type "double3" -3.1719668633911624e-06 -4.833636682022302e-07 1.9786868136861813e-05 ;
createNode nurbsCurve -n "ac_arm_lower_R_TWISTShape1" -p "ac_arm_lower_R_TWIST1";
	rename -uid "34AB5FA5-403F-E4AF-B9A2-6AB2F5097C3B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		1.4261036616818265e-05 -3.9157293910092564e-06 4.2663969890189408
		4.9075992209402154e-06 4.2663767188150832 2.3219200867740927e-05
		-2.0604970361209992e-05 2.9490020564646127e-06 -4.2663574152826262
		-1.125153296533194e-05 -4.2663776855424178 1.6354535448656591e-05
		1.4261036616818265e-05 -3.9157293910092564e-06 4.2663969890189408
		;
createNode transform -n "Right_hand_rig" -p "arm_rig_R";
	rename -uid "B5D15006-43CC-760B-96EC-F29AB128E967";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "ac_drv_fingers_R_grp" -p "Right_hand_rig";
	rename -uid "D99D7AA9-4C5F-6829-B4A8-8E93288C1633";
createNode transform -n "ac_drv_finger_thumb_0_R_grp" -p "ac_drv_fingers_R_grp";
	rename -uid "1F703EF1-4379-2D12-661A-3DA30C74672B";
	setAttr ".t" -type "double3" -21.017083131969308 42.939485676361379 0.34840145305708314 ;
	setAttr ".r" -type "double3" 108.12098340420489 40.715204734414122 98.898392680699018 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_drv_finger_thumb_0_R" -p "ac_drv_finger_thumb_0_R_grp";
	rename -uid "661FD5D6-4582-6E76-BC06-49AA83478EF3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".t" -type "double3" 5.7667010509021566e-06 1.4034474862256729e-05 -5.8478717932075597e-05 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 -3.5527136788005001e-15 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 -3.5527136788005009e-15 0 ;
	setAttr ".spt" -type "double3" 0 7.8886090522101163e-31 0 ;
createNode nurbsCurve -n "ac_drv_finger_thumb_0_RShape" -p "ac_drv_finger_thumb_0_R";
	rename -uid "7028CCBE-4CB8-352E-8BE4-0287AF860CB3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.77410914681289 -0.36708850446793601 -0.71683338137981323
		-1.5352369488384643 -0.79219115295586795 0.096484553963348166
		-1.3923223030254182 -0.1181087394969013 1.1560683380656429
		-1.2818225195515969 0.43220538474212311 1.4973387616727671
		-0.67326444590640033 1.1828954762844892 0.74972927742902451
		-1.0326051498219535 1.1369731851670779 -0.53484261219417983
		-1.6843819977726746 0.50884658512468672 -1.1389305352343486
		-1.7388697411988485 -0.037933840072796661 -1.1828475817914359
		-1.77410914681289 -0.36708850446793601 -0.71683338137981323
		-1.5352369488384643 -0.79219115295586795 0.096484553963348166
		-1.3923223030254182 -0.1181087394969013 1.1560683380656429
		;
createNode transform -n "ac_drv_finger_thumb_1_R_grp" -p "ac_drv_finger_thumb_0_R";
	rename -uid "9CA0F37D-49CE-057E-1901-6D9A1F8BF0EE";
	setAttr ".t" -type "double3" -1.6988070119068368 1.0995350699261053e-05 1.7077818906585662e-05 ;
	setAttr ".r" -type "double3" 1.0387615292368504 5.5863545193191433 24.995463173349755 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" 1.4018039244385962e-16 3.0995874173374833e-17 -6.0094312470325213e-18 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_drv_finger_thumb_1_R" -p "ac_drv_finger_thumb_1_R_grp";
	rename -uid "C92C0A3E-47D0-1BEB-8A37-A3A0F7AFF9FE";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5.4019168118202288e-05 2.4559750492869625e-05 1.8108783301329368e-05 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".sp" -type "double3" 0 1.7763568394002505e-15 0 ;
createNode nurbsCurve -n "ac_drv_finger_thumb_1_RShape" -p "ac_drv_finger_thumb_1_R";
	rename -uid "EF8641DD-4F7D-E743-EC93-3FAA2D92CE25";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.0038018011023269456 -0.88192762704947902 -0.42867415489776861
		3.7697274162821492e-06 -1.2472353528961517 -2.7937844389925358e-06
		-0.003801913842176798 -0.88192954748554142 0.42867020288929131
		-0.22728929919084898 -2.0449274163771842e-06 0.60623397931342526
		-0.51183038481361398 0.88192606856846845 0.42867408708919236
		-0.54738448659529526 1.24723369845627 2.7218007503237092e-06
		-0.51183040676459546 0.8819279890041235 -0.42867027069788533
		-0.22728935314502247 6.7097866438752881e-07 -0.60623403909311402
		-0.0038018011023269456 -0.88192762704947902 -0.42867415489776861
		3.7697274162821492e-06 -1.2472353528961517 -2.7937844389925358e-06
		-0.003801913842176798 -0.88192954748554142 0.42867020288929131
		;
createNode transform -n "ac_drv_finger_thumb_2_R_grp" -p "ac_drv_finger_thumb_1_R";
	rename -uid "B62966C3-41C6-F724-829C-53883A1ABC89";
	setAttr ".t" -type "double3" -1.5662609157355547 -1.293504142907409e-05 -2.5688364171827516e-05 ;
	setAttr ".r" -type "double3" -0.068177807706805829 -0.35852588764195498 17.2322445495039 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754706e-16 0 ;
	setAttr ".rpt" -type "double3" 9.8667170174186356e-17 1.4950266422411633e-17 3.9631752689282441e-19 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -9.8607613152626498e-32 0 ;
createNode transform -n "ac_drv_finger_thumb_2_R" -p "ac_drv_finger_thumb_2_R_grp";
	rename -uid "4AC52718-4F4F-4B34-5CDF-88A4FD55C3CF";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -6.3933237342439497e-05 3.1568640757040356e-05 -2.8672679530217238e-05 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 -0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 8.8817841970012504e-16 7.1054273576010011e-15 ;
	setAttr ".sp" -type "double3" 0 8.8817841970012523e-16 -7.1054273576010019e-15 ;
	setAttr ".spt" -type "double3" 0 -1.9721522630525291e-31 1.4210854715202002e-14 ;
createNode nurbsCurve -n "ac_drv_finger_thumb_2_RShape" -p "ac_drv_finger_thumb_2_R";
	rename -uid "72D1E9EE-471E-2BA1-C3ED-4A8584A87D0F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.4711249599836125e-06 -0.15880276690203327 -0.61998793937824703
		1.5751745769469308e-06 -0.35861770281892286 -0.18208869953941992
		-1.0326238764730356e-06 -0.15880539273656979 0.25581173846360505
		-2.8246574341984524e-06 0.32358682202788169 0.43719723701777435
		-2.7511771423414791e-06 0.80598012444861122 0.25581463108786112
		-8.5522675930479756e-07 1.0057950603655004 -0.18208460875096599
		1.7525716941151689e-06 0.8059827502831477 -0.61998504675399102
		3.5446052518405849e-06 0.32359053551869615 -0.80137054530816021
		3.4711249599836125e-06 -0.15880276690203327 -0.61998793937824703
		1.5751745769469308e-06 -0.35861770281892286 -0.18208869953941992
		-1.0326238764730356e-06 -0.15880539273656979 0.25581173846360505
		;
createNode transform -n "ac_finger_middle_meta_R_grp" -p "ac_drv_fingers_R_grp";
	rename -uid "ED2A9E62-41D6-E974-3CE9-A38E9CA7CEEE";
	setAttr ".t" -type "double3" -21.519641073875892 43.598218604646789 -0.71250322452539372 ;
	setAttr ".r" -type "double3" 7.8036938493277432 14.64326959951315 51.213060971172155 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754706e-16 0 ;
	setAttr ".rpt" -type "double3" 2.5005330077467486e-16 1.1744585800223951e-16 -4.3754709807900621e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -9.8607613152626498e-32 0 ;
createNode transform -n "ac_finger_middle_meta_R" -p "ac_finger_middle_meta_R_grp";
	rename -uid "BCD3E27D-4DBB-F118-180C-009468F4ED8A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.0289655457855815e-05 -4.7483486184773938e-05 6.5961962145699715e-06 ;
	setAttr ".sp" -type "double3" -7.0289655457855815e-05 -4.7483486184773938e-05 6.5961962145699715e-06 ;
createNode nurbsCurve -n "ac_finger_middle_meta_RShape" -p "ac_finger_middle_meta_R";
	rename -uid "05BA2AF2-46B6-606A-9CBB-A5A4B896B4F0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.18439196084044848 0.4182487925283267 0.20418586209885156
		0.095331782083664024 0.2890693281536601 5.5550941039830993e-06
		-0.18439412085490289 0.41824803479770678 -0.20417227209368957
		-0.9268218769851021 0.970618098104294 -0.28874310871378278
		-2.2572715567000414 1.0032256507623887 -0.20416239304528985
		-2.5369952992181246 1.1212341702274873 1.7934687748225152e-05
		-2.257269396685587 1.0032264084930087 0.20419574114725128
		-0.92681774603219103 0.97061913042542147 0.28876250296106132
		-0.18439196084044848 0.4182487925283267 0.20418586209885156
		0.095331782083664024 0.2890693281536601 5.5550941039830993e-06
		-0.18439412085490289 0.41824803479770678 -0.20417227209368957
		;
createNode transform -n "ac_drv_finger_middle_0_R_grp" -p "ac_finger_middle_meta_R";
	rename -uid "588F73AD-4152-25C9-3151-D18D2DE6FCD3";
	setAttr ".t" -type "double3" -3.2650676030541383 -7.2111000292807148e-05 -7.4119390416349518e-06 ;
	setAttr ".r" -type "double3" 2.4026885586864792 -2.9802697270342509 24.773932102010022 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999967 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754681e-16 0 ;
	setAttr ".rpt" -type "double3" 1.4010448731275914e-16 3.1222810511177107e-17 -1.3944124656010945e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 1.4791141972893967e-31 0 ;
createNode transform -n "ac_drv_finger_middle_0_R" -p "ac_drv_finger_middle_0_R_grp";
	rename -uid "4BDA1D17-4753-D3F2-85A1-B6B7C0079BA4";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 0 ;
	setAttr ".t" -type "double3" -6.5920565717192403e-05 4.5106202151146135e-05 -3.5040575472322644e-06 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 7.1054273576010003e-15 0 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 7.1054273576010019e-15 0 ;
	setAttr ".spt" -type "double3" 0 -1.5777218104420233e-30 0 ;
createNode nurbsCurve -n "ac_drv_finger_middle_0_RShape" -p "ac_drv_finger_middle_0_R";
	rename -uid "7C73C6EC-4D77-B654-49D8-509414854DC6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.9714010108318261e-06 -0.86205920700448357 -0.34593506290212933
		1.2803590317805406e-06 -1.3355235504209748 0.0087752837060182283
		-1.7805392175174319e-07 -0.94192325816806866 0.33817198464454634
		-1.5536894200773697e-06 0.0083145116024376329 0.47461567961030843
		-2.0407188451590587e-06 0.95855336083814435 0.33817950259265861
		-1.3538469650587276e-06 1.3521562591505771 0.0087859156901998661
		1.0456598847355663e-07 0.95855596689767009 -0.32061078524832826
		1.5961677107245743e-06 0.0069104909489018564 -0.49224254050779231
		1.9714010108318261e-06 -0.86205920700448357 -0.34593506290212933
		1.2803590317805406e-06 -1.3355235504209748 0.0087752837060182283
		-1.7805392175174319e-07 -0.94192325816806866 0.33817198464454634
		;
createNode transform -n "ac_drv_finger_middle_1_R_grp" -p "ac_drv_finger_middle_0_R";
	rename -uid "94237E2E-4B8C-962A-5EE7-4E9BBAD9D185";
	setAttr ".t" -type "double3" -2.0757032780024147 -5.2675723978268252e-06 1.1190206210542897e-05 ;
	setAttr ".r" -type "double3" -0.24932855845148993 -1.557005227441052 20.250462455050208 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754706e-16 0 ;
	setAttr ".rpt" -type "double3" 1.1524462103624905e-16 2.0576678749736163e-17 1.4488356721428189e-18 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -9.8607613152626498e-32 0 ;
createNode transform -n "ac_drv_finger_middle_1_R" -p "ac_drv_finger_middle_1_R_grp";
	rename -uid "49AD2F85-4BF8-CE1B-EFEB-A092FBC88CBF";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.7696790027675888e-05 1.5079665814710097e-05 1.4566821165296062e-05 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 -0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.1054273576010003e-15 0 0 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr ".spt" -type "double3" -1.5777218104420234e-30 0 0 ;
createNode nurbsCurve -n "ac_drv_finger_middle_1_RShape" -p "ac_drv_finger_middle_1_R";
	rename -uid "345C9854-4DE2-22D9-A7C8-06BC40D9DEEB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.234124239248459e-06 -0.52329972706958749 -0.43335464474638846
		1.5767444497279022e-07 -0.74005978082097601 -2.6682492451375602e-06
		-1.0111389007282889e-06 -0.52330285193429782 0.4333508712721183
		-1.5876407918257586e-06 -2.2096130284281136e-06 0.61285334766847188
		-1.2341242392484586e-06 0.52329972706958494 0.43335464474638846
		-1.5767444497278963e-07 0.74005978082097379 2.6682492450918708e-06
		1.0111389007282895e-06 0.52330285193429538 -0.4333508712721183
		1.5876407918257598e-06 2.2096130260400799e-06 -0.6128533476684721
		1.234124239248459e-06 -0.52329972706958749 -0.43335464474638846
		1.5767444497279022e-07 -0.74005978082097601 -2.6682492451375602e-06
		-1.0111389007282889e-06 -0.52330285193429782 0.4333508712721183
		;
createNode transform -n "ac_drv_finger_middle_2_R_grp" -p "ac_drv_finger_middle_1_R";
	rename -uid "70DBA956-4E63-55C7-24DF-BDA0E2E0A775";
	setAttr ".t" -type "double3" -1.4133812691799434 -6.17204291586404e-06 1.6219562250174846e-05 ;
	setAttr ".r" -type "double3" -0.032960328484889993 -0.35448729817134855 12.342442113252767 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000004 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" 7.1193240150518297e-17 7.6978082960691273e-18 1.9159847465668412e-19 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_drv_finger_middle_2_R" -p "ac_drv_finger_middle_2_R_grp";
	rename -uid "707C4239-4E5A-9410-5DED-479FC94C9771";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.0057692271157066e-05 1.2476583234999339e-05 1.9556621297933674e-05 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 -0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 3.5527136788004994e-15 1.3322676295501878e-15 ;
	setAttr ".sp" -type "double3" 0 3.5527136788005009e-15 -1.3322676295501878e-15 ;
	setAttr ".spt" -type "double3" 0 -1.5777218104420229e-30 2.6645352591003757e-15 ;
createNode nurbsCurve -n "ac_drv_finger_middle_2_RShape" -p "ac_drv_finger_middle_2_R";
	rename -uid "F4B1B1C1-4721-1D74-CE86-999D6ABB74D3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7705915901154555e-06 -0.39446812041137952 -0.35860003406725544
		-2.4225545179408324e-07 -0.55786458272852857 -2.6586920726728882e-06
		-2.1131925356014697e-06 -0.39447153845091304 0.35859627410886813
		-2.7462500919591049e-06 -2.4169189323742485e-06 0.507134372953294
		-1.7705915901154551e-06 0.39446812041138007 0.35860003406725544
		2.422554517940835e-07 0.55786458272852946 2.6586920726926393e-06
		2.1131925356014697e-06 0.39447153845091365 -0.35859627410886813
		2.7462500919591049e-06 2.4169189329933932e-06 -0.507134372953294
		1.7705915901154555e-06 -0.39446812041137952 -0.35860003406725544
		-2.4225545179408324e-07 -0.55786458272852857 -2.6586920726728882e-06
		-2.1131925356014697e-06 -0.39447153845091304 0.35859627410886813
		;
createNode transform -n "ac_finger_pinky_meta_R_grp" -p "ac_drv_fingers_R_grp";
	rename -uid "194FE931-4318-8FD3-FFDF-EF94D4ACA03C";
	setAttr ".t" -type "double3" -21.596335159343717 43.423427484509872 -1.9408266455960994 ;
	setAttr ".r" -type "double3" 4.2978091146210931 0.045754026881215333 59.741685222404442 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754706e-16 0 ;
	setAttr ".rpt" -type "double3" 2.8687163736607022e-16 1.6568944278721825e-16 -2.4960224670070638e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -9.8607613152626498e-32 0 ;
createNode transform -n "ac_finger_pinky_meta_R" -p "ac_finger_pinky_meta_R_grp";
	rename -uid "24AD25A6-48AB-5422-CA80-7AB8B2DF0F29";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.0590713770852744e-05 -6.2484708308829795e-05 2.2347458298099809e-05 ;
	setAttr ".sp" -type "double3" -1.0590713770852744e-05 -6.2484708308829795e-05 2.2347458298099809e-05 ;
createNode nurbsCurve -n "ac_finger_pinky_meta_RShape" -p "ac_finger_pinky_meta_R";
	rename -uid "90FC76D5-4C24-8DC1-327D-6AAE4E331DF8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.80946428805106208 -1.4351041919143146 0.02491116494948982
		-0.66285867361868844 -1.7944919367224297 -0.63363397581345349
		-0.61583120978305472 -1.1236731301688077 -0.84272354768363888
		-2.4900482994551694 -0.69077857410457988 -1.2013687560522028
		-2.5395943975591089 0.39141990217860628 -1.0081239310869154
		-2.0015105755891018 0.999974724750472 -0.063575963507014027
		-0.29613085972039443 1.1734709348940515 0.1666287924338391
		0.34838908040800787 -0.27134752752743413 0.108229486630783
		-0.80946428805106208 -1.4351041919143146 0.02491116494948982
		-0.66285867361868844 -1.7944919367224297 -0.63363397581345349
		-0.61583120978305472 -1.1236731301688077 -0.84272354768363888
		;
createNode transform -n "ac_drv_finger_pinky_0_R_grp" -p "ac_finger_pinky_meta_R";
	rename -uid "95C6EE4B-49F6-7EAC-46F6-38A9D752E2C3";
	setAttr ".t" -type "double3" -2.7049090921472043 -5.5793465804754305e-05 -2.0001957323323438e-05 ;
	setAttr ".r" -type "double3" -4.2111180492386371 -6.9705322460588457 11.127852936474591 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754686e-16 0 ;
	setAttr ".rpt" -type "double3" 6.1195676296466437e-17 6.5714464432052249e-18 2.4276902233701297e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626454e-32 0 ;
createNode transform -n "ac_drv_finger_pinky_0_R" -p "ac_drv_finger_pinky_0_R_grp";
	rename -uid "5B78F6C7-4DF3-E4D9-1EDE-178141AEFE33";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".t" -type "double3" 1.3059570264317699e-05 -2.3573188066450257e-05 1.5439071145095795e-05 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 -0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.1054273576010003e-15 -7.1054273576009987e-15 8.8817841970012484e-16 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 -7.1054273576010019e-15 -8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 1.5777218104420233e-30 3.1554436208840462e-30 1.7763568394002501e-15 ;
createNode nurbsCurve -n "ac_drv_finger_pinky_0_RShape" -p "ac_drv_finger_pinky_0_R";
	rename -uid "D0E09B3F-46E6-B0C8-5322-4A9F2CF7E35D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.4639262191876984e-07 -0.75153195618540924 -0.31189174337996073
		8.6543040270144436e-07 -1.1168687995062647 -5.3971434040050007e-06
		4.1829186303250638e-07 -0.75153490844065896 0.31188447997765423
		-2.5500584684239647e-07 0.029684847051185726 0.44107654093789106
		-9.6620692685764149e-07 1.0352101586415865 0.31189311422310723
		-1.1344207025112568e-06 1.464010377709813 7.0746662072347595e-06
		-6.3810621607059191e-07 1.035213172970588 -0.31188310913420775
		2.0899862817690074e-07 0.029689109956141779 -0.44107625401989281
		7.4639262191876984e-07 -0.75153195618540924 -0.31189174337996073
		8.6543040270144436e-07 -1.1168687995062647 -5.3971434040050007e-06
		4.1829186303250638e-07 -0.75153490844065896 0.31188447997765423
		;
createNode transform -n "ac_drv_finger_pinky_1_R_grp" -p "ac_drv_finger_pinky_0_R";
	rename -uid "175B18F2-40FF-77E6-5613-9E9CD9C75FC1";
	setAttr ".t" -type "double3" -1.5111068909541387 9.0356516366796313e-06 2.6610839898744132e-05 ;
	setAttr ".r" -type "double3" -0.13052584885386997 -0.82313064287056437 20.105933944665455 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 -1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754706e-16 0 ;
	setAttr ".rpt" -type "double3" 1.1448353176126417e-16 2.0294609776767517e-17 7.5868270470794017e-19 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -9.8607613152626498e-32 0 ;
createNode transform -n "ac_drv_finger_pinky_1_R" -p "ac_drv_finger_pinky_1_R_grp";
	rename -uid "0B755E10-4A73-D97B-AF13-AB8843D75EBF";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.0922654456967393e-05 -9.1738816365705134e-07 2.7238205774438029e-05 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 -0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_pinky_1_RShape" -p "ac_drv_finger_pinky_1_R";
	rename -uid "6BB43E5B-4D1D-3674-140F-988FD83AD6B2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.7192746050323961e-07 -0.58580045265865732 -0.12466170788361781
		-1.3664227900000367e-07 -0.8284485122033306 0.14865412117924226
		-7.4274202693370282e-07 -0.58580308901342948 0.42197229075821296
		-1.0913267711092116e-06 -2.5811458389644971e-06 0.53518672395692291
		-9.782002960248723e-07 0.5857990187356541 0.42197794126395038
		-4.6963055652162947e-07 0.82844707828032771 0.14866211220109046
		1.3646919141207007e-07 0.58580165509042637 -0.12465605737788039
		4.8505393558757871e-07 1.1472228354618152e-06 -0.23787049057659024
		3.7192746050323961e-07 -0.58580045265865732 -0.12466170788361781
		-1.3664227900000367e-07 -0.8284485122033306 0.14865412117924226
		-7.4274202693370282e-07 -0.58580308901342948 0.42197229075821296
		;
createNode transform -n "ac_drv_finger_pinky_2_R_grp" -p "ac_drv_finger_pinky_1_R";
	rename -uid "F052CF63-4A75-3EE9-CB67-F2B51CE5D050";
	setAttr ".t" -type "double3" -0.87265114641625274 -2.1463849702030302e-05 2.0184320415950197e-05 ;
	setAttr ".r" -type "double3" -0.082161766258794192 1.3270884668171405 2.6550006117595162 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 -1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754706e-16 0 ;
	setAttr ".rpt" -type "double3" 1.5439332692456353e-17 3.5838058300533193e-19 4.7748745328374906e-19 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -9.8607613152626498e-32 0 ;
createNode transform -n "ac_drv_finger_pinky_2_R" -p "ac_drv_finger_pinky_2_R_grp";
	rename -uid "9D48AFD9-47DD-612E-4692-AA9120AF328E";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.1203293993844454e-05 1.8031361666004386e-05 2.2032729016352448e-05 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999956 1 -0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".sp" -type "double3" 0 -3.5527136788005009e-15 0 ;
createNode nurbsCurve -n "ac_drv_finger_pinky_2_RShape" -p "ac_drv_finger_pinky_2_R";
	rename -uid "9281A761-4467-EE73-EC24-D7B7E8855224";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.059791976144163823 -0.39337157622269792 -0.2716775471770852
		-0.040036087447540704 -0.55485149234135733 0.034208086946767413
		-0.060350589885660777 -0.39794332164756879 0.34171864549082531
		-0.089135131761721692 -0.053846939415875303 0.46307317028745626
		-0.10289325844408168 0.34174572484785748 0.32898735305775911
		-0.093083281148373997 0.58928113877311117 0.015275391387258362
		-0.10289181378759422 0.35140241483110357 -0.29054067686851659
		-0.089112428991022952 -0.051605931670351303 -0.40986232301796072
		-0.059791976144163823 -0.39337157622269792 -0.2716775471770852
		-0.040036087447540704 -0.55485149234135733 0.034208086946767413
		-0.060350589885660777 -0.39794332164756879 0.34171864549082531
		;
createNode transform -n "ac_finger_index_meta_R_grp" -p "ac_drv_fingers_R_grp";
	rename -uid "E293288A-4412-2ADC-6E0C-4CBB54616D6C";
	setAttr ".ovc" 31;
	setAttr ".t" -type "double3" -21.196639197208697 43.649911786422493 -0.11735537757220076 ;
	setAttr ".r" -type "double3" 14.358064656082613 23.302764941780104 52.314393961204601 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".rpt" -type "double3" 2.3537434962977429e-16 1.0995656127175974e-16 -7.5856797910004045e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
createNode transform -n "ac_finger_index_meta_R" -p "ac_finger_index_meta_R_grp";
	rename -uid "0420296B-4A09-A09E-A495-41BB737B4CB9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 31;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -3.8085758998107622e-05 -1.7435191011827555e-05 9.1290213619643623e-06 ;
	setAttr ".sp" -type "double3" -3.8085758998107622e-05 -1.7435191011827555e-05 9.1290213619643623e-06 ;
createNode nurbsCurve -n "ac_finger_index_meta_RShape" -p "ac_finger_index_meta_R";
	rename -uid "879A72A4-4E57-075A-71E0-AEB28B060BBC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.12225171834521546 0.36441967225644506 0.28538872190468173
		0.22542822959357328 0.15726820906739467 8.121576691484179e-06
		-0.12225353723050096 0.3644186237723322 -0.28537102385848234
		-0.96902130687451193 0.86452502011553778 -0.40075582039429503
		-2.4512218984846443 0.99618658248239689 -0.28536476250658754
		-2.7989018464234325 1.2033380456714466 1.5837821402826257e-05
		-2.4512200795993593 0.99618763096650975 0.28539498325657647
		-1.1662865489593792 0.86452669577811248 0.48172563775901617
		-0.12225171834521546 0.36441967225644506 0.28538872190468173
		0.22542822959357328 0.15726820906739467 8.121576691484179e-06
		-0.12225353723050096 0.3644186237723322 -0.28537102385848234
		;
createNode transform -n "ac_drv_finger_index_0_R_grp" -p "ac_finger_index_meta_R";
	rename -uid "620E4565-4278-019D-5E3E-66A32D0A26BD";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr ".t" -type "double3" -3.290327993089651 -6.7038227143711993e-05 4.4039625493041967e-06 ;
	setAttr ".r" -type "double3" 5.8808534824814513 -1.3722776249935773 28.249407699876983 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754706e-16 0 ;
	setAttr ".rpt" -type "double3" 1.575343488979037e-16 4.1600661717903008e-17 -3.4116291551999549e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -9.8607613152626498e-32 0 ;
createNode transform -n "ac_drv_finger_index_0_R" -p "ac_drv_finger_index_0_R_grp";
	rename -uid "B7E93551-4337-036A-09E2-40AE763B99C5";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -6.9855629448056789e-05 5.1598197877922303e-05 3.0565527324277753e-05 ;
	setAttr ".sp" -type "double3" -6.9855629448056789e-05 5.1598197877922303e-05 3.0565527324277753e-05 ;
createNode nurbsCurve -n "ac_drv_finger_index_0_RShape" -p "ac_drv_finger_index_0_R";
	rename -uid "55DA9A08-43ED-2620-8216-BC952EB09186";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-6.6023648385065339e-05 -0.79635110590188707 0.41894653760258949
		-6.4603092476642586e-05 -1.1262312510909382 2.9318481831546205e-05
		-6.6259401490869105e-05 -0.79635017823481735 -0.41888717013658955
		-7.0022332070691787e-05 5.2254157547232697e-05 -0.59240733072171736
		-7.3687610516718981e-05 0.79645430229763048 -0.4188854065479411
		-7.5108166425141734e-05 1.1263344474866825 3.1812572816565183e-05
		-7.3451857410915215e-05 0.79645337463056076 0.41894830119123794
		-6.968892683109252e-05 5.0942238196115949e-05 0.59246846177636558
		-6.6023648385065339e-05 -0.79635110590188707 0.41894653760258949
		-6.4603092476642586e-05 -1.1262312510909382 2.9318481831546205e-05
		-6.6259401490869105e-05 -0.79635017823481735 -0.41888717013658955
		;
createNode transform -n "ac_drv_finger_index_1_R_grp" -p "ac_drv_finger_index_0_R";
	rename -uid "31D81D2A-4F9D-4D1F-F562-D2BF4B389ADC";
	setAttr ".t" -type "double3" -1.9957161203937517 7.9873656943618698e-05 -4.2720493818926286e-05 ;
	setAttr ".r" -type "double3" 0.11282377277357662 0.63089358129838147 18.943671389455631 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754681e-16 0 ;
	setAttr ".rpt" -type "double3" 1.0811928089845953e-16 1.8037772546990598e-17 -6.5581728804318959e-19 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 1.4791141972893967e-31 0 ;
createNode transform -n "ac_drv_finger_index_1_R" -p "ac_drv_finger_index_1_R_grp";
	rename -uid "6338D681-4977-D597-71C0-BFA2CD4D3AA8";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.789869695225434e-05 -1.0425209168829497e-05 2.632748468656132e-05 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999967 -0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 0 -8.8817841970012484e-16 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 0 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 -1.7763568394002501e-15 ;
createNode nurbsCurve -n "ac_drv_finger_index_1_RShape" -p "ac_drv_finger_index_1_R";
	rename -uid "8825186D-400A-1FA1-60F0-6D87B6CCD8EB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.0495578828167781e-08 -0.59931145505586692 -0.41406276496307171
		-1.6750341383673282e-07 -0.84755638525797827 -2.8910903791761779e-06
		-2.1639002076353272e-07 -0.5993142798518809 0.41405867634384741
		-1.3851828828925059e-07 -1.9974324151475299e-06 0.58557028679409995
		2.0495578828168628e-08 0.59931145505587091 0.41406276496307148
		1.6750341383673375e-07 0.84755638525798271 2.8910903789870163e-06
		2.1639002076353356e-07 0.5993142798518849 -0.41405867634384763
		1.3851828828925141e-07 1.9974324191226246e-06 -0.58557028679410006
		-2.0495578828167781e-08 -0.59931145505586692 -0.41406276496307171
		-1.6750341383673282e-07 -0.84755638525797827 -2.8910903791761779e-06
		-2.1639002076353272e-07 -0.5993142798518809 0.41405867634384741
		;
createNode transform -n "ac_drv_finger_index_2_R_grp" -p "ac_drv_finger_index_1_R";
	rename -uid "F3AC76D1-4ACD-A345-A170-CBB2C05C7F5A";
	setAttr ".t" -type "double3" -1.2689623530221823 -6.7047711485912487e-05 -2.7518255476088882e-05 ;
	setAttr ".r" -type "double3" -0.19602398792033177 2.098571780505015 0.79568224703040391 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 -1.0000000000000004 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754711e-16 0 ;
	setAttr ".rpt" -type "double3" 4.6669393743596376e-18 3.4645080737100381e-20 1.1387433376405652e-18 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -1.4791141972893978e-31 0 ;
createNode transform -n "ac_drv_finger_index_2_R" -p "ac_drv_finger_index_2_R_grp";
	rename -uid "FF349147-4D99-B8D3-0F57-78AB1AC08682";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5.9173260687828133e-05 7.5243163493610155e-05 -2.6303839884889157e-05 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999967 -0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 8.8817841970012494e-16 ;
	setAttr ".sp" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 1.7763568394002503e-15 ;
createNode nurbsCurve -n "ac_drv_finger_index_2_RShape" -p "ac_drv_finger_index_2_R";
	rename -uid "047C3C3F-440E-58EB-04A0-568D4B1A6947";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.9769293123987676e-07 -0.53830834261163041 -0.41327589894482697
		-3.2778316886903944e-07 -0.76128506436955146 -2.7425312707737444e-06
		-9.612483341721027e-07 -0.53831132025186423 0.41327202041990851
		-1.0316272621256929e-06 -2.1055096014506177e-06 0.58445763875843593
		-4.9769293123987613e-07 0.53830834261163041 0.41327589894482653
		3.2778316886904023e-07 0.76128506436955179 2.7425312703666036e-06
		9.6124833417210354e-07 0.53831132025186423 -0.41327202041990896
		1.0316272621256938e-06 2.1055096015149706e-06 -0.58445763875843637
		4.9769293123987676e-07 -0.53830834261163041 -0.41327589894482697
		-3.2778316886903944e-07 -0.76128506436955146 -2.7425312707737444e-06
		-9.612483341721027e-07 -0.53831132025186423 0.41327202041990851
		;
createNode transform -n "ac_finger_ring_meta_R_grp" -p "ac_drv_fingers_R_grp";
	rename -uid "659B7D9D-4C6A-95BA-BAD5-E6A5D23B9D9D";
	setAttr ".t" -type "double3" -21.588840733462632 43.490424052532461 -1.3432147036154185 ;
	setAttr ".r" -type "double3" 6.8256558584175036 7.8130625526180708 54.293785645974886 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754706e-16 0 ;
	setAttr ".rpt" -type "double3" 2.6539955943233822e-16 1.3568742354101101e-16 -3.9217062693432476e-17 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -9.8607613152626498e-32 0 ;
createNode transform -n "ac_finger_ring_meta_R" -p "ac_finger_ring_meta_R_grp";
	rename -uid "8A9B31D5-4E26-0A11-8C76-5A8E937446B2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -6.3473134623848182e-05 -3.9181736561033631e-05 1.9776449217800973e-05 ;
	setAttr ".sp" -type "double3" -6.3473134623848182e-05 -3.9181736561033631e-05 1.9776449217800973e-05 ;
createNode nurbsCurve -n "ac_finger_ring_meta_RShape" -p "ac_finger_ring_meta_R";
	rename -uid "C67B63D2-4ABF-576D-E2C9-A69F2C4DE053";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.0043638902607390602 0.26808807914953181 0.092100046458530857
		-0.0024687647383409544 -0.0564945735710949 0.035349559843321471
		-0.00057392332957318889 0.26808789903371039 -0.021401966415926933
		-0.36543913773039505 0.91718230412647272 -0.42146333023788857
		-2.1199320871294085 1.1067275237725889 -0.42651176061505153
		-2.0891587571232333 1.220932053572741 -0.22219575413247653
		-2.1346575458730728 1.2294050026689571 -0.017883055372860685
		-0.38221841118297362 0.99059687486854253 0.20217934994174822
		-0.0043638902607390602 0.26808807914953181 0.092100046458530857
		-0.0024687647383409544 -0.0564945735710949 0.035349559843321471
		-0.00057392332957318889 0.26808789903371039 -0.021401966415926933
		;
createNode transform -n "ac_drv_finger_ring_0_R_grp" -p "ac_finger_ring_meta_R";
	rename -uid "7A37CA3F-4BF4-A5ED-A481-84A37C300454";
	setAttr ".t" -type "double3" -2.9877656462558839 -3.0670616645522841e-05 -2.2161246794993872e-05 ;
	setAttr ".r" -type "double3" -1.014008683994662 -6.2115962596571821 23.36836329184872 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754686e-16 0 ;
	setAttr ".rpt" -type "double3" 1.3150188188217681e-16 2.7115139089665064e-17 5.8596359571222699e-18 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626454e-32 0 ;
createNode transform -n "ac_drv_finger_ring_0_R" -p "ac_drv_finger_ring_0_R_grp";
	rename -uid "98D57A17-4E85-AF3A-0C06-A682CB8871CB";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".t" -type "double3" -1.2611266058115689e-05 -9.8927530984838086e-06 2.0128904549387983e-05 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 -1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_drv_finger_ring_0_RShape" -p "ac_drv_finger_ring_0_R";
	rename -uid "F2F599E3-41EC-180F-3659-6385AAE3D939";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.531467389781392e-07 -1.0734902296980264 -0.3373315497642172
		3.8878455223597545e-07 -1.518146823249692 -7.5782564657710396e-06
		-4.0332235236487188e-07 -1.0734935974153159 0.33732083249114397
		-9.5916849295859789e-07 -2.3813357282792854e-06 0.47705127443642442
		-9.5314673897814026e-07 1.0734902296980353 0.33733154976421664
		-3.8878455223597699e-07 1.5181468232497017 7.5782564652877734e-06
		4.0332235236487066e-07 1.073493597415325 -0.33732083249114453
		9.5916849295859684e-07 2.3813357375260582e-06 -0.47705127443642498
		9.531467389781392e-07 -1.0734902296980264 -0.3373315497642172
		3.8878455223597545e-07 -1.518146823249692 -7.5782564657710396e-06
		-4.0332235236487188e-07 -1.0734935974153159 0.33732083249114397
		;
createNode transform -n "ac_drv_finger_ring_1_R_grp" -p "ac_drv_finger_ring_0_R";
	rename -uid "B403B70F-4224-CF6D-B860-949DDEDEA1BD";
	setAttr ".t" -type "double3" -1.9109239995645027 -5.3383748703339506e-05 1.1362205760256927e-05 ;
	setAttr ".r" -type "double3" -0.0053673580839227871 -0.032476448935827525 18.794698133468536 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 -0.99999999999999967 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754711e-16 0 ;
	setAttr ".rpt" -type "double3" 1.0730684472810602e-16 1.7759430632401215e-17 3.1201060239543204e-20 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -1.4791141972893978e-31 0 ;
createNode transform -n "ac_drv_finger_ring_1_R" -p "ac_drv_finger_ring_1_R_grp";
	rename -uid "0752F5A1-421E-EF73-C381-69852A522C50";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 7.5249929736287413e-06 5.705140686274035e-05 1.5240472354349777e-05 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 -1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 3.5527136788005001e-15 -8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 3.5527136788005009e-15 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 -7.8886090522101172e-31 -1.7763568394002505e-15 ;
createNode nurbsCurve -n "ac_drv_finger_ring_1_RShape" -p "ac_drv_finger_ring_1_R";
	rename -uid "CA4C9AB1-4A05-E0E2-BE28-EEBBB73BE1BC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.0616926804592424e-07 -0.50348611348940919 -0.35981050509350798
		-3.4998480541878275e-07 -0.71203878883840555 -2.6568553163312501e-06
		-1.2011225264936752e-06 -0.50348879862157625 0.35980674773268628
		-1.3486589616204093e-06 -1.8986751633378788e-06 0.50884623933223594
		-7.0616926804592255e-07 0.50348611348941019 0.35981050509350754
		3.499848054187845e-07 0.71203878883840699 2.6568553159341195e-06
		1.2011225264936769e-06 0.50348879862157736 -0.35980674773268673
		1.348658961620411e-06 1.8986751644051844e-06 -0.50884623933223638
		7.0616926804592424e-07 -0.50348611348940919 -0.35981050509350798
		-3.4998480541878275e-07 -0.71203878883840555 -2.6568553163312501e-06
		-1.2011225264936752e-06 -0.50348879862157625 0.35980674773268628
		;
createNode transform -n "ac_drv_finger_ring_2_R_grp" -p "ac_drv_finger_ring_1_R";
	rename -uid "718AD469-4F79-39D6-39D2-D5A67621D8A2";
	setAttr ".t" -type "double3" -1.2806977114469902 2.5596760377055716e-05 2.2151033246764484e-05 ;
	setAttr ".r" -type "double3" -0.0097003610577731346 -0.51985247455798478 7.6782587545337249 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999933 -1 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754676e-16 0 ;
	setAttr ".rpt" -type "double3" 4.4500608769073236e-17 2.9862241654072362e-18 5.6386984965899085e-20 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525282e-31 0 ;
createNode transform -n "ac_drv_finger_ring_2_R" -p "ac_drv_finger_ring_2_R_grp";
	rename -uid "5299B067-41C1-78CF-06B4-FEBA8B0780A9";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.135655109152367e-05 -1.458891343020241e-05 2.4867276319895382e-05 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 -1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 1.7763568394002501e-15 8.8817841970012543e-16 ;
	setAttr ".sp" -type "double3" 0 1.7763568394002505e-15 -8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 -3.9443045261050586e-31 1.7763568394002505e-15 ;
createNode nurbsCurve -n "ac_drv_finger_ring_2_RShape" -p "ac_drv_finger_ring_2_R";
	rename -uid "AA91BDAC-46A0-1730-A394-BAAFF676F5C4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.4540533801588194e-07 -0.36221845992050994 -0.36827596139744939
		-2.8285220707814179e-07 -0.5122560764064894 -1.7879579709070779e-06
		-1.3454187654129534e-06 -0.36222103074157591 0.36827343284303798
		-1.6198572580401224e-06 -1.8178450086020443e-06 0.52081907134629235
		-9.4540533801588152e-07 0.36221845992051077 0.36827596139744939
		2.8285220707814237e-07 0.51225607640649062 1.787957970927362e-06
		1.3454187654129538e-06 0.36222103074157669 -0.36827343284303798
		1.6198572580401228e-06 1.8178450094631611e-06 -0.52081907134629235
		9.4540533801588194e-07 -0.36221845992050994 -0.36827596139744939
		-2.8285220707814179e-07 -0.5122560764064894 -1.7879579709070779e-06
		-1.3454187654129534e-06 -0.36222103074157591 0.36827343284303798
		;
createNode parentConstraint -n "Right_hand_rig_parentConstraint1" -p "Right_hand_rig";
	rename -uid "70573C1A-404A-A2CD-15E2-93BFD9713F30";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jt_drv_hand_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -23.822361732509304 -42.555714453967532 -4.7810889399807337 ;
	setAttr ".tg[0].tor" -type "double3" 14.919011088083836 -14.027747331769715 -57.390652247626399 ;
	setAttr ".lr" -type "double3" -180.00000000042209 180.00000000052535 179.99999999925171 ;
	setAttr ".rst" -type "double3" 1.0658141036401503e-14 -2.8421709430404007e-14 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" -2.7829853462805772e-15 -1.3914926731402886e-15 
		3.3793970094446528e-32 ;
	setAttr -k on ".w0";
createNode transform -n "ac_IK_hand_R_grp" -p "arm_rig_R";
	rename -uid "CB2217D8-48EF-6087-781F-8FB5E0B7D119";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "ac_IK_hand_R_fixer" -p "|csgo_character|setup|arm_rig_R|ac_IK_hand_R_grp";
	rename -uid "F5BE0DE8-4D58-752A-EB05-A28D758CAF53";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000007 -0.99999999999999944 ;
createNode transform -n "Right_Hand_CNSTR" -p "ac_IK_hand_R_fixer";
	rename -uid "8D0159E2-4E38-0DDD-4B5E-EA9BB241C5AE";
	addAttr -ci true -sn "Weapon" -ln "Weapon" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "World" -ln "World" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Finger_CTRLS" -ln "Finger_CTRLS" -min 0 -max 1 -at "long";
	addAttr -ci true -sn "Twist_Visibility" -ln "Twist_Visibility" -min 0 -max 1 -at "long";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.71649981 0 1 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 1.4210854715202004e-14 -8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 1.4210854715202004e-14 -8.8817841970012523e-16 ;
	setAttr -k on ".Weapon";
	setAttr -k on ".World" 1;
	setAttr -cb on ".Finger_CTRLS" 1;
	setAttr -cb on ".Twist_Visibility" 1;
createNode nurbsCurve -n "Right_Hand_CNSTRShape" -p "Right_Hand_CNSTR";
	rename -uid "C3E6A9D0-400F-686F-D84E-1482C1E820FD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.5241930140123425e-05 2.4003041240004768 -2.4002875834752286
		-1.7526330438469797e-05 2.4803621259040978 8.530146741443115e-06
		-1.8675146761977235e-05 2.4002881562620813 2.400304678414936
		-1.7105769811604177e-06 -8.5441506396589565e-06 2.4803620934785844
		1.5368513053485142e-05 -2.4003046923586955 2.4002881238467459
		1.7652909617327769e-05 -2.480362107408181 -8.5766253139799858e-06
		1.8801725933197453e-05 -2.4002881377661542 -2.4003047248935103
		1.8371561572138284e-06 8.5626465688947958e-06 -2.4803621399571658
		-1.5241930140123425e-05 2.4003041240004768 -2.4002875834752286
		-1.7526330438469797e-05 2.4803621259040978 8.530146741443115e-06
		-1.8675146761977235e-05 2.4002881562620813 2.400304678414936
		;
createNode ikHandle -n "ikHandle_arm_hand_R" -p "Right_Hand_CNSTR";
	rename -uid "54A43E90-4A06-C235-CC27-DA8E63713385";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.3275501469678375e-05 9.6429959342003713e-06 -1.0789429242485937e-05 ;
	setAttr ".r" -type "double3" 165.08098891191614 -14.027747331769707 57.390652247626448 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 -1.0000000000000004 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle_arm_hand_R_poleVectorConstraint1" -p
		 "ikHandle_arm_hand_R";
	rename -uid "67821EAB-4A77-0D87-2B42-90B50D5FD3B6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_IK_arm_pole_RW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 9.3660981217231623 -1.9026940731141551 22.400004988254288 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "ac_IK_hand_R_fixer_pointConstraint1" -p "ac_IK_hand_R_fixer";
	rename -uid "C19FBAAB-4DB0-DE2B-F78E-FBAC2EB4C8F8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_weapon_CTRL_ContrainW0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "ac_FK_hand_RW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".o" -type "double3" 6.6377512943915917e-06 4.8214978463079206e-06 -5.39471630656152e-06 ;
	setAttr ".rst" -type "double3" -1.0658141036401503e-14 1.4210854715202004e-14 -1.7763568394002505e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "ac_IK_hand_R_fixer_orientConstraint1" -p "ac_IK_hand_R_fixer";
	rename -uid "23CEF03D-4EC1-F16E-55C3-8F925E7D5A9C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_weapon_CTRL_ContrainW0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "ac_FK_hand_RW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 179.99999999999812 0 ;
	setAttr ".o" -type "double3" 900 1260.0000000000018 0 ;
	setAttr ".rsrr" -type "double3" 900 1439.9999999999998 -1.505409147074542e-44 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "ac_IK_hand_R_grp_parentConstraint2" -p "|csgo_character|setup|arm_rig_R|ac_IK_hand_R_grp";
	rename -uid "C27646BD-4551-B7A1-C81B-CCB865CC53A0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -21.164280475272751 44.181297369224481 -1.1992874885800953 ;
	setAttr ".tg[0].tor" -type "double3" 3.5740937679887335 20.065431017792445 56.177396599561753 ;
	setAttr ".lr" -type "double3" 3.5741095178358107 20.065440929867027 56.177394553835306 ;
	setAttr ".rst" -type "double3" -21.164275103716733 44.181300120927531 -1.1992809107311666 ;
	setAttr ".rsrr" -type "double3" 3.5741095178358093 20.065440929867027 56.177394553835306 ;
	setAttr -k on ".w0";
createNode transform -n "ac_arm_IK_FK_blend_R_grp" -p "arm_rig_R";
	rename -uid "958F42C5-40AB-0E53-1C3F-5AB479F4552C";
	setAttr ".s" -type "double3" 5.3653595505077627 5.3653595505077627 5.3653595505077627 ;
createNode transform -n "ac_arm_IK_FK_blend_R_range" -p "ac_arm_IK_FK_blend_R_grp";
	rename -uid "27BC3139-40AF-CCE7-C3FA-04AD2AD58D13";
	setAttr ".tmp" yes;
createNode nurbsCurve -n "ac_arm_IK_FK_blend_R_rangeShape" -p "ac_arm_IK_FK_blend_R_range";
	rename -uid "7454B5AB-41AE-B9F5-8C0C-9D90F6A67B12";
	setAttr -k off ".v";
createNode transform -n "ac_arm_IK_FK_blend_R" -p "ac_arm_IK_FK_blend_R_grp";
	rename -uid "090E1004-49FC-589F-E5D7-B2AF3F7C1D96";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.35500002 0 ;
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" 0 0 0 ;
	setAttr ".mxtl" -type "double3" 1 0 0 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" -1 0 0 ;
	setAttr ".mxrl" -type "double3" 1 0 0 ;
	setAttr ".mrxe" yes;
	setAttr ".mrye" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrye" yes;
	setAttr ".xrze" yes;
createNode nurbsCurve -n "ac_arm_IK_FK_blend_RShape" -p "ac_arm_IK_FK_blend_R";
	rename -uid "5F0E9415-4DE5-454F-9BD7-5696DA82F0BF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.12448839689677138 7.6227158395307961e-18 -0.12448839689677116
		1.0780148122380696e-17 1.0780148122380671e-17 -0.17605317924949848
		-0.12448839689677138 7.6227158395307961e-18 -0.12448839689677105
		-0.17605317924949881 -2.0176735899974513e-32 2.7102763240099344e-16
		-0.12448839689677138 -7.6227158395308393e-18 0.12448839689677171
		-1.7635367373704883e-17 -1.0780148122380721e-17 0.17605317924949915
		0.12448839689677138 -7.6227158395308393e-18 0.1244883968967716
		0.17605317924949881 -2.2205665675488012e-32 3.0416257019572933e-16
		0.12448839689677138 7.6227158395307961e-18 -0.12448839689677116
		1.0780148122380696e-17 1.0780148122380671e-17 -0.17605317924949848
		-0.12448839689677138 7.6227158395307961e-18 -0.12448839689677105
		;
createNode transform -n "display_mode_arm_R" -p "ac_arm_IK_FK_blend_R";
	rename -uid "5FD644BF-4DAA-DFC0-6725-28A7752E6EF9";
	setAttr ".t" -type "double3" -0.58196689822154557 -0.006583515628793335 0.34062614580818185 ;
	setAttr -av ".ty";
	setAttr ".r" -type "double3" 88.098317398732206 0.000545363741884482 -179.99997040690241 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr ".s" -type "double3" 0.10433223025557771 0.10433223025557758 -0.10433223025557764 ;
createNode transform -n "IK_dis" -p "display_mode_arm_R";
	rename -uid "4E5C9F2A-48AE-CC69-80AB-FAA0B5DC3059";
createNode transform -n "IK_display" -p "|csgo_character|setup|arm_rig_R|ac_arm_IK_FK_blend_R_grp|ac_arm_IK_FK_blend_R|display_mode_arm_R|IK_dis";
	rename -uid "A93CF641-4A2A-65E0-3AB7-26A7B1159A5E";
	setAttr ".tmp" yes;
	setAttr ".s" -type "double3" 0.31887601976691099 0.31887601976691099 0.31887601976691099 ;
createNode transform -n "polyToCurve3" -p "|csgo_character|setup|arm_rig_R|ac_arm_IK_FK_blend_R_grp|ac_arm_IK_FK_blend_R|display_mode_arm_R|IK_dis|IK_display";
	rename -uid "58D12161-460F-89B9-AEDA-E39623A1B1DB";
createNode nurbsCurve -n "polyToCurveShape3" -p "|csgo_character|setup|arm_rig_R|ac_arm_IK_FK_blend_R_grp|ac_arm_IK_FK_blend_R|display_mode_arm_R|IK_dis|IK_display|polyToCurve3";
	rename -uid "ADBEDEB3-4F02-C9E1-1CA7-86BD1A47A1AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 31;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 2 no 3
		5 0 1 2 3 4
		5
		-3.1907775402069092 0 0
		-2.1731820106506348 0 0
		-2.1731820106506348 7.1716265678405762 0
		-3.1907775402069092 7.1716265678405762 0
		-3.1907775402069092 0 0
		;
createNode transform -n "polyToCurve4" -p "|csgo_character|setup|arm_rig_R|ac_arm_IK_FK_blend_R_grp|ac_arm_IK_FK_blend_R|display_mode_arm_R|IK_dis|IK_display";
	rename -uid "41A5AF80-43AD-F22E-5D04-3698DEA28E89";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "polyToCurveShape4" -p "|csgo_character|setup|arm_rig_R|ac_arm_IK_FK_blend_R_grp|ac_arm_IK_FK_blend_R|display_mode_arm_R|IK_dis|IK_display|polyToCurve4";
	rename -uid "3D7A0A9A-4072-97CC-42FD-A6803580EE8E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 2 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-0.34385305643081665 0 0
		0.61074870824813843 0 0
		0.61074870824813843 3.634270191192627 0
		3.7459125518798828 0 0
		5.0321412086486816 0 0
		1.7269996404647827 3.749809741973877 0
		4.5361390113830566 7.1716265678405762 0
		3.5133190155029297 7.1716265678405762 0
		0.61074870824813843 3.6439614295959473 0
		0.61074870824813843 7.1716265678405762 0
		-0.34385305643081665 7.1716265678405762 0
		-0.34385305643081665 0 0
		;
createNode transform -n "FK_dis" -p "display_mode_arm_R";
	rename -uid "EF1496DB-435C-72AB-FB32-55B4F33A8418";
createNode transform -n "FK_display" -p "|csgo_character|setup|arm_rig_R|ac_arm_IK_FK_blend_R_grp|ac_arm_IK_FK_blend_R|display_mode_arm_R|FK_dis";
	rename -uid "426ADC3C-48DA-4306-2087-68A0AB98AB43";
	setAttr ".tmp" yes;
	setAttr ".s" -type "double3" 0.31887601976691099 0.31887601976691099 0.31887601976691099 ;
createNode transform -n "polyToCurve1" -p "|csgo_character|setup|arm_rig_R|ac_arm_IK_FK_blend_R_grp|ac_arm_IK_FK_blend_R|display_mode_arm_R|FK_dis|FK_display";
	rename -uid "FF4B8711-4002-AC35-043E-DFA43D4E2F6F";
createNode nurbsCurve -n "polyToCurveShape1" -p "|csgo_character|setup|arm_rig_R|ac_arm_IK_FK_blend_R_grp|ac_arm_IK_FK_blend_R|display_mode_arm_R|FK_dis|FK_display|polyToCurve1";
	rename -uid "4297F672-4F99-37B3-C96C-0CAA3F0B0ACB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 2 no 3
		11 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.4181828498840332 0 0
		-3.4005870819091797 0 0
		-3.4005870819091797 3.2563059329986572 0
		-0.89051783084869385 3.2563059329986572 0
		-0.89051783084869385 4.0073885917663574 0
		-3.4005870819091797 4.0073885917663574 0
		-3.4005870819091797 6.4108524322509766 0
		-0.41079393029212952 6.4108524322509766 0
		-0.41079393029212952 7.1716265678405762 0
		-4.4181828498840332 7.1716265678405762 0
		-4.4181828498840332 0 0
		;
createNode transform -n "polyToCurve2" -p "|csgo_character|setup|arm_rig_R|ac_arm_IK_FK_blend_R_grp|ac_arm_IK_FK_blend_R|display_mode_arm_R|FK_dis|FK_display";
	rename -uid "5FA495C3-42AD-46BF-49D2-FA8C8D90A40A";
createNode nurbsCurve -n "polyToCurveShape2" -p "|csgo_character|setup|arm_rig_R|ac_arm_IK_FK_blend_R_grp|ac_arm_IK_FK_blend_R|display_mode_arm_R|FK_dis|FK_display|polyToCurve2";
	rename -uid "E09CADCE-4E03-DCA1-3399-3D9E89FD8483";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 11 2 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		0.89324367046356201 0 0
		1.8478449583053589 0 0
		1.8478449583053589 3.634270191192627 0
		4.9830093383789063 0 0
		6.2692375183105469 0 0
		2.9640958309173584 3.749809741973877 0
		5.7732353210449219 7.1716265678405762 0
		4.7504158020019531 7.1716265678405762 0
		1.8478449583053589 3.6439614295959473 0
		1.8478449583053589 7.1716265678405762 0
		0.89324367046356201 7.1716265678405762 0
		0.89324367046356201 0 0
		;
createNode parentConstraint -n "ac_arm_IK_FK_blend_R_grp_parentConstraint1" -p "ac_arm_IK_FK_blend_R_grp";
	rename -uid "CFDA1505-404E-8FC2-8732-6CB6731932AF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jt_drv_arm_lower_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 6.411815722577451 -2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000057 -1.9083328088781104e-14 
		-1.7493050748049344e-14 ;
	setAttr ".lr" -type "double3" 84.048351297100211 -17.622769380673226 -127.34475865797911 ;
	setAttr ".rst" -type "double3" -19.47092057345041 56.913350109247908 -4.0433262247798361 ;
	setAttr ".rsrr" -type "double3" 84.04834057499842 -17.622754397657729 -127.34474542051525 ;
	setAttr -k on ".w0";
createNode transform -n "Right_weapon_setup" -p "arm_rig_R";
	rename -uid "45B7FF34-46A7-107A-D653-30B4818ED390";
	setAttr ".t" -type "double3" 1.4948094560163754e-21 7.1054273576008323e-15 -8.8817841970063247e-16 ;
	setAttr ".r" -type "double3" -1.8079360196814324e-28 1.7807507386353778e-05 -7.4493905967784974e-06 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "Right_weapon_CTRL_Contrain_grp" -p "Right_weapon_setup";
	rename -uid "6F27458C-4F8E-A2E9-642C-64A88DE022C2";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000007 -0.99999999999999967 ;
createNode transform -n "fixer" -p "Right_weapon_CTRL_Contrain_grp";
	rename -uid "48E30CDF-4A03-534D-1DD6-C1BF921B818D";
	setAttr ".r" -type "double3" 0 0 180 ;
createNode transform -n "Right_Hand_CTRL" -p "fixer";
	rename -uid "4E05CAF1-447A-9F0D-AB48-74BA4C436256";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0.66190004 1 ;
	setAttr ".s" -type "double3" 0.99999999999999856 1.0000000000000013 -1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Right_Hand_CTRLShape" -p "Right_Hand_CTRL";
	rename -uid "4012EDEF-4D6C-9CC9-FED1-ABA150363A03";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0436096431476471e-14 -3.0064861510813325 -3.0064861510813059
		9.7918911736602219e-15 -2.6495734053002443e-14 -4.2518134899460662
		8.992806499463768e-15 3.0064861510812801 -3.0064861510813046
		8.659739592076221e-15 4.2518134899460449 4.6699099845463858e-16
		8.659739592076221e-15 3.0064861510812801 3.0064861510813068
		9.2711941955568174e-15 -2.5809478498714446e-14 4.2518134899460716
		9.9920072216264089e-15 -3.0064861510813325 3.0064861510813063
		1.0436096431476471e-14 -4.2518134899460964 1.2672240649903173e-15
		1.0436096431476471e-14 -3.0064861510813325 -3.0064861510813059
		9.7918911736602219e-15 -2.6495734053002443e-14 -4.2518134899460662
		8.992806499463768e-15 3.0064861510812801 -3.0064861510813046
		;
createNode parentConstraint -n "Right_weapon_CTRL_Contrain_grp_parentConstraint1" 
		-p "Right_weapon_CTRL_Contrain_grp";
	rename -uid "6EB20DDD-4859-0BAD-0C16-2DAAB3F85B69";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -21.164280475272744 44.181297369224538 -1.199287488578314 ;
	setAttr ".tg[0].tor" -type "double3" 176.42590623200996 -20.06543101779053 -123.82260340043776 ;
	setAttr ".lr" -type "double3" -3.5740937679900235 -159.93456898220947 56.177396599562243 ;
	setAttr ".rst" -type "double3" -21.164280475272744 44.181297369224488 -1.1992874885800993 ;
	setAttr ".rsrr" -type "double3" -3.5740937679900742 -159.93456898220947 56.177396599562243 ;
	setAttr -k on ".w0";
createNode transform -n "R_pole_vector_arm_line" -p "arm_rig_R";
	rename -uid "6DD4C3AD-45A7-D1BD-8C7D-F5A7053A648E";
	setAttr ".t" -type "double3" 1.4948094552275145e-21 7.1054273576008323e-15 -8.8817841970063247e-16 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.8079360196814324e-28 1.7807507386353778e-05 -7.4493905967784974e-06 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_pole_vector_arm_lineShape" -p "R_pole_vector_arm_line";
	rename -uid "0C976647-41D1-5C63-1E21-E7B6680AE33E";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "R_pole_vector_arm_lineShapeOrig" -p "R_pole_vector_arm_line";
	rename -uid "B32F3B81-412B-C511-B5AD-3392B049F82D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 1
		0 0 -1
		;
createNode transform -n "Left_leg_rig" -p "setup";
	rename -uid "C205727B-4871-CC6C-8EEB-B59ADA59AE9F";
	setAttr ".t" -type "double3" 3.6942284107208252 39.053455352783203 -1.9399272203445435 ;
createNode joint -n "IK_drv_leg_upper_L" -p "Left_leg_rig";
	rename -uid "AAA7F650-41BD-69E3-1CC7-D79810C88F67";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".jo" -type "double3" -105.04151604551407 -0.82811727676012314 -87.728665065079738 ;
	setAttr ".is" -type "double3" 1.0000000000000493 1.0000000000000639 1.0000000000001132 ;
	setAttr ".bps" -type "matrix" 0.039627599999999999 -0.99911000000000005 0.014453000000000001 0
		 -0.25876199999999999 -0.024232 -0.96563699999999997 0 0.96512600000000004 0.034525899999999998 -0.25949100000000003 0
		 3.6942279999999998 39.053457000000002 -1.939927 1;
	setAttr ".radi" 1.9990000014752152;
	setAttr ".fbxID" 5;
createNode joint -n "IK_drv_leg_lower_L" -p "IK_drv_leg_upper_L";
	rename -uid "C9CEB648-4D45-39CE-FE70-02AC6B4A0CA4";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 17.902939683024798 -7.9866479676480445e-05 9.8645492956350722e-06 ;
	setAttr ".r" -type "double3" 7.4586953782447631e-06 -1.1260965254547634e-06 -7.3656390603380579 ;
	setAttr ".jo" -type "double3" 4.3143917088803488e-05 2.5735337801983909e-05 7.3654787792294654 ;
	setAttr ".bps" -type "matrix" 0.0061273600000000001 -0.99397199999999997 -0.109459 0
		 -0.26170599999999999 0.10405200000000001 -0.95952199999999999 0 0.96512600000000004 0.034525300000000002 -0.25949 0
		 4.403708 21.166449 -1.6811020000000001 1;
	setAttr ".radi" 1.9990000014752152;
	setAttr ".fbxID" 5;
createNode joint -n "IK_drv_ankle_L" -p "IK_drv_leg_lower_L";
	rename -uid "B0938A1E-4827-2CED-3B20-E98616AD7896";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 16.93723191188073 -2.187252799190631e-05 1.7151217599042923e-05 ;
	setAttr ".jo" -type "double3" 179.70408023297637 2.2605343487462295 -67.349934084556978 ;
	setAttr ".bps" -type "matrix" 0.205624 -0.47979699999999997 0.85294400000000004 0
		 0.100157 0.87730900000000001 0.46935700000000002 0 -0.97348999999999997 -0.0110825 0.22844999999999999 0
		 4.5075120000000002 4.3313059999999997 -3.5350169999999999 1;
	setAttr ".radi" 1.1990000014752151;
	setAttr ".fbxID" 5;
createNode orientConstraint -n "IK_drv_ankle_L_orientConstraint1" -p "IK_drv_ankle_L";
	rename -uid "CC24039C-4DD6-7550-E109-E8A45716553F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "locator_L_foot_ankleW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0.37072827975373163 0.25314190678858933 27.053822694373913 ;
	setAttr ".o" -type "double3" 0.70030389986825603 0.042792907885581467 -28.672141172401975 ;
	setAttr ".rsrr" -type "double3" 4.1620539776963991e-16 -1.2424041724466855e-16 -1.5902385156013693e-14 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector10" -p "IK_drv_leg_lower_L";
	rename -uid "59C12B69-463E-20E9-578D-FD9B77B594F1";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "IK_drv_leg_upper_L_parentConstraint1" -p "IK_drv_leg_upper_L";
	rename -uid "094F5B38-4B02-E056-421A-999071E84268";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_hipW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.7055881023413519 0.82297515869144244 3.6942298017446009 ;
	setAttr ".tg[0].tor" -type "double3" -15.008596303687048 -2.2711102424350438 179.171023456596 ;
	setAttr ".lr" -type "double3" 9.2055193690068242e-05 5.7599303887304543e-06 5.9866279924195998e-14 ;
	setAttr ".rst" -type "double3" -2.6541585373962562e-08 -5.7420795229745636e-07 2.2673832367203772e-08 ;
	setAttr ".rsrr" -type "double3" 9.2055193696429337e-05 5.759930391911019e-06 4.7144064073130797e-14 ;
	setAttr -k on ".w0";
createNode transform -n "ac_IK_ankle_L_grp" -p "Left_leg_rig";
	rename -uid "5ECA6461-412D-4C9A-615B-8DBD8994B5D5";
	setAttr ".s" -type "double3" 0.99999999999987577 1 1.0000000000001237 ;
createNode transform -n "ac_IK_ankle_L" -p "ac_IK_ankle_L_grp";
	rename -uid "85C7AA14-4C71-940C-DD54-D28CA21D46FD";
	addAttr -ci true -sn "Ball_lift" -ln "Ball_lift" -min -100 -max 100 -at "double";
	addAttr -ci true -sn "Lift_From_Toe" -ln "Lift_From_Toe" -min -100 -max 100 -at "double";
	addAttr -ci true -sn "toe_sweep" -ln "toe_sweep" -min -100 -max 100 -at "double";
	addAttr -ci true -sn "Lift_From_Heel" -ln "Lift_From_Heel" -nn "Lift From Heel" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -sn "heel_sweep" -ln "heel_sweep" -min -100 -max 100 -at "double";
	addAttr -ci true -sn "walking_poses" -ln "walking_poses" -min -10 -max 20 -at "double";
	addAttr -ci true -sn "tile_inside" -ln "tile_inside" -min -100 -max 100 -at "double";
	addAttr -ci true -sn "tile_outside" -ln "tile_outside" -min -100 -max 100 -at "double";
	addAttr -ci true -sn "Lean_Ball" -ln "Lean_Ball" -min -100 -max 100 -at "double";
	addAttr -ci true -sn "Twist_Visibility" -ln "Twist_Visibility" -min 0 -max 1 -at "long";
	addAttr -ci true -sn "Ball_Visisbility" -ln "Ball_Visisbility" -min 0 -max 1 -at "long";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0.038900375 ;
	setAttr ".t" -type "double3" 0 0 6.5503158452876511e-14 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999989209 0.99999999999988232 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Ball_lift";
	setAttr -k on ".Lift_From_Toe";
	setAttr -k on ".toe_sweep";
	setAttr -k on ".Lift_From_Heel";
	setAttr -k on ".heel_sweep";
	setAttr -k on ".walking_poses";
	setAttr -k on ".tile_inside";
	setAttr -k on ".tile_outside";
	setAttr -k on ".Lean_Ball";
	setAttr -cb on ".Twist_Visibility" 1;
	setAttr -cb on ".Ball_Visisbility" 1;
createNode nurbsCurve -n "ac_IK_ankle_LShape" -p "ac_IK_ankle_L";
	rename -uid "7453CF8A-4D5B-BCF9-E3A6-7F8F071411B8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.7274760720146052 -4.2676136677299361 -3.7489059284964394
		2.2607600848749287 -4.267613667729929 -4.005230064091502
		-4.0035823006161886 -4.2676136677299326 -3.5108674731302232
		-3.9167560674137567 -4.2676136677299326 -0.049866607606430247
		-3.8158737732881223 -4.2676136677299361 3.0351474239619911
		2.2607600848748213 -4.2676136677299397 3.0547465552653046
		8.7501713287032583 -4.2676136677299397 3.4133618938468731
		11.885657148454788 -4.2676136677299397 -0.032447897216852706
		8.7274760720146052 -4.2676136677299361 -3.7489059284964394
		2.2607600848749287 -4.267613667729929 -4.005230064091502
		-4.0035823006161886 -4.2676136677299326 -3.5108674731302232
		;
createNode transform -n "locator_L_foot_outside_grp" -p "ac_IK_ankle_L";
	rename -uid "C0C5CE53-49C5-BC40-538A-DDB77104CAB6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.9194466462931086 -4.0598683688377797 -2.8730942167807587 ;
	setAttr ".s" -type "double3" 1.0000000000000562 1.0000000000000036 0.99999999999994016 ;
createNode transform -n "locator_L_foot_outside" -p "locator_L_foot_outside_grp";
	rename -uid "A9D524C2-4BCE-521E-F830-5A9C1E255D6E";
createNode locator -n "locator_L_foot_outsideShape" -p "locator_L_foot_outside";
	rename -uid "ADE3D27C-4BE2-F3C7-57FB-F0B00707DE9A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.6 2.6 2.6 ;
createNode transform -n "locator_L_foot_inside_grp" -p "locator_L_foot_outside";
	rename -uid "673B5190-448F-4DB2-F271-F699DEB669E8";
	setAttr ".t" -type "double3" 1.6431300764452317e-14 -0.036292231229830163 5.0038925145260951 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999967 ;
createNode transform -n "locator_L_foot_inside" -p "locator_L_foot_inside_grp";
	rename -uid "9DC55727-4DF4-5989-5080-25B4527EBE5F";
createNode locator -n "locator_L_foot_insideShape" -p "locator_L_foot_inside";
	rename -uid "662658BA-43DD-0854-947B-168E1124DB21";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.6 2.6 2.6 ;
createNode transform -n "locator_L_foot_heel_lift_grp1" -p "locator_L_foot_inside";
	rename -uid "7BC52260-4013-2B0A-E714-858100FEF9F9";
	setAttr ".t" -type "double3" -9.2454879905075487 -0.018537228215762758 -2.1275650386066265 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "locator_L_foot_heel_lift" -p "locator_L_foot_heel_lift_grp1";
	rename -uid "DE9DB5DE-4081-D35A-E8B6-E3B837CFBBC1";
	setAttr ".t" -type "double3" 0 1.6653345369377348e-16 7.4211470302287807e-15 ;
createNode locator -n "locator_L_foot_heel_liftShape" -p "locator_L_foot_heel_lift";
	rename -uid "5267549B-4224-FFED-0EDB-B4839E0A60F1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.6 2.6 2.6 ;
createNode transform -n "locator_L_foot_heel_grp" -p "locator_L_foot_heel_lift";
	rename -uid "20EE7295-4385-F1A1-9981-CD8DF3B9202E";
	setAttr ".t" -type "double3" 0.34284014735484725 -0.08083086233759984 -0.035865511926026272 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999967 ;
createNode transform -n "locator_L_foot_heel" -p "locator_L_foot_heel_grp";
	rename -uid "3FE65585-4871-908D-BFEC-729002AB1846";
	setAttr ".t" -type "double3" 1.1744447890248202 1.6653345369377348e-16 7.4211470302287807e-15 ;
createNode locator -n "locator_L_foot_heelShape" -p "locator_L_foot_heel";
	rename -uid "73783360-4ED7-E734-5246-35913AB1A1CB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.6 2.6 2.6 ;
createNode transform -n "locator_L_foot_toe_lift_grp1" -p "locator_L_foot_heel";
	rename -uid "1BF344D2-481B-E8BD-3E9C-7AB828FECC79";
	setAttr ".t" -type "double3" 11.4130298709751 0.38840179063275398 -0.0058518845082351067 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "locator_L_foot_toe_lift" -p "locator_L_foot_toe_lift_grp1";
	rename -uid "95EBAD6A-4B52-3490-0C06-028A07BDAEC8";
createNode locator -n "locator_L_foot_toe_liftShape" -p "locator_L_foot_toe_lift";
	rename -uid "412DE11D-44B8-390A-A76E-7693EA770B08";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.6 2.6 2.6 ;
createNode transform -n "locator_L_foot_toe_grp" -p "locator_L_foot_toe_lift";
	rename -uid "A7121CE0-46F8-8CED-2949-EBAE4601BBEB";
	setAttr ".t" -type "double3" -2.3963164391128693 -0.38840179063275398 0.0058518845082851101 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "locator_L_foot_toe" -p "locator_L_foot_toe_grp";
	rename -uid "CFF52858-43DE-F57C-B310-89BC231732ED";
createNode locator -n "locator_L_foot_toeShape" -p "locator_L_foot_toe";
	rename -uid "78E8E004-48D8-5995-D3F8-B0B69B4EFFC3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.6 2.6 2.6 ;
createNode transform -n "locator_L_foot_ball_grp" -p "locator_L_foot_toe";
	rename -uid "9C1BA3A0-49DD-24A3-F258-309CA750D604";
	setAttr ".t" -type "double3" -1.654596954454683 1.158617840994576 0.027873983833623939 ;
createNode transform -n "locator_L_foot_ball" -p "locator_L_foot_ball_grp";
	rename -uid "9666B75C-4DEE-E05F-25DE-3799C6D540EE";
createNode locator -n "locator_L_foot_ballShape" -p "locator_L_foot_ball";
	rename -uid "81884982-4123-7998-7784-C79C47C4BEEB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.6 2.6 2.6 ;
createNode transform -n "locator_L_foot_ankle_grp" -p "locator_L_foot_ball";
	rename -uid "014C355C-476F-0429-A15C-EFA89C55C0B0";
	setAttr ".t" -type "double3" -5.5533600695724603 3.0369108496263801 0.0047582689538012701 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "locator_L_foot_ankle" -p "locator_L_foot_ankle_grp";
	rename -uid "B7A44DB8-42C9-A25D-D45F-018975B452C4";
createNode locator -n "locator_L_foot_ankleShape" -p "locator_L_foot_ankle";
	rename -uid "49D33F4C-4537-4714-337E-429F252330F3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.6 2.6 2.6 ;
createNode ikHandle -n "ikHandle_left_leg" -p "locator_L_foot_ankle";
	rename -uid "7897B833-4322-098A-8BC2-48BE39FFA904";
	setAttr ".t" -type "double3" -0.00013556081700683009 2.4672251583979232e-06 -3.2547596159560044e-05 ;
	setAttr ".r" -type "double3" 0 76.494900637462294 0 ;
	setAttr ".s" -type "double3" 1.0000000000000555 1.0000000000001044 1.0000000000000686 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle_left_leg_poleVectorConstraint1" -p "ikHandle_left_leg";
	rename -uid "6FA16B99-462E-BE87-787C-189B74AA9E31";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_IK_Leg_pole_L2W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 20.299586008965395 -19.967970025403588 -1.237215027997129 ;
	setAttr -k on ".w0";
createNode transform -n "ac_ball_L_IK_grp1" -p "locator_L_foot_toe";
	rename -uid "004A3DFF-4585-90A9-CBDC-349B561B9C09";
	setAttr ".t" -type "double3" -1.6545969544613679 1.1586178409817489 0.027873984224337178 ;
	setAttr ".r" -type "double3" 0.63492672013101359 -0.29844842886000594 -2.6626151736833078e-05 ;
	setAttr ".s" -type "double3" 1.0000000000000087 1.0000000000001046 1.0000000000001148 ;
createNode transform -n "ac_ball_L_gloval_grp" -p "ac_IK_ankle_L";
	rename -uid "E98F32B6-4ECA-EA1D-447A-1890EA91DF64";
	setAttr ".s" -type "double3" 1.0000000000000695 1.0000000000001024 1.0000000000000544 ;
createNode transform -n "ac_ball_L" -p "ac_ball_L_gloval_grp";
	rename -uid "2D4C98AA-49A5-46A2-FB58-A081AAEFF995";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.15580034 0 1 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_ball_LShape" -p "ac_ball_L";
	rename -uid "0957CA6C-4109-A13A-D817-40AFC646FC86";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122216 -1.6126841995971475 
		-1.5095403920544408 -1.7843797525982196e-16 -1.1404452840762813 -2.1335125197574394 
		0.78361162489119396 2.6328566122482426 -2.2417772156836424 1.1081941875543875 4.5350010038793371 
		-1.9640795939182688e-15 0.78361162489124869 2.6206729865161353 2.2326572825752744 
		-4.1904747270057404e-16 -1.275023769944164 2.127235682135316 -0.78361162489122205 
		-1.6022399185227694 1.8333891302884733 -1.108194187554387 -1.483607108636396 -1.0954892461052779e-15 
		0 0 0 0 0 0 0 0 0;
createNode orientConstraint -n "ac_ball_L_gloval_grp_orientConstraint1" -p "ac_ball_L_gloval_grp";
	rename -uid "013D8852-49AD-89BB-6CA2-38BE33BBBC9A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_ball_L_IK_grp1W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 1.6347896022477062 -0.31585404312663695 0.99461319812499926 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "ac_ball_L_gloval_grp_pointConstraint1" -p "ac_ball_L_gloval_grp";
	rename -uid "E4A0A099-47EA-FF80-2B24-7D834281EF41";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "result_drv_ball_LW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "ac_IK_ankle_L_grp_parentConstraint1" -p "ac_IK_ankle_L_grp";
	rename -uid "71FF9AE4-4640-F7B9-E075-15961EE18309";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.5075180703926918 4.3313058892983065 -3.5348820432686141 ;
	setAttr ".tg[0].tor" -type "double3" 0 -76.494900637462507 0 ;
	setAttr ".lr" -type "double3" 0 -76.494900637462507 0 ;
	setAttr ".rst" -type "double3" 0.81328965967186662 -34.722149463484897 -1.5949548229240706 ;
	setAttr ".rsrr" -type "double3" 0 -76.494900637462507 0 ;
	setAttr -k on ".w0";
createNode transform -n "ac_IK_Leg_pole_L_grp" -p "Left_leg_rig";
	rename -uid "278C654F-4A5C-CCAA-6B99-F3AC3BAE170C";
	setAttr ".s" -type "double3" 0.99999999999998501 0.99999999999995604 1.0000000000000591 ;
createNode transform -n "ac_IK_Leg_pole_L" -p "ac_IK_Leg_pole_L_grp";
	rename -uid "40534CC3-48A5-5BE2-2AEC-DBA29033BB45";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 30;
	setAttr ".ovrgb" -type "float3" 0.14309978 0 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 0 5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 0 5.3290705182007514e-15 ;
createNode nurbsCurve -n "ac_IK_Leg_pole_LShape" -p "ac_IK_Leg_pole_L";
	rename -uid "F38F96D7-4BCE-B8C4-33DE-F98B324838A5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		0.47677440965076617 -0.61708378629729299 -0.4767856430027671
		0.47676317629874659 -0.29695843396098126 -1.4303456956563065
		0.95354320262551362 -0.23898581930861024 -1.4303513123323146
		-2.8083380041064853e-05 2.6835205836836796e-15 -2.3839001316338368
		-0.95357690268155848 -0.23898637102450632 -1.4303288456282819
		-0.47679687635478962 -0.29695916958217727 -1.4303344623042902
		-0.47678564300276999 -0.6170837862972931 -0.47677440965075063
		-1.4303456956563094 -0.29695813971250112 -0.47676317629873671
		-1.4303513123323177 -0.23898552506013024 -0.95354320262550551
		-2.3839001316338408 7.0947980470250268e-15 2.8083380045600606e-05
		-1.4303288456282848 -0.23898622390026911 0.95357690268156736
		-1.4303344623042926 -0.29695843396098059 0.47679687635479967
		-0.47677440965075363 -0.61708378629729266 0.47678564300278575
		-0.47676317629874043 -0.29695916958217977 1.4303456956563199
		-0.95354320262550962 -0.23898552506012938 1.4303513123323286
		2.8083380040734917e-05 7.9746186393129507e-15 2.3839001316338453
		0.9535769026815627 -0.23898464231469352 1.4303288456282954
		0.47679687635479573 -0.29695843396098026 1.4303344623043037
		0.47678564300278259 -0.61708378629729255 0.47677440965076928
		1.4303456956563159 -0.29695843396098059 0.47676317629875037
		1.4303513123323239 -0.23898537793588967 0.95354320262551784
		2.3839001316338408 7.1160548682319648e-15 -2.8083380036718805e-05
		1.4303288456282914 -0.23898552506013024 -0.95357690268155482
		1.4303344623042995 -0.29695872820946073 -0.47679687635478607
		0.47677440965076617 -0.61708378629729299 -0.4767856430027671
		;
createNode transform -n "L_pole_vector_line_vector" -p "ac_IK_Leg_pole_L";
	rename -uid "06D72CE4-4390-F3AD-356C-E48682D775D0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.0524369282479711e-07 7.3967979119515803e-07 -0.99999935582039701 ;
	setAttr ".rp" -type "double3" -2.2986892389553759e-07 -1.5707642830875557e-07 0.99999974095030897 ;
	setAttr ".sp" -type "double3" -2.2986892389553759e-07 -1.5707642830875557e-07 0.99999974095030897 ;
createNode clusterHandle -n "L_pole_vector_line_vectorShape" -p "L_pole_vector_line_vector";
	rename -uid "29BC20C7-45CE-06F1-E718-D8872A59D7F2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 0 1 ;
createNode parentConstraint -n "ac_IK_Leg_pole_L_grp_parentConstraint1" -p "ac_IK_Leg_pole_L_grp";
	rename -uid "64692F02-4810-ED77-91FC-909E751749E1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 3.5527136788005009e-15 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 9.6378343336130374 19.085484753173816 17.509428613734396 ;
	setAttr ".tg[0].tor" -type "double3" -105.13295241811166 6.2839287742765357 -89.646791954418944 ;
	setAttr ".lr" -type "double3" -105.13295241811166 6.2839287742765348 -89.646791954418944 ;
	setAttr ".rst" -type "double3" 5.9436059228922122 -19.967970599609387 19.44935583407894 ;
	setAttr ".rsrr" -type "double3" -105.13295241811166 6.2839287742765348 -89.646791954418944 ;
	setAttr -k on ".w0";
createNode joint -n "result_drv_leg_upper_L1" -p "Left_leg_rig";
	rename -uid "324921FE-4C6B-4564-D859-CDAF7732F42F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".jo" -type "double3" -105.04151604551407 -0.82811727676012314 -87.728665065079738 ;
	setAttr ".is" -type "double3" 1.0000000000000493 1.0000000000000639 1.0000000000001132 ;
	setAttr ".bps" -type "matrix" 0.039627599999999999 -0.99911000000000005 0.014453000000000001 0
		 -0.25876199999999999 -0.024232 -0.96563699999999997 0 0.96512600000000004 0.034525899999999998 -0.25949100000000003 0
		 3.6942279999999998 39.053457000000002 -1.939927 1;
	setAttr ".radi" 0.99900000147521517;
	setAttr ".fbxID" 5;
createNode joint -n "result_drv_leg_lower_L" -p "result_drv_leg_upper_L1";
	rename -uid "5C8B1B5E-46D5-B73B-1285-C9A23E297358";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 4.3143917088803488e-05 2.5735337801983909e-05 7.3654787792294654 ;
	setAttr ".bps" -type "matrix" 0.0061273600000000001 -0.99397199999999997 -0.109459 0
		 -0.26170599999999999 0.10405200000000001 -0.95952199999999999 0 0.96512600000000004 0.034525300000000002 -0.25949 0
		 4.403708 21.166449 -1.6811020000000001 1;
	setAttr ".radi" 0.99900000147521517;
	setAttr ".fbxID" 5;
createNode joint -n "result_drv_ankle_L" -p "result_drv_leg_lower_L";
	rename -uid "EAD62007-475F-B630-730F-83A864E0E1E7";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 179.70408023297637 2.2605343487462295 -67.349934084556978 ;
	setAttr ".bps" -type "matrix" 0.205624 -0.47979699999999997 0.85294400000000004 0
		 0.100157 0.87730900000000001 0.46935700000000002 0 -0.97348999999999997 -0.0110825 0.22844999999999999 0
		 4.5075120000000002 4.3313059999999997 -3.5350169999999999 1;
	setAttr ".radi" 0.19900000147521513;
	setAttr ".fbxID" 5;
createNode joint -n "result_drv_ball_L" -p "result_drv_ankle_L";
	rename -uid "530C8F7A-4918-9D38-4501-50BA62C9F056";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 6.3296270460648785 2.4605976030489529e-05 1.4317000402996882e-06 ;
	setAttr ".jo" -type "double3" -3.3814391704546211e-05 2.3445364933478794e-05 28.674029686174784 ;
	setAttr ".bps" -type "matrix" 0.228466 -2.91532e-06 0.97355199999999997 0 -0.0107879 0.99993799999999999 0.0025346100000000001 0
		 -0.97348999999999997 -0.0110816 0.22845099999999999 0 5.8090339999999996 1.294392 1.863815 1;
	setAttr ".radi" 0.59900000147521504;
	setAttr ".fbxID" 5;
createNode joint -n "result_drv_lfoot_lock" -p "result_drv_ball_L";
	rename -uid "91476A64-4302-B4CC-2B25-ECAC727482C0";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.3433065971830729e-08 -2.3283177608135475e-09 -2.1047848619559772e-07 ;
	setAttr ".jo" -type "double3" 3.7732793100353827e-05 -2.4739766987590439e-06 -6.4719425641118788e-05 ;
	setAttr ".bps" -type "matrix" 0.228466 -4.0823799999999995e-06 0.97355199999999997 0
		 -0.010788300000000001 0.99993900000000002 0.0025358999999999998 0 -0.97348999999999997 -0.0110823 0.22845099999999999 0
		 5.8090339999999996 1.294392 1.8638140000000001 1;
	setAttr ".radi" 0.59900000147521504;
	setAttr ".fbxID" 5;
createNode joint -n "result_drv_lfoot_lock_end" -p "result_drv_lfoot_lock";
	rename -uid "421C720A-45F1-E57A-DBF1-44AEC3208ED3";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 1.5078773341059559e-08 0.31842163643489108 1.4276443138783179e-08 ;
	setAttr ".radi" 0.59899999557435502;
	setAttr ".fbxID" 5;
createNode orientConstraint -n "result_drv_ball_L_orientConstraint1" -p "result_drv_ball_L";
	rename -uid "EBF58D22-4063-06C2-747E-3B8229BBD30F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_ball_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -0.0051119279554583024 -0.011126073658745834 -0.99992454209781212 ;
	setAttr ".rsrr" -type "double3" -5.3108556897469364e-14 1.8906450804332935e-14 6.361104075981892e-15 ;
	setAttr -k on ".w0";
createNode transform -n "L_pole_vector_line_lower" -p "result_drv_leg_lower_L";
	rename -uid "B0BB4699-4BEE-5727-9C8E-5A8DA4479538";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.2761658392009849e-07 3.7904820171519304e-08 1.0000001337510165 ;
	setAttr ".rp" -type "double3" 2.1559395690928795e-07 -1.2828709516909953e-07 -0.9999999897458407 ;
	setAttr ".sp" -type "double3" 2.1559395690928795e-07 -1.2828709516909953e-07 -0.9999999897458407 ;
createNode clusterHandle -n "L_pole_vector_line_lowerShape" -p "L_pole_vector_line_lower";
	rename -uid "A661C50D-43D4-6448-FEC8-22A0D1560631";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 0 -1 ;
createNode transform -n "Left_leg_TWISTS" -p "Left_leg_rig";
	rename -uid "99E2338A-457E-AF85-6882-0893E2CFF06E";
	setAttr ".s" -type "double3" 0.99999999999998512 0.99999999999995515 1.0000000000000595 ;
createNode parentConstraint -n "Left_leg_TWISTS_parentConstraint1" -p "Left_leg_TWISTS";
	rename -uid "FFEE89B5-4392-8844-6C76-CC97C09E5258";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "result_drv_leg_upper_L1W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.7177817325282376e-07 3.8510433064686822e-08 
		5.0199622236846153e-08 ;
	setAttr ".tg[0].tor" -type "double3" 7.9195811568441545e-13 1.2324649390671124e-14 
		-1.4988363936396815e-13 ;
	setAttr ".lr" -type "double3" -105.17248164241866 2.764182185953767 -88.819026984387691 ;
	setAttr ".rst" -type "double3" 1.7763568394002505e-15 0 -1.1102230246251565e-15 ;
	setAttr ".rsrr" -type "double3" -105.17248164241866 2.764182185953767 -88.819026984387691 ;
	setAttr -k on ".w0";
createNode transform -n "leg_upper_L_TWIST_grp" -p "Left_leg_TWISTS";
	rename -uid "13B6F957-49C2-957C-80B1-FA9AFF0CAB18";
	setAttr ".t" -type "double3" 5.9548450835073155 -0.39057148531380026 0.011744665421693057 ;
	setAttr ".r" -type "double3" 0.11623034986333981 -0.11274267223472119 -3.7524049960497772 ;
	setAttr ".s" -type "double3" 1.0000000000000147 1.0000000000000444 0.99999999999994016 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738756175e-16 0 ;
	setAttr ".rpt" -type "double3" -2.1796197033661778e-17 7.1463332110264223e-19 -6.7565852152055616e-19 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -1.4791141972894627e-29 0 ;
createNode transform -n "ac_leg_upper_L_TWIST" -p "leg_upper_L_TWIST_grp";
	rename -uid "5A2EE932-4BFD-185F-0500-1FB85FF967C6";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 4.6016558066241942e-05 1.8791414898362835e-05 -1.6542616146253408e-05 ;
	setAttr ".sp" -type "double3" 4.6016558066241942e-05 1.8791414898362835e-05 -1.6542616146253408e-05 ;
createNode nurbsCurve -n "ac_leg_upper_L_TWISTShape" -p "ac_leg_upper_L_TWIST";
	rename -uid "5E1793F2-4D50-D67F-AD38-D5986DED6991";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		6.7974398976123281e-05 2.3183600493919073e-05 7.8569369144499337
		6.3574450849084477e-05 -7.8569346656622399 -1.2150479628915588e-05
		2.4058717184147504e-05 1.4399229317558747e-05 -7.8569699996822298
		2.8458665311186308e-05 7.8569722484920526 -2.0934752667144027e-05
		6.7974398976123281e-05 2.3183600493919073e-05 7.8569369144499337
		;
createNode transform -n "leg_upper_L_TWIST1_grp" -p "Left_leg_TWISTS";
	rename -uid "6E7888DB-46FC-F179-4427-98AC57E36618";
	setAttr ".t" -type "double3" 11.909683760924857 -0.78114443130957256 0.023490078830399774 ;
	setAttr ".r" -type "double3" 0.11627424424193279 -0.11269893771234873 -3.7524897781116184 ;
	setAttr ".s" -type "double3" 1.0000000000000149 1.0000000000000444 0.99999999999994049 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738756175e-16 0 ;
	setAttr ".rpt" -type "double3" -2.1796688803909875e-17 7.1466609138632725e-19 -6.7591368455025288e-19 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -1.4791141972894627e-29 0 ;
createNode transform -n "ac_leg_upper_L_TWIST1" -p "leg_upper_L_TWIST1_grp";
	rename -uid "B50B1482-4D9F-4087-3757-E78D188812A6";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 4.7091347759931068e-05 3.6641795668576616e-05 -3.5288665130472907e-05 ;
	setAttr ".sp" -type "double3" 4.7091347759931068e-05 3.6641795668576616e-05 -3.5288665130472907e-05 ;
createNode nurbsCurve -n "ac_leg_upper_L_TWIST1Shape" -p "ac_leg_upper_L_TWIST1";
	rename -uid "23615D98-4798-C24B-005F-368EA8C037C8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		6.1898211415347735e-05 4.8867438325716359e-05 7.2778232537134429
		7.4135606229960851e-05 -7.2778219005477141 -2.3063077501565444e-05
		3.2284484130253252e-05 2.4416153024246311e-05 -7.2778938310437038
		2.0047089315640133e-05 7.2778951841390658 -4.7514252759380449e-05
		6.1898211415347735e-05 4.8867438325716359e-05 7.2778232537134429
		;
createNode transform -n "L_pole_vector_line" -p "Left_leg_rig";
	rename -uid "EA00AF76-40FE-FEA0-D934-EE9C97A0415A";
	setAttr ".t" -type "double3" -3.6942284107208252 -39.053455352783203 1.9399272203445435 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_pole_vector_lineShape" -p "L_pole_vector_line";
	rename -uid "7AC3E7E9-4B7B-EFB0-54B7-2AA46C82DFFD";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "L_pole_vector_lineShapeOrig" -p "L_pole_vector_line";
	rename -uid "2FFBA190-416F-186D-14B9-BC97ABBAA9F4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 1
		0 0 -1
		;
createNode transform -n "Right_leg_rig" -p "setup";
	rename -uid "F20E9636-4883-1D0F-4FF8-65B1A2F3582E";
createNode joint -n "Result_leg_upper_R" -p "Right_leg_rig";
	rename -uid "2A565684-484C-274F-006D-65AF9C5E4B82";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".jo" -type "double3" 15.04155403513434 -0.82842243036582908 -92.271671184129033 ;
	setAttr ".is" -type "double3" 1.0000000000000493 1.0000000000000639 1.0000000000001132 ;
	setAttr ".bps" -type "matrix" -0.039629699999999997 -0.99911000000000005 0.014457299999999999 0
		 0.96512699999999996 -0.034526899999999999 0.259492 0 -0.25876199999999999 0.0242367 0.96563699999999997 0
		 -3.694232 39.053404 -1.9399299999999999 1;
	setAttr ".radi" 0.89900000147521508;
	setAttr ".fbxID" 5;
createNode joint -n "Result_leg_lower_R" -p "Result_leg_upper_R";
	rename -uid "EFE3151A-46BB-C1FA-D443-8994B7087D60";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 2.6565325988105751e-06 7.3656751471681048 -2.3894150094741889e-23 ;
	setAttr ".bps" -type "matrix" -0.0061290299999999997 -0.993973 -0.109458 0 0.96512699999999996 -0.034526899999999999 0.259492 0
		 -0.26170700000000002 -0.104051 0.95952199999999999 0 -4.4037220000000001 21.166411 -1.681106 1;
	setAttr ".radi" 0.89900000147521508;
	setAttr ".fbxID" 5;
createNode joint -n "Result_ankle_R" -p "Result_leg_lower_R";
	rename -uid "15D02E7E-4B4F-68B1-0F8D-D19D42643921";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" 95.104079927823634 112.75626670561471 5.8528317884662391 ;
	setAttr ".bps" -type "matrix" 0.205625 0.47978900000000002 -0.85294800000000004 0
		 0.100156 -0.87731300000000001 -0.46934999999999999 0 -0.97349200000000002 0.011082099999999999 -0.22845099999999999 0
		 -4.5075320000000003 4.3313050000000004 -3.535018 1;
	setAttr ".radi" 0.099000001475215038;
	setAttr ".fbxID" 5;
createNode joint -n "Result_ball_R" -p "Result_ankle_R";
	rename -uid "670000CA-4F95-AD57-458B-00A8E3FB22FB";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -6.3296352165914076 1.9505005975251066e-05 5.6232371514752799e-06 ;
	setAttr ".jo" -type "double3" -2.1095109431006781e-05 0.0048159820585265281 28.673390267807402 ;
	setAttr ".bps" -type "matrix" 0.228547 2.2274699999999999e-06 -0.97353299999999998 0
		 -0.0107881 -0.99993799999999999 -0.0025349000000000001 0 -0.97347300000000003 0.0110819 -0.22853299999999999 0
		 -5.8090679999999999 1.2943979999999999 1.863823 1;
	setAttr ".radi" -0.50099999852478505;
	setAttr ".fbxID" 5;
createNode joint -n "Result_rfoot_lock" -p "Result_ball_R";
	rename -uid "7D577A21-475C-489D-B510-41BFC3B052E8";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -7.2427599917546104e-08 3.4924582981155083e-07 -1.2945376681727794e-07 ;
	setAttr ".jo" -type "double3" -7.1168873205545679e-06 -0.00078605002152854798 -1.7084937441541915e-05 ;
	setAttr ".bps" -type "matrix" 0.22853399999999999 2.6556099999999999e-06 -0.97353599999999996 0
		 -0.0107879 -0.99993799999999999 -0.00253514 0 -0.97347600000000001 0.011081799999999999 -0.22852 0
		 -5.8090679999999999 1.294397 1.863823 1;
	setAttr ".radi" -0.50099999852478505;
	setAttr ".fbxID" 5;
createNode joint -n "Result_rfoot_lock_end" -p "Result_rfoot_lock";
	rename -uid "A949516D-4E32-918C-D745-04A1CC5E2AFD";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -1.3909722262894775e-08 0.31842157808207583 3.0444704535170786e-09 ;
	setAttr ".radi" -0.50100000442564507;
	setAttr ".fbxID" 5;
createNode orientConstraint -n "Result_ball_R_orientConstraint1" -p "Result_ball_R";
	rename -uid "212BDD3D-4775-7AB0-8F9F-719208A14DD4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_ball_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 179.36484716150682 1.4449324046771729e-13 9.5718867356985147e-14 ;
	setAttr ".o" -type "double3" 180.63515283847482 1.1034765745125397e-32 -360 ;
	setAttr ".rsrr" -type "double3" 180.63492670256971 5.5387322469031444e-20 -180 ;
	setAttr -k on ".w0";
createNode transform -n "R_pole_vector_line_lower" -p "Result_leg_lower_R";
	rename -uid "89E97120-4114-C301-622A-048B9FDDA5C6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.043286565605143323 -0.26147706126778125 -0.96423851370034042 ;
	setAttr ".s" -type "double3" 1.0000000000000495 1.0000000000000642 1.0000000000001132 ;
	setAttr ".rp" -type "double3" 0 0 1.0000000000001132 ;
	setAttr ".rpt" -type "double3" -0.043286922080132087 0.26147692583305931 -0.035761409383689234 ;
	setAttr ".sp" -type "double3" 0 0 1 ;
	setAttr ".spt" -type "double3" 0 0 1.1324274851177879e-13 ;
createNode clusterHandle -n "R_pole_vector_line_lowerShape" -p "R_pole_vector_line_lower";
	rename -uid "ABA79274-40ED-9ECA-9FA4-A9B0BC798AA3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 0 1 ;
createNode joint -n "IK_leg_upper_R" -p "Right_leg_rig";
	rename -uid "95465D88-4792-C660-DDF6-4FA5A77C69D4";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".jo" -type "double3" 15.04155403513434 -0.82842243036582908 -92.271671184129033 ;
	setAttr ".is" -type "double3" 1.0000000000000493 1.0000000000000639 1.0000000000001132 ;
	setAttr ".bps" -type "matrix" -0.039629699999999997 -0.99911000000000005 0.014457299999999999 0
		 0.96512699999999996 -0.034526899999999999 0.259492 0 -0.25876199999999999 0.0242367 0.96563699999999997 0
		 -3.694232 39.053404 -1.9399299999999999 1;
	setAttr ".radi" 1.9990000014752152;
	setAttr ".fbxID" 5;
createNode joint -n "IK_leg_lower_R" -p "IK_leg_upper_R";
	rename -uid "1DC1A759-45EF-6D95-EF61-92944AD83F72";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 17.902932053630703 -3.159044653422427e-06 -3.0547378517611912e-06 ;
	setAttr ".r" -type "double3" -7.1930280939606865e-07 -7.3656391874851961 -4.062337022569893e-06 ;
	setAttr ".jo" -type "double3" 2.6565325988105751e-06 7.3656751471681048 -2.3894150094741889e-23 ;
	setAttr ".bps" -type "matrix" -0.0061290299999999997 -0.993973 -0.109458 0 0.96512699999999996 -0.034526899999999999 0.259492 0
		 -0.26170700000000002 -0.104051 0.95952199999999999 0 -4.4037220000000001 21.166411 -1.681106 1;
	setAttr ".radi" 1.9990000014752152;
	setAttr ".fbxID" 5;
createNode joint -n "IK_ankle_R" -p "IK_leg_lower_R";
	rename -uid "17D93299-4095-2C46-2913-76903C5F135F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 16.937189999987353 -1.6540281286836489e-06 1.4901158564839534e-06 ;
	setAttr ".jo" -type "double3" 95.104079927823634 112.75626670561471 5.8528317884662391 ;
	setAttr ".bps" -type "matrix" 0.205625 0.47978900000000002 -0.85294800000000004 0
		 0.100156 -0.87731300000000001 -0.46934999999999999 0 -0.97349200000000002 0.011082099999999999 -0.22845099999999999 0
		 -4.5075320000000003 4.3313050000000004 -3.535018 1;
	setAttr ".radi" 1.1990000014752151;
	setAttr ".fbxID" 5;
createNode orientConstraint -n "IK_ankle_R_orientConstraint1" -p "IK_ankle_R";
	rename -uid "6E531798-4EF3-F783-F9DB-D9AF9131EC34";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "locator_foot_ankle_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -179.64952764697068 0.27531231092495251 23.761073486562463 ;
	setAttr ".o" -type "double3" -179.29924744174451 -0.042410851474291085 28.671550424827409 ;
	setAttr ".rsrr" -type "double3" -9.2124269386921785e-15 -9.9392333795735934e-17 
		-1.2722218725854067e-14 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector11" -p "IK_leg_lower_R";
	rename -uid "137463AB-44E5-E8F0-CF63-CE849692B104";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "IK_leg_upper_R_parentConstraint1" -p "IK_leg_upper_R";
	rename -uid "2AE6A6E4-489E-B5AC-FEF3-14885A29A5E4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_hipW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.7056362628943447 0.82297468185428313 -3.6942303575571591 ;
	setAttr ".tg[0].tor" -type "double3" 105.00828900088513 2.2713920253693125 179.17071175798273 ;
	setAttr ".lr" -type "double3" -0.00038641901972303163 5.1548042695952204e-14 2.4180164122547996e-05 ;
	setAttr ".rst" -type "double3" -3.6942317751376392 39.053408937391382 -1.9399298840066708 ;
	setAttr ".rsrr" -type "double3" -0.00038641901971985107 4.2006447694815828e-14 2.4180164143221631e-05 ;
	setAttr -k on ".w0";
createNode transform -n "ac_IK_ankle_R_grp" -p "Right_leg_rig";
	rename -uid "059E2116-40FB-C832-DFB9-EB97FFB477B5";
	setAttr ".s" -type "double3" 0.99999999999989042 0.9999999999999889 1.0000000000001199 ;
createNode parentConstraint -n "ac_IK_ankle_R_grp_parentConstraint1" -p "ac_IK_ankle_R_grp";
	rename -uid "D4B8D216-4BBC-6925-A85C-9DB31433C05A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.5076675424763657 4.3313136794109779 -3.5349858784814177 ;
	setAttr ".tg[0].tor" -type "double3" 0 76.494615750698998 0 ;
	setAttr ".lr" -type "double3" 0 76.494615750698998 0 ;
	setAttr ".rst" -type "double3" -4.5076675424763657 4.3313136794109779 -3.5349858784814177 ;
	setAttr ".rsrr" -type "double3" 0 76.494615750698998 0 ;
	setAttr -k on ".w0";
createNode transform -n "ac_IK_drv_ankle_R_fixer" -p "ac_IK_ankle_R_grp";
	rename -uid "34D994D6-4A01-9992-9430-F787B6A7070F";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999989253 1.0000000000000111 1.000000000000097 ;
createNode transform -n "ac_IK_drv_ankle_R" -p "ac_IK_drv_ankle_R_fixer";
	rename -uid "EFB54C9B-4C43-01E9-7C66-BB86677CFFFC";
	addAttr -ci true -sn "Ball_lift" -ln "Ball_lift" -min -100 -max 100 -at "double";
	addAttr -ci true -sn "toe_lift" -ln "toe_lift" -nn "Lift From Toe" -min -100 -max 
		100 -at "double";
	addAttr -ci true -sn "toe_sweep" -ln "toe_sweep" -min -100 -max 100 -at "double";
	addAttr -ci true -sn "heel_sweep" -ln "heel_sweep" -nn "Heel Sweep" -min -100 -max 
		100 -at "double";
	addAttr -ci true -sn "lift_from_heel" -ln "lift_from_heel" -nn "Lift From Heel" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -sn "walking_poses" -ln "walking_poses" -min -10 -max 20 -at "double";
	addAttr -ci true -sn "tile_inside" -ln "tile_inside" -min -100 -max 100 -at "double";
	addAttr -ci true -sn "tile_outside" -ln "tile_outside" -min -100 -max 100 -at "double";
	addAttr -ci true -sn "Lean_Ball" -ln "Lean_Ball" -min -100 -max 100 -at "double";
	addAttr -ci true -sn "Twist_Visibility" -ln "Twist_Visibility" -min 0 -max 1 -at "long";
	addAttr -ci true -sn "Ball_Visibility" -ln "Ball_Visibility" -min 0 -max 1 -at "long";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0.038900375 ;
	setAttr ".t" -type "double3" 0 0 1.0710407829931343e-15 ;
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 6.6056736248043535e-05 -7.7901126669388532e-06 -0.00016958821542711888 ;
	setAttr ".sp" -type "double3" 6.6056736248043535e-05 -7.7901126669388532e-06 -0.00016958821542711888 ;
	setAttr -k on ".Ball_lift";
	setAttr -k on ".toe_lift";
	setAttr -k on ".toe_sweep";
	setAttr -k on ".heel_sweep";
	setAttr -k on ".lift_from_heel";
	setAttr -k on ".walking_poses";
	setAttr -k on ".tile_inside";
	setAttr -k on ".tile_outside";
	setAttr -k on ".Lean_Ball";
	setAttr -cb on ".Twist_Visibility" 1;
	setAttr -cb on ".Ball_Visibility" 1;
createNode nurbsCurve -n "ac_IK_drv_ankle_RShape" -p "ac_IK_drv_ankle_R";
	rename -uid "153C7A3D-415F-FBA9-5FA3-11911F1276CF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.7275607689987105 -4.2676214578421376 3.7486929453724667
		2.2608460564365482 -4.2676214578422522 4.0050492348472568
		-4.0034987870531067 -4.2676214578423721 3.51071779153069
		-3.9166897626818398 -4.267621457842365 0.049716494331968154
		-3.8158228079012892 -4.2676214578423606 -3.0352980388058239
		2.2608109527358509 -4.2676214578422513 -3.0549273844207914
		8.7502204133729435 -4.2676214578421288 -3.4135749897264298
		11.885723366382749 -4.2676214578420764 0.032219210993698975
		8.7275607689987105 -4.2676214578421376 3.7486929453724667
		2.2608460564365482 -4.2676214578422522 4.0050492348472568
		-4.0034987870531067 -4.2676214578423721 3.51071779153069
		;
createNode transform -n "locator_foot_outside_R_grp5" -p "ac_IK_drv_ankle_R";
	rename -uid "0B0DA76A-4402-F523-E677-78BA1D096FC1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.9195268337905471 -4.0598761536617696 2.8728947847887394 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999944 ;
createNode transform -n "locator_foot_outside_R" -p "locator_foot_outside_R_grp5";
	rename -uid "F07B677D-4C58-68D3-D870-CFA8FB7B5FE4";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 8.8817841970012523e-16 0 ;
createNode locator -n "locator_foot_outside_RShape" -p "locator_foot_outside_R";
	rename -uid "4D0C2AB4-4C81-9AFB-27AA-53B5BFB2C53E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 1.3 1.3 1.3 ;
createNode transform -n "locator_foot_inside_R_grp4" -p "locator_foot_outside_R";
	rename -uid "063B8A71-485B-A1FD-CE87-34ACD2F110C0";
	setAttr ".t" -type "double3" 2.9235315814890583e-05 -0.031787174615379804 5.1665558400165246 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "locator_foot_inside_R" -p "locator_foot_inside_R_grp4";
	rename -uid "F4E04D1E-4D6E-6233-C836-2792D0FACB67";
	setAttr ".t" -type "double3" -4.3765128276973542e-06 -0.0045050654082340602 -0.16266365919496639 ;
createNode locator -n "locator_foot_inside_RShape" -p "locator_foot_inside_R";
	rename -uid "59B2F58F-4044-EB5D-836F-A4B57A3B712A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 1.3 1.3 1.3 ;
createNode transform -n "locator_foot_heel_lift_R_grp3" -p "locator_foot_inside_R";
	rename -uid "2B147979-42CD-9907-0B51-D5AB353A0ED1";
	setAttr ".t" -type "double3" 9.2454772425935889 -0.018537223339080838 -2.1276111655511665 ;
createNode transform -n "locator_foot_heel_lift_R" -p "locator_foot_heel_lift_R_grp3";
	rename -uid "308CFF52-4C80-FB60-C504-FF908612911E";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 8.8817841970012523e-16 0 ;
createNode locator -n "locator_foot_heel_lift_RShape" -p "locator_foot_heel_lift_R";
	rename -uid "F8981D40-42F9-DA95-0B65-0296EE4D3632";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 1.3 1.3 1.3 ;
createNode transform -n "locator_foot_heel_R_grp4" -p "locator_foot_heel_lift_R";
	rename -uid "91D99519-4381-DBF2-7FE0-6B92E91502DB";
	setAttr ".t" -type "double3" -1.5172848305826641 -0.080830857157708103 -0.035857869140559551 ;
createNode transform -n "locator_foot_heel_R" -p "locator_foot_heel_R_grp4";
	rename -uid "FB5296B0-4118-1A27-0738-939DD56757AC";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 8.8817841970012523e-16 0 ;
createNode locator -n "locator_foot_heel_RShape" -p "locator_foot_heel_R";
	rename -uid "F966B25A-4C3D-D818-F0FC-51A3B5BEFC73";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 1.3 1.3 1.3 ;
createNode transform -n "locator_foot_toe_lift_R_grp" -p "locator_foot_heel_R";
	rename -uid "B156A65F-4D83-FBE7-46A5-3ABD66687F73";
	setAttr ".t" -type "double3" -11.413030350288206 0.38840177655219943 -0.0057950172135923239 ;
createNode transform -n "locator_foot_toe_lift_R" -p "locator_foot_toe_lift_R_grp";
	rename -uid "39B1FA8E-4847-4D61-A304-6F9AED981F6B";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 8.8817841970012523e-16 0 ;
createNode locator -n "locator_foot_toe_lift_RShape" -p "locator_foot_toe_lift_R";
	rename -uid "80A96FF1-4A14-B1AB-D45B-5398AF1755D2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 1.3 1.3 1.3 ;
createNode transform -n "locator_foot_toe_R_grp2" -p "locator_foot_toe_lift_R";
	rename -uid "D1D82BD4-4303-1F26-0849-108AF12716A3";
	setAttr ".t" -type "double3" 2.3963165964881536 -0.38840177655220121 0.0058397021506673141 ;
createNode transform -n "locator_foot_toe_R" -p "locator_foot_toe_R_grp2";
	rename -uid "1B989D39-4192-8D8D-694D-DF9B71D95080";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 8.8817841970012523e-16 0 ;
createNode locator -n "locator_foot_toe_RShape" -p "locator_foot_toe_R";
	rename -uid "A464E559-4BDB-E7E6-7E89-4C901F15BD78";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 1.3 1.3 1.3 ;
createNode transform -n "locator_foot_ball_R_grp" -p "locator_foot_toe_R";
	rename -uid "F2F49B7A-4E64-BB6B-66D5-85B1F462596B";
	setAttr ".t" -type "double3" 1.6545103042327853 1.1586378605605967 0.027735839848977761 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "locator_foot_ball_R" -p "locator_foot_ball_R_grp";
	rename -uid "A07F0D2B-4EB4-00DB-60A3-D7A650C68AA9";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 8.8817841970012523e-16 0 ;
createNode locator -n "locator_foot_ball_RShape" -p "locator_foot_ball_R";
	rename -uid "AFED6C03-45C1-0115-89E1-85BB498EB5D9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 1.3 1.3 1.3 ;
createNode transform -n "locator_foot_ankle_R_grp" -p "locator_foot_ball_R";
	rename -uid "EC884DBE-4CD0-FFD9-0986-30B54E9DBD82";
	setAttr ".t" -type "double3" 5.5535130125439087 3.0368986136215739 0.0046911138728580326 ;
createNode transform -n "locator_foot_ankle_R" -p "locator_foot_ankle_R_grp";
	rename -uid "FA67BB43-4371-7735-52AE-AB9A971D75C8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.4408920985006262e-16 8.8817841970012523e-16 0 ;
createNode locator -n "locator_foot_ankle_RShape" -p "locator_foot_ankle_R";
	rename -uid "FD57A895-4770-0381-B530-00B4EB8B0E27";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 1.3 1.3 1.3 ;
createNode ikHandle -n "ikHandle_right_leg" -p "locator_foot_ankle_R";
	rename -uid "1DB6E833-492E-023A-03A0-758C8732CFC9";
	setAttr ".t" -type "double3" -8.191758382736225e-11 -3.1405988920596428e-12 -2.3225865675158275e-12 ;
	setAttr ".r" -type "double3" 0 -76.494615750693356 0 ;
	setAttr ".s" -type "double3" 0.99999999999980627 1 1.0000000000001927 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle_right_leg_poleVectorConstraint1" -p "ikHandle_right_leg";
	rename -uid "2321FD27-4D83-DF76-8158-4282EA276EE2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_IK_Leg_pole_R1W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -20.299593980549556 -19.967924184217782 -1.2371101695864901 ;
	setAttr -k on ".w0";
createNode transform -n "ac_ball_R_IK_follow_grp1" -p "locator_foot_toe_R";
	rename -uid "1DAA0C82-4AA9-00B8-B497-07B4EDEE2E99";
	setAttr ".t" -type "double3" 1.6545971668833701 1.1586178344306093 0.027865885857987216 ;
	setAttr ".r" -type "double3" 0 0.29419957155458099 2.3567484514088677e-05 ;
	setAttr ".s" -type "double3" 1.000000000000161 0.99999999999999423 -0.99999999999984335 ;
createNode transform -n "ac_IK_Leg_pole_R_grp" -p "Right_leg_rig";
	rename -uid "8895B410-46EA-F333-B13E-12905B02193E";
	setAttr ".s" -type "double3" 0.99999999999998512 1.0000000000000258 1.0000000000000413 ;
createNode transform -n "ac_IK_Leg_pole_R_fixer" -p "ac_IK_Leg_pole_R_grp";
	rename -uid "CFE40940-4283-BDBC-F021-17A2E8F74CBD";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -90.000109705892925 -1.4622073994434472e-05 0.00031915589947996236 ;
	setAttr ".s" -type "double3" 0.99999999999994738 0.99999999999992994 -1.0000000000000697 ;
createNode transform -n "ac_IK_Leg_pole_R" -p "ac_IK_Leg_pole_R_fixer";
	rename -uid "72EDB7BD-4D29-EC8A-DAD4-478C3E8FA51F";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovc" 30;
	setAttr ".ovrgb" -type "float3" 0.14309978 0 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -2.4868995751603507e-14 -7.1054273576010019e-15 -5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" -2.4868995751603507e-14 -7.1054273576010019e-15 -5.3290705182007514e-15 ;
createNode nurbsCurve -n "ac_IK_Leg_pole_RShape" -p "ac_IK_Leg_pole_R";
	rename -uid "7155B089-4630-B24C-1134-B38E89DCDA3C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		-0.47678105042526797 -0.61708402964698206 -0.47677868733034301
		-1.430340571887728 -0.29695709485503397 -0.47677938198420255
		-1.430340475680687 -0.23898551478329536 -0.95355953413953132
		-2.3839001317962993 3.9561420880832247e-06 -8.7396465854937803e-12
		-1.430340475681728 -0.23898192817753103 0.95356057129637062
		-1.4303405718890112 -0.29695576131539986 0.47678067073474623
		-0.47678105042533064 -0.61708196048615216 0.4767813653870096
		-0.4767805191688525 -0.29695424474172932 1.4303407234533607
		-0.95356044932110018 -0.23898083886115776 1.4303405976549588
		-1.7750402642106598e-13 5.1729020787678813e-06 2.3839001317933834
		0.95355965611476357 -0.23898470261496776 1.4303405976634687
		0.4767795335491708 -0.29695612144704442 1.4303407234574961
		0.47677900229318093 -0.61708354294298751 0.47678136539050603
		1.4303395862665245 -0.29696050868590929 0.47678067074523611
		1.4303396824752108 -0.23898582958366102 0.95356057130502558
		2.3839001317962585 -3.9561420846618985e-06 8.7435517040675173e-12
		1.4303396824768015 -0.23898908515988537 -0.95355953413159511
		1.4303395862678079 -0.29696184222553995 -0.47677938197371272
		0.47677900229324371 -0.61708561210381763 -0.47677868732684642
		0.47677953354935931 -0.29696232892953478 -1.4303394346945626
		0.9535596561163554 -0.23899006413307874 -1.4303395604904252
		1.3659898925961967e-13 -5.172902071738332e-06 -2.3839001317933799
		-0.95356044932091177 -0.23898704634364817 -1.4303395604970994
		-0.4767805191696407 -0.29696104072117924 -1.4303394346974205
		-0.47678105042526797 -0.61708402964698206 -0.47677868733034301
		;
createNode transform -n "R_pole_vector_line_vector" -p "ac_IK_Leg_pole_R";
	rename -uid "B62C61E8-473C-33FC-0C5A-F3A23D9B1A02";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.10945614001343529 -0.95952211354989814 -0.2594908247669192 ;
	setAttr ".s" -type "double3" 0.99999999999991285 1.0000000000000668 -1.0000000000000207 ;
	setAttr ".rp" -type "double3" 0 0 1.0000000000000207 ;
	setAttr ".rpt" -type "double3" 0.10945550490081198 0.95952269615326413 -0.74050879010319137 ;
	setAttr ".sp" -type "double3" 0 0 -1 ;
	setAttr ".spt" -type "double3" 0 0 2.0000000000000204 ;
createNode clusterHandle -n "R_pole_vector_line_vectorShape" -p "R_pole_vector_line_vector";
	rename -uid "012A354D-4678-E53A-ABFE-EC88366AD9E0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 0 -1 ;
createNode parentConstraint -n "ac_IK_Leg_pole_R_grp_parentConstraint1" -p "ac_IK_Leg_pole_R_fixer";
	rename -uid "F873B422-4448-5D89-DDE9-E79AEE871192";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -2.1316282072803006e-14 3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000109705892925 -0.00035581332264367747 1.4622755280659597e-05 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000524 0.99999999999992972 -1.0000000000000695 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -9.6378343336130374 19.085484753173823 17.509428613734396 ;
	setAttr ".tg[0].tor" -type "double3" 15.133028618252396 6.2840262085442262 -90.353514155837999 ;
	setAttr ".lr" -type "double3" 15.133028618252403 6.2840262085442271 -90.353514155837999 ;
	setAttr ".rst" -type "double3" -9.6378343336130374 19.085484753173823 17.509428613734396 ;
	setAttr ".rsrr" -type "double3" 15.133028618252403 6.2840262085442262 -90.353514155837999 ;
	setAttr -k on ".w0";
createNode transform -n "ac_ball_R_gloval_grp1" -p "Right_leg_rig";
	rename -uid "693FADA1-4081-408E-B754-30BD0EC215C1";
	setAttr ".t" -type "double3" -5.8090315221663031 1.2943950396594157 1.8638116355962486 ;
	setAttr ".r" -type "double3" -179.36452075562826 76.788815322233106 0.00010312015056137427 ;
	setAttr ".s" -type "double3" 0.99999999999994449 0.99999999999999423 -1.0000000000000604 ;
createNode transform -n "ac_ball_R_contrl_grp" -p "ac_ball_R_gloval_grp1";
	rename -uid "AFBE9B8D-4FD0-2D12-EEED-8F80754E7575";
createNode transform -n "ac_ball_R" -p "ac_ball_R_contrl_grp";
	rename -uid "FF5AB768-4671-9F0D-C69A-E685B6932061";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.15580034 0 1 ;
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 8.8817841970012523e-16 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 8.8817841970012523e-16 2.2204460492503131e-16 2.6645352591003749e-15 ;
	setAttr ".sp" -type "double3" 8.8817841970012523e-16 2.2204460492503131e-16 2.6645352591003757e-15 ;
	setAttr ".spt" -type "double3" 0 0 -7.8886090522101172e-31 ;
createNode nurbsCurve -n "ac_ball_RShape" -p "ac_ball_R";
	rename -uid "3E31509E-4962-039E-1AEB-24A394655ACD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.00018277249500810091 1.6127023006954646 -2.2931392797599606
		-0.000257437529567081 1.1404708726694801 -3.241697694807574
		-0.00023721427747858177 -2.6328327310557857 -3.0254096138118132
		3.7344484620171088e-06 -4.5350010037365145 -3.5797629905418004e-05
		0.00024081880436442181 -2.6206967955543377 3.0162482113019302
		0.00025495180570624083 1.274998230821532 3.2354399240295768
		0.00020574946119362853 1.6022192610014876 2.617013394398656
		-1.2217096052944144e-06 1.483607108589672 1.1711048830637864e-05
		-0.00018277249500810091 1.6127023006954646 -2.2931392797599606
		-0.000257437529567081 1.1404708726694801 -3.241697694807574
		-0.00023721427747858177 -2.6328327310557857 -3.0254096138118132
		;
createNode orientConstraint -n "ac_ball_R_contrl_grp_orientConstraint1" -p "ac_ball_R_contrl_grp";
	rename -uid "702BDCBD-4600-C0E4-79AF-5F9DBDDF6D74";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_ball_R_IK_follow_grp1W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0.3594180520198974 179.99369336855941 -1.0051015077064793 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "ac_ball_R_contrl_grp_pointConstraint1" -p "ac_ball_R_contrl_grp";
	rename -uid "2427FE43-4146-3028-54E7-26B7884EBA5C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Result_ball_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 8.6193746294149776e-05 1.857789757697681e-05 0.00013070436193984847 ;
	setAttr -k on ".w0";
createNode transform -n "Right_leg_TWISTS" -p "Right_leg_rig";
	rename -uid "2AACA484-4740-FF8E-5918-3D8943AC8E64";
	setAttr ".s" -type "double3" 0.99999999999998512 1.0000000000000102 1.0000000000000044 ;
createNode parentConstraint -n "Right_leg_TWISTS_parentConstraint1" -p "Right_leg_TWISTS";
	rename -uid "1AACDF20-4568-654A-B9FB-6A9F658DB98F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Result_leg_upper_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -8.0468033441026973e-13 -1.1688538454378423e-13 
		2.8426207465580184e-14 ;
	setAttr ".lr" -type "double3" 15.172276172083153 2.4808972831122253 -91.25424978825194 ;
	setAttr ".rst" -type "double3" -3.6942317751376401 39.053408937391382 -1.9399298840066723 ;
	setAttr ".rsrr" -type "double3" 15.172276172083153 2.4808972831122253 -91.25424978825194 ;
	setAttr -k on ".w0";
createNode transform -n "leg_upper_R_TWIST_grp" -p "Right_leg_TWISTS";
	rename -uid "AC2BE318-4868-5393-146C-A3A2F6D521D4";
	setAttr ".t" -type "double3" 5.9567616379150081 -0.012068383847512187 0.36014404766951902 ;
	setAttr ".r" -type "double3" 90.112553723890841 3.4597076903293922 179.88391662294396 ;
	setAttr ".s" -type "double3" 1.0000000000000149 0.99999999999999556 0.99999999999998979 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754548e-16 0 ;
	setAttr ".rpt" -type "double3" 2.0098050690001571e-17 3.323718993662197e-16 -3.3245924580167134e-16 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 1.4791141972893905e-30 0 ;
createNode transform -n "ac_leg_upper_R_TWIST" -p "leg_upper_R_TWIST_grp";
	rename -uid "F0E1D97F-4A13-17DA-AA1E-5D83BAE53FD9";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_leg_upper_R_TWISTShape" -p "ac_leg_upper_R_TWIST";
	rename -uid "5474FF7F-4139-BC8E-397A-EDA9320DF623";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1.3893466288092468e-14 -7.1539996149283588e-15 -7.8569534570979922
		-2.4361031045866563e-14 7.856953457097986 0
		-1.3893466288092468e-14 -7.1539996149283588e-15 7.8569534570979922
		-3.425901530318376e-15 -7.8569534570980011 0
		-1.3893466288092468e-14 -7.1539996149283588e-15 -7.8569534570979922
		;
createNode transform -n "leg_upper_R_TWIST1_grp" -p "Right_leg_TWISTS";
	rename -uid "32CCE330-41AE-8A35-1C85-DFADE329024E";
	setAttr ".t" -type "double3" 11.913518515095777 -0.024137654532202291 0.72028779935987108 ;
	setAttr ".r" -type "double3" 90.1125332337282 3.4597076903162454 179.8839166296523 ;
	setAttr ".s" -type "double3" 1.0000000000000147 0.99999999999999556 0.99999999999998967 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754548e-16 0 ;
	setAttr ".rpt" -type "double3" 2.0098050945449652e-17 3.3237201847972506e-16 -3.3245924603521548e-16 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 1.4791141972893905e-30 0 ;
createNode transform -n "ac_leg_upper_R_TWIST1" -p "leg_upper_R_TWIST1_grp";
	rename -uid "23536ADB-402A-8F46-4A80-B39E0D7C7338";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".s" -type "double3" 0.92629523416981285 0.92629523416981285 0.92629523416981285 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ac_leg_upper_R_TWIST1Shape" -p "ac_leg_upper_R_TWIST1";
	rename -uid "EA0D6490-4FC1-A37D-37FE-1A8C6D1C734F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1.3893466288092468e-14 -7.1539996149283588e-15 -7.8569534570979922
		-2.4361031045866563e-14 7.856953457097986 0
		-1.3893466288092468e-14 -7.1539996149283588e-15 7.8569534570979922
		-3.425901530318376e-15 -7.8569534570980011 0
		-1.3893466288092468e-14 -7.1539996149283588e-15 -7.8569534570979922
		;
createNode transform -n "R_pole_vector_line" -p "Right_leg_rig";
	rename -uid "628FF37D-4542-C274-6CA5-FFB2DE20355F";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_pole_vector_lineShape" -p "R_pole_vector_line";
	rename -uid "FA4B4206-44DB-1BFC-BED3-63B4587CE553";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "R_pole_vector_lineShapeOrig" -p "R_pole_vector_line";
	rename -uid "71624001-466E-1733-CD40-B2A55BD43FA7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 1
		0 0 -1
		;
createNode parentConstraint -n "setup_parentConstraint1" -p "setup";
	rename -uid "BBD41D94-4B22-BE99-5671-D3B96CED67B8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode scaleConstraint -n "setup_scaleConstraint1" -p "setup";
	rename -uid "24531954-4A66-2167-BE1E-438A40C39839";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ac_masterW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "mesh" -p "csgo_character";
	rename -uid "AA9EEAC6-47C1-1EFC-4449-5183DD2ABEED";
createNode transform -n "your_skeleton" -p "csgo_character";
	rename -uid "CDA3F11C-4725-794C-F557-5FB84B9E235F";
	setAttr ".v" no;
createNode transform -n "ac_master" -p "csgo_character";
	rename -uid "B3B7DAB6-4577-C636-44EB-70AB6271B7A5";
	addAttr -ci true -sn "fk_ik_arm_swither_blend_visibility" -ln "fk_ik_arm_swither_blend_visibility" 
		-min 0 -max 1 -at "long";
	addAttr -ci true -sn "Weapon_World_Sokets_Visibility" -ln "Weapon_World_Sokets_Visibility" 
		-min 0 -max 1 -at "long";
	addAttr -ci true -sn "Visibility_Controls" -ln "Visibility_Controls" -min 0 -max 
		1 -at "long";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr -k on ".fk_ik_arm_swither_blend_visibility" 1;
	setAttr -k on ".Weapon_World_Sokets_Visibility";
	setAttr -k on ".Visibility_Controls" 1;
createNode nurbsCurve -n "ac_masterShape" -p "ac_master";
	rename -uid "10C4905E-4B31-E938-9027-8BB561265D8A";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 14.482289572537182 8.8678447846663798e-16 
		-14.482289572537189 1.25410263634947e-15 1.2541026363494704e-15 -20.481050327696533 
		-14.482289572537182 8.8678447846663778e-16 -14.482289572537185 -20.481050327696536 
		5.2061615071620405e-31 -7.2173051274052699e-15 -14.482289572537182 -8.8678447846663699e-16 
		14.482289572537177 -2.0516008189570678e-15 -1.2541026363494706e-15 20.481050327696533 
		14.482289572537182 -8.8678447846663699e-16 14.482289572537175 20.481050327696536 
		2.8458171486677418e-31 -3.3625702599517932e-15 0 0 0 0 0 0 0 0 0;
createNode transform -n "transform1";
	rename -uid "4819203E-4DCF-75AB-6A94-AB97920DCF4C";
	setAttr ".hio" yes;
createNode displayPoints -n "displayPoints1" -p "transform1";
	rename -uid "C89344FB-46AE-DA27-4EEB-D99F595C6588";
	setAttr -k off ".v";
	setAttr ".boundingBoxes" -type "vectorArray" 0 ;
	setAttr ".hio" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C60B21FA-4720-FC16-E421-2DB21A2F4E4B";
	setAttr -s 61 ".lnk";
	setAttr -s 61 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1332BF04-4360-9D87-0ED4-E49F90D3147E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "AB6D58B6-47E3-54B8-CD49-DA84E947AFA9";
createNode displayLayerManager -n "layerManager";
	rename -uid "DE1FAEF7-46DC-D0B6-BC22-AC850CB07ED7";
	setAttr -s 3 ".dli[1:2]"  8 1;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "CD35A389-42BD-CB72-3648-3FAD995CDF45";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "82E69319-48FE-A1B0-7B18-488353E76B39";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "DE830283-4A11-2D32-A37D-2F97E6761DBF";
	setAttr ".g" yes;
createNode phong -n "ctm_sas_lenses";
	rename -uid "83428F2A-49D5-5918-1FD3-EB969AD604BD";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.47314715 0.60672462 0.59323144 ;
	setAttr ".sc" -type "float3" 0.11828679 0.15168115 0.14830786 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.47314715 0.60672462 0.59323144 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_sas_variantaSG";
	rename -uid "A16C8018-44F0-09E2-E6AB-C684381732A4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "C490D1A5-44CF-D91A-75D1-D6B839532A9D";
createNode phong -n "ctm_sas_head_gasmask";
	rename -uid "CAE15C19-4484-4E73-3A17-B3ABA843F620";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.46055126 0.49746877 0.57708585 ;
	setAttr ".sc" -type "float3" 0.11513782 0.12436719 0.14427146 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.46055126 0.49746877 0.57708585 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_sas_variantaSG1";
	rename -uid "B41B70A7-403C-53F9-8FD3-17BD20DBB268";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "879FB67A-4125-A739-73AF-6997F79766EE";
createNode phong -n "ctm_sas_body";
	rename -uid "DFB8E536-4444-8143-1686-82916466F550";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.69643384 0.92352879 0.48025298 ;
	setAttr ".sc" -type "float3" 0.17410846 0.2308822 0.12006325 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.69643384 0.92352879 0.48025298 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_sas_variantaSG2";
	rename -uid "7C30F07A-420B-D785-D0F3-8D8037180154";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "FDADFD07-425B-8A5C-3FB2-C0A00068B965";
createNode phong -n "ctm_sas_bodylegs";
	rename -uid "C6480B54-4F7F-D217-C9E1-E388D6D44D50";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.46445355 0.50389755 0.62852639 ;
	setAttr ".sc" -type "float3" 0.11611339 0.12597439 0.1571316 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.46445355 0.50389755 0.62852639 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_sas_variantaSG3";
	rename -uid "29F34827-445A-F464-2BD3-A29FA1EE0101";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "FC2A78F6-42FE-FA9A-F6E0-84B75068E9FA";
createNode phong -n "w_ct_fbi_glove";
	rename -uid "4EF83E12-4897-EF93-0176-E69546192343";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.50587517 0.427641 0.73819 ;
	setAttr ".sc" -type "float3" 0.12646879 0.10691025 0.1845475 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.50587517 0.427641 0.73819 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_sas_varianta_w_ct_base_gloveSG";
	rename -uid "48BA7A87-48B2-3DC4-527F-91BC924F82A5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "B2036082-446B-84CD-0EA5-D3A3BDB86EF9";
createNode renderLayerManager -n "renderLayerManager1";
	rename -uid "95BF6094-4280-B49E-DF92-A58E841FBFA7";
createNode renderLayer -n "defaultRenderLayer1";
	rename -uid "0B92C573-4CCA-40DE-1E7C-8481934A5FBB";
	setAttr ".g" yes;
createNode phong -n "ctm_sas_lenses1";
	rename -uid "E441B076-424B-5181-03BA-8AB1CB3E0252";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.86823535 0.64010644 0.8769756 ;
	setAttr ".sc" -type "float3" 0.21705884 0.16002661 0.2192439 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.86823535 0.64010644 0.8769756 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_sas_variantaSG4";
	rename -uid "839E40E1-4D1B-34E7-0C90-AAA8D4681E63";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "C5DE9D69-4500-43AA-87B2-AE81AF920CCE";
createNode phong -n "ctm_sas_head_gasmask1";
	rename -uid "F5937A17-40BC-1FEC-8F99-25BFE767E355";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.64909643 0.74504548 0.77031529 ;
	setAttr ".sc" -type "float3" 0.16227411 0.18626137 0.19257882 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.64909643 0.74504548 0.77031529 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_sas_variantaSG5";
	rename -uid "04353D21-45E5-9427-D780-48990FCCC95E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "C67E9314-4976-80FD-5ADD-01AA8B4683CE";
createNode phong -n "ctm_sas_body1";
	rename -uid "7A694F36-437B-A72A-DD49-B1B6CC8E7123";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.54300714 0.69211608 0.59977686 ;
	setAttr ".sc" -type "float3" 0.13575178 0.17302902 0.14994422 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.54300714 0.69211608 0.59977686 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_sas_variantaSG6";
	rename -uid "48786FCD-41C1-8B25-3703-7E92EF3B2CC5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "542E7C63-40BD-95EB-CF60-8AA29B0FBFBD";
createNode phong -n "ctm_sas_bodylegs1";
	rename -uid "170D3B33-4E77-5C59-36CD-1F8764F991ED";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.51772803 0.83424318 0.69313371 ;
	setAttr ".sc" -type "float3" 0.12943201 0.20856079 0.17328343 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.51772803 0.83424318 0.69313371 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_sas_variantaSG7";
	rename -uid "C87724B5-4ABA-0D6C-57B1-1C9274B3E807";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "D6681D26-4ABE-73D8-E3AA-36A16C20BDC5";
createNode phong -n "w_ct_fbi_glove1";
	rename -uid "9F1DC240-4046-D07F-F38F-CE909C923E45";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.54029602 0.54004461 0.42514476 ;
	setAttr ".sc" -type "float3" 0.135074 0.13501115 0.10628619 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.54029602 0.54004461 0.42514476 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_sas_varianta_w_ct_base_gloveSG1";
	rename -uid "2954FA15-468F-5217-9D84-2A9AA7C33017";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "94D21E0B-4917-D3D6-99A0-0DB31BD62338";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "DFF304AB-42D2-59DB-5C51-E1AA7058B08C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1017\n            -height 717\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n"
		+ "                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1017\\n    -height 717\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1017\\n    -height 717\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "386E2E0D-4AED-B3BB-3E3E-CA9B246D4441";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 100 ";
	setAttr ".st" 6;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "BE264EBC-4BF1-D8FC-08E4-5DAAD50AAC23";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "82AEDD70-4C3D-A796-F736-8A94B0BBF1B2";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode reverse -n "reverse_L_arm_IK_FK_blend";
	rename -uid "66E6A160-488A-CD1A-7418-9DB0BD548FB5";
createNode reverse -n "reverse1";
	rename -uid "D8800548-4238-2EA6-0C5C-63A6F9C6DAEB";
createNode reverse -n "reverse_arm_IK_FK_R";
	rename -uid "185BD86B-456F-0E48-B034-F78F7BD6B45F";
createNode multiplyDivide -n "multiplyDivide_hip_twist";
	rename -uid "3AEB54FB-49D4-D8CC-CF8E-4689A3DCE2B7";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode plusMinusAverage -n "plusMinusAverage_spine_twist";
	rename -uid "A8E40200-41F1-3B9E-BB71-60A59B1B0910";
	setAttr -s 2 ".i1[0:1]"  0 0;
createNode multiplyDivide -n "multiplyDivide_spine_stretch";
	rename -uid "4F478B6C-4349-DBA8-EC95-0A95DFB87632";
	setAttr ".op" 2;
createNode multilisterLight -n "multilisterLight1";
	rename -uid "9B66AE2E-4979-08FF-0879-2193A8E6293E";
createNode multiplyDivide -n "multiplyDivide_SQRT_SPINE_STRETH";
	rename -uid "2BA14E77-4E9C-07B8-01D4-B3B80C8793A5";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "multiplyDivide_spine_skaly_YZ";
	rename -uid "3FED5CF7-4123-53A6-EB83-3EA4696CE5F5";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode blendColors -n "blendColors_L_leh_upped_fk_ik_blend_rotate";
	rename -uid "D34B333A-43A4-EBBB-C82A-D2A21BFBD2FA";
createNode blendColors -n "blendColors_L_leh_lower_fk_ik_blend_rotate1";
	rename -uid "EEC67F32-42BA-DE2A-1647-A59EDC3AAF16";
createNode blendColors -n "blendColors_L_leh_ankle_fk_ik_blend_rotate2";
	rename -uid "7E30DB22-47B9-8A0C-DD0A-BB9A6A74DF9C";
createNode blendColors -n "blendColors_upped_R_blend_rotate";
	rename -uid "6B507E74-4D69-2761-7BAC-51886544DE93";
createNode blendColors -n "blendColors_lower_R_blend_rotate1";
	rename -uid "6A7E2BB2-4F84-BAB5-074D-20818DE430C9";
createNode blendColors -n "blendColors_ankle_R_blend_rotate2";
	rename -uid "FDCA3871-4781-9801-DF43-4EA6DC32A04F";
createNode phong -n "Shoulders";
	rename -uid "9BCC8DE1-4C45-29F5-2A5D-56A77767BB19";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.93392533 0.66653764 0.81392676 ;
	setAttr ".sc" -type "float3" 0.23348133 0.16663441 0.20348169 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.93392533 0.66653764 0.81392676 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_twozero2SG";
	rename -uid "740E6D13-48EA-BD78-2A9B-5383B03A2E0D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "666DA80F-4666-D46C-C46F-3CBA1EDD4B10";
createNode phong -n "Material";
	rename -uid "61F40E8F-4562-7C29-8D01-338424C08A4B";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_twozero2SG1";
	rename -uid "F314FB0F-4CC5-39F5-B491-948AC5B495E8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "97C6E6C9-4F4C-B0FD-2825-0899121D8EF1";
createNode phong -n "Pants";
	rename -uid "5F09DBCE-481C-AE66-CA35-3CAF48CE2523";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.85778302 0.63935286 0.50499278 ;
	setAttr ".sc" -type "float3" 0.21444575 0.15983821 0.1262482 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.85778302 0.63935286 0.50499278 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_twozero2SG2";
	rename -uid "763DD092-4C8A-130F-6574-828F3599B8C4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "BB643368-406F-7A41-C104-06A52AB81A7C";
createNode phong -n "HighLight";
	rename -uid "D596EB60-4915-1E92-7D5E-E9A6A9220625";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.43926898 0.96451747 0.57242602 ;
	setAttr ".sc" -type "float3" 0.10981724 0.24112937 0.14310651 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.43926898 0.96451747 0.57242602 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_twozero2SG3";
	rename -uid "6DC9F1F4-4FB7-F5DA-DD72-EFB97E5B1807";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
	rename -uid "E418D8FC-4E6B-4E31-6E53-9BA9C400024D";
createNode phong -n "Headband";
	rename -uid "38C2B1D2-4041-DE27-29C8-3F834F84DCDE";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.65108186 0.75172454 0.45629418 ;
	setAttr ".sc" -type "float3" 0.16277047 0.18793114 0.11407354 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.65108186 0.75172454 0.45629418 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_twozero2SG4";
	rename -uid "745190C1-485E-4D69-1899-F1A2058ACCCA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
	rename -uid "5EF28F73-481E-F4F9-16F1-F1AB50BC85C7";
createNode phong -n "Face";
	rename -uid "38CB69DE-4F42-2854-8DEB-C7B6CB1A762F";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.80923337 0.4837569 0.75269914 ;
	setAttr ".sc" -type "float3" 0.20230834 0.12093922 0.18817478 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80923337 0.4837569 0.75269914 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_twozero2SG5";
	rename -uid "100BDEE0-4A4C-AB80-3F3C-F5AA50996B09";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
	rename -uid "BB107C5D-429A-C451-7F4C-948B42C6A84A";
createNode phong -n "Mouth";
	rename -uid "EB51AA24-46BC-C06A-5D50-528AD2C5342F";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.87532657 0.52603602 0.70682585 ;
	setAttr ".sc" -type "float3" 0.21883164 0.13150901 0.17670646 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.87532657 0.52603602 0.70682585 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_twozero2SG6";
	rename -uid "B200C1E7-41C4-DD26-97F0-DE85C7822A7A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo17";
	rename -uid "DA0118E7-4E4C-CADF-BEA6-9C9094C45E06";
createNode phong -n "back_of_head";
	rename -uid "2615D377-425D-7958-7511-4590DEF1739F";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.6569398 0.68645668 0.80364668 ;
	setAttr ".sc" -type "float3" 0.16423495 0.17161417 0.20091167 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.6569398 0.68645668 0.80364668 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_twozero2SG7";
	rename -uid "EB3FA8E2-43DE-C4F7-864E-1986F1BEB138";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo18";
	rename -uid "C8BCEC09-44B3-1001-0BCD-99B60C63231B";
createNode phong -n "Eyes";
	rename -uid "680B66A1-4D3E-9C99-C53B-53BDE32BF874";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.98301876 0.86505955 0.89284033 ;
	setAttr ".sc" -type "float3" 0.24575469 0.21626489 0.22321008 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.98301876 0.86505955 0.89284033 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_twozero2SG8";
	rename -uid "C1485E41-4A0B-FA81-86FA-7299B93292D6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo19";
	rename -uid "D7E0F31C-4D85-7546-B0BF-E0B82F6D44FB";
createNode phong -n "Hands";
	rename -uid "F7329850-414F-F2EF-3F0C-40ADB0E351FF";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.53443474 0.90695137 0.78997082 ;
	setAttr ".sc" -type "float3" 0.13360868 0.22673784 0.1974927 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.53443474 0.90695137 0.78997082 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_twozero2SG9";
	rename -uid "54C8D175-4AFB-39EB-110F-DBB3D7C622D6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo20";
	rename -uid "9F59555D-4499-A0F1-33E2-2AAA1351457B";
createNode phong -n "Hair";
	rename -uid "71F40A5B-404C-369E-7BF6-19B4C2EA4B81";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.65355724 0.4276675 0.70683753 ;
	setAttr ".sc" -type "float3" 0.16338931 0.10691687 0.17670938 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.65355724 0.4276675 0.70683753 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_twozero2SG10";
	rename -uid "B588DAA0-4194-455D-FA84-37AE36861815";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo21";
	rename -uid "63B215FC-435B-951F-1671-4790BFA12960";
createNode phong -n "Eyelash";
	rename -uid "D5EA4488-4291-7011-8CC3-F1A9318E7D0D";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.85350353 0.56143701 0.8985073 ;
	setAttr ".sc" -type "float3" 0.21337588 0.14035925 0.22462682 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.85350353 0.56143701 0.8985073 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_twozero2SG11";
	rename -uid "B7085022-4CE4-5DDE-2B16-13BA82F338B7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo22";
	rename -uid "7A7F0D87-4B9B-3624-8577-61AA4ED0D773";
createNode phong -n "Collar";
	rename -uid "74BA866F-4E33-2E9F-1722-2A982910CEA9";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.606381 0.49078915 0.56413114 ;
	setAttr ".sc" -type "float3" 0.15159525 0.12269729 0.14103279 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.606381 0.49078915 0.56413114 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_twozero2SG12";
	rename -uid "C050A124-41F0-81AA-DF99-63A7D9E3DD5E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo23";
	rename -uid "580F36FB-4B05-1CF5-0E32-4E82CD60C1FD";
createNode phong -n "Coat";
	rename -uid "2714DFDB-4C74-93E1-78AE-3AAC6C2880E6";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.64430928 0.93148333 0.76934236 ;
	setAttr ".sc" -type "float3" 0.16107732 0.23287083 0.19233559 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.64430928 0.93148333 0.76934236 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_twozero2SG13";
	rename -uid "DDAA074F-41DA-3207-9E66-FEB44D0E1880";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo24";
	rename -uid "BA0E6394-439B-E203-1435-C98C4F18A8E4";
createNode phong -n "Buttons";
	rename -uid "0FB37082-493D-C9A0-4A1E-3DBA79C71B5B";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.47966427 0.74474245 0.98081565 ;
	setAttr ".sc" -type "float3" 0.11991607 0.18618561 0.24520391 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.47966427 0.74474245 0.98081565 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_body1_model0SG";
	rename -uid "FE9742E5-4299-49AA-B68E-D89A8428E0B7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo25";
	rename -uid "78B6AC34-436C-FE96-61DA-F8833EF9DB26";
createNode phong -n "Boots";
	rename -uid "C424420E-4789-1E79-6E5C-5A95E0F1F091";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.89918655 0.69878042 0.98704398 ;
	setAttr ".sc" -type "float3" 0.22479664 0.1746951 0.24676099 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.89918655 0.69878042 0.98704398 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "zerotwo_body1_model0SG1";
	rename -uid "785B566C-4863-5388-7CBB-7BA76E6B677F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo26";
	rename -uid "445C03E6-4B60-F3B5-D312-E986187DA0DF";
createNode phong -n "tm_anarchist_lowerbody_varianta";
	rename -uid "BA2FE182-4C76-A773-ADD3-84A3D0191003";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.60951084 0.4456774 0.71358186 ;
	setAttr ".sc" -type "float3" 0.15237771 0.11141935 0.17839547 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.60951084 0.4456774 0.71358186 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "tm_anarchist_variantaSG";
	rename -uid "B79A069A-4BBD-E42B-CD1C-848CA918F838";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo27";
	rename -uid "2F1AADF9-4B0B-3176-D73D-80B2B90C41AF";
createNode phong -n "tm_anarchist_head_varianta";
	rename -uid "3348D8DC-445E-899F-287A-84AF96C0CFD5";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.72671205 0.43685636 0.77588069 ;
	setAttr ".sc" -type "float3" 0.18167801 0.10921409 0.19397017 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.72671205 0.43685636 0.77588069 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "tm_anarchist_variantaSG1";
	rename -uid "96168A75-40DB-6B28-4D89-1397AC3E6A07";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo28";
	rename -uid "F4DD1E54-4C9B-5F83-B4CE-DCB28BEF774E";
createNode phong -n "tm_anarchist_upperbody_varianta";
	rename -uid "41738A83-45CA-10F8-FBD1-28879A7ACC72";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.60735357 0.70360231 0.8567344 ;
	setAttr ".sc" -type "float3" 0.15183839 0.17590058 0.2141836 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.60735357 0.70360231 0.8567344 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "tm_anarchist_variantaSG2";
	rename -uid "8727585A-4C3E-4F7E-5D91-AC863CA50021";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo29";
	rename -uid "B6DE1993-4814-B2DE-4D3F-D2A73F4932F6";
createNode phong -n "tm_separatist_lowerbody_varianta";
	rename -uid "B522AF22-415C-71E2-A6FD-98B9085453C7";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.86934114 0.82260609 0.77107954 ;
	setAttr ".sc" -type "float3" 0.21733528 0.20565152 0.19276989 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.86934114 0.82260609 0.77107954 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "tm_separatist_variantaSG";
	rename -uid "2A246727-40F7-AF9D-DABB-118DE39DA2AE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo30";
	rename -uid "891BAF07-4432-712E-F9B5-26AE383FCFEE";
createNode phong -n "tm_separatist_head_varianta";
	rename -uid "EF763C24-4162-68A9-3D77-968B56568D68";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.57047886 0.8315137 0.61676049 ;
	setAttr ".sc" -type "float3" 0.14261971 0.20787843 0.15419012 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.57047886 0.8315137 0.61676049 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "tm_separatist_variantaSG1";
	rename -uid "A18A0F94-4442-3D07-98CF-15BFAC02441A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo31";
	rename -uid "E1961F05-438A-D266-5E1F-85A0E187193D";
createNode phong -n "tm_separatist_upperbody_varianta";
	rename -uid "F4AC7487-4A12-87E1-1EBA-D5B4467962A1";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.4232145 0.87357724 0.89513671 ;
	setAttr ".sc" -type "float3" 0.10580362 0.21839431 0.22378418 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.4232145 0.87357724 0.89513671 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "tm_separatist_variantaSG2";
	rename -uid "A161C249-4CDA-288B-0F5C-91B473C4F444";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo32";
	rename -uid "F0086B75-4D86-5D3E-ED1D-EE866AF3749B";
createNode phong -n "t_base_fullfinger_glove";
	rename -uid "1A87C7EE-464F-9353-DCC4-6B811B232005";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.42926165 0.99413663 0.88708669 ;
	setAttr ".sc" -type "float3" 0.10731541 0.24853416 0.22177167 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.42926165 0.99413663 0.88708669 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "tm_separatist_varianta_w_t_base_fullfinger_gloveSG";
	rename -uid "3DA6DC9D-43BE-EA66-C3DB-F882A92610D6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo33";
	rename -uid "68D0729D-4003-7865-A13F-62B0B00777C1";
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "E069B14E-4254-2152-BF94-EEB37B027CB8";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode blinn -n "typeBlinn";
	rename -uid "424B316A-42C6-B350-0976-89AAA34D1421";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "typeBlinnSG";
	rename -uid "6D1EAE0B-4BEE-5A76-77E4-F9A186C7680C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo34";
	rename -uid "22F22FCE-41B9-19E0-FFB0-6781ACE89135";
createNode reverse -n "reverse2";
	rename -uid "E429154F-4838-A299-8751-00965BE86899";
createNode reverse -n "reverse3";
	rename -uid "DAFB60A6-4223-793C-B9CE-068D373FEE4B";
createNode blendColors -n "blendColors_upped_L_translate";
	rename -uid "97765599-48FA-F8E7-CF46-4CB71B3AC241";
createNode blendColors -n "blendColors_upped_L_rotate";
	rename -uid "898B5C25-46BE-E2CB-0655-F08F1C6CA1CE";
createNode blendColors -n "blendColors_lower_L_translate1";
	rename -uid "F2BEB7FC-4C60-0208-3D8C-3DA5C8ECF097";
createNode blendColors -n "blendColors_lower_L_rotate1";
	rename -uid "DF8C1619-4656-6939-7D33-4985559BEE3E";
createNode blendColors -n "blendColors_ankle_L_translate2";
	rename -uid "0339D07A-41F2-A2D3-9177-10A279886772";
createNode blendColors -n "blendColors_ankle_L_rotate2";
	rename -uid "1D497DD9-466D-1331-5E45-8C84699D5A49";
createNode blendColors -n "blendColors_right_upped_translate";
	rename -uid "6D2B2C1B-4C64-F503-F07C-DE843B37C125";
createNode blendColors -n "blendColors_right_upped_rotate";
	rename -uid "90B3503E-401C-0A82-EFC2-F5A0A2CCF16E";
createNode blendColors -n "blendColors_right_lower_rotate1";
	rename -uid "40A7D00F-4264-1956-B433-E4BD6E8AE696";
createNode blendColors -n "blendColors_right_lower_translate1";
	rename -uid "0467CBF5-4346-777F-36E9-FE93FE5BC582";
createNode blendColors -n "blendColors_right_ankle_rotate2";
	rename -uid "A93F0E6F-4BB6-962A-40FC-96B3E01568CA";
createNode blendColors -n "blendColors_right_ankle_translate2";
	rename -uid "A2945520-4E84-0148-A041-4694E49D3484";
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "8D25BECA-43C0-5517-51D3-CFAD8DD3468D";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode unitConversion -n "unitConversion26";
	rename -uid "18613839-4497-187D-DD15-DEA2A841C55C";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion27";
	rename -uid "605B08E4-4B55-4555-B83D-F6B4EFD1A160";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion28";
	rename -uid "ECC62356-4CC0-9D8B-51E7-3CAE023CDEC2";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion31";
	rename -uid "61EF278E-45BC-F1EF-61B5-06B7357DF2B0";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion32";
	rename -uid "43847A42-4EEE-A9C0-B76C-2CB72168CAEB";
	setAttr ".cf" 0.017453292519943295;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "0B7C8A0F-464C-CB63-9880-7384E6D74495";
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "FCF5B7AE-4D97-9A63-99F7-0486419063EF";
createNode phong -n "st6_glasslens_varianta";
	rename -uid "B672D30F-44C2-3481-356B-BFA3F7035299";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.54602081 0.56081867 0.43796793 ;
	setAttr ".sc" -type "float3" 0.1365052 0.14020467 0.10949198 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.54602081 0.56081867 0.43796793 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_st6_variantaSG";
	rename -uid "6A26B70F-401D-04A7-EA46-68A74B0C3AF3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo35";
	rename -uid "4828ACB2-4BE9-45AA-C9C1-4A9FE3D8B485";
createNode phong -n "st6_lowerbody";
	rename -uid "FF97D5FB-4DCB-5EF6-F8FA-4691C3A51DEE";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.41021624 0.513291 0.55888474 ;
	setAttr ".sc" -type "float3" 0.10255406 0.12832275 0.13972118 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.41021624 0.513291 0.55888474 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_st6_variantaSG1";
	rename -uid "9A83EE35-408C-5C46-5D5B-94933B81325E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo36";
	rename -uid "A7D538F1-4464-7473-3C18-36A86F27BF90";
createNode phong -n "st6_face";
	rename -uid "20C5B0A6-4652-F331-E1A3-6288E6EAA705";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.99295092 0.90446603 0.76682651 ;
	setAttr ".sc" -type "float3" 0.24823773 0.22611651 0.19170663 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.99295092 0.90446603 0.76682651 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_st6_variantaSG2";
	rename -uid "F9929DA1-4C54-BE07-2460-3A9606BAEDDA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo37";
	rename -uid "052C64B8-43A0-9BA4-820A-2ABB2181F94E";
createNode phong -n "st6_upperbody";
	rename -uid "78BCDAA7-4AE2-E2EE-9C1E-308233F34CF6";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.41176012 0.61026263 0.82718211 ;
	setAttr ".sc" -type "float3" 0.10294003 0.15256566 0.20679553 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.41176012 0.61026263 0.82718211 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_st6_variantaSG3";
	rename -uid "8F3416D3-40BD-C3E3-27B1-BA942F8ED1E2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo38";
	rename -uid "CE197C11-444B-67C7-D1BE-BDA140699CED";
createNode phong -n "w_ct_base_glove";
	rename -uid "FA08E6C9-4622-CFEE-6635-829E90309145";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.67593193 0.72347784 0.56615728 ;
	setAttr ".sc" -type "float3" 0.16898298 0.18086946 0.14153932 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.67593193 0.72347784 0.56615728 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_st6_varianta_w_ct_base_gloveSG";
	rename -uid "5430442F-4712-94EF-18FD-D2A2E5730901";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo39";
	rename -uid "F494E96C-49BB-A188-B52E-098C4384A4E5";
createNode phong -n "ctm_sas_lenses2";
	rename -uid "17F4E89F-47BD-EA3A-4F29-09949A125F6B";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.47314715 0.60672462 0.59323144 ;
	setAttr ".sc" -type "float3" 0.11828679 0.15168115 0.14830786 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.47314715 0.60672462 0.59323144 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_sas_variantaSG8";
	rename -uid "B19A0795-441B-75CE-E02C-6FAF242DF512";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo40";
	rename -uid "ABCCE7BE-44AF-29D9-2E82-3D80EC8D0F00";
createNode phong -n "ctm_sas_head_gasmask2";
	rename -uid "3C469DCD-4A23-1CFF-E087-48A82ECF1BCF";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.46055126 0.49746877 0.57708585 ;
	setAttr ".sc" -type "float3" 0.11513782 0.12436719 0.14427146 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.46055126 0.49746877 0.57708585 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_sas_variantaSG9";
	rename -uid "A6CDBF91-40C7-D51D-7F7E-9290DE4067BB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo41";
	rename -uid "DF1338F1-4F98-A9E5-EFCD-BA916B4B85D5";
createNode phong -n "ctm_sas_body2";
	rename -uid "C427AA2F-47B1-E39C-303A-AA92C46CAD5E";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.69643384 0.92352879 0.48025298 ;
	setAttr ".sc" -type "float3" 0.17410846 0.2308822 0.12006325 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.69643384 0.92352879 0.48025298 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_sas_variantaSG10";
	rename -uid "FBE9A535-414A-8059-57D3-8B956BBCCCA0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo42";
	rename -uid "A8D33BA0-46A5-771B-2DC7-6084C4E0B13C";
createNode phong -n "ctm_sas_bodylegs2";
	rename -uid "E48CB2BA-4C1D-BD53-E56E-33ACBB22DA69";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.46445355 0.50389755 0.62852639 ;
	setAttr ".sc" -type "float3" 0.11611339 0.12597439 0.1571316 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.46445355 0.50389755 0.62852639 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_sas_variantaSG11";
	rename -uid "5282BEA3-46F7-A8C7-A989-FD8EA36FC0BE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo43";
	rename -uid "8771D0C4-4875-F33B-F795-76BC5A415A79";
createNode phong -n "w_ct_fbi_glove2";
	rename -uid "00B231B0-41E1-C0CE-6A96-5D80075EB36F";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.50587517 0.427641 0.73819 ;
	setAttr ".sc" -type "float3" 0.12646879 0.10691025 0.1845475 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.50587517 0.427641 0.73819 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_sas_varianta_w_ct_base_gloveSG2";
	rename -uid "22FC0796-4943-0D42-98CE-7F8704F3B4D7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo44";
	rename -uid "A0163EF7-4465-7E13-AD4E-01AE13C6F26C";
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "456653A9-4CA7-7F4F-E157-518C8118D738";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode reverse -n "reverse_lift_from_toe";
	rename -uid "A20E56C7-49B4-9BC3-F940-32A5F231E2BD";
createNode unitConversion -n "unitConversion40";
	rename -uid "2AFE45FF-45BE-83F4-D17E-DA9474F99CFF";
	setAttr ".cf" 0.017453292519943295;
createNode reverse -n "reverse_left_outside";
	rename -uid "B30373C3-4719-CFF2-53EE-C4B9A6559DDE";
createNode unitConversion -n "unitConversion41";
	rename -uid "69A9471A-4270-D136-4C82-5C98C443B6E0";
	setAttr ".cf" 0.017453292519943295;
createNode reverse -n "reverse4";
	rename -uid "380D878E-4F8D-EC11-81D6-71943E221C44";
createNode unitConversion -n "unitConversion42";
	rename -uid "686237CD-4122-DFCC-8016-BF9705C3358B";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion43";
	rename -uid "29590EB2-4047-4823-F202-8ABA90F44A20";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion38";
	rename -uid "8FE1C0D4-4CE8-E708-958C-97A0C8669C67";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion36";
	rename -uid "1AE39362-46DF-A776-15BC-D783D7D42EE2";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion35";
	rename -uid "7BED83BD-43F8-2EAA-49E5-0AB44847C589";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion33";
	rename -uid "98FB84A3-4C64-CB8B-3600-2BBA14882E77";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion44";
	rename -uid "8C341FE8-4076-7DA0-B9F3-F7AB3448839A";
	setAttr ".cf" 0.017453292519943295;
createNode reverse -n "reverse5";
	rename -uid "06B1BC5E-406D-6DFE-152B-CC92857FA435";
createNode unitConversion -n "unitConversion45";
	rename -uid "C2DC345B-4EF8-3EE0-C30C-42A5F21F61D1";
	setAttr ".cf" 0.017453292519943295;
createNode reverse -n "reverse6";
	rename -uid "C12ABABF-41CF-C047-778E-7BB61FB04E9E";
createNode unitConversion -n "unitConversion46";
	rename -uid "6E33F94F-4D7D-131F-6F05-0B804CF98F99";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion47";
	rename -uid "DC70B8FF-4E8B-F8D6-B5DF-238F2B1632A3";
	setAttr ".cf" 0.017453292519943295;
createNode phong -n "ctm_gign_lowerbody_varianta";
	rename -uid "621B7F68-480B-5B7C-0611-329AC6D77221";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.6698001 0.84157312 0.75825655 ;
	setAttr ".sc" -type "float3" 0.16745003 0.21039328 0.18956414 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.6698001 0.84157312 0.75825655 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_gign_variantaSG";
	rename -uid "C5D8F328-4FF0-F05B-5015-A59A8B77726B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo45";
	rename -uid "1A6B4934-4538-B641-C5AA-A3B7A8AD807E";
createNode phong -n "ctm_gign_visor";
	rename -uid "2EA4C3E4-4C1E-2278-F82B-BC8CF0051DAA";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.4859834 0.87266159 0.98153454 ;
	setAttr ".sc" -type "float3" 0.12149585 0.2181654 0.24538364 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.4859834 0.87266159 0.98153454 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_gign_variantaSG1";
	rename -uid "9EDDBCBB-4064-71DC-7CD2-3BA3FA17971B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo46";
	rename -uid "17DAFA0F-43EB-6B0E-AAB6-56BECE992BEE";
createNode phong -n "ctm_gign_head_varianta";
	rename -uid "9030A84F-4F80-62E2-E3F7-F48E5D967546";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.65911865 0.69186664 0.57208252 ;
	setAttr ".sc" -type "float3" 0.16477966 0.17296666 0.14302063 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.65911865 0.69186664 0.57208252 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_gign_variantaSG2";
	rename -uid "26E7AB43-4444-790C-CEF4-25911675AAB5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo47";
	rename -uid "6A4CDFA0-4FDC-0799-A923-01AC99DD27BF";
createNode phong -n "ctm_gign_upperbody_varianta";
	rename -uid "6BDA2879-40C8-6FD4-9072-B7B1C5DB418A";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.89655888 0.76498944 0.62938148 ;
	setAttr ".sc" -type "float3" 0.22413972 0.19124736 0.15734537 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.89655888 0.76498944 0.62938148 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_gign_variantaSG3";
	rename -uid "63258745-4DA7-9E66-D465-6F983C1143B7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo48";
	rename -uid "63CB3BEE-431D-EDAA-59E6-5C937B7D3D30";
createNode phong -n "w_ct_fbi_glove3";
	rename -uid "47CCDF35-43B2-5C3C-CF2C-608E77F11E07";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.50587517 0.427641 0.73819 ;
	setAttr ".sc" -type "float3" 0.12646879 0.10691025 0.1845475 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.50587517 0.427641 0.73819 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_gign_varianta_w_ct_base_gloveSG";
	rename -uid "B48EC143-4952-1CD9-DDF7-E18DE6EE5771";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo49";
	rename -uid "0E20F7E7-4185-BA63-533E-1E99CC434B7F";
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "901B4431-42A9-F042-F18A-3EA90AB60144";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle11";
	rename -uid "D64AA354-4094-CF8A-850F-66A7DC03DF5C";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle12";
	rename -uid "C2171A4F-4DB8-CD29-BA6D-9BAEF9504EC4";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode phong -n "ctm_gign_lowerbody_varianta1";
	rename -uid "59F269E1-4CC9-D247-636E-FB9428F54AB2";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.6698001 0.84157312 0.75825655 ;
	setAttr ".sc" -type "float3" 0.16745003 0.21039328 0.18956414 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.6698001 0.84157312 0.75825655 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_gign_variantaSG4";
	rename -uid "E3F81243-493E-5E01-B889-7CAC9F2F863D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo50";
	rename -uid "3F8ECDD1-4760-9F1C-1301-B3BF0B569D80";
createNode phong -n "ctm_gign_visor1";
	rename -uid "6A1B0E9F-4921-8B11-9A77-7E9FB3923BC0";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.4859834 0.87266159 0.98153454 ;
	setAttr ".sc" -type "float3" 0.12149585 0.2181654 0.24538364 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.4859834 0.87266159 0.98153454 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_gign_variantaSG5";
	rename -uid "5528ACDE-44E7-B7F0-F1B6-A2AB7A849B0D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo51";
	rename -uid "D00B1B4C-47C5-BDA5-50E0-D49577B6EC05";
createNode phong -n "ctm_gign_head_varianta1";
	rename -uid "DA191292-47EC-2788-613E-A1B9C8B147EF";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.65911865 0.69186664 0.57208252 ;
	setAttr ".sc" -type "float3" 0.16477966 0.17296666 0.14302063 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.65911865 0.69186664 0.57208252 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_gign_variantaSG6";
	rename -uid "B932E453-4F19-55C0-5505-258573214C23";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo52";
	rename -uid "87374E35-4DEE-11AF-ECF2-C6964F50A463";
createNode phong -n "ctm_gign_upperbody_varianta1";
	rename -uid "1B281915-4C8B-F166-EB44-73924CF7453A";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.89655888 0.76498944 0.62938148 ;
	setAttr ".sc" -type "float3" 0.22413972 0.19124736 0.15734537 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.89655888 0.76498944 0.62938148 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_gign_variantaSG7";
	rename -uid "894ABB6A-4BDA-9A9D-CDB0-E08E890D81C8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo53";
	rename -uid "562C1A79-4813-80DF-3A3D-32B06DCEADED";
createNode phong -n "w_ct_fbi_glove4";
	rename -uid "6EE3E01C-4FEE-0E0D-1EE8-A39F70922DB4";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.50587517 0.427641 0.73819 ;
	setAttr ".sc" -type "float3" 0.12646879 0.10691025 0.1845475 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.50587517 0.427641 0.73819 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_gign_varianta_w_ct_base_gloveSG1";
	rename -uid "7C4B00D7-4225-406E-1BB0-0F85AC30C9CD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo54";
	rename -uid "8487BABE-4E13-8BBC-CD01-918647CE75A4";
createNode makeNurbCircle -n "makeNurbCircle13";
	rename -uid "A48D62FC-4ED0-1A8B-CAAB-3E9B341AE90C";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode timeEditorTracks -n "Composition1";
	rename -uid "4E9D5132-44B4-CBE3-2F93-FAA6E45C435D";
createNode phong -n "st6_glasslens_varianta1";
	rename -uid "748584EC-4C6C-FBF7-F458-20B19DAE3410";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.54602081 0.56081867 0.43796793 ;
	setAttr ".sc" -type "float3" 0.1365052 0.14020467 0.10949198 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.54602081 0.56081867 0.43796793 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_st6_variantaSG4";
	rename -uid "A7EED85C-481F-87D5-A2FB-ED9863541AE4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo55";
	rename -uid "93BF2D18-4551-CB23-EDB1-04961B474E17";
createNode phong -n "st6_lowerbody1";
	rename -uid "490A4116-4E0B-7A63-BC6D-5DBE92F8D911";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.41021624 0.513291 0.55888474 ;
	setAttr ".sc" -type "float3" 0.10255406 0.12832275 0.13972118 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.41021624 0.513291 0.55888474 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_st6_variantaSG5";
	rename -uid "F3E1FFD9-4A8E-6476-DCFD-4D96626C9A12";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo56";
	rename -uid "1C4D2A5F-40EA-9571-2AEE-36832B58C9DF";
createNode phong -n "st6_face1";
	rename -uid "8C2F3184-4399-9FEC-2CF4-A8B1940CC296";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.99295092 0.90446603 0.76682651 ;
	setAttr ".sc" -type "float3" 0.24823773 0.22611651 0.19170663 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.99295092 0.90446603 0.76682651 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_st6_variantaSG6";
	rename -uid "8B49EC70-4107-977A-62E8-F0939CC22E0F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo57";
	rename -uid "E8C02766-4C4E-252E-4724-54B6CCD95C20";
createNode phong -n "st6_upperbody1";
	rename -uid "25642D8E-431B-529A-6C0E-F398C5F3C751";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.41176012 0.61026263 0.82718211 ;
	setAttr ".sc" -type "float3" 0.10294003 0.15256566 0.20679553 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.41176012 0.61026263 0.82718211 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_st6_variantaSG7";
	rename -uid "74FE1DB0-4989-B403-5137-4CA47EB87DA7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo58";
	rename -uid "FE0F8AE4-4CA9-BAEB-27B3-6DA12ACADE0E";
createNode phong -n "w_ct_base_glove1";
	rename -uid "3C697213-4A31-5FC0-83BF-D6B31C785740";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.67593193 0.72347784 0.56615728 ;
	setAttr ".sc" -type "float3" 0.16898298 0.18086946 0.14153932 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.67593193 0.72347784 0.56615728 ;
	setAttr ".cp" 36;
createNode shadingEngine -n "ctm_st6_varianta_w_ct_base_gloveSG1";
	rename -uid "E360196E-400D-A258-5E81-F0BBFCF5BA56";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo59";
	rename -uid "7EE392AC-4AAA-C668-D51B-45AC85C45685";
createNode cluster -n "L_pole_vector_line_lowerCluster";
	rename -uid "2ACFEEF3-4280-DA27-F3A4-C09EA8DE8230";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak3";
	rename -uid "3BEA5E81-49AF-36A8-AE87-BCA0EFEDBA90";
createNode objectSet -n "cluster1Set";
	rename -uid "188501F3-4D49-0B33-17EB-24973BC7A605";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster1GroupId";
	rename -uid "286048EB-48BC-421A-EA90-53977B1623BE";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	rename -uid "2299288D-4065-4C6E-5714-778F99B4BADD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1]";
createNode objectSet -n "tweakSet3";
	rename -uid "BB45035C-4073-3118-C680-6A85C3798C99";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId9";
	rename -uid "82F765AD-4009-671E-03EA-D291627F15AD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "1F576DAF-46F0-1FC6-7DA1-79BCBEBB88A1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "L_pole_vector_line_vectorCluster";
	rename -uid "9FE6F638-40C0-7667-27B7-51BC36321772";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster2Set";
	rename -uid "A1EE6A82-4CDC-F753-B558-AAA3EF149D57";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster2GroupId";
	rename -uid "092306FF-44C3-542A-ECFE-F98690448030";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster2GroupParts";
	rename -uid "54A2B87B-4B1C-D33C-EBF6-7B91FDA31880";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0]";
createNode cluster -n "R_pole_vector_line_vectorCluster";
	rename -uid "ED036CC1-4EEE-0402-DE6B-84AD20EC5CCA";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak4";
	rename -uid "93DC4887-4CDE-7458-C357-4098BAE33990";
createNode objectSet -n "cluster3Set";
	rename -uid "02E73CC0-4277-6BEC-D7C8-3BB7A0BAB6C8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster3GroupId";
	rename -uid "0BDF0E45-405C-C06D-C8B3-01ABC810C7CF";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster3GroupParts";
	rename -uid "6D07D402-43FD-AA57-182C-A8B47BFBE657";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1]";
createNode objectSet -n "tweakSet4";
	rename -uid "71449344-4AEB-62B5-029C-F6A190DA32F1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	rename -uid "6F7D59FC-4274-1CD3-AC62-95938A7609AC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "97B715F7-4F30-3ED5-241D-EE92396AFF70";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "R_pole_vector_line_lowerCluster";
	rename -uid "13EDCDD8-44F6-C292-A8D1-8B926C53ACE8";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster4Set";
	rename -uid "68CD8570-4777-6D45-50E2-0EBADDE52F82";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster4GroupId";
	rename -uid "83A29059-4FC2-138C-5893-F38CFB69C00E";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster4GroupParts";
	rename -uid "9032A9F8-47FE-A2DA-91CC-BEA477548419";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0]";
createNode cluster -n "L_pole_vector_arm_line_poleCluster";
	rename -uid "0AAA10CE-4DEA-5B82-0303-90A91E8BF7DF";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak5";
	rename -uid "7907D893-4FF6-0BB7-5B0E-84A75AF12737";
createNode objectSet -n "cluster5Set";
	rename -uid "891546C8-4C40-E7AF-AB47-01979542FA5A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster5GroupId";
	rename -uid "262C58A3-4187-F46D-DA1C-D19008D27FFF";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster5GroupParts";
	rename -uid "16C11419-44F9-3A75-DAA9-F98571C02141";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1]";
createNode objectSet -n "tweakSet5";
	rename -uid "11D1F944-4BAF-41F5-E3B5-1A84CDC8580A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId11";
	rename -uid "F8854558-4699-E861-3567-21A6A40C1F2C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "6CB057FA-4CBD-CCF0-655F-A182D0DC1375";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "L_pole_vector_arm_line_lowerCluster";
	rename -uid "00117979-4412-DA8F-BB0B-089451FAD6E1";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster6Set";
	rename -uid "4D98C7F4-490F-132F-E982-70A3F1E5BFE3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster6GroupId";
	rename -uid "13D80D35-4957-76CC-8716-B2BEA6022A29";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster6GroupParts";
	rename -uid "6FEE188F-4611-5B7A-B05C-2FAFB56D300F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0]";
createNode cluster -n "R_pole_vector_arm_line_poleCluster";
	rename -uid "EF4E9FED-4BB6-CE85-A858-13A791EB09C7";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak6";
	rename -uid "763FB449-4200-0379-2D95-71B24F3C807C";
createNode objectSet -n "cluster7Set";
	rename -uid "BE3D963B-4B6D-A8F6-738C-B98CEAD3DB41";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster7GroupId";
	rename -uid "7E4995D1-4E50-E4DF-9D49-39A399259969";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster7GroupParts";
	rename -uid "0FF914F7-4DC5-BACC-750E-6FA8C74F7636";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1]";
createNode objectSet -n "tweakSet6";
	rename -uid "9905C695-4DC6-F3B8-0A8B-349B7D8B88B2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId12";
	rename -uid "51229A84-4A03-E097-1004-60B6C8417041";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "2E1A2498-4F6C-743F-304C-77AD35923A71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "R_pole_vector_arm_line_lowerCluster";
	rename -uid "D2B06D24-40F2-955A-D211-41AA0611E087";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster8Set";
	rename -uid "879AA971-4A02-7374-1B17-5EA0DBF4BFC1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster8GroupId";
	rename -uid "FE78FB04-4ECC-7DFD-293C-CAA19ECF49C2";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster8GroupParts";
	rename -uid "9F862519-4C58-9BBA-3648-62BF95A5C261";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0]";
createNode displayLayer -n "Custom_lines_for_pole_vector";
	rename -uid "0A7F5790-4AB1-900E-FE06-86AFBA2B2A74";
	setAttr ".dt" 2;
	setAttr ".c" 13;
	setAttr ".do" 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "13B3B614-4C85-BD9C-1D7F-5A812B3C373F";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 528.11557552218869 1968.131342786648 ;
	setAttr ".tgi[0].vh" -type "double2" 3787.8954292346248 3562.0678153739782 ;
	setAttr -s 7 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 2650.020263671875;
	setAttr ".tgi[0].ni[0].y" 2825.330322265625;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" 1617.821533203125;
	setAttr ".tgi[0].ni[1].y" 2768.431396484375;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" 2428.591796875;
	setAttr ".tgi[0].ni[2].y" 2825.330322265625;
	setAttr ".tgi[0].ni[2].nvs" 18306;
	setAttr ".tgi[0].ni[3].x" 2207.1630859375;
	setAttr ".tgi[0].ni[3].y" 2825.330322265625;
	setAttr ".tgi[0].ni[3].nvs" 18306;
	setAttr ".tgi[0].ni[4].x" 1364.8094482421875;
	setAttr ".tgi[0].ni[4].y" 2798.701904296875;
	setAttr ".tgi[0].ni[4].nvs" 18306;
	setAttr ".tgi[0].ni[5].x" 2871.448974609375;
	setAttr ".tgi[0].ni[5].y" 2825.330322265625;
	setAttr ".tgi[0].ni[5].nvs" 18306;
	setAttr ".tgi[0].ni[6].x" 1985.734619140625;
	setAttr ".tgi[0].ni[6].y" 2825.330322265625;
	setAttr ".tgi[0].ni[6].nvs" 18306;
createNode displayLayer -n "csgo_mesh";
	rename -uid "C0192DF1-4BC3-A62E-489B-08A64F8777A4";
	setAttr ".dt" 2;
	setAttr ".ovrgbf" yes;
	setAttr ".c" 1;
	setAttr ".ovrgb" -type "float3" 0 1 0 ;
	setAttr ".do" 2;
createNode reverse -n "reverse7";
	rename -uid "305058F9-4CFB-DA37-3340-40AA101E650A";
createNode reverse -n "reverse_L_fk_IK";
	rename -uid "48E5A5C4-4D8A-770E-6E31-D89FE7228FB9";
createNode reverse -n "reverse8";
	rename -uid "D9A54618-4112-A378-17EF-46AD9DDEF478";
createNode reverse -n "reverse_R_FK_IK";
	rename -uid "CBB62EFA-4D33-80F7-447F-8EBC8A20EDE4";
createNode blendColors -n "blendColors1";
	rename -uid "00048B4B-4EED-A798-F6B3-E5BC02CDA273";
createNode condition -n "condition1";
	rename -uid "1943125C-44B0-7355-076F-79ADDE923CEA";
createNode blendColors -n "blendColors2";
	rename -uid "2D0F833B-49D6-B057-5048-6EBC532A4F44";
	setAttr ".c1" -type "float3" 0 0 0 ;
	setAttr ".c2" -type "float3" 1 0 0 ;
createNode blendColors -n "blendColors3";
	rename -uid "1C0F669E-477B-C27B-11C7-DA9F51D4410C";
	setAttr ".c1" -type "float3" 0 0 0 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo1";
	rename -uid "51E69066-4AF4-85BC-24EC-EA93FC979FEA";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1590.3147550828942 -4067.395748659038 ;
	setAttr ".tgi[0].vh" -type "double2" 9.6852000383159975 -3285.042829426975 ;
	setAttr ".tgi[0].ni[0].x" -887.14288330078125;
	setAttr ".tgi[0].ni[0].y" -3465.71435546875;
	setAttr ".tgi[0].ni[0].nvs" 18306;
select -ne :time1;
	setAttr ".o" -10;
	setAttr ".unw" -10;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 61 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 63 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 41 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr "setup_parentConstraint1.ctx" "setup.tx";
connectAttr "setup_parentConstraint1.cty" "setup.ty";
connectAttr "setup_parentConstraint1.ctz" "setup.tz";
connectAttr "setup_parentConstraint1.crx" "setup.rx";
connectAttr "setup_parentConstraint1.cry" "setup.ry";
connectAttr "setup_parentConstraint1.crz" "setup.rz";
connectAttr "setup_scaleConstraint1.csx" "setup.sx";
connectAttr "setup_scaleConstraint1.csy" "setup.sy";
connectAttr "setup_scaleConstraint1.csz" "setup.sz";
connectAttr "body_ctls_grp_parentConstraint1.ctx" "body_ctls_grp.tx";
connectAttr "body_ctls_grp_parentConstraint1.cty" "body_ctls_grp.ty";
connectAttr "body_ctls_grp_parentConstraint1.ctz" "body_ctls_grp.tz";
connectAttr "body_ctls_grp_parentConstraint1.crx" "body_ctls_grp.rx";
connectAttr "body_ctls_grp_parentConstraint1.cry" "body_ctls_grp.ry";
connectAttr "body_ctls_grp_parentConstraint1.crz" "body_ctls_grp.rz";
connectAttr "ac_master.Visibility_Controls" "body_ctls_grp.v";
connectAttr "body_ctls_grp_scaleConstraint1.csx" "body_ctls_grp.sx";
connectAttr "body_ctls_grp_scaleConstraint1.csy" "body_ctls_grp.sy";
connectAttr "body_ctls_grp_scaleConstraint1.csz" "body_ctls_grp.sz";
connectAttr "body_ctls_grp.ro" "body_ctls_grp_parentConstraint1.cro";
connectAttr "body_ctls_grp.pim" "body_ctls_grp_parentConstraint1.cpim";
connectAttr "body_ctls_grp.rp" "body_ctls_grp_parentConstraint1.crp";
connectAttr "body_ctls_grp.rpt" "body_ctls_grp_parentConstraint1.crt";
connectAttr "ac_master.t" "body_ctls_grp_parentConstraint1.tg[0].tt";
connectAttr "ac_master.rp" "body_ctls_grp_parentConstraint1.tg[0].trp";
connectAttr "ac_master.rpt" "body_ctls_grp_parentConstraint1.tg[0].trt";
connectAttr "ac_master.r" "body_ctls_grp_parentConstraint1.tg[0].tr";
connectAttr "ac_master.ro" "body_ctls_grp_parentConstraint1.tg[0].tro";
connectAttr "ac_master.s" "body_ctls_grp_parentConstraint1.tg[0].ts";
connectAttr "ac_master.pm" "body_ctls_grp_parentConstraint1.tg[0].tpm";
connectAttr "body_ctls_grp_parentConstraint1.w0" "body_ctls_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "body_ctls_grp.pim" "body_ctls_grp_scaleConstraint1.cpim";
connectAttr "ac_master.s" "body_ctls_grp_scaleConstraint1.tg[0].ts";
connectAttr "ac_master.pm" "body_ctls_grp_scaleConstraint1.tg[0].tpm";
connectAttr "body_ctls_grp_scaleConstraint1.w0" "body_ctls_grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "ac_master.Visibility_Controls" "spine_rig1.v";
connectAttr "ac_FK_hip_grp_parentConstraint1.ctx" "ac_FK_hip_grp.tx";
connectAttr "ac_FK_hip_grp_parentConstraint1.cty" "ac_FK_hip_grp.ty";
connectAttr "ac_FK_hip_grp_parentConstraint1.ctz" "ac_FK_hip_grp.tz";
connectAttr "ac_FK_hip_grp_parentConstraint1.crx" "ac_FK_hip_grp.rx";
connectAttr "ac_FK_hip_grp_parentConstraint1.cry" "ac_FK_hip_grp.ry";
connectAttr "ac_FK_hip_grp_parentConstraint1.crz" "ac_FK_hip_grp.rz";
connectAttr "ac_FK_hip_grp.ro" "ac_FK_hip_grp_parentConstraint1.cro";
connectAttr "ac_FK_hip_grp.pim" "ac_FK_hip_grp_parentConstraint1.cpim";
connectAttr "ac_FK_hip_grp.rp" "ac_FK_hip_grp_parentConstraint1.crp";
connectAttr "ac_FK_hip_grp.rpt" "ac_FK_hip_grp_parentConstraint1.crt";
connectAttr "body_CTRL.t" "ac_FK_hip_grp_parentConstraint1.tg[0].tt";
connectAttr "body_CTRL.rp" "ac_FK_hip_grp_parentConstraint1.tg[0].trp";
connectAttr "body_CTRL.rpt" "ac_FK_hip_grp_parentConstraint1.tg[0].trt";
connectAttr "body_CTRL.r" "ac_FK_hip_grp_parentConstraint1.tg[0].tr";
connectAttr "body_CTRL.ro" "ac_FK_hip_grp_parentConstraint1.tg[0].tro";
connectAttr "body_CTRL.s" "ac_FK_hip_grp_parentConstraint1.tg[0].ts";
connectAttr "body_CTRL.pm" "ac_FK_hip_grp_parentConstraint1.tg[0].tpm";
connectAttr "ac_FK_hip_grp_parentConstraint1.w0" "ac_FK_hip_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "ac_FK_spine_1_grp_parentConstraint1.ctx" "ac_FK_spine_1_grp.tx";
connectAttr "ac_FK_spine_1_grp_parentConstraint1.cty" "ac_FK_spine_1_grp.ty";
connectAttr "ac_FK_spine_1_grp_parentConstraint1.ctz" "ac_FK_spine_1_grp.tz";
connectAttr "ac_FK_spine_1_grp_parentConstraint1.crx" "ac_FK_spine_1_grp.rx";
connectAttr "ac_FK_spine_1_grp_parentConstraint1.cry" "ac_FK_spine_1_grp.ry";
connectAttr "ac_FK_spine_1_grp_parentConstraint1.crz" "ac_FK_spine_1_grp.rz";
connectAttr "jt_drv_clavicle_L.s" "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.is"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.tx" "effector8.tx"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.ty" "effector8.ty"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.tz" "effector8.tz"
		;
connectAttr "jt_drv_clavicle_R.s" "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.is"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.tx" "effector9.tx"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.ty" "effector9.ty"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.tz" "effector9.tz"
		;
connectAttr "jt_drv_clavicle_L.msg" "ikHandle_arm_clavicle_L.hsj";
connectAttr "effector8.hp" "ikHandle_arm_clavicle_L.hee";
connectAttr "ikRPsolver.msg" "ikHandle_arm_clavicle_L.hsv";
connectAttr "jt_drv_clavicle_R.msg" "ikHandle_arm_clavicle_R.hsj";
connectAttr "effector9.hp" "ikHandle_arm_clavicle_R.hee";
connectAttr "ikRPsolver.msg" "ikHandle_arm_clavicle_R.hsv";
connectAttr "makeNurbCircle4.oc" "ac_neck_2Shape.cr";
connectAttr "makeNurbCircle5.oc" "ac_head_0Shape.cr";
connectAttr "ac_FK_spine_1_grp.ro" "ac_FK_spine_1_grp_parentConstraint1.cro";
connectAttr "ac_FK_spine_1_grp.pim" "ac_FK_spine_1_grp_parentConstraint1.cpim";
connectAttr "ac_FK_spine_1_grp.rp" "ac_FK_spine_1_grp_parentConstraint1.crp";
connectAttr "ac_FK_spine_1_grp.rpt" "ac_FK_spine_1_grp_parentConstraint1.crt";
connectAttr "body_CTRL.t" "ac_FK_spine_1_grp_parentConstraint1.tg[0].tt";
connectAttr "body_CTRL.rp" "ac_FK_spine_1_grp_parentConstraint1.tg[0].trp";
connectAttr "body_CTRL.rpt" "ac_FK_spine_1_grp_parentConstraint1.tg[0].trt";
connectAttr "body_CTRL.r" "ac_FK_spine_1_grp_parentConstraint1.tg[0].tr";
connectAttr "body_CTRL.ro" "ac_FK_spine_1_grp_parentConstraint1.tg[0].tro";
connectAttr "body_CTRL.s" "ac_FK_spine_1_grp_parentConstraint1.tg[0].ts";
connectAttr "body_CTRL.pm" "ac_FK_spine_1_grp_parentConstraint1.tg[0].tpm";
connectAttr "ac_FK_spine_1_grp_parentConstraint1.w0" "ac_FK_spine_1_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "ac_master.Visibility_Controls" "arm_rig_L.v";
connectAttr "ac_DRV_arm_jt_L_grp_parentConstraint1.ctx" "ac_DRV_arm_jt_L_grp.tx"
		;
connectAttr "ac_DRV_arm_jt_L_grp_parentConstraint1.cty" "ac_DRV_arm_jt_L_grp.ty"
		;
connectAttr "ac_DRV_arm_jt_L_grp_parentConstraint1.ctz" "ac_DRV_arm_jt_L_grp.tz"
		;
connectAttr "ac_DRV_arm_jt_L_grp_parentConstraint1.crx" "ac_DRV_arm_jt_L_grp.rx"
		;
connectAttr "ac_DRV_arm_jt_L_grp_parentConstraint1.cry" "ac_DRV_arm_jt_L_grp.ry"
		;
connectAttr "ac_DRV_arm_jt_L_grp_parentConstraint1.crz" "ac_DRV_arm_jt_L_grp.rz"
		;
connectAttr "jt_drv_arm_upper_L_orientConstraint2.crx" "jt_drv_arm_upper_L.rx";
connectAttr "jt_drv_arm_upper_L_orientConstraint2.cry" "jt_drv_arm_upper_L.ry";
connectAttr "jt_drv_arm_upper_L_orientConstraint2.crz" "jt_drv_arm_upper_L.rz";
connectAttr "jt_drv_arm_lower_L_orientConstraint1.crx" "jt_drv_arm_lower_L.rx";
connectAttr "jt_drv_arm_lower_L_orientConstraint1.cry" "jt_drv_arm_lower_L.ry";
connectAttr "jt_drv_arm_lower_L_orientConstraint1.crz" "jt_drv_arm_lower_L.rz";
connectAttr "jt_drv_arm_upper_L.s" "jt_drv_arm_lower_L.is";
connectAttr "jt_drv_hand_L_orientConstraint1.crx" "jt_drv_hand_L.rx";
connectAttr "jt_drv_hand_L_orientConstraint1.cry" "jt_drv_hand_L.ry";
connectAttr "jt_drv_hand_L_orientConstraint1.crz" "jt_drv_hand_L.rz";
connectAttr "jt_drv_arm_lower_L.s" "jt_drv_hand_L.is";
connectAttr "jt_drv_hand_L.ro" "jt_drv_hand_L_orientConstraint1.cro";
connectAttr "jt_drv_hand_L.pim" "jt_drv_hand_L_orientConstraint1.cpim";
connectAttr "jt_drv_hand_L.jo" "jt_drv_hand_L_orientConstraint1.cjo";
connectAttr "jt_drv_hand_L.is" "jt_drv_hand_L_orientConstraint1.is";
connectAttr "Left_Hand_CNSTR.r" "jt_drv_hand_L_orientConstraint1.tg[0].tr";
connectAttr "Left_Hand_CNSTR.ro" "jt_drv_hand_L_orientConstraint1.tg[0].tro";
connectAttr "Left_Hand_CNSTR.pm" "jt_drv_hand_L_orientConstraint1.tg[0].tpm";
connectAttr "jt_drv_hand_L_orientConstraint1.w0" "jt_drv_hand_L_orientConstraint1.tg[0].tw"
		;
connectAttr "jt_drv_arm_lower_L.ro" "jt_drv_arm_lower_L_orientConstraint1.cro";
connectAttr "jt_drv_arm_lower_L.pim" "jt_drv_arm_lower_L_orientConstraint1.cpim"
		;
connectAttr "jt_drv_arm_lower_L.jo" "jt_drv_arm_lower_L_orientConstraint1.cjo";
connectAttr "jt_drv_arm_lower_L.is" "jt_drv_arm_lower_L_orientConstraint1.is";
connectAttr "FK_arm_lower_L.r" "jt_drv_arm_lower_L_orientConstraint1.tg[0].tr";
connectAttr "FK_arm_lower_L.ro" "jt_drv_arm_lower_L_orientConstraint1.tg[0].tro"
		;
connectAttr "FK_arm_lower_L.pm" "jt_drv_arm_lower_L_orientConstraint1.tg[0].tpm"
		;
connectAttr "jt_drv_arm_lower_L_orientConstraint1.w0" "jt_drv_arm_lower_L_orientConstraint1.tg[0].tw"
		;
connectAttr "jt_drv_hand_L.tx" "effector1.tx";
connectAttr "jt_drv_hand_L.ty" "effector1.ty";
connectAttr "jt_drv_hand_L.tz" "effector1.tz";
connectAttr "jt_drv_arm_upper_L.ro" "jt_drv_arm_upper_L_orientConstraint2.cro";
connectAttr "jt_drv_arm_upper_L.pim" "jt_drv_arm_upper_L_orientConstraint2.cpim"
		;
connectAttr "jt_drv_arm_upper_L.jo" "jt_drv_arm_upper_L_orientConstraint2.cjo";
connectAttr "jt_drv_arm_upper_L.is" "jt_drv_arm_upper_L_orientConstraint2.is";
connectAttr "FK_arm_upper_L.r" "jt_drv_arm_upper_L_orientConstraint2.tg[0].tr";
connectAttr "FK_arm_upper_L.ro" "jt_drv_arm_upper_L_orientConstraint2.tg[0].tro"
		;
connectAttr "FK_arm_upper_L.pm" "jt_drv_arm_upper_L_orientConstraint2.tg[0].tpm"
		;
connectAttr "jt_drv_arm_upper_L_orientConstraint2.w0" "jt_drv_arm_upper_L_orientConstraint2.tg[0].tw"
		;
connectAttr "ac_DRV_arm_jt_L_grp.ro" "ac_DRV_arm_jt_L_grp_parentConstraint1.cro"
		;
connectAttr "ac_DRV_arm_jt_L_grp.pim" "ac_DRV_arm_jt_L_grp_parentConstraint1.cpim"
		;
connectAttr "ac_DRV_arm_jt_L_grp.rp" "ac_DRV_arm_jt_L_grp_parentConstraint1.crp"
		;
connectAttr "ac_DRV_arm_jt_L_grp.rpt" "ac_DRV_arm_jt_L_grp_parentConstraint1.crt"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.t" "ac_DRV_arm_jt_L_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.rp" "ac_DRV_arm_jt_L_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.rpt" "ac_DRV_arm_jt_L_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.r" "ac_DRV_arm_jt_L_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.ro" "ac_DRV_arm_jt_L_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.s" "ac_DRV_arm_jt_L_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.pm" "ac_DRV_arm_jt_L_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.jo" "ac_DRV_arm_jt_L_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.ssc" "ac_DRV_arm_jt_L_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.is" "ac_DRV_arm_jt_L_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "ac_DRV_arm_jt_L_grp_parentConstraint1.w0" "ac_DRV_arm_jt_L_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "reverse_L_arm_IK_FK_blend.ox" "ac_FK_arm_upper_L_grp.v";
connectAttr "ac_FK_arm_upper_L_grp_parentConstraint1.ctx" "ac_FK_arm_upper_L_grp.tx"
		;
connectAttr "ac_FK_arm_upper_L_grp_parentConstraint1.cty" "ac_FK_arm_upper_L_grp.ty"
		;
connectAttr "ac_FK_arm_upper_L_grp_parentConstraint1.ctz" "ac_FK_arm_upper_L_grp.tz"
		;
connectAttr "ac_FK_arm_upper_L_grp_parentConstraint1.crx" "ac_FK_arm_upper_L_grp.rx"
		;
connectAttr "ac_FK_arm_upper_L_grp_parentConstraint1.cry" "ac_FK_arm_upper_L_grp.ry"
		;
connectAttr "ac_FK_arm_upper_L_grp_parentConstraint1.crz" "ac_FK_arm_upper_L_grp.rz"
		;
connectAttr "ac_FK_arm_upper_L_grp.ro" "ac_FK_arm_upper_L_grp_parentConstraint1.cro"
		;
connectAttr "ac_FK_arm_upper_L_grp.pim" "ac_FK_arm_upper_L_grp_parentConstraint1.cpim"
		;
connectAttr "ac_FK_arm_upper_L_grp.rp" "ac_FK_arm_upper_L_grp_parentConstraint1.crp"
		;
connectAttr "ac_FK_arm_upper_L_grp.rpt" "ac_FK_arm_upper_L_grp_parentConstraint1.crt"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.t" "ac_FK_arm_upper_L_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.rp" "ac_FK_arm_upper_L_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.rpt" "ac_FK_arm_upper_L_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.r" "ac_FK_arm_upper_L_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.ro" "ac_FK_arm_upper_L_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.s" "ac_FK_arm_upper_L_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.pm" "ac_FK_arm_upper_L_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.jo" "ac_FK_arm_upper_L_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.ssc" "ac_FK_arm_upper_L_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_L|jt_drv_upper_L_end.is" "ac_FK_arm_upper_L_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "ac_FK_arm_upper_L_grp_parentConstraint1.w0" "ac_FK_arm_upper_L_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "ac_IK_hand_L_grp_parentConstraint1.ctx" "ac_IK_hand_L_grp.tx";
connectAttr "ac_IK_hand_L_grp_parentConstraint1.cty" "ac_IK_hand_L_grp.ty";
connectAttr "ac_IK_hand_L_grp_parentConstraint1.ctz" "ac_IK_hand_L_grp.tz";
connectAttr "ac_IK_hand_L_grp_parentConstraint1.crx" "ac_IK_hand_L_grp.rx";
connectAttr "ac_IK_hand_L_grp_parentConstraint1.cry" "ac_IK_hand_L_grp.ry";
connectAttr "ac_IK_hand_L_grp_parentConstraint1.crz" "ac_IK_hand_L_grp.rz";
connectAttr "ac_IK_hand_L_fixer_orientConstraint1.crx" "ac_IK_hand_L_fixer.rx";
connectAttr "ac_IK_hand_L_fixer_orientConstraint1.cry" "ac_IK_hand_L_fixer.ry";
connectAttr "ac_IK_hand_L_fixer_orientConstraint1.crz" "ac_IK_hand_L_fixer.rz";
connectAttr "ac_IK_hand_L_fixer_pointConstraint1.ctx" "ac_IK_hand_L_fixer.tx";
connectAttr "ac_IK_hand_L_fixer_pointConstraint1.cty" "ac_IK_hand_L_fixer.ty";
connectAttr "ac_IK_hand_L_fixer_pointConstraint1.ctz" "ac_IK_hand_L_fixer.tz";
connectAttr "jt_drv_arm_upper_L.msg" "ikHandle_arm_hand_L.hsj";
connectAttr "effector1.hp" "ikHandle_arm_hand_L.hee";
connectAttr "ikRPsolver.msg" "ikHandle_arm_hand_L.hsv";
connectAttr "ikHandle_arm_L_poleVectorConstraint1.ctx" "ikHandle_arm_hand_L.pvx"
		;
connectAttr "ikHandle_arm_L_poleVectorConstraint1.cty" "ikHandle_arm_hand_L.pvy"
		;
connectAttr "ikHandle_arm_L_poleVectorConstraint1.ctz" "ikHandle_arm_hand_L.pvz"
		;
connectAttr "ac_arm_IK_FK_blend_L.tx" "ikHandle_arm_hand_L.ikb";
connectAttr "ikHandle_arm_hand_L.pim" "ikHandle_arm_L_poleVectorConstraint1.cpim"
		;
connectAttr "jt_drv_arm_upper_L.pm" "ikHandle_arm_L_poleVectorConstraint1.ps";
connectAttr "jt_drv_arm_upper_L.t" "ikHandle_arm_L_poleVectorConstraint1.crp";
connectAttr "ac_IK_arm_pole_L.t" "ikHandle_arm_L_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "ac_IK_arm_pole_L.rp" "ikHandle_arm_L_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "ac_IK_arm_pole_L.rpt" "ikHandle_arm_L_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "ac_IK_arm_pole_L.pm" "ikHandle_arm_L_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle_arm_L_poleVectorConstraint1.w0" "ikHandle_arm_L_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "ac_IK_hand_L_fixer.pim" "ac_IK_hand_L_fixer_pointConstraint1.cpim";
connectAttr "ac_IK_hand_L_fixer.rp" "ac_IK_hand_L_fixer_pointConstraint1.crp";
connectAttr "ac_IK_hand_L_fixer.rpt" "ac_IK_hand_L_fixer_pointConstraint1.crt";
connectAttr "Left_Hand_CTRL.t" "ac_IK_hand_L_fixer_pointConstraint1.tg[0].tt";
connectAttr "Left_Hand_CTRL.rp" "ac_IK_hand_L_fixer_pointConstraint1.tg[0].trp";
connectAttr "Left_Hand_CTRL.rpt" "ac_IK_hand_L_fixer_pointConstraint1.tg[0].trt"
		;
connectAttr "Left_Hand_CTRL.pm" "ac_IK_hand_L_fixer_pointConstraint1.tg[0].tpm";
connectAttr "ac_IK_hand_L_fixer_pointConstraint1.w0" "ac_IK_hand_L_fixer_pointConstraint1.tg[0].tw"
		;
connectAttr "FK_hand_L.t" "ac_IK_hand_L_fixer_pointConstraint1.tg[1].tt";
connectAttr "FK_hand_L.rp" "ac_IK_hand_L_fixer_pointConstraint1.tg[1].trp";
connectAttr "FK_hand_L.rpt" "ac_IK_hand_L_fixer_pointConstraint1.tg[1].trt";
connectAttr "FK_hand_L.pm" "ac_IK_hand_L_fixer_pointConstraint1.tg[1].tpm";
connectAttr "ac_IK_hand_L_fixer_pointConstraint1.w1" "ac_IK_hand_L_fixer_pointConstraint1.tg[1].tw"
		;
connectAttr "blendColors2.opr" "ac_IK_hand_L_fixer_pointConstraint1.w0";
connectAttr "blendColors2.opg" "ac_IK_hand_L_fixer_pointConstraint1.w1";
connectAttr "ac_IK_hand_L_fixer.ro" "ac_IK_hand_L_fixer_orientConstraint1.cro";
connectAttr "ac_IK_hand_L_fixer.pim" "ac_IK_hand_L_fixer_orientConstraint1.cpim"
		;
connectAttr "Left_Hand_CTRL.r" "ac_IK_hand_L_fixer_orientConstraint1.tg[0].tr";
connectAttr "Left_Hand_CTRL.ro" "ac_IK_hand_L_fixer_orientConstraint1.tg[0].tro"
		;
connectAttr "Left_Hand_CTRL.pm" "ac_IK_hand_L_fixer_orientConstraint1.tg[0].tpm"
		;
connectAttr "ac_IK_hand_L_fixer_orientConstraint1.w0" "ac_IK_hand_L_fixer_orientConstraint1.tg[0].tw"
		;
connectAttr "FK_hand_L.r" "ac_IK_hand_L_fixer_orientConstraint1.tg[1].tr";
connectAttr "FK_hand_L.ro" "ac_IK_hand_L_fixer_orientConstraint1.tg[1].tro";
connectAttr "FK_hand_L.pm" "ac_IK_hand_L_fixer_orientConstraint1.tg[1].tpm";
connectAttr "ac_IK_hand_L_fixer_orientConstraint1.w1" "ac_IK_hand_L_fixer_orientConstraint1.tg[1].tw"
		;
connectAttr "blendColors2.opr" "ac_IK_hand_L_fixer_orientConstraint1.w0";
connectAttr "blendColors2.opg" "ac_IK_hand_L_fixer_orientConstraint1.w1";
connectAttr "ac_IK_hand_L_grp.ro" "ac_IK_hand_L_grp_parentConstraint1.cro";
connectAttr "ac_IK_hand_L_grp.pim" "ac_IK_hand_L_grp_parentConstraint1.cpim";
connectAttr "ac_IK_hand_L_grp.rp" "ac_IK_hand_L_grp_parentConstraint1.crp";
connectAttr "ac_IK_hand_L_grp.rpt" "ac_IK_hand_L_grp_parentConstraint1.crt";
connectAttr "ac_master.t" "ac_IK_hand_L_grp_parentConstraint1.tg[0].tt";
connectAttr "ac_master.rp" "ac_IK_hand_L_grp_parentConstraint1.tg[0].trp";
connectAttr "ac_master.rpt" "ac_IK_hand_L_grp_parentConstraint1.tg[0].trt";
connectAttr "ac_master.r" "ac_IK_hand_L_grp_parentConstraint1.tg[0].tr";
connectAttr "ac_master.ro" "ac_IK_hand_L_grp_parentConstraint1.tg[0].tro";
connectAttr "ac_master.s" "ac_IK_hand_L_grp_parentConstraint1.tg[0].ts";
connectAttr "ac_master.pm" "ac_IK_hand_L_grp_parentConstraint1.tg[0].tpm";
connectAttr "ac_IK_hand_L_grp_parentConstraint1.w0" "ac_IK_hand_L_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "ac_arm_IK_FK_blend_L.tx" "ac_IK_arm_pole_L_grp.v";
connectAttr "ac_IK_arm_pole_L_grp_parentConstraint1.ctx" "ac_IK_arm_pole_L_grp.tx"
		;
connectAttr "ac_IK_arm_pole_L_grp_parentConstraint1.cty" "ac_IK_arm_pole_L_grp.ty"
		;
connectAttr "ac_IK_arm_pole_L_grp_parentConstraint1.ctz" "ac_IK_arm_pole_L_grp.tz"
		;
connectAttr "ac_IK_arm_pole_L_grp_parentConstraint1.crx" "ac_IK_arm_pole_L_grp.rx"
		;
connectAttr "ac_IK_arm_pole_L_grp_parentConstraint1.cry" "ac_IK_arm_pole_L_grp.ry"
		;
connectAttr "ac_IK_arm_pole_L_grp_parentConstraint1.crz" "ac_IK_arm_pole_L_grp.rz"
		;
connectAttr "ac_IK_arm_pole_L_grp.ro" "ac_IK_arm_pole_L_grp_parentConstraint1.cro"
		;
connectAttr "ac_IK_arm_pole_L_grp.pim" "ac_IK_arm_pole_L_grp_parentConstraint1.cpim"
		;
connectAttr "ac_IK_arm_pole_L_grp.rp" "ac_IK_arm_pole_L_grp_parentConstraint1.crp"
		;
connectAttr "ac_IK_arm_pole_L_grp.rpt" "ac_IK_arm_pole_L_grp_parentConstraint1.crt"
		;
connectAttr "ac_master.t" "ac_IK_arm_pole_L_grp_parentConstraint1.tg[0].tt";
connectAttr "ac_master.rp" "ac_IK_arm_pole_L_grp_parentConstraint1.tg[0].trp";
connectAttr "ac_master.rpt" "ac_IK_arm_pole_L_grp_parentConstraint1.tg[0].trt";
connectAttr "ac_master.r" "ac_IK_arm_pole_L_grp_parentConstraint1.tg[0].tr";
connectAttr "ac_master.ro" "ac_IK_arm_pole_L_grp_parentConstraint1.tg[0].tro";
connectAttr "ac_master.s" "ac_IK_arm_pole_L_grp_parentConstraint1.tg[0].ts";
connectAttr "ac_master.pm" "ac_IK_arm_pole_L_grp_parentConstraint1.tg[0].tpm";
connectAttr "ac_IK_arm_pole_L_grp_parentConstraint1.w0" "ac_IK_arm_pole_L_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "reverse8.ix" "Left_weapon_setup.v";
connectAttr "Left_weapon_CTRL_Contrain_parentConstraint1.ctx" "Left_weapon_CTRL_Contrain.tx"
		;
connectAttr "Left_weapon_CTRL_Contrain_parentConstraint1.cty" "Left_weapon_CTRL_Contrain.ty"
		;
connectAttr "Left_weapon_CTRL_Contrain_parentConstraint1.ctz" "Left_weapon_CTRL_Contrain.tz"
		;
connectAttr "Left_weapon_CTRL_Contrain_parentConstraint1.crx" "Left_weapon_CTRL_Contrain.rx"
		;
connectAttr "Left_weapon_CTRL_Contrain_parentConstraint1.cry" "Left_weapon_CTRL_Contrain.ry"
		;
connectAttr "Left_weapon_CTRL_Contrain_parentConstraint1.crz" "Left_weapon_CTRL_Contrain.rz"
		;
connectAttr "Left_weapon_CTRL_Contrain.ro" "Left_weapon_CTRL_Contrain_parentConstraint1.cro"
		;
connectAttr "Left_weapon_CTRL_Contrain.pim" "Left_weapon_CTRL_Contrain_parentConstraint1.cpim"
		;
connectAttr "Left_weapon_CTRL_Contrain.rp" "Left_weapon_CTRL_Contrain_parentConstraint1.crp"
		;
connectAttr "Left_weapon_CTRL_Contrain.rpt" "Left_weapon_CTRL_Contrain_parentConstraint1.crt"
		;
connectAttr "ac_master.t" "Left_weapon_CTRL_Contrain_parentConstraint1.tg[0].tt"
		;
connectAttr "ac_master.rp" "Left_weapon_CTRL_Contrain_parentConstraint1.tg[0].trp"
		;
connectAttr "ac_master.rpt" "Left_weapon_CTRL_Contrain_parentConstraint1.tg[0].trt"
		;
connectAttr "ac_master.r" "Left_weapon_CTRL_Contrain_parentConstraint1.tg[0].tr"
		;
connectAttr "ac_master.ro" "Left_weapon_CTRL_Contrain_parentConstraint1.tg[0].tro"
		;
connectAttr "ac_master.s" "Left_weapon_CTRL_Contrain_parentConstraint1.tg[0].ts"
		;
connectAttr "ac_master.pm" "Left_weapon_CTRL_Contrain_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_weapon_CTRL_Contrain_parentConstraint1.w0" "Left_weapon_CTRL_Contrain_parentConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle8.oc" "Left_Hand_CTRLShape.cr";
connectAttr "Left_Hand_CNSTR.Twist_Visibility" "Left_arm_twists.v";
connectAttr "jt_drv_arm_upper_L_nuLL_parentConstraint1.ctx" "jt_drv_arm_upper_L_nuLL.tx"
		;
connectAttr "jt_drv_arm_upper_L_nuLL_parentConstraint1.cty" "jt_drv_arm_upper_L_nuLL.ty"
		;
connectAttr "jt_drv_arm_upper_L_nuLL_parentConstraint1.ctz" "jt_drv_arm_upper_L_nuLL.tz"
		;
connectAttr "jt_drv_arm_upper_L_nuLL_parentConstraint1.crx" "jt_drv_arm_upper_L_nuLL.rx"
		;
connectAttr "jt_drv_arm_upper_L_nuLL_parentConstraint1.cry" "jt_drv_arm_upper_L_nuLL.ry"
		;
connectAttr "jt_drv_arm_upper_L_nuLL_parentConstraint1.crz" "jt_drv_arm_upper_L_nuLL.rz"
		;
connectAttr "jt_drv_arm_upper_L_nuLL.ro" "jt_drv_arm_upper_L_nuLL_parentConstraint1.cro"
		;
connectAttr "jt_drv_arm_upper_L_nuLL.pim" "jt_drv_arm_upper_L_nuLL_parentConstraint1.cpim"
		;
connectAttr "jt_drv_arm_upper_L_nuLL.rp" "jt_drv_arm_upper_L_nuLL_parentConstraint1.crp"
		;
connectAttr "jt_drv_arm_upper_L_nuLL.rpt" "jt_drv_arm_upper_L_nuLL_parentConstraint1.crt"
		;
connectAttr "jt_drv_arm_upper_L.t" "jt_drv_arm_upper_L_nuLL_parentConstraint1.tg[0].tt"
		;
connectAttr "jt_drv_arm_upper_L.rp" "jt_drv_arm_upper_L_nuLL_parentConstraint1.tg[0].trp"
		;
connectAttr "jt_drv_arm_upper_L.rpt" "jt_drv_arm_upper_L_nuLL_parentConstraint1.tg[0].trt"
		;
connectAttr "jt_drv_arm_upper_L.r" "jt_drv_arm_upper_L_nuLL_parentConstraint1.tg[0].tr"
		;
connectAttr "jt_drv_arm_upper_L.ro" "jt_drv_arm_upper_L_nuLL_parentConstraint1.tg[0].tro"
		;
connectAttr "jt_drv_arm_upper_L.s" "jt_drv_arm_upper_L_nuLL_parentConstraint1.tg[0].ts"
		;
connectAttr "jt_drv_arm_upper_L.pm" "jt_drv_arm_upper_L_nuLL_parentConstraint1.tg[0].tpm"
		;
connectAttr "jt_drv_arm_upper_L.jo" "jt_drv_arm_upper_L_nuLL_parentConstraint1.tg[0].tjo"
		;
connectAttr "jt_drv_arm_upper_L.ssc" "jt_drv_arm_upper_L_nuLL_parentConstraint1.tg[0].tsc"
		;
connectAttr "jt_drv_arm_upper_L.is" "jt_drv_arm_upper_L_nuLL_parentConstraint1.tg[0].tis"
		;
connectAttr "jt_drv_arm_upper_L_nuLL_parentConstraint1.w0" "jt_drv_arm_upper_L_nuLL_parentConstraint1.tg[0].tw"
		;
connectAttr "jt_drv_arm_lower_L_null_parentConstraint1.ctx" "jt_drv_arm_lower_L_null.tx"
		;
connectAttr "jt_drv_arm_lower_L_null_parentConstraint1.cty" "jt_drv_arm_lower_L_null.ty"
		;
connectAttr "jt_drv_arm_lower_L_null_parentConstraint1.ctz" "jt_drv_arm_lower_L_null.tz"
		;
connectAttr "jt_drv_arm_lower_L_null_parentConstraint1.crx" "jt_drv_arm_lower_L_null.rx"
		;
connectAttr "jt_drv_arm_lower_L_null_parentConstraint1.cry" "jt_drv_arm_lower_L_null.ry"
		;
connectAttr "jt_drv_arm_lower_L_null_parentConstraint1.crz" "jt_drv_arm_lower_L_null.rz"
		;
connectAttr "jt_drv_arm_lower_L_null.ro" "jt_drv_arm_lower_L_null_parentConstraint1.cro"
		;
connectAttr "jt_drv_arm_lower_L_null.pim" "jt_drv_arm_lower_L_null_parentConstraint1.cpim"
		;
connectAttr "jt_drv_arm_lower_L_null.rp" "jt_drv_arm_lower_L_null_parentConstraint1.crp"
		;
connectAttr "jt_drv_arm_lower_L_null.rpt" "jt_drv_arm_lower_L_null_parentConstraint1.crt"
		;
connectAttr "jt_drv_arm_lower_L.t" "jt_drv_arm_lower_L_null_parentConstraint1.tg[0].tt"
		;
connectAttr "jt_drv_arm_lower_L.rp" "jt_drv_arm_lower_L_null_parentConstraint1.tg[0].trp"
		;
connectAttr "jt_drv_arm_lower_L.rpt" "jt_drv_arm_lower_L_null_parentConstraint1.tg[0].trt"
		;
connectAttr "jt_drv_arm_lower_L.r" "jt_drv_arm_lower_L_null_parentConstraint1.tg[0].tr"
		;
connectAttr "jt_drv_arm_lower_L.ro" "jt_drv_arm_lower_L_null_parentConstraint1.tg[0].tro"
		;
connectAttr "jt_drv_arm_lower_L.s" "jt_drv_arm_lower_L_null_parentConstraint1.tg[0].ts"
		;
connectAttr "jt_drv_arm_lower_L.pm" "jt_drv_arm_lower_L_null_parentConstraint1.tg[0].tpm"
		;
connectAttr "jt_drv_arm_lower_L.jo" "jt_drv_arm_lower_L_null_parentConstraint1.tg[0].tjo"
		;
connectAttr "jt_drv_arm_lower_L.ssc" "jt_drv_arm_lower_L_null_parentConstraint1.tg[0].tsc"
		;
connectAttr "jt_drv_arm_lower_L.is" "jt_drv_arm_lower_L_null_parentConstraint1.tg[0].tis"
		;
connectAttr "jt_drv_arm_lower_L_null_parentConstraint1.w0" "jt_drv_arm_lower_L_null_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_hand_rig_parentConstraint1.ctx" "Left_hand_rig.tx";
connectAttr "Left_hand_rig_parentConstraint1.cty" "Left_hand_rig.ty";
connectAttr "Left_hand_rig_parentConstraint1.ctz" "Left_hand_rig.tz";
connectAttr "Left_hand_rig_parentConstraint1.crx" "Left_hand_rig.rx";
connectAttr "Left_hand_rig_parentConstraint1.cry" "Left_hand_rig.ry";
connectAttr "Left_hand_rig_parentConstraint1.crz" "Left_hand_rig.rz";
connectAttr "ac_drv_finger_ring_1_L.v" "ac_drv_finger_thumb_0_L.v" -l on;
connectAttr "Left_Hand_CNSTR.Finger_CTRLS" "ac_drv_finger_thumb_1_L.v" -l on;
connectAttr "ac_drv_finger_middle_2_L.v" "ac_drv_finger_thumb_2_L.v" -l on;
connectAttr "ac_drv_finger_thumb_1_L.v" "ac_finger_middle_meta_L.v" -l on;
connectAttr "makeNurbCircle13.oc" "ac_finger_middle_meta_LShape.cr";
connectAttr "ac_finger_index_meta_L.v" "ac_drv_finger_middle_0_L.v" -l on;
connectAttr "ac_drv_finger_pinky_0_L.v" "ac_drv_finger_middle_1_L.v" -l on;
connectAttr "ac_drv_finger_middle_1_L.v" "ac_drv_finger_middle_2_L.v" -l on;
connectAttr "ac_drv_finger_index_2_L.v" "ac_finger_pinky_meta_L.v" -l on;
connectAttr "makeNurbCircle10.oc" "ac_finger_pinky_meta_LShape.cr";
connectAttr "ac_finger_pinky_meta_L.v" "ac_drv_finger_pinky_0_L.v" -l on;
connectAttr "ac_drv_finger_middle_0_L.v" "ac_drv_finger_pinky_1_L.v" -l on;
connectAttr "ac_finger_ring_meta_L.v" "ac_drv_finger_pinky_2_L.v" -l on;
connectAttr "ac_drv_finger_ring_2_L.v" "ac_finger_index_meta_L.v" -l on;
connectAttr "makeNurbCircle11.oc" "ac_finger_index_meta_LShape.cr";
connectAttr "ac_drv_finger_thumb_0_L.v" "ac_drv_finger_index_0_L.v" -l on;
connectAttr "ac_finger_middle_meta_L.v" "ac_drv_finger_index_1_L.v" -l on;
connectAttr "ac_drv_finger_index_0_L.v" "ac_drv_finger_index_2_L.v" -l on;
connectAttr "ac_drv_finger_thumb_2_L.v" "ac_finger_ring_meta_L.v" -l on;
connectAttr "makeNurbCircle12.oc" "ac_finger_ring_meta_LShape.cr";
connectAttr "ac_drv_finger_pinky_2_L.v" "ac_drv_finger_ring_0_L.v" -l on;
connectAttr "ac_drv_finger_pinky_1_L.v" "ac_drv_finger_ring_1_L.v" -l on;
connectAttr "ac_drv_finger_index_1_L.v" "ac_drv_finger_ring_2_L.v" -l on;
connectAttr "Left_hand_rig.ro" "Left_hand_rig_parentConstraint1.cro";
connectAttr "Left_hand_rig.pim" "Left_hand_rig_parentConstraint1.cpim";
connectAttr "Left_hand_rig.rp" "Left_hand_rig_parentConstraint1.crp";
connectAttr "Left_hand_rig.rpt" "Left_hand_rig_parentConstraint1.crt";
connectAttr "jt_drv_hand_L.t" "Left_hand_rig_parentConstraint1.tg[0].tt";
connectAttr "jt_drv_hand_L.rp" "Left_hand_rig_parentConstraint1.tg[0].trp";
connectAttr "jt_drv_hand_L.rpt" "Left_hand_rig_parentConstraint1.tg[0].trt";
connectAttr "jt_drv_hand_L.r" "Left_hand_rig_parentConstraint1.tg[0].tr";
connectAttr "jt_drv_hand_L.ro" "Left_hand_rig_parentConstraint1.tg[0].tro";
connectAttr "jt_drv_hand_L.s" "Left_hand_rig_parentConstraint1.tg[0].ts";
connectAttr "jt_drv_hand_L.pm" "Left_hand_rig_parentConstraint1.tg[0].tpm";
connectAttr "jt_drv_hand_L.jo" "Left_hand_rig_parentConstraint1.tg[0].tjo";
connectAttr "jt_drv_hand_L.ssc" "Left_hand_rig_parentConstraint1.tg[0].tsc";
connectAttr "jt_drv_hand_L.is" "Left_hand_rig_parentConstraint1.tg[0].tis";
connectAttr "Left_hand_rig_parentConstraint1.w0" "Left_hand_rig_parentConstraint1.tg[0].tw"
		;
connectAttr "ac_arm_IK_FK_blend_R_grp.v" "ac_arm_IK_FK_blend_L_grp.v";
connectAttr "ac_arm_IK_FK_blend_L_grp_parentConstraint1.ctx" "ac_arm_IK_FK_blend_L_grp.tx"
		;
connectAttr "ac_arm_IK_FK_blend_L_grp_parentConstraint1.cty" "ac_arm_IK_FK_blend_L_grp.ty"
		;
connectAttr "ac_arm_IK_FK_blend_L_grp_parentConstraint1.ctz" "ac_arm_IK_FK_blend_L_grp.tz"
		;
connectAttr "ac_arm_IK_FK_blend_L_grp_parentConstraint1.crx" "ac_arm_IK_FK_blend_L_grp.rx"
		;
connectAttr "ac_arm_IK_FK_blend_L_grp_parentConstraint1.cry" "ac_arm_IK_FK_blend_L_grp.ry"
		;
connectAttr "ac_arm_IK_FK_blend_L_grp_parentConstraint1.crz" "ac_arm_IK_FK_blend_L_grp.rz"
		;
connectAttr "makeNurbCircle1.oc" "ac_arm_IK_FK_blend_LShape.cr";
connectAttr "ac_arm_IK_FK_blend_L.tx" "|csgo_character|setup|arm_rig_L|ac_arm_IK_FK_blend_L_grp|display_mode_arm_L|IK_dis.v"
		;
connectAttr "reverse3.ox" "|csgo_character|setup|arm_rig_L|ac_arm_IK_FK_blend_L_grp|display_mode_arm_L|FK_dis.v"
		;
connectAttr "ac_arm_IK_FK_blend_L_grp.ro" "ac_arm_IK_FK_blend_L_grp_parentConstraint1.cro"
		;
connectAttr "ac_arm_IK_FK_blend_L_grp.pim" "ac_arm_IK_FK_blend_L_grp_parentConstraint1.cpim"
		;
connectAttr "ac_arm_IK_FK_blend_L_grp.rp" "ac_arm_IK_FK_blend_L_grp_parentConstraint1.crp"
		;
connectAttr "ac_arm_IK_FK_blend_L_grp.rpt" "ac_arm_IK_FK_blend_L_grp_parentConstraint1.crt"
		;
connectAttr "jt_drv_arm_lower_L.t" "ac_arm_IK_FK_blend_L_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jt_drv_arm_lower_L.rp" "ac_arm_IK_FK_blend_L_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jt_drv_arm_lower_L.rpt" "ac_arm_IK_FK_blend_L_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jt_drv_arm_lower_L.r" "ac_arm_IK_FK_blend_L_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jt_drv_arm_lower_L.ro" "ac_arm_IK_FK_blend_L_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jt_drv_arm_lower_L.s" "ac_arm_IK_FK_blend_L_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jt_drv_arm_lower_L.pm" "ac_arm_IK_FK_blend_L_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jt_drv_arm_lower_L.jo" "ac_arm_IK_FK_blend_L_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jt_drv_arm_lower_L.ssc" "ac_arm_IK_FK_blend_L_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jt_drv_arm_lower_L.is" "ac_arm_IK_FK_blend_L_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "ac_arm_IK_FK_blend_L_grp_parentConstraint1.w0" "ac_arm_IK_FK_blend_L_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Custom_lines_for_pole_vector.di" "L_pole_vector_arm_line.do";
connectAttr "Left_weapon_setup.v" "L_pole_vector_arm_line.v";
connectAttr "L_pole_vector_arm_line_lowerCluster.og[0]" "L_pole_vector_arm_lineShape.cr"
		;
connectAttr "tweak5.pl[0].cp[0]" "L_pole_vector_arm_lineShape.twl";
connectAttr "cluster5GroupId.id" "L_pole_vector_arm_lineShape.iog.og[0].gid";
connectAttr "cluster5Set.mwc" "L_pole_vector_arm_lineShape.iog.og[0].gco";
connectAttr "groupId11.id" "L_pole_vector_arm_lineShape.iog.og[1].gid";
connectAttr "tweakSet5.mwc" "L_pole_vector_arm_lineShape.iog.og[1].gco";
connectAttr "cluster6GroupId.id" "L_pole_vector_arm_lineShape.iog.og[2].gid";
connectAttr "cluster6Set.mwc" "L_pole_vector_arm_lineShape.iog.og[2].gco";
connectAttr "ac_master.Visibility_Controls" "arm_rig_R.v";
connectAttr "ac_DRV_arm_jt_R_parentConstraint1.ctx" "ac_DRV_arm_jt_R.tx";
connectAttr "ac_DRV_arm_jt_R_parentConstraint1.cty" "ac_DRV_arm_jt_R.ty";
connectAttr "ac_DRV_arm_jt_R_parentConstraint1.ctz" "ac_DRV_arm_jt_R.tz";
connectAttr "ac_DRV_arm_jt_R_parentConstraint1.crx" "ac_DRV_arm_jt_R.rx";
connectAttr "ac_DRV_arm_jt_R_parentConstraint1.cry" "ac_DRV_arm_jt_R.ry";
connectAttr "ac_DRV_arm_jt_R_parentConstraint1.crz" "ac_DRV_arm_jt_R.rz";
connectAttr "jt_drv_arm_upper_R_orientConstraint1.crx" "jt_drv_arm_upper_R.rx";
connectAttr "jt_drv_arm_upper_R_orientConstraint1.cry" "jt_drv_arm_upper_R.ry";
connectAttr "jt_drv_arm_upper_R_orientConstraint1.crz" "jt_drv_arm_upper_R.rz";
connectAttr "jt_drv_arm_lower_R_orientConstraint1.crx" "jt_drv_arm_lower_R.rx";
connectAttr "jt_drv_arm_lower_R_orientConstraint1.cry" "jt_drv_arm_lower_R.ry";
connectAttr "jt_drv_arm_lower_R_orientConstraint1.crz" "jt_drv_arm_lower_R.rz";
connectAttr "jt_drv_arm_upper_R.s" "jt_drv_arm_lower_R.is";
connectAttr "jt_drv_hand_R_orientConstraint1.crx" "jt_drv_hand_R.rx";
connectAttr "jt_drv_hand_R_orientConstraint1.cry" "jt_drv_hand_R.ry";
connectAttr "jt_drv_hand_R_orientConstraint1.crz" "jt_drv_hand_R.rz";
connectAttr "jt_drv_arm_lower_R.s" "jt_drv_hand_R.is";
connectAttr "jt_drv_hand_R.ro" "jt_drv_hand_R_orientConstraint1.cro";
connectAttr "jt_drv_hand_R.pim" "jt_drv_hand_R_orientConstraint1.cpim";
connectAttr "jt_drv_hand_R.jo" "jt_drv_hand_R_orientConstraint1.cjo";
connectAttr "jt_drv_hand_R.is" "jt_drv_hand_R_orientConstraint1.is";
connectAttr "Right_Hand_CNSTR.r" "jt_drv_hand_R_orientConstraint1.tg[0].tr";
connectAttr "Right_Hand_CNSTR.ro" "jt_drv_hand_R_orientConstraint1.tg[0].tro";
connectAttr "Right_Hand_CNSTR.pm" "jt_drv_hand_R_orientConstraint1.tg[0].tpm";
connectAttr "jt_drv_hand_R_orientConstraint1.w0" "jt_drv_hand_R_orientConstraint1.tg[0].tw"
		;
connectAttr "jt_drv_arm_lower_R.ro" "jt_drv_arm_lower_R_orientConstraint1.cro";
connectAttr "jt_drv_arm_lower_R.pim" "jt_drv_arm_lower_R_orientConstraint1.cpim"
		;
connectAttr "jt_drv_arm_lower_R.jo" "jt_drv_arm_lower_R_orientConstraint1.cjo";
connectAttr "jt_drv_arm_lower_R.is" "jt_drv_arm_lower_R_orientConstraint1.is";
connectAttr "FK_arm_lower_R.r" "jt_drv_arm_lower_R_orientConstraint1.tg[0].tr";
connectAttr "FK_arm_lower_R.ro" "jt_drv_arm_lower_R_orientConstraint1.tg[0].tro"
		;
connectAttr "FK_arm_lower_R.pm" "jt_drv_arm_lower_R_orientConstraint1.tg[0].tpm"
		;
connectAttr "jt_drv_arm_lower_R_orientConstraint1.w0" "jt_drv_arm_lower_R_orientConstraint1.tg[0].tw"
		;
connectAttr "jt_drv_hand_R.tx" "effector2.tx";
connectAttr "jt_drv_hand_R.ty" "effector2.ty";
connectAttr "jt_drv_hand_R.tz" "effector2.tz";
connectAttr "jt_drv_arm_upper_R.ro" "jt_drv_arm_upper_R_orientConstraint1.cro";
connectAttr "jt_drv_arm_upper_R.pim" "jt_drv_arm_upper_R_orientConstraint1.cpim"
		;
connectAttr "jt_drv_arm_upper_R.jo" "jt_drv_arm_upper_R_orientConstraint1.cjo";
connectAttr "jt_drv_arm_upper_R.is" "jt_drv_arm_upper_R_orientConstraint1.is";
connectAttr "FK_arm_upper_R.r" "jt_drv_arm_upper_R_orientConstraint1.tg[0].tr";
connectAttr "FK_arm_upper_R.ro" "jt_drv_arm_upper_R_orientConstraint1.tg[0].tro"
		;
connectAttr "FK_arm_upper_R.pm" "jt_drv_arm_upper_R_orientConstraint1.tg[0].tpm"
		;
connectAttr "jt_drv_arm_upper_R_orientConstraint1.w0" "jt_drv_arm_upper_R_orientConstraint1.tg[0].tw"
		;
connectAttr "ac_DRV_arm_jt_R.ro" "ac_DRV_arm_jt_R_parentConstraint1.cro";
connectAttr "ac_DRV_arm_jt_R.pim" "ac_DRV_arm_jt_R_parentConstraint1.cpim";
connectAttr "ac_DRV_arm_jt_R.rp" "ac_DRV_arm_jt_R_parentConstraint1.crp";
connectAttr "ac_DRV_arm_jt_R.rpt" "ac_DRV_arm_jt_R_parentConstraint1.crt";
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.t" "ac_DRV_arm_jt_R_parentConstraint1.tg[0].tt"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.rp" "ac_DRV_arm_jt_R_parentConstraint1.tg[0].trp"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.rpt" "ac_DRV_arm_jt_R_parentConstraint1.tg[0].trt"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.r" "ac_DRV_arm_jt_R_parentConstraint1.tg[0].tr"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.ro" "ac_DRV_arm_jt_R_parentConstraint1.tg[0].tro"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.s" "ac_DRV_arm_jt_R_parentConstraint1.tg[0].ts"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.pm" "ac_DRV_arm_jt_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.jo" "ac_DRV_arm_jt_R_parentConstraint1.tg[0].tjo"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.ssc" "ac_DRV_arm_jt_R_parentConstraint1.tg[0].tsc"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.is" "ac_DRV_arm_jt_R_parentConstraint1.tg[0].tis"
		;
connectAttr "ac_DRV_arm_jt_R_parentConstraint1.w0" "ac_DRV_arm_jt_R_parentConstraint1.tg[0].tw"
		;
connectAttr "ac_IK_arm_pole_R_grp.v" "|csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|ac_IK_hand_R_grp.v"
		;
connectAttr "ac_IK_hand_R_grp_parentConstraint1.ctx" "|csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|ac_IK_hand_R_grp.tx"
		;
connectAttr "ac_IK_hand_R_grp_parentConstraint1.cty" "|csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|ac_IK_hand_R_grp.ty"
		;
connectAttr "ac_IK_hand_R_grp_parentConstraint1.ctz" "|csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|ac_IK_hand_R_grp.tz"
		;
connectAttr "ac_IK_hand_R_grp_parentConstraint1.crx" "|csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|ac_IK_hand_R_grp.rx"
		;
connectAttr "ac_IK_hand_R_grp_parentConstraint1.cry" "|csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|ac_IK_hand_R_grp.ry"
		;
connectAttr "ac_IK_hand_R_grp_parentConstraint1.crz" "|csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|ac_IK_hand_R_grp.rz"
		;
connectAttr "|csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|ac_IK_hand_R_grp.ro" "ac_IK_hand_R_grp_parentConstraint1.cro"
		;
connectAttr "|csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|ac_IK_hand_R_grp.pim" "ac_IK_hand_R_grp_parentConstraint1.cpim"
		;
connectAttr "|csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|ac_IK_hand_R_grp.rp" "ac_IK_hand_R_grp_parentConstraint1.crp"
		;
connectAttr "|csgo_character|setup|arm_rig_R|ac_arm_setup_R_grp|ac_IK_hand_R_grp.rpt" "ac_IK_hand_R_grp_parentConstraint1.crt"
		;
connectAttr "ac_master.t" "ac_IK_hand_R_grp_parentConstraint1.tg[0].tt";
connectAttr "ac_master.rp" "ac_IK_hand_R_grp_parentConstraint1.tg[0].trp";
connectAttr "ac_master.rpt" "ac_IK_hand_R_grp_parentConstraint1.tg[0].trt";
connectAttr "ac_master.r" "ac_IK_hand_R_grp_parentConstraint1.tg[0].tr";
connectAttr "ac_master.ro" "ac_IK_hand_R_grp_parentConstraint1.tg[0].tro";
connectAttr "ac_master.s" "ac_IK_hand_R_grp_parentConstraint1.tg[0].ts";
connectAttr "ac_master.pm" "ac_IK_hand_R_grp_parentConstraint1.tg[0].tpm";
connectAttr "ac_IK_hand_R_grp_parentConstraint1.w0" "ac_IK_hand_R_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "ac_arm_IK_FK_blend_R.tx" "ac_IK_arm_pole_R_grp.v";
connectAttr "ac_IK_arm_pole_R_grp_parentConstraint1.ctx" "ac_IK_arm_pole_R_grp.tx"
		;
connectAttr "ac_IK_arm_pole_R_grp_parentConstraint1.cty" "ac_IK_arm_pole_R_grp.ty"
		;
connectAttr "ac_IK_arm_pole_R_grp_parentConstraint1.ctz" "ac_IK_arm_pole_R_grp.tz"
		;
connectAttr "ac_IK_arm_pole_R_grp_parentConstraint1.crx" "ac_IK_arm_pole_R_grp.rx"
		;
connectAttr "ac_IK_arm_pole_R_grp_parentConstraint1.cry" "ac_IK_arm_pole_R_grp.ry"
		;
connectAttr "ac_IK_arm_pole_R_grp_parentConstraint1.crz" "ac_IK_arm_pole_R_grp.rz"
		;
connectAttr "ac_IK_arm_pole_R_grp.ro" "ac_IK_arm_pole_R_grp_parentConstraint1.cro"
		;
connectAttr "ac_IK_arm_pole_R_grp.pim" "ac_IK_arm_pole_R_grp_parentConstraint1.cpim"
		;
connectAttr "ac_IK_arm_pole_R_grp.rp" "ac_IK_arm_pole_R_grp_parentConstraint1.crp"
		;
connectAttr "ac_IK_arm_pole_R_grp.rpt" "ac_IK_arm_pole_R_grp_parentConstraint1.crt"
		;
connectAttr "ac_master.t" "ac_IK_arm_pole_R_grp_parentConstraint1.tg[0].tt";
connectAttr "ac_master.rp" "ac_IK_arm_pole_R_grp_parentConstraint1.tg[0].trp";
connectAttr "ac_master.rpt" "ac_IK_arm_pole_R_grp_parentConstraint1.tg[0].trt";
connectAttr "ac_master.r" "ac_IK_arm_pole_R_grp_parentConstraint1.tg[0].tr";
connectAttr "ac_master.ro" "ac_IK_arm_pole_R_grp_parentConstraint1.tg[0].tro";
connectAttr "ac_master.s" "ac_IK_arm_pole_R_grp_parentConstraint1.tg[0].ts";
connectAttr "ac_master.pm" "ac_IK_arm_pole_R_grp_parentConstraint1.tg[0].tpm";
connectAttr "ac_IK_arm_pole_R_grp_parentConstraint1.w0" "ac_IK_arm_pole_R_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "reverse_arm_IK_FK_R.ox" "ac_FK_arm_upper_R_grp.v";
connectAttr "ac_FK_arm_upper_R_grp_parentConstraint1.ctx" "ac_FK_arm_upper_R_grp.tx"
		;
connectAttr "ac_FK_arm_upper_R_grp_parentConstraint1.cty" "ac_FK_arm_upper_R_grp.ty"
		;
connectAttr "ac_FK_arm_upper_R_grp_parentConstraint1.ctz" "ac_FK_arm_upper_R_grp.tz"
		;
connectAttr "ac_FK_arm_upper_R_grp_parentConstraint1.crx" "ac_FK_arm_upper_R_grp.rx"
		;
connectAttr "ac_FK_arm_upper_R_grp_parentConstraint1.cry" "ac_FK_arm_upper_R_grp.ry"
		;
connectAttr "ac_FK_arm_upper_R_grp_parentConstraint1.crz" "ac_FK_arm_upper_R_grp.rz"
		;
connectAttr "ac_FK_arm_upper_R_grp.ro" "ac_FK_arm_upper_R_grp_parentConstraint1.cro"
		;
connectAttr "ac_FK_arm_upper_R_grp.pim" "ac_FK_arm_upper_R_grp_parentConstraint1.cpim"
		;
connectAttr "ac_FK_arm_upper_R_grp.rp" "ac_FK_arm_upper_R_grp_parentConstraint1.crp"
		;
connectAttr "ac_FK_arm_upper_R_grp.rpt" "ac_FK_arm_upper_R_grp_parentConstraint1.crt"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.t" "ac_FK_arm_upper_R_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.rp" "ac_FK_arm_upper_R_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.rpt" "ac_FK_arm_upper_R_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.r" "ac_FK_arm_upper_R_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.ro" "ac_FK_arm_upper_R_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.s" "ac_FK_arm_upper_R_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.pm" "ac_FK_arm_upper_R_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.jo" "ac_FK_arm_upper_R_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.ssc" "ac_FK_arm_upper_R_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "|csgo_character|setup|spine_rig1|ac_FK_spine_1_grp|ac_FK_spine_1|ac_FK_spine_2_grp|ac_FK_spine_2|ac_FK_spine_3_grp|ac_chest|clavicle_rig|jt_drv_clavicle_R|jt_drv_upper_L_end.is" "ac_FK_arm_upper_R_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "ac_FK_arm_upper_R_grp_parentConstraint1.w0" "ac_FK_arm_upper_R_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Hand_CNSTR.Twist_Visibility" "Right_arm_twists.v";
connectAttr "jt_drv_arm_upper_R_null_parentConstraint1.ctx" "jt_drv_arm_upper_R_null.tx"
		;
connectAttr "jt_drv_arm_upper_R_null_parentConstraint1.cty" "jt_drv_arm_upper_R_null.ty"
		;
connectAttr "jt_drv_arm_upper_R_null_parentConstraint1.ctz" "jt_drv_arm_upper_R_null.tz"
		;
connectAttr "jt_drv_arm_upper_R_null_parentConstraint1.crx" "jt_drv_arm_upper_R_null.rx"
		;
connectAttr "jt_drv_arm_upper_R_null_parentConstraint1.cry" "jt_drv_arm_upper_R_null.ry"
		;
connectAttr "jt_drv_arm_upper_R_null_parentConstraint1.crz" "jt_drv_arm_upper_R_null.rz"
		;
connectAttr "jt_drv_arm_upper_R_null.ro" "jt_drv_arm_upper_R_null_parentConstraint1.cro"
		;
connectAttr "jt_drv_arm_upper_R_null.pim" "jt_drv_arm_upper_R_null_parentConstraint1.cpim"
		;
connectAttr "jt_drv_arm_upper_R_null.rp" "jt_drv_arm_upper_R_null_parentConstraint1.crp"
		;
connectAttr "jt_drv_arm_upper_R_null.rpt" "jt_drv_arm_upper_R_null_parentConstraint1.crt"
		;
connectAttr "jt_drv_arm_upper_R.t" "jt_drv_arm_upper_R_null_parentConstraint1.tg[0].tt"
		;
connectAttr "jt_drv_arm_upper_R.rp" "jt_drv_arm_upper_R_null_parentConstraint1.tg[0].trp"
		;
connectAttr "jt_drv_arm_upper_R.rpt" "jt_drv_arm_upper_R_null_parentConstraint1.tg[0].trt"
		;
connectAttr "jt_drv_arm_upper_R.r" "jt_drv_arm_upper_R_null_parentConstraint1.tg[0].tr"
		;
connectAttr "jt_drv_arm_upper_R.ro" "jt_drv_arm_upper_R_null_parentConstraint1.tg[0].tro"
		;
connectAttr "jt_drv_arm_upper_R.s" "jt_drv_arm_upper_R_null_parentConstraint1.tg[0].ts"
		;
connectAttr "jt_drv_arm_upper_R.pm" "jt_drv_arm_upper_R_null_parentConstraint1.tg[0].tpm"
		;
connectAttr "jt_drv_arm_upper_R.jo" "jt_drv_arm_upper_R_null_parentConstraint1.tg[0].tjo"
		;
connectAttr "jt_drv_arm_upper_R.ssc" "jt_drv_arm_upper_R_null_parentConstraint1.tg[0].tsc"
		;
connectAttr "jt_drv_arm_upper_R.is" "jt_drv_arm_upper_R_null_parentConstraint1.tg[0].tis"
		;
connectAttr "jt_drv_arm_upper_R_null_parentConstraint1.w0" "jt_drv_arm_upper_R_null_parentConstraint1.tg[0].tw"
		;
connectAttr "jt_drv_arm_lower_R_null_parentConstraint1.ctx" "jt_drv_arm_lower_R_null.tx"
		;
connectAttr "jt_drv_arm_lower_R_null_parentConstraint1.cty" "jt_drv_arm_lower_R_null.ty"
		;
connectAttr "jt_drv_arm_lower_R_null_parentConstraint1.ctz" "jt_drv_arm_lower_R_null.tz"
		;
connectAttr "jt_drv_arm_lower_R_null_parentConstraint1.crx" "jt_drv_arm_lower_R_null.rx"
		;
connectAttr "jt_drv_arm_lower_R_null_parentConstraint1.cry" "jt_drv_arm_lower_R_null.ry"
		;
connectAttr "jt_drv_arm_lower_R_null_parentConstraint1.crz" "jt_drv_arm_lower_R_null.rz"
		;
connectAttr "jt_drv_arm_lower_R_null.ro" "jt_drv_arm_lower_R_null_parentConstraint1.cro"
		;
connectAttr "jt_drv_arm_lower_R_null.pim" "jt_drv_arm_lower_R_null_parentConstraint1.cpim"
		;
connectAttr "jt_drv_arm_lower_R_null.rp" "jt_drv_arm_lower_R_null_parentConstraint1.crp"
		;
connectAttr "jt_drv_arm_lower_R_null.rpt" "jt_drv_arm_lower_R_null_parentConstraint1.crt"
		;
connectAttr "jt_drv_arm_lower_R.t" "jt_drv_arm_lower_R_null_parentConstraint1.tg[0].tt"
		;
connectAttr "jt_drv_arm_lower_R.rp" "jt_drv_arm_lower_R_null_parentConstraint1.tg[0].trp"
		;
connectAttr "jt_drv_arm_lower_R.rpt" "jt_drv_arm_lower_R_null_parentConstraint1.tg[0].trt"
		;
connectAttr "jt_drv_arm_lower_R.r" "jt_drv_arm_lower_R_null_parentConstraint1.tg[0].tr"
		;
connectAttr "jt_drv_arm_lower_R.ro" "jt_drv_arm_lower_R_null_parentConstraint1.tg[0].tro"
		;
connectAttr "jt_drv_arm_lower_R.s" "jt_drv_arm_lower_R_null_parentConstraint1.tg[0].ts"
		;
connectAttr "jt_drv_arm_lower_R.pm" "jt_drv_arm_lower_R_null_parentConstraint1.tg[0].tpm"
		;
connectAttr "jt_drv_arm_lower_R.jo" "jt_drv_arm_lower_R_null_parentConstraint1.tg[0].tjo"
		;
connectAttr "jt_drv_arm_lower_R.ssc" "jt_drv_arm_lower_R_null_parentConstraint1.tg[0].tsc"
		;
connectAttr "jt_drv_arm_lower_R.is" "jt_drv_arm_lower_R_null_parentConstraint1.tg[0].tis"
		;
connectAttr "jt_drv_arm_lower_R_null_parentConstraint1.w0" "jt_drv_arm_lower_R_null_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_hand_rig_parentConstraint1.ctx" "Right_hand_rig.tx";
connectAttr "Right_hand_rig_parentConstraint1.cty" "Right_hand_rig.ty";
connectAttr "Right_hand_rig_parentConstraint1.ctz" "Right_hand_rig.tz";
connectAttr "Right_hand_rig_parentConstraint1.crx" "Right_hand_rig.rx";
connectAttr "Right_hand_rig_parentConstraint1.cry" "Right_hand_rig.ry";
connectAttr "Right_hand_rig_parentConstraint1.crz" "Right_hand_rig.rz";
connectAttr "ac_finger_index_meta_R.v" "ac_drv_finger_thumb_0_R.v" -l on;
connectAttr "ac_finger_pinky_meta_R.v" "ac_finger_middle_meta_R.v" -l on;
connectAttr "ac_drv_finger_thumb_0_R.v" "ac_finger_pinky_meta_R.v" -l on;
connectAttr "Right_Hand_CNSTR.Finger_CTRLS" "ac_finger_index_meta_R.v" -l on;
connectAttr "ac_finger_middle_meta_R.v" "ac_finger_ring_meta_R.v" -l on;
connectAttr "Right_hand_rig.ro" "Right_hand_rig_parentConstraint1.cro";
connectAttr "Right_hand_rig.pim" "Right_hand_rig_parentConstraint1.cpim";
connectAttr "Right_hand_rig.rp" "Right_hand_rig_parentConstraint1.crp";
connectAttr "Right_hand_rig.rpt" "Right_hand_rig_parentConstraint1.crt";
connectAttr "jt_drv_hand_R.t" "Right_hand_rig_parentConstraint1.tg[0].tt";
connectAttr "jt_drv_hand_R.rp" "Right_hand_rig_parentConstraint1.tg[0].trp";
connectAttr "jt_drv_hand_R.rpt" "Right_hand_rig_parentConstraint1.tg[0].trt";
connectAttr "jt_drv_hand_R.r" "Right_hand_rig_parentConstraint1.tg[0].tr";
connectAttr "jt_drv_hand_R.ro" "Right_hand_rig_parentConstraint1.tg[0].tro";
connectAttr "jt_drv_hand_R.s" "Right_hand_rig_parentConstraint1.tg[0].ts";
connectAttr "jt_drv_hand_R.pm" "Right_hand_rig_parentConstraint1.tg[0].tpm";
connectAttr "jt_drv_hand_R.jo" "Right_hand_rig_parentConstraint1.tg[0].tjo";
connectAttr "jt_drv_hand_R.ssc" "Right_hand_rig_parentConstraint1.tg[0].tsc";
connectAttr "jt_drv_hand_R.is" "Right_hand_rig_parentConstraint1.tg[0].tis";
connectAttr "Right_hand_rig_parentConstraint1.w0" "Right_hand_rig_parentConstraint1.tg[0].tw"
		;
connectAttr "ac_IK_hand_R_grp_parentConstraint2.ctx" "|csgo_character|setup|arm_rig_R|ac_IK_hand_R_grp.tx"
		;
connectAttr "ac_IK_hand_R_grp_parentConstraint2.cty" "|csgo_character|setup|arm_rig_R|ac_IK_hand_R_grp.ty"
		;
connectAttr "ac_IK_hand_R_grp_parentConstraint2.ctz" "|csgo_character|setup|arm_rig_R|ac_IK_hand_R_grp.tz"
		;
connectAttr "ac_IK_hand_R_grp_parentConstraint2.crx" "|csgo_character|setup|arm_rig_R|ac_IK_hand_R_grp.rx"
		;
connectAttr "ac_IK_hand_R_grp_parentConstraint2.cry" "|csgo_character|setup|arm_rig_R|ac_IK_hand_R_grp.ry"
		;
connectAttr "ac_IK_hand_R_grp_parentConstraint2.crz" "|csgo_character|setup|arm_rig_R|ac_IK_hand_R_grp.rz"
		;
connectAttr "ac_IK_hand_R_fixer_pointConstraint1.ctx" "ac_IK_hand_R_fixer.tx";
connectAttr "ac_IK_hand_R_fixer_pointConstraint1.cty" "ac_IK_hand_R_fixer.ty";
connectAttr "ac_IK_hand_R_fixer_pointConstraint1.ctz" "ac_IK_hand_R_fixer.tz";
connectAttr "ac_IK_hand_R_fixer_orientConstraint1.crx" "ac_IK_hand_R_fixer.rx";
connectAttr "ac_IK_hand_R_fixer_orientConstraint1.cry" "ac_IK_hand_R_fixer.ry";
connectAttr "ac_IK_hand_R_fixer_orientConstraint1.crz" "ac_IK_hand_R_fixer.rz";
connectAttr "jt_drv_arm_upper_R.msg" "ikHandle_arm_hand_R.hsj";
connectAttr "effector2.hp" "ikHandle_arm_hand_R.hee";
connectAttr "ikRPsolver.msg" "ikHandle_arm_hand_R.hsv";
connectAttr "ikHandle_arm_hand_R_poleVectorConstraint1.ctx" "ikHandle_arm_hand_R.pvx"
		;
connectAttr "ikHandle_arm_hand_R_poleVectorConstraint1.cty" "ikHandle_arm_hand_R.pvy"
		;
connectAttr "ikHandle_arm_hand_R_poleVectorConstraint1.ctz" "ikHandle_arm_hand_R.pvz"
		;
connectAttr "ac_arm_IK_FK_blend_R.tx" "ikHandle_arm_hand_R.ikb";
connectAttr "ikHandle_arm_hand_R.pim" "ikHandle_arm_hand_R_poleVectorConstraint1.cpim"
		;
connectAttr "jt_drv_arm_upper_R.pm" "ikHandle_arm_hand_R_poleVectorConstraint1.ps"
		;
connectAttr "jt_drv_arm_upper_R.t" "ikHandle_arm_hand_R_poleVectorConstraint1.crp"
		;
connectAttr "ac_IK_arm_pole_R.t" "ikHandle_arm_hand_R_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "ac_IK_arm_pole_R.rp" "ikHandle_arm_hand_R_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "ac_IK_arm_pole_R.rpt" "ikHandle_arm_hand_R_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "ac_IK_arm_pole_R.pm" "ikHandle_arm_hand_R_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle_arm_hand_R_poleVectorConstraint1.w0" "ikHandle_arm_hand_R_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "ac_IK_hand_R_fixer.pim" "ac_IK_hand_R_fixer_pointConstraint1.cpim";
connectAttr "ac_IK_hand_R_fixer.rp" "ac_IK_hand_R_fixer_pointConstraint1.crp";
connectAttr "ac_IK_hand_R_fixer.rpt" "ac_IK_hand_R_fixer_pointConstraint1.crt";
connectAttr "Right_Hand_CTRL.t" "ac_IK_hand_R_fixer_pointConstraint1.tg[0].tt";
connectAttr "Right_Hand_CTRL.rp" "ac_IK_hand_R_fixer_pointConstraint1.tg[0].trp"
		;
connectAttr "Right_Hand_CTRL.rpt" "ac_IK_hand_R_fixer_pointConstraint1.tg[0].trt"
		;
connectAttr "Right_Hand_CTRL.pm" "ac_IK_hand_R_fixer_pointConstraint1.tg[0].tpm"
		;
connectAttr "ac_IK_hand_R_fixer_pointConstraint1.w0" "ac_IK_hand_R_fixer_pointConstraint1.tg[0].tw"
		;
connectAttr "FK_hand_R.t" "ac_IK_hand_R_fixer_pointConstraint1.tg[1].tt";
connectAttr "FK_hand_R.rp" "ac_IK_hand_R_fixer_pointConstraint1.tg[1].trp";
connectAttr "FK_hand_R.rpt" "ac_IK_hand_R_fixer_pointConstraint1.tg[1].trt";
connectAttr "FK_hand_R.pm" "ac_IK_hand_R_fixer_pointConstraint1.tg[1].tpm";
connectAttr "ac_IK_hand_R_fixer_pointConstraint1.w1" "ac_IK_hand_R_fixer_pointConstraint1.tg[1].tw"
		;
connectAttr "blendColors3.opg" "ac_IK_hand_R_fixer_pointConstraint1.w0";
connectAttr "blendColors3.opr" "ac_IK_hand_R_fixer_pointConstraint1.w1";
connectAttr "ac_IK_hand_R_fixer.ro" "ac_IK_hand_R_fixer_orientConstraint1.cro";
connectAttr "ac_IK_hand_R_fixer.pim" "ac_IK_hand_R_fixer_orientConstraint1.cpim"
		;
connectAttr "Right_Hand_CTRL.r" "ac_IK_hand_R_fixer_orientConstraint1.tg[0].tr";
connectAttr "Right_Hand_CTRL.ro" "ac_IK_hand_R_fixer_orientConstraint1.tg[0].tro"
		;
connectAttr "Right_Hand_CTRL.pm" "ac_IK_hand_R_fixer_orientConstraint1.tg[0].tpm"
		;
connectAttr "ac_IK_hand_R_fixer_orientConstraint1.w0" "ac_IK_hand_R_fixer_orientConstraint1.tg[0].tw"
		;
connectAttr "FK_hand_R.r" "ac_IK_hand_R_fixer_orientConstraint1.tg[1].tr";
connectAttr "FK_hand_R.ro" "ac_IK_hand_R_fixer_orientConstraint1.tg[1].tro";
connectAttr "FK_hand_R.pm" "ac_IK_hand_R_fixer_orientConstraint1.tg[1].tpm";
connectAttr "ac_IK_hand_R_fixer_orientConstraint1.w1" "ac_IK_hand_R_fixer_orientConstraint1.tg[1].tw"
		;
connectAttr "blendColors3.opg" "ac_IK_hand_R_fixer_orientConstraint1.w0";
connectAttr "blendColors3.opr" "ac_IK_hand_R_fixer_orientConstraint1.w1";
connectAttr "|csgo_character|setup|arm_rig_R|ac_IK_hand_R_grp.ro" "ac_IK_hand_R_grp_parentConstraint2.cro"
		;
connectAttr "|csgo_character|setup|arm_rig_R|ac_IK_hand_R_grp.pim" "ac_IK_hand_R_grp_parentConstraint2.cpim"
		;
connectAttr "|csgo_character|setup|arm_rig_R|ac_IK_hand_R_grp.rp" "ac_IK_hand_R_grp_parentConstraint2.crp"
		;
connectAttr "|csgo_character|setup|arm_rig_R|ac_IK_hand_R_grp.rpt" "ac_IK_hand_R_grp_parentConstraint2.crt"
		;
connectAttr "ac_master.t" "ac_IK_hand_R_grp_parentConstraint2.tg[0].tt";
connectAttr "ac_master.rp" "ac_IK_hand_R_grp_parentConstraint2.tg[0].trp";
connectAttr "ac_master.rpt" "ac_IK_hand_R_grp_parentConstraint2.tg[0].trt";
connectAttr "ac_master.r" "ac_IK_hand_R_grp_parentConstraint2.tg[0].tr";
connectAttr "ac_master.ro" "ac_IK_hand_R_grp_parentConstraint2.tg[0].tro";
connectAttr "ac_master.s" "ac_IK_hand_R_grp_parentConstraint2.tg[0].ts";
connectAttr "ac_master.pm" "ac_IK_hand_R_grp_parentConstraint2.tg[0].tpm";
connectAttr "ac_IK_hand_R_grp_parentConstraint2.w0" "ac_IK_hand_R_grp_parentConstraint2.tg[0].tw"
		;
connectAttr "ac_master.fk_ik_arm_swither_blend_visibility" "ac_arm_IK_FK_blend_R_grp.v"
		;
connectAttr "ac_arm_IK_FK_blend_R_grp_parentConstraint1.ctx" "ac_arm_IK_FK_blend_R_grp.tx"
		;
connectAttr "ac_arm_IK_FK_blend_R_grp_parentConstraint1.cty" "ac_arm_IK_FK_blend_R_grp.ty"
		;
connectAttr "ac_arm_IK_FK_blend_R_grp_parentConstraint1.ctz" "ac_arm_IK_FK_blend_R_grp.tz"
		;
connectAttr "ac_arm_IK_FK_blend_R_grp_parentConstraint1.crx" "ac_arm_IK_FK_blend_R_grp.rx"
		;
connectAttr "ac_arm_IK_FK_blend_R_grp_parentConstraint1.cry" "ac_arm_IK_FK_blend_R_grp.ry"
		;
connectAttr "ac_arm_IK_FK_blend_R_grp_parentConstraint1.crz" "ac_arm_IK_FK_blend_R_grp.rz"
		;
connectAttr "ac_arm_IK_FK_blend_R.tx" "|csgo_character|setup|arm_rig_R|ac_arm_IK_FK_blend_R_grp|ac_arm_IK_FK_blend_R|display_mode_arm_R|IK_dis.v"
		;
connectAttr "reverse2.ox" "|csgo_character|setup|arm_rig_R|ac_arm_IK_FK_blend_R_grp|ac_arm_IK_FK_blend_R|display_mode_arm_R|FK_dis.v"
		;
connectAttr "ac_arm_IK_FK_blend_R_grp.ro" "ac_arm_IK_FK_blend_R_grp_parentConstraint1.cro"
		;
connectAttr "ac_arm_IK_FK_blend_R_grp.pim" "ac_arm_IK_FK_blend_R_grp_parentConstraint1.cpim"
		;
connectAttr "ac_arm_IK_FK_blend_R_grp.rp" "ac_arm_IK_FK_blend_R_grp_parentConstraint1.crp"
		;
connectAttr "ac_arm_IK_FK_blend_R_grp.rpt" "ac_arm_IK_FK_blend_R_grp_parentConstraint1.crt"
		;
connectAttr "jt_drv_arm_lower_R.t" "ac_arm_IK_FK_blend_R_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jt_drv_arm_lower_R.rp" "ac_arm_IK_FK_blend_R_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jt_drv_arm_lower_R.rpt" "ac_arm_IK_FK_blend_R_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jt_drv_arm_lower_R.r" "ac_arm_IK_FK_blend_R_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jt_drv_arm_lower_R.ro" "ac_arm_IK_FK_blend_R_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jt_drv_arm_lower_R.s" "ac_arm_IK_FK_blend_R_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jt_drv_arm_lower_R.pm" "ac_arm_IK_FK_blend_R_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jt_drv_arm_lower_R.jo" "ac_arm_IK_FK_blend_R_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jt_drv_arm_lower_R.ssc" "ac_arm_IK_FK_blend_R_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jt_drv_arm_lower_R.is" "ac_arm_IK_FK_blend_R_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "ac_arm_IK_FK_blend_R_grp_parentConstraint1.w0" "ac_arm_IK_FK_blend_R_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_weapon_CTRL_Contrain_grp_parentConstraint1.ctx" "Right_weapon_CTRL_Contrain_grp.tx"
		;
connectAttr "Right_weapon_CTRL_Contrain_grp_parentConstraint1.cty" "Right_weapon_CTRL_Contrain_grp.ty"
		;
connectAttr "Right_weapon_CTRL_Contrain_grp_parentConstraint1.ctz" "Right_weapon_CTRL_Contrain_grp.tz"
		;
connectAttr "Right_weapon_CTRL_Contrain_grp_parentConstraint1.crx" "Right_weapon_CTRL_Contrain_grp.rx"
		;
connectAttr "Right_weapon_CTRL_Contrain_grp_parentConstraint1.cry" "Right_weapon_CTRL_Contrain_grp.ry"
		;
connectAttr "Right_weapon_CTRL_Contrain_grp_parentConstraint1.crz" "Right_weapon_CTRL_Contrain_grp.rz"
		;
connectAttr "reverse_R_FK_IK.ix" "fixer.v";
connectAttr "Right_weapon_CTRL_Contrain_grp.ro" "Right_weapon_CTRL_Contrain_grp_parentConstraint1.cro"
		;
connectAttr "Right_weapon_CTRL_Contrain_grp.pim" "Right_weapon_CTRL_Contrain_grp_parentConstraint1.cpim"
		;
connectAttr "Right_weapon_CTRL_Contrain_grp.rp" "Right_weapon_CTRL_Contrain_grp_parentConstraint1.crp"
		;
connectAttr "Right_weapon_CTRL_Contrain_grp.rpt" "Right_weapon_CTRL_Contrain_grp_parentConstraint1.crt"
		;
connectAttr "ac_master.t" "Right_weapon_CTRL_Contrain_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "ac_master.rp" "Right_weapon_CTRL_Contrain_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "ac_master.rpt" "Right_weapon_CTRL_Contrain_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "ac_master.r" "Right_weapon_CTRL_Contrain_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "ac_master.ro" "Right_weapon_CTRL_Contrain_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "ac_master.s" "Right_weapon_CTRL_Contrain_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "ac_master.pm" "Right_weapon_CTRL_Contrain_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_weapon_CTRL_Contrain_grp_parentConstraint1.w0" "Right_weapon_CTRL_Contrain_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Custom_lines_for_pole_vector.di" "R_pole_vector_arm_line.do";
connectAttr "fixer.v" "R_pole_vector_arm_line.v";
connectAttr "R_pole_vector_arm_line_lowerCluster.og[0]" "R_pole_vector_arm_lineShape.cr"
		;
connectAttr "tweak6.pl[0].cp[0]" "R_pole_vector_arm_lineShape.twl";
connectAttr "cluster7GroupId.id" "R_pole_vector_arm_lineShape.iog.og[0].gid";
connectAttr "cluster7Set.mwc" "R_pole_vector_arm_lineShape.iog.og[0].gco";
connectAttr "groupId12.id" "R_pole_vector_arm_lineShape.iog.og[1].gid";
connectAttr "tweakSet6.mwc" "R_pole_vector_arm_lineShape.iog.og[1].gco";
connectAttr "cluster8GroupId.id" "R_pole_vector_arm_lineShape.iog.og[2].gid";
connectAttr "cluster8Set.mwc" "R_pole_vector_arm_lineShape.iog.og[2].gco";
connectAttr "ac_master.Visibility_Controls" "Left_leg_rig.v";
connectAttr "IK_drv_leg_upper_L_parentConstraint1.ctx" "IK_drv_leg_upper_L.tx";
connectAttr "IK_drv_leg_upper_L_parentConstraint1.cty" "IK_drv_leg_upper_L.ty";
connectAttr "IK_drv_leg_upper_L_parentConstraint1.ctz" "IK_drv_leg_upper_L.tz";
connectAttr "IK_drv_leg_upper_L_parentConstraint1.crx" "IK_drv_leg_upper_L.rx";
connectAttr "IK_drv_leg_upper_L_parentConstraint1.cry" "IK_drv_leg_upper_L.ry";
connectAttr "IK_drv_leg_upper_L_parentConstraint1.crz" "IK_drv_leg_upper_L.rz";
connectAttr "IK_drv_leg_upper_L.s" "IK_drv_leg_lower_L.is";
connectAttr "IK_drv_leg_lower_L.s" "IK_drv_ankle_L.is";
connectAttr "IK_drv_ankle_L_orientConstraint1.crx" "IK_drv_ankle_L.rx";
connectAttr "IK_drv_ankle_L_orientConstraint1.cry" "IK_drv_ankle_L.ry";
connectAttr "IK_drv_ankle_L_orientConstraint1.crz" "IK_drv_ankle_L.rz";
connectAttr "IK_drv_ankle_L.ro" "IK_drv_ankle_L_orientConstraint1.cro";
connectAttr "IK_drv_ankle_L.pim" "IK_drv_ankle_L_orientConstraint1.cpim";
connectAttr "IK_drv_ankle_L.jo" "IK_drv_ankle_L_orientConstraint1.cjo";
connectAttr "IK_drv_ankle_L.is" "IK_drv_ankle_L_orientConstraint1.is";
connectAttr "locator_L_foot_ankle.r" "IK_drv_ankle_L_orientConstraint1.tg[0].tr"
		;
connectAttr "locator_L_foot_ankle.ro" "IK_drv_ankle_L_orientConstraint1.tg[0].tro"
		;
connectAttr "locator_L_foot_ankle.pm" "IK_drv_ankle_L_orientConstraint1.tg[0].tpm"
		;
connectAttr "IK_drv_ankle_L_orientConstraint1.w0" "IK_drv_ankle_L_orientConstraint1.tg[0].tw"
		;
connectAttr "IK_drv_ankle_L.tx" "effector10.tx";
connectAttr "IK_drv_ankle_L.ty" "effector10.ty";
connectAttr "IK_drv_ankle_L.tz" "effector10.tz";
connectAttr "IK_drv_leg_upper_L.ro" "IK_drv_leg_upper_L_parentConstraint1.cro";
connectAttr "IK_drv_leg_upper_L.pim" "IK_drv_leg_upper_L_parentConstraint1.cpim"
		;
connectAttr "IK_drv_leg_upper_L.rp" "IK_drv_leg_upper_L_parentConstraint1.crp";
connectAttr "IK_drv_leg_upper_L.rpt" "IK_drv_leg_upper_L_parentConstraint1.crt";
connectAttr "IK_drv_leg_upper_L.jo" "IK_drv_leg_upper_L_parentConstraint1.cjo";
connectAttr "ac_hip.t" "IK_drv_leg_upper_L_parentConstraint1.tg[0].tt";
connectAttr "ac_hip.rp" "IK_drv_leg_upper_L_parentConstraint1.tg[0].trp";
connectAttr "ac_hip.rpt" "IK_drv_leg_upper_L_parentConstraint1.tg[0].trt";
connectAttr "ac_hip.r" "IK_drv_leg_upper_L_parentConstraint1.tg[0].tr";
connectAttr "ac_hip.ro" "IK_drv_leg_upper_L_parentConstraint1.tg[0].tro";
connectAttr "ac_hip.s" "IK_drv_leg_upper_L_parentConstraint1.tg[0].ts";
connectAttr "ac_hip.pm" "IK_drv_leg_upper_L_parentConstraint1.tg[0].tpm";
connectAttr "IK_drv_leg_upper_L_parentConstraint1.w0" "IK_drv_leg_upper_L_parentConstraint1.tg[0].tw"
		;
connectAttr "ac_IK_ankle_L_grp_parentConstraint1.ctx" "ac_IK_ankle_L_grp.tx";
connectAttr "ac_IK_ankle_L_grp_parentConstraint1.cty" "ac_IK_ankle_L_grp.ty";
connectAttr "ac_IK_ankle_L_grp_parentConstraint1.ctz" "ac_IK_ankle_L_grp.tz";
connectAttr "ac_IK_ankle_L_grp_parentConstraint1.crx" "ac_IK_ankle_L_grp.rx";
connectAttr "ac_IK_ankle_L_grp_parentConstraint1.cry" "ac_IK_ankle_L_grp.ry";
connectAttr "ac_IK_ankle_L_grp_parentConstraint1.crz" "ac_IK_ankle_L_grp.rz";
connectAttr "unitConversion41.o" "locator_L_foot_outside.rx";
connectAttr "unitConversion28.o" "locator_L_foot_inside.rx";
connectAttr "unitConversion31.o" "locator_L_foot_heel_lift.rz";
connectAttr "unitConversion27.o" "locator_L_foot_heel.ry";
connectAttr "unitConversion40.o" "locator_L_foot_toe_lift.rz";
connectAttr "unitConversion32.o" "locator_L_foot_toe.ry";
connectAttr "unitConversion42.o" "locator_L_foot_ball.rz";
connectAttr "unitConversion43.o" "locator_L_foot_ball.rx";
connectAttr "IK_drv_leg_upper_L.msg" "ikHandle_left_leg.hsj";
connectAttr "effector10.hp" "ikHandle_left_leg.hee";
connectAttr "ikRPsolver.msg" "ikHandle_left_leg.hsv";
connectAttr "ikHandle_left_leg_poleVectorConstraint1.ctx" "ikHandle_left_leg.pvx"
		;
connectAttr "ikHandle_left_leg_poleVectorConstraint1.cty" "ikHandle_left_leg.pvy"
		;
connectAttr "ikHandle_left_leg_poleVectorConstraint1.ctz" "ikHandle_left_leg.pvz"
		;
connectAttr "ikHandle_left_leg.pim" "ikHandle_left_leg_poleVectorConstraint1.cpim"
		;
connectAttr "IK_drv_leg_upper_L.pm" "ikHandle_left_leg_poleVectorConstraint1.ps"
		;
connectAttr "IK_drv_leg_upper_L.t" "ikHandle_left_leg_poleVectorConstraint1.crp"
		;
connectAttr "ac_IK_Leg_pole_L.t" "ikHandle_left_leg_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "ac_IK_Leg_pole_L.rp" "ikHandle_left_leg_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "ac_IK_Leg_pole_L.rpt" "ikHandle_left_leg_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "ac_IK_Leg_pole_L.pm" "ikHandle_left_leg_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle_left_leg_poleVectorConstraint1.w0" "ikHandle_left_leg_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "ac_ball_L_gloval_grp_orientConstraint1.crx" "ac_ball_L_gloval_grp.rx"
		;
connectAttr "ac_ball_L_gloval_grp_orientConstraint1.cry" "ac_ball_L_gloval_grp.ry"
		;
connectAttr "ac_ball_L_gloval_grp_orientConstraint1.crz" "ac_ball_L_gloval_grp.rz"
		;
connectAttr "ac_ball_L_gloval_grp_pointConstraint1.ctx" "ac_ball_L_gloval_grp.tx"
		;
connectAttr "ac_ball_L_gloval_grp_pointConstraint1.cty" "ac_ball_L_gloval_grp.ty"
		;
connectAttr "ac_ball_L_gloval_grp_pointConstraint1.ctz" "ac_ball_L_gloval_grp.tz"
		;
connectAttr "ac_IK_ankle_L.Ball_Visisbility" "ac_ball_L.v" -l on;
connectAttr "makeNurbCircle3.oc" "ac_ball_LShape.cr";
connectAttr "ac_ball_L_gloval_grp.ro" "ac_ball_L_gloval_grp_orientConstraint1.cro"
		;
connectAttr "ac_ball_L_gloval_grp.pim" "ac_ball_L_gloval_grp_orientConstraint1.cpim"
		;
connectAttr "ac_ball_L_IK_grp1.r" "ac_ball_L_gloval_grp_orientConstraint1.tg[0].tr"
		;
connectAttr "ac_ball_L_IK_grp1.ro" "ac_ball_L_gloval_grp_orientConstraint1.tg[0].tro"
		;
connectAttr "ac_ball_L_IK_grp1.pm" "ac_ball_L_gloval_grp_orientConstraint1.tg[0].tpm"
		;
connectAttr "ac_ball_L_gloval_grp_orientConstraint1.w0" "ac_ball_L_gloval_grp_orientConstraint1.tg[0].tw"
		;
connectAttr "ac_ball_L_gloval_grp.pim" "ac_ball_L_gloval_grp_pointConstraint1.cpim"
		;
connectAttr "ac_ball_L_gloval_grp.rp" "ac_ball_L_gloval_grp_pointConstraint1.crp"
		;
connectAttr "ac_ball_L_gloval_grp.rpt" "ac_ball_L_gloval_grp_pointConstraint1.crt"
		;
connectAttr "result_drv_ball_L.t" "ac_ball_L_gloval_grp_pointConstraint1.tg[0].tt"
		;
connectAttr "result_drv_ball_L.rp" "ac_ball_L_gloval_grp_pointConstraint1.tg[0].trp"
		;
connectAttr "result_drv_ball_L.rpt" "ac_ball_L_gloval_grp_pointConstraint1.tg[0].trt"
		;
connectAttr "result_drv_ball_L.pm" "ac_ball_L_gloval_grp_pointConstraint1.tg[0].tpm"
		;
connectAttr "ac_ball_L_gloval_grp_pointConstraint1.w0" "ac_ball_L_gloval_grp_pointConstraint1.tg[0].tw"
		;
connectAttr "ac_IK_ankle_L_grp.ro" "ac_IK_ankle_L_grp_parentConstraint1.cro";
connectAttr "ac_IK_ankle_L_grp.pim" "ac_IK_ankle_L_grp_parentConstraint1.cpim";
connectAttr "ac_IK_ankle_L_grp.rp" "ac_IK_ankle_L_grp_parentConstraint1.crp";
connectAttr "ac_IK_ankle_L_grp.rpt" "ac_IK_ankle_L_grp_parentConstraint1.crt";
connectAttr "ac_master.t" "ac_IK_ankle_L_grp_parentConstraint1.tg[0].tt";
connectAttr "ac_master.rp" "ac_IK_ankle_L_grp_parentConstraint1.tg[0].trp";
connectAttr "ac_master.rpt" "ac_IK_ankle_L_grp_parentConstraint1.tg[0].trt";
connectAttr "ac_master.r" "ac_IK_ankle_L_grp_parentConstraint1.tg[0].tr";
connectAttr "ac_master.ro" "ac_IK_ankle_L_grp_parentConstraint1.tg[0].tro";
connectAttr "ac_master.s" "ac_IK_ankle_L_grp_parentConstraint1.tg[0].ts";
connectAttr "ac_master.pm" "ac_IK_ankle_L_grp_parentConstraint1.tg[0].tpm";
connectAttr "ac_IK_ankle_L_grp_parentConstraint1.w0" "ac_IK_ankle_L_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "ac_IK_Leg_pole_L_grp_parentConstraint1.ctx" "ac_IK_Leg_pole_L_grp.tx"
		;
connectAttr "ac_IK_Leg_pole_L_grp_parentConstraint1.cty" "ac_IK_Leg_pole_L_grp.ty"
		;
connectAttr "ac_IK_Leg_pole_L_grp_parentConstraint1.ctz" "ac_IK_Leg_pole_L_grp.tz"
		;
connectAttr "ac_IK_Leg_pole_L_grp_parentConstraint1.crx" "ac_IK_Leg_pole_L_grp.rx"
		;
connectAttr "ac_IK_Leg_pole_L_grp_parentConstraint1.cry" "ac_IK_Leg_pole_L_grp.ry"
		;
connectAttr "ac_IK_Leg_pole_L_grp_parentConstraint1.crz" "ac_IK_Leg_pole_L_grp.rz"
		;
connectAttr "ac_IK_Leg_pole_L_grp.ro" "ac_IK_Leg_pole_L_grp_parentConstraint1.cro"
		;
connectAttr "ac_IK_Leg_pole_L_grp.pim" "ac_IK_Leg_pole_L_grp_parentConstraint1.cpim"
		;
connectAttr "ac_IK_Leg_pole_L_grp.rp" "ac_IK_Leg_pole_L_grp_parentConstraint1.crp"
		;
connectAttr "ac_IK_Leg_pole_L_grp.rpt" "ac_IK_Leg_pole_L_grp_parentConstraint1.crt"
		;
connectAttr "ac_master.t" "ac_IK_Leg_pole_L_grp_parentConstraint1.tg[0].tt";
connectAttr "ac_master.rp" "ac_IK_Leg_pole_L_grp_parentConstraint1.tg[0].trp";
connectAttr "ac_master.rpt" "ac_IK_Leg_pole_L_grp_parentConstraint1.tg[0].trt";
connectAttr "ac_master.r" "ac_IK_Leg_pole_L_grp_parentConstraint1.tg[0].tr";
connectAttr "ac_master.ro" "ac_IK_Leg_pole_L_grp_parentConstraint1.tg[0].tro";
connectAttr "ac_master.s" "ac_IK_Leg_pole_L_grp_parentConstraint1.tg[0].ts";
connectAttr "ac_master.pm" "ac_IK_Leg_pole_L_grp_parentConstraint1.tg[0].tpm";
connectAttr "ac_IK_Leg_pole_L_grp_parentConstraint1.w0" "ac_IK_Leg_pole_L_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_drv_leg_upper_L.t" "result_drv_leg_upper_L1.t";
connectAttr "IK_drv_leg_upper_L.r" "result_drv_leg_upper_L1.r";
connectAttr "IK_drv_leg_lower_L.t" "result_drv_leg_lower_L.t";
connectAttr "IK_drv_leg_lower_L.r" "result_drv_leg_lower_L.r";
connectAttr "result_drv_leg_upper_L1.s" "result_drv_leg_lower_L.is";
connectAttr "IK_drv_ankle_L.t" "result_drv_ankle_L.t";
connectAttr "IK_drv_ankle_L.r" "result_drv_ankle_L.r";
connectAttr "result_drv_leg_lower_L.s" "result_drv_ankle_L.is";
connectAttr "result_drv_ball_L_orientConstraint1.crx" "result_drv_ball_L.rx";
connectAttr "result_drv_ball_L_orientConstraint1.cry" "result_drv_ball_L.ry";
connectAttr "result_drv_ball_L_orientConstraint1.crz" "result_drv_ball_L.rz";
connectAttr "result_drv_ankle_L.s" "result_drv_ball_L.is";
connectAttr "result_drv_ball_L.s" "result_drv_lfoot_lock.is";
connectAttr "result_drv_lfoot_lock.s" "result_drv_lfoot_lock_end.is";
connectAttr "result_drv_ball_L.ro" "result_drv_ball_L_orientConstraint1.cro";
connectAttr "result_drv_ball_L.pim" "result_drv_ball_L_orientConstraint1.cpim";
connectAttr "result_drv_ball_L.jo" "result_drv_ball_L_orientConstraint1.cjo";
connectAttr "result_drv_ball_L.is" "result_drv_ball_L_orientConstraint1.is";
connectAttr "ac_ball_L.r" "result_drv_ball_L_orientConstraint1.tg[0].tr";
connectAttr "ac_ball_L.ro" "result_drv_ball_L_orientConstraint1.tg[0].tro";
connectAttr "ac_ball_L.pm" "result_drv_ball_L_orientConstraint1.tg[0].tpm";
connectAttr "result_drv_ball_L_orientConstraint1.w0" "result_drv_ball_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Left_leg_TWISTS_parentConstraint1.ctx" "Left_leg_TWISTS.tx";
connectAttr "Left_leg_TWISTS_parentConstraint1.cty" "Left_leg_TWISTS.ty";
connectAttr "Left_leg_TWISTS_parentConstraint1.ctz" "Left_leg_TWISTS.tz";
connectAttr "Left_leg_TWISTS_parentConstraint1.crx" "Left_leg_TWISTS.rx";
connectAttr "Left_leg_TWISTS_parentConstraint1.cry" "Left_leg_TWISTS.ry";
connectAttr "Left_leg_TWISTS_parentConstraint1.crz" "Left_leg_TWISTS.rz";
connectAttr "ac_IK_ankle_L.Twist_Visibility" "Left_leg_TWISTS.v";
connectAttr "Left_leg_TWISTS.ro" "Left_leg_TWISTS_parentConstraint1.cro";
connectAttr "Left_leg_TWISTS.pim" "Left_leg_TWISTS_parentConstraint1.cpim";
connectAttr "Left_leg_TWISTS.rp" "Left_leg_TWISTS_parentConstraint1.crp";
connectAttr "Left_leg_TWISTS.rpt" "Left_leg_TWISTS_parentConstraint1.crt";
connectAttr "result_drv_leg_upper_L1.t" "Left_leg_TWISTS_parentConstraint1.tg[0].tt"
		;
connectAttr "result_drv_leg_upper_L1.rp" "Left_leg_TWISTS_parentConstraint1.tg[0].trp"
		;
connectAttr "result_drv_leg_upper_L1.rpt" "Left_leg_TWISTS_parentConstraint1.tg[0].trt"
		;
connectAttr "result_drv_leg_upper_L1.r" "Left_leg_TWISTS_parentConstraint1.tg[0].tr"
		;
connectAttr "result_drv_leg_upper_L1.ro" "Left_leg_TWISTS_parentConstraint1.tg[0].tro"
		;
connectAttr "result_drv_leg_upper_L1.s" "Left_leg_TWISTS_parentConstraint1.tg[0].ts"
		;
connectAttr "result_drv_leg_upper_L1.pm" "Left_leg_TWISTS_parentConstraint1.tg[0].tpm"
		;
connectAttr "result_drv_leg_upper_L1.jo" "Left_leg_TWISTS_parentConstraint1.tg[0].tjo"
		;
connectAttr "result_drv_leg_upper_L1.ssc" "Left_leg_TWISTS_parentConstraint1.tg[0].tsc"
		;
connectAttr "result_drv_leg_upper_L1.is" "Left_leg_TWISTS_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_leg_TWISTS_parentConstraint1.w0" "Left_leg_TWISTS_parentConstraint1.tg[0].tw"
		;
connectAttr "Custom_lines_for_pole_vector.di" "L_pole_vector_line.do";
connectAttr "L_pole_vector_line_vectorCluster.og[0]" "L_pole_vector_lineShape.cr"
		;
connectAttr "tweak3.pl[0].cp[0]" "L_pole_vector_lineShape.twl";
connectAttr "cluster1GroupId.id" "L_pole_vector_lineShape.iog.og[0].gid";
connectAttr "cluster1Set.mwc" "L_pole_vector_lineShape.iog.og[0].gco";
connectAttr "groupId9.id" "L_pole_vector_lineShape.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "L_pole_vector_lineShape.iog.og[1].gco";
connectAttr "cluster2GroupId.id" "L_pole_vector_lineShape.iog.og[2].gid";
connectAttr "cluster2Set.mwc" "L_pole_vector_lineShape.iog.og[2].gco";
connectAttr "ac_master.Visibility_Controls" "Right_leg_rig.v";
connectAttr "IK_leg_upper_R.t" "Result_leg_upper_R.t";
connectAttr "IK_leg_upper_R.r" "Result_leg_upper_R.r";
connectAttr "Result_leg_upper_R.s" "Result_leg_lower_R.is";
connectAttr "IK_leg_lower_R.t" "Result_leg_lower_R.t";
connectAttr "IK_leg_lower_R.r" "Result_leg_lower_R.r";
connectAttr "Result_leg_lower_R.s" "Result_ankle_R.is";
connectAttr "IK_ankle_R.t" "Result_ankle_R.t";
connectAttr "IK_ankle_R.r" "Result_ankle_R.r";
connectAttr "Result_ankle_R.s" "Result_ball_R.is";
connectAttr "Result_ball_R_orientConstraint1.crx" "Result_ball_R.rx";
connectAttr "Result_ball_R_orientConstraint1.cry" "Result_ball_R.ry";
connectAttr "Result_ball_R_orientConstraint1.crz" "Result_ball_R.rz";
connectAttr "Result_ball_R.s" "Result_rfoot_lock.is";
connectAttr "Result_rfoot_lock.s" "Result_rfoot_lock_end.is";
connectAttr "Result_ball_R.ro" "Result_ball_R_orientConstraint1.cro";
connectAttr "Result_ball_R.pim" "Result_ball_R_orientConstraint1.cpim";
connectAttr "Result_ball_R.jo" "Result_ball_R_orientConstraint1.cjo";
connectAttr "Result_ball_R.is" "Result_ball_R_orientConstraint1.is";
connectAttr "ac_ball_R.r" "Result_ball_R_orientConstraint1.tg[0].tr";
connectAttr "ac_ball_R.ro" "Result_ball_R_orientConstraint1.tg[0].tro";
connectAttr "ac_ball_R.pm" "Result_ball_R_orientConstraint1.tg[0].tpm";
connectAttr "Result_ball_R_orientConstraint1.w0" "Result_ball_R_orientConstraint1.tg[0].tw"
		;
connectAttr "IK_leg_upper_R_parentConstraint1.ctx" "IK_leg_upper_R.tx";
connectAttr "IK_leg_upper_R_parentConstraint1.cty" "IK_leg_upper_R.ty";
connectAttr "IK_leg_upper_R_parentConstraint1.ctz" "IK_leg_upper_R.tz";
connectAttr "IK_leg_upper_R_parentConstraint1.crx" "IK_leg_upper_R.rx";
connectAttr "IK_leg_upper_R_parentConstraint1.cry" "IK_leg_upper_R.ry";
connectAttr "IK_leg_upper_R_parentConstraint1.crz" "IK_leg_upper_R.rz";
connectAttr "IK_leg_upper_R.s" "IK_leg_lower_R.is";
connectAttr "IK_ankle_R_orientConstraint1.crx" "IK_ankle_R.rx";
connectAttr "IK_ankle_R_orientConstraint1.cry" "IK_ankle_R.ry";
connectAttr "IK_ankle_R_orientConstraint1.crz" "IK_ankle_R.rz";
connectAttr "IK_leg_lower_R.s" "IK_ankle_R.is";
connectAttr "IK_ankle_R.ro" "IK_ankle_R_orientConstraint1.cro";
connectAttr "IK_ankle_R.pim" "IK_ankle_R_orientConstraint1.cpim";
connectAttr "IK_ankle_R.jo" "IK_ankle_R_orientConstraint1.cjo";
connectAttr "IK_ankle_R.is" "IK_ankle_R_orientConstraint1.is";
connectAttr "locator_foot_ankle_R.r" "IK_ankle_R_orientConstraint1.tg[0].tr";
connectAttr "locator_foot_ankle_R.ro" "IK_ankle_R_orientConstraint1.tg[0].tro";
connectAttr "locator_foot_ankle_R.pm" "IK_ankle_R_orientConstraint1.tg[0].tpm";
connectAttr "IK_ankle_R_orientConstraint1.w0" "IK_ankle_R_orientConstraint1.tg[0].tw"
		;
connectAttr "IK_ankle_R.tx" "effector11.tx";
connectAttr "IK_ankle_R.ty" "effector11.ty";
connectAttr "IK_ankle_R.tz" "effector11.tz";
connectAttr "IK_leg_upper_R.ro" "IK_leg_upper_R_parentConstraint1.cro";
connectAttr "IK_leg_upper_R.pim" "IK_leg_upper_R_parentConstraint1.cpim";
connectAttr "IK_leg_upper_R.rp" "IK_leg_upper_R_parentConstraint1.crp";
connectAttr "IK_leg_upper_R.rpt" "IK_leg_upper_R_parentConstraint1.crt";
connectAttr "IK_leg_upper_R.jo" "IK_leg_upper_R_parentConstraint1.cjo";
connectAttr "ac_hip.t" "IK_leg_upper_R_parentConstraint1.tg[0].tt";
connectAttr "ac_hip.rp" "IK_leg_upper_R_parentConstraint1.tg[0].trp";
connectAttr "ac_hip.rpt" "IK_leg_upper_R_parentConstraint1.tg[0].trt";
connectAttr "ac_hip.r" "IK_leg_upper_R_parentConstraint1.tg[0].tr";
connectAttr "ac_hip.ro" "IK_leg_upper_R_parentConstraint1.tg[0].tro";
connectAttr "ac_hip.s" "IK_leg_upper_R_parentConstraint1.tg[0].ts";
connectAttr "ac_hip.pm" "IK_leg_upper_R_parentConstraint1.tg[0].tpm";
connectAttr "IK_leg_upper_R_parentConstraint1.w0" "IK_leg_upper_R_parentConstraint1.tg[0].tw"
		;
connectAttr "ac_IK_ankle_R_grp_parentConstraint1.ctx" "ac_IK_ankle_R_grp.tx";
connectAttr "ac_IK_ankle_R_grp_parentConstraint1.cty" "ac_IK_ankle_R_grp.ty";
connectAttr "ac_IK_ankle_R_grp_parentConstraint1.ctz" "ac_IK_ankle_R_grp.tz";
connectAttr "ac_IK_ankle_R_grp_parentConstraint1.crx" "ac_IK_ankle_R_grp.rx";
connectAttr "ac_IK_ankle_R_grp_parentConstraint1.cry" "ac_IK_ankle_R_grp.ry";
connectAttr "ac_IK_ankle_R_grp_parentConstraint1.crz" "ac_IK_ankle_R_grp.rz";
connectAttr "ac_IK_ankle_R_grp.ro" "ac_IK_ankle_R_grp_parentConstraint1.cro";
connectAttr "ac_IK_ankle_R_grp.pim" "ac_IK_ankle_R_grp_parentConstraint1.cpim";
connectAttr "ac_IK_ankle_R_grp.rp" "ac_IK_ankle_R_grp_parentConstraint1.crp";
connectAttr "ac_IK_ankle_R_grp.rpt" "ac_IK_ankle_R_grp_parentConstraint1.crt";
connectAttr "ac_master.t" "ac_IK_ankle_R_grp_parentConstraint1.tg[0].tt";
connectAttr "ac_master.rp" "ac_IK_ankle_R_grp_parentConstraint1.tg[0].trp";
connectAttr "ac_master.rpt" "ac_IK_ankle_R_grp_parentConstraint1.tg[0].trt";
connectAttr "ac_master.r" "ac_IK_ankle_R_grp_parentConstraint1.tg[0].tr";
connectAttr "ac_master.ro" "ac_IK_ankle_R_grp_parentConstraint1.tg[0].tro";
connectAttr "ac_master.s" "ac_IK_ankle_R_grp_parentConstraint1.tg[0].ts";
connectAttr "ac_master.pm" "ac_IK_ankle_R_grp_parentConstraint1.tg[0].tpm";
connectAttr "ac_IK_ankle_R_grp_parentConstraint1.w0" "ac_IK_ankle_R_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "unitConversion46.o" "locator_foot_outside_R.rx";
connectAttr "unitConversion38.o" "locator_foot_inside_R.rx";
connectAttr "unitConversion45.o" "locator_foot_heel_lift_R.rz";
connectAttr "unitConversion36.o" "locator_foot_heel_R.ry";
connectAttr "unitConversion44.o" "locator_foot_toe_lift_R.rz";
connectAttr "unitConversion35.o" "locator_foot_toe_R.ry";
connectAttr "unitConversion33.o" "locator_foot_ball_R.rz";
connectAttr "unitConversion47.o" "locator_foot_ball_R.rx";
connectAttr "IK_leg_upper_R.msg" "ikHandle_right_leg.hsj";
connectAttr "effector11.hp" "ikHandle_right_leg.hee";
connectAttr "ikRPsolver.msg" "ikHandle_right_leg.hsv";
connectAttr "ikHandle_right_leg_poleVectorConstraint1.ctx" "ikHandle_right_leg.pvx"
		;
connectAttr "ikHandle_right_leg_poleVectorConstraint1.cty" "ikHandle_right_leg.pvy"
		;
connectAttr "ikHandle_right_leg_poleVectorConstraint1.ctz" "ikHandle_right_leg.pvz"
		;
connectAttr "ikHandle_right_leg.pim" "ikHandle_right_leg_poleVectorConstraint1.cpim"
		;
connectAttr "IK_leg_upper_R.pm" "ikHandle_right_leg_poleVectorConstraint1.ps";
connectAttr "IK_leg_upper_R.t" "ikHandle_right_leg_poleVectorConstraint1.crp";
connectAttr "ac_IK_Leg_pole_R.t" "ikHandle_right_leg_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "ac_IK_Leg_pole_R.rp" "ikHandle_right_leg_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "ac_IK_Leg_pole_R.rpt" "ikHandle_right_leg_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "ac_IK_Leg_pole_R.pm" "ikHandle_right_leg_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle_right_leg_poleVectorConstraint1.w0" "ikHandle_right_leg_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "ac_IK_Leg_pole_R_grp_parentConstraint1.ctx" "ac_IK_Leg_pole_R_grp.tx"
		;
connectAttr "ac_IK_Leg_pole_R_grp_parentConstraint1.cty" "ac_IK_Leg_pole_R_grp.ty"
		;
connectAttr "ac_IK_Leg_pole_R_grp_parentConstraint1.ctz" "ac_IK_Leg_pole_R_grp.tz"
		;
connectAttr "ac_IK_Leg_pole_R_grp_parentConstraint1.crx" "ac_IK_Leg_pole_R_grp.rx"
		;
connectAttr "ac_IK_Leg_pole_R_grp_parentConstraint1.cry" "ac_IK_Leg_pole_R_grp.ry"
		;
connectAttr "ac_IK_Leg_pole_R_grp_parentConstraint1.crz" "ac_IK_Leg_pole_R_grp.rz"
		;
connectAttr "ac_IK_Leg_pole_R_grp.ro" "ac_IK_Leg_pole_R_grp_parentConstraint1.cro"
		;
connectAttr "ac_IK_Leg_pole_R_grp.pim" "ac_IK_Leg_pole_R_grp_parentConstraint1.cpim"
		;
connectAttr "ac_IK_Leg_pole_R_grp.rp" "ac_IK_Leg_pole_R_grp_parentConstraint1.crp"
		;
connectAttr "ac_IK_Leg_pole_R_grp.rpt" "ac_IK_Leg_pole_R_grp_parentConstraint1.crt"
		;
connectAttr "ac_master.t" "ac_IK_Leg_pole_R_grp_parentConstraint1.tg[0].tt";
connectAttr "ac_master.rp" "ac_IK_Leg_pole_R_grp_parentConstraint1.tg[0].trp";
connectAttr "ac_master.rpt" "ac_IK_Leg_pole_R_grp_parentConstraint1.tg[0].trt";
connectAttr "ac_master.r" "ac_IK_Leg_pole_R_grp_parentConstraint1.tg[0].tr";
connectAttr "ac_master.ro" "ac_IK_Leg_pole_R_grp_parentConstraint1.tg[0].tro";
connectAttr "ac_master.s" "ac_IK_Leg_pole_R_grp_parentConstraint1.tg[0].ts";
connectAttr "ac_master.pm" "ac_IK_Leg_pole_R_grp_parentConstraint1.tg[0].tpm";
connectAttr "ac_IK_Leg_pole_R_grp_parentConstraint1.w0" "ac_IK_Leg_pole_R_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "ac_ball_R_contrl_grp_orientConstraint1.crx" "ac_ball_R_contrl_grp.rx"
		;
connectAttr "ac_ball_R_contrl_grp_orientConstraint1.cry" "ac_ball_R_contrl_grp.ry"
		;
connectAttr "ac_ball_R_contrl_grp_orientConstraint1.crz" "ac_ball_R_contrl_grp.rz"
		;
connectAttr "ac_ball_R_contrl_grp_pointConstraint1.ctx" "ac_ball_R_contrl_grp.tx"
		;
connectAttr "ac_ball_R_contrl_grp_pointConstraint1.cty" "ac_ball_R_contrl_grp.ty"
		;
connectAttr "ac_ball_R_contrl_grp_pointConstraint1.ctz" "ac_ball_R_contrl_grp.tz"
		;
connectAttr "ac_IK_drv_ankle_R.Ball_Visibility" "ac_ball_R.v" -l on;
connectAttr "ac_ball_R_contrl_grp.ro" "ac_ball_R_contrl_grp_orientConstraint1.cro"
		;
connectAttr "ac_ball_R_contrl_grp.pim" "ac_ball_R_contrl_grp_orientConstraint1.cpim"
		;
connectAttr "ac_ball_R_IK_follow_grp1.r" "ac_ball_R_contrl_grp_orientConstraint1.tg[0].tr"
		;
connectAttr "ac_ball_R_IK_follow_grp1.ro" "ac_ball_R_contrl_grp_orientConstraint1.tg[0].tro"
		;
connectAttr "ac_ball_R_IK_follow_grp1.pm" "ac_ball_R_contrl_grp_orientConstraint1.tg[0].tpm"
		;
connectAttr "ac_ball_R_contrl_grp_orientConstraint1.w0" "ac_ball_R_contrl_grp_orientConstraint1.tg[0].tw"
		;
connectAttr "ac_ball_R_contrl_grp.pim" "ac_ball_R_contrl_grp_pointConstraint1.cpim"
		;
connectAttr "ac_ball_R_contrl_grp.rp" "ac_ball_R_contrl_grp_pointConstraint1.crp"
		;
connectAttr "ac_ball_R_contrl_grp.rpt" "ac_ball_R_contrl_grp_pointConstraint1.crt"
		;
connectAttr "Result_ball_R.t" "ac_ball_R_contrl_grp_pointConstraint1.tg[0].tt";
connectAttr "Result_ball_R.rp" "ac_ball_R_contrl_grp_pointConstraint1.tg[0].trp"
		;
connectAttr "Result_ball_R.rpt" "ac_ball_R_contrl_grp_pointConstraint1.tg[0].trt"
		;
connectAttr "Result_ball_R.pm" "ac_ball_R_contrl_grp_pointConstraint1.tg[0].tpm"
		;
connectAttr "ac_ball_R_contrl_grp_pointConstraint1.w0" "ac_ball_R_contrl_grp_pointConstraint1.tg[0].tw"
		;
connectAttr "Right_leg_TWISTS_parentConstraint1.ctx" "Right_leg_TWISTS.tx";
connectAttr "Right_leg_TWISTS_parentConstraint1.cty" "Right_leg_TWISTS.ty";
connectAttr "Right_leg_TWISTS_parentConstraint1.ctz" "Right_leg_TWISTS.tz";
connectAttr "Right_leg_TWISTS_parentConstraint1.crx" "Right_leg_TWISTS.rx";
connectAttr "Right_leg_TWISTS_parentConstraint1.cry" "Right_leg_TWISTS.ry";
connectAttr "Right_leg_TWISTS_parentConstraint1.crz" "Right_leg_TWISTS.rz";
connectAttr "ac_IK_drv_ankle_R.Twist_Visibility" "Right_leg_TWISTS.v";
connectAttr "Right_leg_TWISTS.ro" "Right_leg_TWISTS_parentConstraint1.cro";
connectAttr "Right_leg_TWISTS.pim" "Right_leg_TWISTS_parentConstraint1.cpim";
connectAttr "Right_leg_TWISTS.rp" "Right_leg_TWISTS_parentConstraint1.crp";
connectAttr "Right_leg_TWISTS.rpt" "Right_leg_TWISTS_parentConstraint1.crt";
connectAttr "Result_leg_upper_R.t" "Right_leg_TWISTS_parentConstraint1.tg[0].tt"
		;
connectAttr "Result_leg_upper_R.rp" "Right_leg_TWISTS_parentConstraint1.tg[0].trp"
		;
connectAttr "Result_leg_upper_R.rpt" "Right_leg_TWISTS_parentConstraint1.tg[0].trt"
		;
connectAttr "Result_leg_upper_R.r" "Right_leg_TWISTS_parentConstraint1.tg[0].tr"
		;
connectAttr "Result_leg_upper_R.ro" "Right_leg_TWISTS_parentConstraint1.tg[0].tro"
		;
connectAttr "Result_leg_upper_R.s" "Right_leg_TWISTS_parentConstraint1.tg[0].ts"
		;
connectAttr "Result_leg_upper_R.pm" "Right_leg_TWISTS_parentConstraint1.tg[0].tpm"
		;
connectAttr "Result_leg_upper_R.jo" "Right_leg_TWISTS_parentConstraint1.tg[0].tjo"
		;
connectAttr "Result_leg_upper_R.ssc" "Right_leg_TWISTS_parentConstraint1.tg[0].tsc"
		;
connectAttr "Result_leg_upper_R.is" "Right_leg_TWISTS_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_leg_TWISTS_parentConstraint1.w0" "Right_leg_TWISTS_parentConstraint1.tg[0].tw"
		;
connectAttr "Custom_lines_for_pole_vector.di" "R_pole_vector_line.do";
connectAttr "R_pole_vector_line_lowerCluster.og[0]" "R_pole_vector_lineShape.cr"
		;
connectAttr "tweak4.pl[0].cp[0]" "R_pole_vector_lineShape.twl";
connectAttr "cluster3GroupId.id" "R_pole_vector_lineShape.iog.og[3].gid";
connectAttr "cluster3Set.mwc" "R_pole_vector_lineShape.iog.og[3].gco";
connectAttr "groupId10.id" "R_pole_vector_lineShape.iog.og[4].gid";
connectAttr "tweakSet4.mwc" "R_pole_vector_lineShape.iog.og[4].gco";
connectAttr "cluster4GroupId.id" "R_pole_vector_lineShape.iog.og[5].gid";
connectAttr "cluster4Set.mwc" "R_pole_vector_lineShape.iog.og[5].gco";
connectAttr "setup.ro" "setup_parentConstraint1.cro";
connectAttr "setup.pim" "setup_parentConstraint1.cpim";
connectAttr "setup.rp" "setup_parentConstraint1.crp";
connectAttr "setup.rpt" "setup_parentConstraint1.crt";
connectAttr "ac_master.t" "setup_parentConstraint1.tg[0].tt";
connectAttr "ac_master.rp" "setup_parentConstraint1.tg[0].trp";
connectAttr "ac_master.rpt" "setup_parentConstraint1.tg[0].trt";
connectAttr "ac_master.r" "setup_parentConstraint1.tg[0].tr";
connectAttr "ac_master.ro" "setup_parentConstraint1.tg[0].tro";
connectAttr "ac_master.s" "setup_parentConstraint1.tg[0].ts";
connectAttr "ac_master.pm" "setup_parentConstraint1.tg[0].tpm";
connectAttr "setup_parentConstraint1.w0" "setup_parentConstraint1.tg[0].tw";
connectAttr "setup.pim" "setup_scaleConstraint1.cpim";
connectAttr "ac_master.s" "setup_scaleConstraint1.tg[0].ts";
connectAttr "ac_master.pm" "setup_scaleConstraint1.tg[0].tpm";
connectAttr "setup_scaleConstraint1.w0" "setup_scaleConstraint1.tg[0].tw";
connectAttr "csgo_mesh.di" "mesh.do";
connectAttr "ac_master.t" "your_skeleton.t";
connectAttr "ac_master.r" "your_skeleton.r";
connectAttr "makeNurbCircle2.oc" "ac_masterShape.cr";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_sas_variantaSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_sas_variantaSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_sas_variantaSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_sas_variantaSG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_sas_varianta_w_ct_base_gloveSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_sas_variantaSG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_sas_variantaSG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_sas_variantaSG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_sas_variantaSG7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_sas_varianta_w_ct_base_gloveSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_twozero2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_twozero2SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_twozero2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_twozero2SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_twozero2SG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_twozero2SG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_twozero2SG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_twozero2SG7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_twozero2SG8.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_twozero2SG9.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_twozero2SG10.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_twozero2SG11.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_twozero2SG12.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_twozero2SG13.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_body1_model0SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zerotwo_body1_model0SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "tm_anarchist_variantaSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "tm_anarchist_variantaSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "tm_anarchist_variantaSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "tm_separatist_variantaSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "tm_separatist_variantaSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "tm_separatist_variantaSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "tm_separatist_varianta_w_t_base_fullfinger_gloveSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "typeBlinnSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_st6_variantaSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_st6_variantaSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_st6_variantaSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_st6_variantaSG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_st6_varianta_w_ct_base_gloveSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_sas_variantaSG8.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_sas_variantaSG9.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_sas_variantaSG10.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_sas_variantaSG11.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_sas_varianta_w_ct_base_gloveSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_gign_variantaSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_gign_variantaSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_gign_variantaSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_gign_variantaSG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_gign_varianta_w_ct_base_gloveSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_gign_variantaSG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_gign_variantaSG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_gign_variantaSG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_gign_variantaSG7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_gign_varianta_w_ct_base_gloveSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_st6_variantaSG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_st6_variantaSG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_st6_variantaSG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_st6_variantaSG7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ctm_st6_varianta_w_ct_base_gloveSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_sas_variantaSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_sas_variantaSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_sas_variantaSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_sas_variantaSG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_sas_varianta_w_ct_base_gloveSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_sas_variantaSG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_sas_variantaSG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_sas_variantaSG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_sas_variantaSG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_sas_varianta_w_ct_base_gloveSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_twozero2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_twozero2SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_twozero2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_twozero2SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_twozero2SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_twozero2SG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_twozero2SG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_twozero2SG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_twozero2SG8.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_twozero2SG9.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_twozero2SG10.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_twozero2SG11.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_twozero2SG12.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_twozero2SG13.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_body1_model0SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zerotwo_body1_model0SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "tm_anarchist_variantaSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "tm_anarchist_variantaSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "tm_anarchist_variantaSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "tm_separatist_variantaSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "tm_separatist_variantaSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "tm_separatist_variantaSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "tm_separatist_varianta_w_t_base_fullfinger_gloveSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "typeBlinnSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_st6_variantaSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_st6_variantaSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_st6_variantaSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_st6_variantaSG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_st6_varianta_w_ct_base_gloveSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_sas_variantaSG8.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_sas_variantaSG9.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_sas_variantaSG10.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_sas_variantaSG11.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_sas_varianta_w_ct_base_gloveSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_gign_variantaSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_gign_variantaSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_gign_variantaSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_gign_variantaSG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_gign_varianta_w_ct_base_gloveSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_gign_variantaSG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_gign_variantaSG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_gign_variantaSG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_gign_variantaSG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_gign_varianta_w_ct_base_gloveSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_st6_variantaSG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_st6_variantaSG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_st6_variantaSG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_st6_variantaSG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ctm_st6_varianta_w_ct_base_gloveSG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "ctm_sas_lenses.oc" "ctm_sas_variantaSG.ss";
connectAttr "ctm_sas_variantaSG.msg" "materialInfo1.sg";
connectAttr "ctm_sas_lenses.msg" "materialInfo1.m";
connectAttr "ctm_sas_head_gasmask.oc" "ctm_sas_variantaSG1.ss";
connectAttr "ctm_sas_variantaSG1.msg" "materialInfo2.sg";
connectAttr "ctm_sas_head_gasmask.msg" "materialInfo2.m";
connectAttr "ctm_sas_body.oc" "ctm_sas_variantaSG2.ss";
connectAttr "ctm_sas_variantaSG2.msg" "materialInfo3.sg";
connectAttr "ctm_sas_body.msg" "materialInfo3.m";
connectAttr "ctm_sas_bodylegs.oc" "ctm_sas_variantaSG3.ss";
connectAttr "ctm_sas_variantaSG3.msg" "materialInfo4.sg";
connectAttr "ctm_sas_bodylegs.msg" "materialInfo4.m";
connectAttr "w_ct_fbi_glove.oc" "ctm_sas_varianta_w_ct_base_gloveSG.ss";
connectAttr "ctm_sas_varianta_w_ct_base_gloveSG.msg" "materialInfo5.sg";
connectAttr "w_ct_fbi_glove.msg" "materialInfo5.m";
connectAttr "renderLayerManager1.rlmi[0]" "defaultRenderLayer1.rlid";
connectAttr "ctm_sas_lenses1.oc" "ctm_sas_variantaSG4.ss";
connectAttr "ctm_sas_variantaSG4.msg" "materialInfo6.sg";
connectAttr "ctm_sas_lenses1.msg" "materialInfo6.m";
connectAttr "ctm_sas_head_gasmask1.oc" "ctm_sas_variantaSG5.ss";
connectAttr "ctm_sas_variantaSG5.msg" "materialInfo7.sg";
connectAttr "ctm_sas_head_gasmask1.msg" "materialInfo7.m";
connectAttr "ctm_sas_body1.oc" "ctm_sas_variantaSG6.ss";
connectAttr "ctm_sas_variantaSG6.msg" "materialInfo8.sg";
connectAttr "ctm_sas_body1.msg" "materialInfo8.m";
connectAttr "ctm_sas_bodylegs1.oc" "ctm_sas_variantaSG7.ss";
connectAttr "ctm_sas_variantaSG7.msg" "materialInfo9.sg";
connectAttr "ctm_sas_bodylegs1.msg" "materialInfo9.m";
connectAttr "w_ct_fbi_glove1.oc" "ctm_sas_varianta_w_ct_base_gloveSG1.ss";
connectAttr "ctm_sas_varianta_w_ct_base_gloveSG1.msg" "materialInfo10.sg";
connectAttr "w_ct_fbi_glove1.msg" "materialInfo10.m";
connectAttr "ac_arm_IK_FK_blend_L.tx" "reverse_L_arm_IK_FK_blend.ix";
connectAttr "ac_arm_IK_FK_blend_R.tx" "reverse_arm_IK_FK_R.ix";
connectAttr "multiplyDivide_hip_twist.ox" "plusMinusAverage_spine_twist.i1[1]";
connectAttr "multiplyDivide_spine_stretch.ox" "multiplyDivide_SQRT_SPINE_STRETH.i1x"
		;
connectAttr "multiplyDivide_SQRT_SPINE_STRETH.ox" "multiplyDivide_spine_skaly_YZ.i2x"
		;
connectAttr "blendColors_lower_R_blend_rotate1.b" "blendColors_upped_R_blend_rotate.b"
		;
connectAttr "blendColors_ankle_R_blend_rotate2.b" "blendColors_lower_R_blend_rotate1.b"
		;
connectAttr "Shoulders.oc" "zerotwo_twozero2SG.ss";
connectAttr "zerotwo_twozero2SG.msg" "materialInfo11.sg";
connectAttr "Shoulders.msg" "materialInfo11.m";
connectAttr "Material.oc" "zerotwo_twozero2SG1.ss";
connectAttr "zerotwo_twozero2SG1.msg" "materialInfo12.sg";
connectAttr "Material.msg" "materialInfo12.m";
connectAttr "Pants.oc" "zerotwo_twozero2SG2.ss";
connectAttr "zerotwo_twozero2SG2.msg" "materialInfo13.sg";
connectAttr "Pants.msg" "materialInfo13.m";
connectAttr "HighLight.oc" "zerotwo_twozero2SG3.ss";
connectAttr "zerotwo_twozero2SG3.msg" "materialInfo14.sg";
connectAttr "HighLight.msg" "materialInfo14.m";
connectAttr "Headband.oc" "zerotwo_twozero2SG4.ss";
connectAttr "zerotwo_twozero2SG4.msg" "materialInfo15.sg";
connectAttr "Headband.msg" "materialInfo15.m";
connectAttr "Face.oc" "zerotwo_twozero2SG5.ss";
connectAttr "zerotwo_twozero2SG5.msg" "materialInfo16.sg";
connectAttr "Face.msg" "materialInfo16.m";
connectAttr "Mouth.oc" "zerotwo_twozero2SG6.ss";
connectAttr "zerotwo_twozero2SG6.msg" "materialInfo17.sg";
connectAttr "Mouth.msg" "materialInfo17.m";
connectAttr "back_of_head.oc" "zerotwo_twozero2SG7.ss";
connectAttr "zerotwo_twozero2SG7.msg" "materialInfo18.sg";
connectAttr "back_of_head.msg" "materialInfo18.m";
connectAttr "Eyes.oc" "zerotwo_twozero2SG8.ss";
connectAttr "zerotwo_twozero2SG8.msg" "materialInfo19.sg";
connectAttr "Eyes.msg" "materialInfo19.m";
connectAttr "Hands.oc" "zerotwo_twozero2SG9.ss";
connectAttr "zerotwo_twozero2SG9.msg" "materialInfo20.sg";
connectAttr "Hands.msg" "materialInfo20.m";
connectAttr "Hair.oc" "zerotwo_twozero2SG10.ss";
connectAttr "zerotwo_twozero2SG10.msg" "materialInfo21.sg";
connectAttr "Hair.msg" "materialInfo21.m";
connectAttr "Eyelash.oc" "zerotwo_twozero2SG11.ss";
connectAttr "zerotwo_twozero2SG11.msg" "materialInfo22.sg";
connectAttr "Eyelash.msg" "materialInfo22.m";
connectAttr "Collar.oc" "zerotwo_twozero2SG12.ss";
connectAttr "zerotwo_twozero2SG12.msg" "materialInfo23.sg";
connectAttr "Collar.msg" "materialInfo23.m";
connectAttr "Coat.oc" "zerotwo_twozero2SG13.ss";
connectAttr "zerotwo_twozero2SG13.msg" "materialInfo24.sg";
connectAttr "Coat.msg" "materialInfo24.m";
connectAttr "Buttons.oc" "zerotwo_body1_model0SG.ss";
connectAttr "zerotwo_body1_model0SG.msg" "materialInfo25.sg";
connectAttr "Buttons.msg" "materialInfo25.m";
connectAttr "Boots.oc" "zerotwo_body1_model0SG1.ss";
connectAttr "zerotwo_body1_model0SG1.msg" "materialInfo26.sg";
connectAttr "Boots.msg" "materialInfo26.m";
connectAttr "tm_anarchist_lowerbody_varianta.oc" "tm_anarchist_variantaSG.ss";
connectAttr "tm_anarchist_variantaSG.msg" "materialInfo27.sg";
connectAttr "tm_anarchist_lowerbody_varianta.msg" "materialInfo27.m";
connectAttr "tm_anarchist_head_varianta.oc" "tm_anarchist_variantaSG1.ss";
connectAttr "tm_anarchist_variantaSG1.msg" "materialInfo28.sg";
connectAttr "tm_anarchist_head_varianta.msg" "materialInfo28.m";
connectAttr "tm_anarchist_upperbody_varianta.oc" "tm_anarchist_variantaSG2.ss";
connectAttr "tm_anarchist_variantaSG2.msg" "materialInfo29.sg";
connectAttr "tm_anarchist_upperbody_varianta.msg" "materialInfo29.m";
connectAttr "tm_separatist_lowerbody_varianta.oc" "tm_separatist_variantaSG.ss";
connectAttr "tm_separatist_variantaSG.msg" "materialInfo30.sg";
connectAttr "tm_separatist_lowerbody_varianta.msg" "materialInfo30.m";
connectAttr "tm_separatist_head_varianta.oc" "tm_separatist_variantaSG1.ss";
connectAttr "tm_separatist_variantaSG1.msg" "materialInfo31.sg";
connectAttr "tm_separatist_head_varianta.msg" "materialInfo31.m";
connectAttr "tm_separatist_upperbody_varianta.oc" "tm_separatist_variantaSG2.ss"
		;
connectAttr "tm_separatist_variantaSG2.msg" "materialInfo32.sg";
connectAttr "tm_separatist_upperbody_varianta.msg" "materialInfo32.m";
connectAttr "t_base_fullfinger_glove.oc" "tm_separatist_varianta_w_t_base_fullfinger_gloveSG.ss"
		;
connectAttr "tm_separatist_varianta_w_t_base_fullfinger_gloveSG.msg" "materialInfo33.sg"
		;
connectAttr "t_base_fullfinger_glove.msg" "materialInfo33.m";
connectAttr "typeBlinn.oc" "typeBlinnSG.ss";
connectAttr "typeBlinnSG.msg" "materialInfo34.sg";
connectAttr "typeBlinn.msg" "materialInfo34.m";
connectAttr "ac_arm_IK_FK_blend_R.tx" "reverse2.ix";
connectAttr "ac_arm_IK_FK_blend_L.tx" "reverse3.ix";
connectAttr "ac_IK_ankle_L.toe_sweep" "unitConversion26.i";
connectAttr "ac_IK_ankle_L.heel_sweep" "unitConversion27.i";
connectAttr "ac_IK_ankle_L.tile_inside" "unitConversion28.i";
connectAttr "ac_IK_ankle_L.Lift_From_Heel" "unitConversion31.i";
connectAttr "ac_IK_ankle_L.toe_sweep" "unitConversion32.i";
connectAttr "st6_glasslens_varianta.oc" "ctm_st6_variantaSG.ss";
connectAttr "ctm_st6_variantaSG.msg" "materialInfo35.sg";
connectAttr "st6_glasslens_varianta.msg" "materialInfo35.m";
connectAttr "st6_lowerbody.oc" "ctm_st6_variantaSG1.ss";
connectAttr "ctm_st6_variantaSG1.msg" "materialInfo36.sg";
connectAttr "st6_lowerbody.msg" "materialInfo36.m";
connectAttr "st6_face.oc" "ctm_st6_variantaSG2.ss";
connectAttr "ctm_st6_variantaSG2.msg" "materialInfo37.sg";
connectAttr "st6_face.msg" "materialInfo37.m";
connectAttr "st6_upperbody.oc" "ctm_st6_variantaSG3.ss";
connectAttr "ctm_st6_variantaSG3.msg" "materialInfo38.sg";
connectAttr "st6_upperbody.msg" "materialInfo38.m";
connectAttr "w_ct_base_glove.oc" "ctm_st6_varianta_w_ct_base_gloveSG.ss";
connectAttr "ctm_st6_varianta_w_ct_base_gloveSG.msg" "materialInfo39.sg";
connectAttr "w_ct_base_glove.msg" "materialInfo39.m";
connectAttr "ctm_sas_lenses2.oc" "ctm_sas_variantaSG8.ss";
connectAttr "ctm_sas_variantaSG8.msg" "materialInfo40.sg";
connectAttr "ctm_sas_lenses2.msg" "materialInfo40.m";
connectAttr "ctm_sas_head_gasmask2.oc" "ctm_sas_variantaSG9.ss";
connectAttr "ctm_sas_variantaSG9.msg" "materialInfo41.sg";
connectAttr "ctm_sas_head_gasmask2.msg" "materialInfo41.m";
connectAttr "ctm_sas_body2.oc" "ctm_sas_variantaSG10.ss";
connectAttr "ctm_sas_variantaSG10.msg" "materialInfo42.sg";
connectAttr "ctm_sas_body2.msg" "materialInfo42.m";
connectAttr "ctm_sas_bodylegs2.oc" "ctm_sas_variantaSG11.ss";
connectAttr "ctm_sas_variantaSG11.msg" "materialInfo43.sg";
connectAttr "ctm_sas_bodylegs2.msg" "materialInfo43.m";
connectAttr "w_ct_fbi_glove2.oc" "ctm_sas_varianta_w_ct_base_gloveSG2.ss";
connectAttr "ctm_sas_varianta_w_ct_base_gloveSG2.msg" "materialInfo44.sg";
connectAttr "w_ct_fbi_glove2.msg" "materialInfo44.m";
connectAttr "ac_IK_ankle_L.Lift_From_Toe" "reverse_lift_from_toe.iz";
connectAttr "reverse_lift_from_toe.oz" "unitConversion40.i";
connectAttr "ac_IK_ankle_L.tile_outside" "reverse_left_outside.ix";
connectAttr "reverse_left_outside.ox" "unitConversion41.i";
connectAttr "ac_IK_ankle_L.Ball_lift" "reverse4.iz";
connectAttr "reverse4.oz" "unitConversion42.i";
connectAttr "ac_IK_ankle_L.Lean_Ball" "unitConversion43.i";
connectAttr "ac_IK_drv_ankle_R.tile_inside" "unitConversion38.i";
connectAttr "ac_IK_drv_ankle_R.heel_sweep" "unitConversion36.i";
connectAttr "ac_IK_drv_ankle_R.toe_sweep" "unitConversion35.i";
connectAttr "ac_IK_drv_ankle_R.Ball_lift" "unitConversion33.i";
connectAttr "ac_IK_drv_ankle_R.toe_lift" "unitConversion44.i";
connectAttr "ac_IK_drv_ankle_R.lift_from_heel" "reverse5.iz";
connectAttr "reverse5.oz" "unitConversion45.i";
connectAttr "ac_IK_drv_ankle_R.tile_outside" "reverse6.ix";
connectAttr "reverse6.ox" "unitConversion46.i";
connectAttr "ac_IK_drv_ankle_R.Lean_Ball" "unitConversion47.i";
connectAttr "ctm_gign_lowerbody_varianta.oc" "ctm_gign_variantaSG.ss";
connectAttr "ctm_gign_variantaSG.msg" "materialInfo45.sg";
connectAttr "ctm_gign_lowerbody_varianta.msg" "materialInfo45.m";
connectAttr "ctm_gign_visor.oc" "ctm_gign_variantaSG1.ss";
connectAttr "ctm_gign_variantaSG1.msg" "materialInfo46.sg";
connectAttr "ctm_gign_visor.msg" "materialInfo46.m";
connectAttr "ctm_gign_head_varianta.oc" "ctm_gign_variantaSG2.ss";
connectAttr "ctm_gign_variantaSG2.msg" "materialInfo47.sg";
connectAttr "ctm_gign_head_varianta.msg" "materialInfo47.m";
connectAttr "ctm_gign_upperbody_varianta.oc" "ctm_gign_variantaSG3.ss";
connectAttr "ctm_gign_variantaSG3.msg" "materialInfo48.sg";
connectAttr "ctm_gign_upperbody_varianta.msg" "materialInfo48.m";
connectAttr "w_ct_fbi_glove3.oc" "ctm_gign_varianta_w_ct_base_gloveSG.ss";
connectAttr "ctm_gign_varianta_w_ct_base_gloveSG.msg" "materialInfo49.sg";
connectAttr "w_ct_fbi_glove3.msg" "materialInfo49.m";
connectAttr "ctm_gign_lowerbody_varianta1.oc" "ctm_gign_variantaSG4.ss";
connectAttr "ctm_gign_variantaSG4.msg" "materialInfo50.sg";
connectAttr "ctm_gign_lowerbody_varianta1.msg" "materialInfo50.m";
connectAttr "ctm_gign_visor1.oc" "ctm_gign_variantaSG5.ss";
connectAttr "ctm_gign_variantaSG5.msg" "materialInfo51.sg";
connectAttr "ctm_gign_visor1.msg" "materialInfo51.m";
connectAttr "ctm_gign_head_varianta1.oc" "ctm_gign_variantaSG6.ss";
connectAttr "ctm_gign_variantaSG6.msg" "materialInfo52.sg";
connectAttr "ctm_gign_head_varianta1.msg" "materialInfo52.m";
connectAttr "ctm_gign_upperbody_varianta1.oc" "ctm_gign_variantaSG7.ss";
connectAttr "ctm_gign_variantaSG7.msg" "materialInfo53.sg";
connectAttr "ctm_gign_upperbody_varianta1.msg" "materialInfo53.m";
connectAttr "w_ct_fbi_glove4.oc" "ctm_gign_varianta_w_ct_base_gloveSG1.ss";
connectAttr "ctm_gign_varianta_w_ct_base_gloveSG1.msg" "materialInfo54.sg";
connectAttr "w_ct_fbi_glove4.msg" "materialInfo54.m";
connectAttr "st6_glasslens_varianta1.oc" "ctm_st6_variantaSG4.ss";
connectAttr "ctm_st6_variantaSG4.msg" "materialInfo55.sg";
connectAttr "st6_glasslens_varianta1.msg" "materialInfo55.m";
connectAttr "st6_lowerbody1.oc" "ctm_st6_variantaSG5.ss";
connectAttr "ctm_st6_variantaSG5.msg" "materialInfo56.sg";
connectAttr "st6_lowerbody1.msg" "materialInfo56.m";
connectAttr "st6_face1.oc" "ctm_st6_variantaSG6.ss";
connectAttr "ctm_st6_variantaSG6.msg" "materialInfo57.sg";
connectAttr "st6_face1.msg" "materialInfo57.m";
connectAttr "st6_upperbody1.oc" "ctm_st6_variantaSG7.ss";
connectAttr "ctm_st6_variantaSG7.msg" "materialInfo58.sg";
connectAttr "st6_upperbody1.msg" "materialInfo58.m";
connectAttr "w_ct_base_glove1.oc" "ctm_st6_varianta_w_ct_base_gloveSG1.ss";
connectAttr "ctm_st6_varianta_w_ct_base_gloveSG1.msg" "materialInfo59.sg";
connectAttr "w_ct_base_glove1.msg" "materialInfo59.m";
connectAttr "cluster1GroupParts.og" "L_pole_vector_line_lowerCluster.ip[0].ig";
connectAttr "cluster1GroupId.id" "L_pole_vector_line_lowerCluster.ip[0].gi";
connectAttr "L_pole_vector_line_lower.wm" "L_pole_vector_line_lowerCluster.ma";
connectAttr "L_pole_vector_line_lowerShape.x" "L_pole_vector_line_lowerCluster.x"
		;
connectAttr "groupParts9.og" "tweak3.ip[0].ig";
connectAttr "groupId9.id" "tweak3.ip[0].gi";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "L_pole_vector_lineShape.iog.og[0]" "cluster1Set.dsm" -na;
connectAttr "L_pole_vector_line_lowerCluster.msg" "cluster1Set.ub[0]";
connectAttr "tweak3.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "groupId9.msg" "tweakSet3.gn" -na;
connectAttr "L_pole_vector_lineShape.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "L_pole_vector_lineShapeOrig.ws" "groupParts9.ig";
connectAttr "groupId9.id" "groupParts9.gi";
connectAttr "cluster2GroupParts.og" "L_pole_vector_line_vectorCluster.ip[0].ig";
connectAttr "cluster2GroupId.id" "L_pole_vector_line_vectorCluster.ip[0].gi";
connectAttr "L_pole_vector_line_vector.wm" "L_pole_vector_line_vectorCluster.ma"
		;
connectAttr "L_pole_vector_line_vectorShape.x" "L_pole_vector_line_vectorCluster.x"
		;
connectAttr "cluster2GroupId.msg" "cluster2Set.gn" -na;
connectAttr "L_pole_vector_lineShape.iog.og[2]" "cluster2Set.dsm" -na;
connectAttr "L_pole_vector_line_vectorCluster.msg" "cluster2Set.ub[0]";
connectAttr "L_pole_vector_line_lowerCluster.og[0]" "cluster2GroupParts.ig";
connectAttr "cluster2GroupId.id" "cluster2GroupParts.gi";
connectAttr "cluster3GroupParts.og" "R_pole_vector_line_vectorCluster.ip[0].ig";
connectAttr "cluster3GroupId.id" "R_pole_vector_line_vectorCluster.ip[0].gi";
connectAttr "R_pole_vector_line_vector.wm" "R_pole_vector_line_vectorCluster.ma"
		;
connectAttr "R_pole_vector_line_vectorShape.x" "R_pole_vector_line_vectorCluster.x"
		;
connectAttr "groupParts10.og" "tweak4.ip[0].ig";
connectAttr "groupId10.id" "tweak4.ip[0].gi";
connectAttr "cluster3GroupId.msg" "cluster3Set.gn" -na;
connectAttr "R_pole_vector_lineShape.iog.og[3]" "cluster3Set.dsm" -na;
connectAttr "R_pole_vector_line_vectorCluster.msg" "cluster3Set.ub[0]";
connectAttr "tweak4.og[0]" "cluster3GroupParts.ig";
connectAttr "cluster3GroupId.id" "cluster3GroupParts.gi";
connectAttr "groupId10.msg" "tweakSet4.gn" -na;
connectAttr "R_pole_vector_lineShape.iog.og[4]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "R_pole_vector_lineShapeOrig.ws" "groupParts10.ig";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "cluster4GroupParts.og" "R_pole_vector_line_lowerCluster.ip[0].ig";
connectAttr "cluster4GroupId.id" "R_pole_vector_line_lowerCluster.ip[0].gi";
connectAttr "R_pole_vector_line_lower.wm" "R_pole_vector_line_lowerCluster.ma";
connectAttr "R_pole_vector_line_lowerShape.x" "R_pole_vector_line_lowerCluster.x"
		;
connectAttr "cluster4GroupId.msg" "cluster4Set.gn" -na;
connectAttr "R_pole_vector_lineShape.iog.og[5]" "cluster4Set.dsm" -na;
connectAttr "R_pole_vector_line_lowerCluster.msg" "cluster4Set.ub[0]";
connectAttr "R_pole_vector_line_vectorCluster.og[0]" "cluster4GroupParts.ig";
connectAttr "cluster4GroupId.id" "cluster4GroupParts.gi";
connectAttr "cluster5GroupParts.og" "L_pole_vector_arm_line_poleCluster.ip[0].ig"
		;
connectAttr "cluster5GroupId.id" "L_pole_vector_arm_line_poleCluster.ip[0].gi";
connectAttr "L_pole_vector_arm_line_pole.wm" "L_pole_vector_arm_line_poleCluster.ma"
		;
connectAttr "L_pole_vector_arm_line_poleShape.x" "L_pole_vector_arm_line_poleCluster.x"
		;
connectAttr "groupParts11.og" "tweak5.ip[0].ig";
connectAttr "groupId11.id" "tweak5.ip[0].gi";
connectAttr "cluster5GroupId.msg" "cluster5Set.gn" -na;
connectAttr "L_pole_vector_arm_lineShape.iog.og[0]" "cluster5Set.dsm" -na;
connectAttr "L_pole_vector_arm_line_poleCluster.msg" "cluster5Set.ub[0]";
connectAttr "tweak5.og[0]" "cluster5GroupParts.ig";
connectAttr "cluster5GroupId.id" "cluster5GroupParts.gi";
connectAttr "groupId11.msg" "tweakSet5.gn" -na;
connectAttr "L_pole_vector_arm_lineShape.iog.og[1]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "L_pole_vector_arm_lineShapeOrig.ws" "groupParts11.ig";
connectAttr "groupId11.id" "groupParts11.gi";
connectAttr "cluster6GroupParts.og" "L_pole_vector_arm_line_lowerCluster.ip[0].ig"
		;
connectAttr "cluster6GroupId.id" "L_pole_vector_arm_line_lowerCluster.ip[0].gi";
connectAttr "L_pole_vector_arm_line_lower.wm" "L_pole_vector_arm_line_lowerCluster.ma"
		;
connectAttr "L_pole_vector_arm_line_lowerShape.x" "L_pole_vector_arm_line_lowerCluster.x"
		;
connectAttr "cluster6GroupId.msg" "cluster6Set.gn" -na;
connectAttr "L_pole_vector_arm_lineShape.iog.og[2]" "cluster6Set.dsm" -na;
connectAttr "L_pole_vector_arm_line_lowerCluster.msg" "cluster6Set.ub[0]";
connectAttr "L_pole_vector_arm_line_poleCluster.og[0]" "cluster6GroupParts.ig";
connectAttr "cluster6GroupId.id" "cluster6GroupParts.gi";
connectAttr "cluster7GroupParts.og" "R_pole_vector_arm_line_poleCluster.ip[0].ig"
		;
connectAttr "cluster7GroupId.id" "R_pole_vector_arm_line_poleCluster.ip[0].gi";
connectAttr "R_pole_vector_arm_line_pole.wm" "R_pole_vector_arm_line_poleCluster.ma"
		;
connectAttr "R_pole_vector_arm_line_poleShape.x" "R_pole_vector_arm_line_poleCluster.x"
		;
connectAttr "groupParts12.og" "tweak6.ip[0].ig";
connectAttr "groupId12.id" "tweak6.ip[0].gi";
connectAttr "cluster7GroupId.msg" "cluster7Set.gn" -na;
connectAttr "R_pole_vector_arm_lineShape.iog.og[0]" "cluster7Set.dsm" -na;
connectAttr "R_pole_vector_arm_line_poleCluster.msg" "cluster7Set.ub[0]";
connectAttr "tweak6.og[0]" "cluster7GroupParts.ig";
connectAttr "cluster7GroupId.id" "cluster7GroupParts.gi";
connectAttr "groupId12.msg" "tweakSet6.gn" -na;
connectAttr "R_pole_vector_arm_lineShape.iog.og[1]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "R_pole_vector_arm_lineShapeOrig.ws" "groupParts12.ig";
connectAttr "groupId12.id" "groupParts12.gi";
connectAttr "cluster8GroupParts.og" "R_pole_vector_arm_line_lowerCluster.ip[0].ig"
		;
connectAttr "cluster8GroupId.id" "R_pole_vector_arm_line_lowerCluster.ip[0].gi";
connectAttr "R_pole_vector_arm_line_lower.wm" "R_pole_vector_arm_line_lowerCluster.ma"
		;
connectAttr "R_pole_vector_arm_line_lowerShape.x" "R_pole_vector_arm_line_lowerCluster.x"
		;
connectAttr "cluster8GroupId.msg" "cluster8Set.gn" -na;
connectAttr "R_pole_vector_arm_lineShape.iog.og[2]" "cluster8Set.dsm" -na;
connectAttr "R_pole_vector_arm_line_lowerCluster.msg" "cluster8Set.ub[0]";
connectAttr "R_pole_vector_arm_line_poleCluster.og[0]" "cluster8GroupParts.ig";
connectAttr "cluster8GroupId.id" "cluster8GroupParts.gi";
connectAttr "layerManager.dli[1]" "Custom_lines_for_pole_vector.id";
connectAttr "Left_leg_rig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "body_ctls_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "arm_rig_R.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "arm_rig_L.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "ac_master.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "Right_leg_rig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "spine_rig1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "layerManager.dli[2]" "csgo_mesh.id";
connectAttr "ac_arm_IK_FK_blend_L.tx" "reverse7.ix";
connectAttr "ac_arm_IK_FK_blend_L.tx" "reverse_L_fk_IK.ix";
connectAttr "ac_arm_IK_FK_blend_L.tx" "reverse8.ix";
connectAttr "Left_Hand_CNSTR.World" "reverse8.iz";
connectAttr "ac_arm_IK_FK_blend_R.tx" "reverse_R_FK_IK.ix";
connectAttr "Right_Hand_CNSTR.World" "reverse_R_FK_IK.iz";
connectAttr "reverse8.oz" "blendColors2.b";
connectAttr "reverse8.ix" "blendColors2.c2r";
connectAttr "reverse8.ox" "blendColors2.c2g";
connectAttr "reverse_R_FK_IK.ox" "blendColors3.c2r";
connectAttr "reverse_R_FK_IK.ix" "blendColors3.c2g";
connectAttr "reverse_R_FK_IK.oz" "blendColors3.b";
connectAttr "csgo_character.msg" "MayaNodeEditorSavedTabsInfo1.tgi[0].ni[0].dn";
connectAttr "ctm_sas_variantaSG.pa" ":renderPartition.st" -na;
connectAttr "ctm_sas_variantaSG1.pa" ":renderPartition.st" -na;
connectAttr "ctm_sas_variantaSG2.pa" ":renderPartition.st" -na;
connectAttr "ctm_sas_variantaSG3.pa" ":renderPartition.st" -na;
connectAttr "ctm_sas_varianta_w_ct_base_gloveSG.pa" ":renderPartition.st" -na;
connectAttr "ctm_sas_variantaSG4.pa" ":renderPartition.st" -na;
connectAttr "ctm_sas_variantaSG5.pa" ":renderPartition.st" -na;
connectAttr "ctm_sas_variantaSG6.pa" ":renderPartition.st" -na;
connectAttr "ctm_sas_variantaSG7.pa" ":renderPartition.st" -na;
connectAttr "ctm_sas_varianta_w_ct_base_gloveSG1.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_twozero2SG.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_twozero2SG1.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_twozero2SG2.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_twozero2SG3.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_twozero2SG4.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_twozero2SG5.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_twozero2SG6.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_twozero2SG7.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_twozero2SG8.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_twozero2SG9.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_twozero2SG10.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_twozero2SG11.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_twozero2SG12.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_twozero2SG13.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_body1_model0SG.pa" ":renderPartition.st" -na;
connectAttr "zerotwo_body1_model0SG1.pa" ":renderPartition.st" -na;
connectAttr "tm_anarchist_variantaSG.pa" ":renderPartition.st" -na;
connectAttr "tm_anarchist_variantaSG1.pa" ":renderPartition.st" -na;
connectAttr "tm_anarchist_variantaSG2.pa" ":renderPartition.st" -na;
connectAttr "tm_separatist_variantaSG.pa" ":renderPartition.st" -na;
connectAttr "tm_separatist_variantaSG1.pa" ":renderPartition.st" -na;
connectAttr "tm_separatist_variantaSG2.pa" ":renderPartition.st" -na;
connectAttr "tm_separatist_varianta_w_t_base_fullfinger_gloveSG.pa" ":renderPartition.st"
		 -na;
connectAttr "typeBlinnSG.pa" ":renderPartition.st" -na;
connectAttr "ctm_st6_variantaSG.pa" ":renderPartition.st" -na;
connectAttr "ctm_st6_variantaSG1.pa" ":renderPartition.st" -na;
connectAttr "ctm_st6_variantaSG2.pa" ":renderPartition.st" -na;
connectAttr "ctm_st6_variantaSG3.pa" ":renderPartition.st" -na;
connectAttr "ctm_st6_varianta_w_ct_base_gloveSG.pa" ":renderPartition.st" -na;
connectAttr "ctm_sas_variantaSG8.pa" ":renderPartition.st" -na;
connectAttr "ctm_sas_variantaSG9.pa" ":renderPartition.st" -na;
connectAttr "ctm_sas_variantaSG10.pa" ":renderPartition.st" -na;
connectAttr "ctm_sas_variantaSG11.pa" ":renderPartition.st" -na;
connectAttr "ctm_sas_varianta_w_ct_base_gloveSG2.pa" ":renderPartition.st" -na;
connectAttr "ctm_gign_variantaSG.pa" ":renderPartition.st" -na;
connectAttr "ctm_gign_variantaSG1.pa" ":renderPartition.st" -na;
connectAttr "ctm_gign_variantaSG2.pa" ":renderPartition.st" -na;
connectAttr "ctm_gign_variantaSG3.pa" ":renderPartition.st" -na;
connectAttr "ctm_gign_varianta_w_ct_base_gloveSG.pa" ":renderPartition.st" -na;
connectAttr "ctm_gign_variantaSG4.pa" ":renderPartition.st" -na;
connectAttr "ctm_gign_variantaSG5.pa" ":renderPartition.st" -na;
connectAttr "ctm_gign_variantaSG6.pa" ":renderPartition.st" -na;
connectAttr "ctm_gign_variantaSG7.pa" ":renderPartition.st" -na;
connectAttr "ctm_gign_varianta_w_ct_base_gloveSG1.pa" ":renderPartition.st" -na;
connectAttr "ctm_st6_variantaSG4.pa" ":renderPartition.st" -na;
connectAttr "ctm_st6_variantaSG5.pa" ":renderPartition.st" -na;
connectAttr "ctm_st6_variantaSG6.pa" ":renderPartition.st" -na;
connectAttr "ctm_st6_variantaSG7.pa" ":renderPartition.st" -na;
connectAttr "ctm_st6_varianta_w_ct_base_gloveSG1.pa" ":renderPartition.st" -na;
connectAttr "ctm_sas_lenses.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_sas_head_gasmask.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_sas_body.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_sas_bodylegs.msg" ":defaultShaderList1.s" -na;
connectAttr "w_ct_fbi_glove.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_sas_lenses1.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_sas_head_gasmask1.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_sas_body1.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_sas_bodylegs1.msg" ":defaultShaderList1.s" -na;
connectAttr "w_ct_fbi_glove1.msg" ":defaultShaderList1.s" -na;
connectAttr "Shoulders.msg" ":defaultShaderList1.s" -na;
connectAttr "Material.msg" ":defaultShaderList1.s" -na;
connectAttr "Pants.msg" ":defaultShaderList1.s" -na;
connectAttr "HighLight.msg" ":defaultShaderList1.s" -na;
connectAttr "Headband.msg" ":defaultShaderList1.s" -na;
connectAttr "Face.msg" ":defaultShaderList1.s" -na;
connectAttr "Mouth.msg" ":defaultShaderList1.s" -na;
connectAttr "back_of_head.msg" ":defaultShaderList1.s" -na;
connectAttr "Eyes.msg" ":defaultShaderList1.s" -na;
connectAttr "Hands.msg" ":defaultShaderList1.s" -na;
connectAttr "Hair.msg" ":defaultShaderList1.s" -na;
connectAttr "Eyelash.msg" ":defaultShaderList1.s" -na;
connectAttr "Collar.msg" ":defaultShaderList1.s" -na;
connectAttr "Coat.msg" ":defaultShaderList1.s" -na;
connectAttr "Buttons.msg" ":defaultShaderList1.s" -na;
connectAttr "Boots.msg" ":defaultShaderList1.s" -na;
connectAttr "tm_anarchist_lowerbody_varianta.msg" ":defaultShaderList1.s" -na;
connectAttr "tm_anarchist_head_varianta.msg" ":defaultShaderList1.s" -na;
connectAttr "tm_anarchist_upperbody_varianta.msg" ":defaultShaderList1.s" -na;
connectAttr "tm_separatist_lowerbody_varianta.msg" ":defaultShaderList1.s" -na;
connectAttr "tm_separatist_head_varianta.msg" ":defaultShaderList1.s" -na;
connectAttr "tm_separatist_upperbody_varianta.msg" ":defaultShaderList1.s" -na;
connectAttr "t_base_fullfinger_glove.msg" ":defaultShaderList1.s" -na;
connectAttr "typeBlinn.msg" ":defaultShaderList1.s" -na;
connectAttr "st6_glasslens_varianta.msg" ":defaultShaderList1.s" -na;
connectAttr "st6_lowerbody.msg" ":defaultShaderList1.s" -na;
connectAttr "st6_face.msg" ":defaultShaderList1.s" -na;
connectAttr "st6_upperbody.msg" ":defaultShaderList1.s" -na;
connectAttr "w_ct_base_glove.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_sas_lenses2.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_sas_head_gasmask2.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_sas_body2.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_sas_bodylegs2.msg" ":defaultShaderList1.s" -na;
connectAttr "w_ct_fbi_glove2.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_gign_lowerbody_varianta.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_gign_visor.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_gign_head_varianta.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_gign_upperbody_varianta.msg" ":defaultShaderList1.s" -na;
connectAttr "w_ct_fbi_glove3.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_gign_lowerbody_varianta1.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_gign_visor1.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_gign_head_varianta1.msg" ":defaultShaderList1.s" -na;
connectAttr "ctm_gign_upperbody_varianta1.msg" ":defaultShaderList1.s" -na;
connectAttr "w_ct_fbi_glove4.msg" ":defaultShaderList1.s" -na;
connectAttr "st6_glasslens_varianta1.msg" ":defaultShaderList1.s" -na;
connectAttr "st6_lowerbody1.msg" ":defaultShaderList1.s" -na;
connectAttr "st6_face1.msg" ":defaultShaderList1.s" -na;
connectAttr "st6_upperbody1.msg" ":defaultShaderList1.s" -na;
connectAttr "w_ct_base_glove1.msg" ":defaultShaderList1.s" -na;
connectAttr "reverse_L_arm_IK_FK_blend.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse_arm_IK_FK_R.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide_hip_twist.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage_spine_twist.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "multiplyDivide_spine_stretch.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "multiplyDivide_SQRT_SPINE_STRETH.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "multiplyDivide_spine_skaly_YZ.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "blendColors_L_leh_upped_fk_ik_blend_rotate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blendColors_L_leh_lower_fk_ik_blend_rotate1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blendColors_L_leh_ankle_fk_ik_blend_rotate2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blendColors_upped_R_blend_rotate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blendColors_lower_R_blend_rotate1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blendColors_ankle_R_blend_rotate2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "reverse2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors_upped_L_translate.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "blendColors_upped_L_rotate.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors_lower_L_translate1.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "blendColors_lower_L_rotate1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "blendColors_ankle_L_translate2.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "blendColors_ankle_L_rotate2.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "blendColors_right_upped_translate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blendColors_right_upped_rotate.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "blendColors_right_lower_rotate1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blendColors_right_lower_translate1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blendColors_right_ankle_rotate2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "blendColors_right_ankle_translate2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "reverse_lift_from_toe.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse_left_outside.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse_L_fk_IK.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse_R_FK_IK.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of mp_rig_v008_for_animation.ma
