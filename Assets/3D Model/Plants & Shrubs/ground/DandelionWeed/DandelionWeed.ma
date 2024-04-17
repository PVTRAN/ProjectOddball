//Maya ASCII 2014 scene
//Name: DandelionWeed.ma
//Last modified: Wed, Jan 15, 2014 04:06:19 PM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 188.17100982451871 84.412373814894309 -34.970583504117251 ;
	setAttr ".r" -type "double3" -18.338352730624123 458.99999999992343 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 223.09375273401753;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -21.092803859911779 21.310853011414771 19.614471313855837 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1500.0999999999999 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1500.0999999999999 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1500.0999999999999 1.5330101547388493 4.9464004178910175 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 53.952655672007317;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Dandelion_Card_001";
	setAttr ".t" -type "double3" 5.5593414993594121e-031 20.771881658857545 160.256222616261 ;
	setAttr ".r" -type "double3" 90 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 0.58990508855776791 0.58990508855776791 0.58990508855776791 ;
createNode mesh -n "Dandelion_Card_00Shape1" -p "Dandelion_Card_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Person_Scale";
	setAttr ".t" -type "double3" 0 90 -83.864620216323772 ;
createNode mesh -n "Person_ScaleShape" -p "Person_Scale";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "cryExportNode_DandelionWeed";
	addAttr -ci true -sn "fileType" -ln "fileType" -min 0 -max 3 -en "Geometry (.CGF):Character (.CHR):Animated Geometry (.CGA):Character Skin (.SKIN)" 
		-at "enum";
	addAttr -ci true -sn "DoNotMerge" -ln "DoNotMerge" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "WriteVertexColours" -ln "WriteVertexColours" -dv 1 -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "UseF32VertexFormat" -ln "UseF32VertexFormat" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "NodeCustomExportPath" -ln "NodeCustomExportPath" -dt "string";
createNode transform -n "Dandelion_group" -p "cryExportNode_DandelionWeed";
createNode transform -n "D_Plant_001" -p "Dandelion_group";
createNode transform -n "Dandelion_MainCard_001" -p "D_Plant_001";
	setAttr ".rp" -type "double3" -1.214222411744804e-030 23.302064207181576 -10.82969014757046 ;
	setAttr ".sp" -type "double3" -1.214222411744804e-030 23.302064207181576 -10.82969014757046 ;
createNode mesh -n "Dandelion_MainCard_00Shape1" -p "Dandelion_MainCard_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.29253321886062622 0.41133224964141846 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.58506644 0.8226645
		 0.16167687 0.82266456 0.016567605 0.08430136 0.58506644 0.08430136;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -8.5066452 42.336208 16.418646 
		33.832317 42.336208 41.394615 48.343243 -1.2202114 -23.881632 -8.5066452 -1.2202114 
		-57.417671;
	setAttr -s 4 ".vt[0:3]"  8.5066452 7.1645909e-015 -32.26644897 -33.83231735 7.1645909e-015 -32.26644897
		 -48.34324265 -9.2303645e-015 41.56986618 8.5066452 -9.2303645e-015 41.56986618;
	setAttr -s 4 ".ed[0:3]"  1 0 0 1 2 0 3 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 2 -1 1
		mu 0 4 2 3 0 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_003" -p "D_Plant_001";
	setAttr ".t" -type "double3" 5.8583048931627826e-031 14.646191457721557 -21.164438552728754 ;
	setAttr ".r" -type "double3" 90 11.492546588070104 8.1140686568279715e-016 ;
	setAttr ".s" -type "double3" 0.51210775591626156 0.51210775591626156 0.51210775591626156 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape3" -p "D_PuffCard_003";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_003";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_004" -p "D_Plant_001";
	setAttr ".t" -type "double3" 5.8583048931627826e-031 14.646191457721557 -21.164438552728754 ;
	setAttr ".r" -type "double3" 89.999999999999957 -48.146526610790133 9.5336378267064375e-015 ;
	setAttr ".s" -type "double3" 0.51210775591626156 0.51210775591626156 0.51210775591626156 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape4" -p "D_PuffCard_004";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_004";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_005" -p "D_Plant_001";
	setAttr ".t" -type "double3" 5.8583048931627826e-031 14.646191457721557 -21.164438552728754 ;
	setAttr ".r" -type "double3" 154.53800740822837 -48.146526610790296 0 ;
	setAttr ".s" -type "double3" 0.51210775591626156 0.51210775591626156 0.51210775591626156 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape5" -p "D_PuffCard_005";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_005";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_006" -p "D_Plant_001";
	setAttr ".t" -type "double3" 5.8583048931627826e-031 14.646191457721557 -21.164438552728754 ;
	setAttr ".r" -type "double3" 221.79355903255006 -28.787191266942241 -46.176320956951223 ;
	setAttr ".s" -type "double3" 0.51210775591626156 0.51210775591626156 0.51210775591626156 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape6" -p "D_PuffCard_006";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_006";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_007" -p "D_Plant_001";
	setAttr ".t" -type "double3" 7.0434780581737817e-015 9.9486237482019533 -26.694422260708929 ;
	setAttr ".r" -type "double3" 89.999999999999972 35.016290962270681 0 ;
	setAttr ".s" -type "double3" 0.2548519442096801 0.2548519442096801 0.2548519442096801 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape7" -p "D_PuffCard_007";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_007";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_008" -p "D_Plant_001";
	setAttr ".t" -type "double3" 7.0434780581737817e-015 9.9486237482019533 -26.694422260708929 ;
	setAttr ".r" -type "double3" 89.99999999999973 128.06129662219706 -2.5444437451708134e-014 ;
	setAttr ".s" -type "double3" 0.2548519442096801 0.2548519442096801 0.2548519442096801 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape8" -p "D_PuffCard_008";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_008";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_009" -p "D_Plant_001";
	setAttr ".t" -type "double3" 7.0434780581737817e-015 9.9486237482019533 -26.694422260708929 ;
	setAttr ".r" -type "double3" 26.862780621836158 128.06129662219692 0 ;
	setAttr ".s" -type "double3" 0.2548519442096801 0.2548519442096801 0.2548519442096801 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape9" -p "D_PuffCard_009";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_009";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_0010" -p "D_Plant_001";
	setAttr ".t" -type "double3" 7.0434780581737817e-015 9.9486237482019533 -26.694422260708929 ;
	setAttr ".r" -type "double3" -39.573438535767629 135.52103788943191 -82.464468026666097 ;
	setAttr ".s" -type "double3" 0.2548519442096801 0.2548519442096801 0.2548519442096801 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape10" -p "D_PuffCard_0010";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_0010";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_Leaf_Card_001" -p "D_Plant_001";
	setAttr ".t" -type "double3" 0.41383749584553442 -81.557551759478145 -36.027070932516764 ;
	setAttr ".r" -type "double3" -72.505326343156796 -35.600271656298133 137.1165639009613 ;
	setAttr ".s" -type "double3" 0.70597878115553581 0.70597878115553581 0.70597878115553581 ;
	setAttr ".rp" -type "double3" -1.6342482922482304e-013 82.408549157316287 36.032729678677299 ;
	setAttr ".sp" -type "double3" -1.6342482922482304e-013 82.40854915731623 36.032729678677271 ;
createNode mesh -n "D_Leaf_Card_00Shape1" -p "D_Leaf_Card_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.24141137 0.97162652
		 0.34847957 0.97162652 0.41834068 0.97162652 0.50238001 0.97162652 0.60229599 0.97162652
		 0.24141137 0.88122553 0.34847957 0.88122553 0.41834068 0.88122553 0.50238001 0.88122553
		 0.60229599 0.88122547;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -1.6276063e-013 85.61630249 37.82884979 -1.5785211e-013 85.61630249 31.51284218
		 -0.91453922 85.61630249 27.10071182 -3.1916151 85.61630249 22.57963943 -6.43962955 85.61630249 18.06183815
		 -1.6335269e-013 80.28349304 37.82884979 -1.5844417e-013 80.28349304 31.51284218 -0.91453922 80.28349304 27.10071182
		 -3.1916151 80.28349304 22.57963943 -6.43962955 80.28349304 18.06183815;
	setAttr -s 13 ".ed[0:12]"  0 5 0 1 6 1 0 1 0 2 7 1 1 2 0 3 8 1 2 3 0
		 4 9 0 3 4 0 5 6 0 6 7 0 7 8 0 8 9 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 9 -2 -3 0
		mu 0 4 5 6 1 0
		f 4 10 -4 -5 1
		mu 0 4 6 7 2 1
		f 4 11 -6 -7 3
		mu 0 4 7 8 3 2
		f 4 12 -8 -9 5
		mu 0 4 8 9 4 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_Leaf_Card_002" -p "D_Plant_001";
	setAttr ".t" -type "double3" 0.41383749584553442 -81.557551759478145 -36.027070932516764 ;
	setAttr ".r" -type "double3" -304.40777664699056 -35.875090307915592 412.29674731987586 ;
	setAttr ".s" -type "double3" 0.78498129698015628 0.78498129698015628 0.78498129698015628 ;
	setAttr ".rp" -type "double3" -1.6342482922482304e-013 82.408549157316287 36.032729678677299 ;
	setAttr ".sp" -type "double3" -1.6342482922482304e-013 82.40854915731623 36.032729678677271 ;
createNode mesh -n "D_Leaf_Card_00Shape2" -p "D_Leaf_Card_002";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.24141137 0.97162652
		 0.34847957 0.97162652 0.41834068 0.97162652 0.50238001 0.97162652 0.60229599 0.97162652
		 0.24141137 0.88122553 0.34847957 0.88122553 0.41834068 0.88122553 0.50238001 0.88122553
		 0.60229599 0.88122547;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -1.6276063e-013 85.61630249 37.82884979 -1.5785211e-013 85.61630249 31.51284218
		 -0.91453922 85.61630249 27.10071182 -3.1916151 85.61630249 22.57963943 -6.43962955 85.61630249 18.06183815
		 -1.6335269e-013 80.28349304 37.82884979 -1.5844417e-013 80.28349304 31.51284218 -0.91453922 80.28349304 27.10071182
		 -3.1916151 80.28349304 22.57963943 -6.43962955 80.28349304 18.06183815;
	setAttr -s 13 ".ed[0:12]"  0 5 0 1 6 1 0 1 0 2 7 1 1 2 0 3 8 1 2 3 0
		 4 9 0 3 4 0 5 6 0 6 7 0 7 8 0 8 9 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 9 -2 -3 0
		mu 0 4 5 6 1 0
		f 4 10 -4 -5 1
		mu 0 4 6 7 2 1
		f 4 11 -6 -7 3
		mu 0 4 7 8 3 2
		f 4 12 -8 -9 5
		mu 0 4 8 9 4 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_Leaf_Card_003" -p "D_Plant_001";
	setAttr ".t" -type "double3" -0.12404917161346363 -67.347479867538766 -34.220671957039862 ;
	setAttr ".r" -type "double3" -114.71056571843054 0.96311865259910734 147.75659910014127 ;
	setAttr ".s" -type "double3" 0.45860545568832267 0.45860545568832267 0.45860545568832267 ;
	setAttr ".rp" -type "double3" -1.6342482922482304e-013 82.408549157316287 36.032729678677299 ;
	setAttr ".sp" -type "double3" -1.6342482922482304e-013 82.40854915731623 36.032729678677271 ;
createNode mesh -n "D_Leaf_Card_00Shape3" -p "D_Leaf_Card_003";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.24141137 0.97162652
		 0.34847957 0.97162652 0.41834068 0.97162652 0.50238001 0.97162652 0.60229599 0.97162652
		 0.24141137 0.88122553 0.34847957 0.88122553 0.41834068 0.88122553 0.50238001 0.88122553
		 0.60229599 0.88122547;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -1.6276063e-013 85.61630249 37.82884979 -1.5785211e-013 85.61630249 31.51284218
		 -0.91453922 85.61630249 27.10071182 -3.1916151 85.61630249 22.57963943 -6.43962955 85.61630249 18.06183815
		 -1.6335269e-013 80.28349304 37.82884979 -1.5844417e-013 80.28349304 31.51284218 -0.91453922 80.28349304 27.10071182
		 -3.1916151 80.28349304 22.57963943 -6.43962955 80.28349304 18.06183815;
	setAttr -s 13 ".ed[0:12]"  0 5 0 1 6 1 0 1 0 2 7 1 1 2 0 3 8 1 2 3 0
		 4 9 0 3 4 0 5 6 0 6 7 0 7 8 0 8 9 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 9 -2 -3 0
		mu 0 4 5 6 1 0
		f 4 10 -4 -5 1
		mu 0 4 6 7 2 1
		f 4 11 -6 -7 3
		mu 0 4 7 8 3 2
		f 4 12 -8 -9 5
		mu 0 4 8 9 4 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_Plant_002" -p "Dandelion_group";
	setAttr ".t" -type "double3" 5.5053664952456671 -1.4210854715202004e-014 7.4693701494869273 ;
	setAttr ".s" -type "double3" 1.1763300065228051 1.1763300065228051 1.1763300065228051 ;
	setAttr ".rp" -type "double3" -18.888336913342705 0 -16.883216377434163 ;
	setAttr ".sp" -type "double3" -18.888336913342705 0 -16.883216377434163 ;
createNode transform -n "Dandelion_Card_002" -p "D_Plant_002";
	setAttr ".t" -type "double3" -18.358736354902589 -1.9515926890276596 0.8108623567564166 ;
	setAttr ".r" -type "double3" 90 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 0.58990508855776791 0.58990508855776791 0.58990508855776791 ;
createNode mesh -n "Dandelion_Card_00Shape2" -p "Dandelion_Card_002";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.62764406 0.50575447
		 0.62764406 0.92933989 0.97225171 0.50575447 0.88033694 0.92933989;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  12.7644043 1.2777492e-016 -0.57544708 12.7644043 9.5332593e-015 -42.93398285
		 47.22517395 1.2777492e-016 -0.57544708 38.033691406 9.5332593e-015 -42.93398285;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 0 0 3 1 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -2 3 2 0
		mu 0 4 0 2 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_0011" -p "D_Plant_002";
	setAttr ".t" -type "double3" -18.369140579205308 -2.3737109534913365 -38.522735160551363 ;
	setAttr ".r" -type "double3" 89.999999999999986 34.523690819974327 0 ;
	setAttr ".s" -type "double3" 0.16894046897677586 0.16894046897677586 0.16894046897677586 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape11" -p "D_PuffCard_0011";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_0011";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_0012" -p "D_Plant_002";
	setAttr ".t" -type "double3" -18.369140579205308 -2.3737109534913365 -38.522735160551363 ;
	setAttr ".r" -type "double3" 89.99999999999973 124.96040802729776 -2.5444437451708134e-014 ;
	setAttr ".s" -type "double3" 0.16894046897677586 0.16894046897677586 0.16894046897677586 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape12" -p "D_PuffCard_0012";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_0012";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_0013" -p "D_Plant_002";
	setAttr ".t" -type "double3" -18.369140579205308 -2.3737109534913365 -38.522735160551363 ;
	setAttr ".r" -type "double3" 36.954296440236917 124.96040802729776 0 ;
	setAttr ".s" -type "double3" 0.16894046897677586 0.16894046897677586 0.16894046897677586 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape13" -p "D_PuffCard_0013";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_0013";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_0014" -p "D_Plant_002";
	setAttr ".t" -type "double3" -18.369140579205308 -2.3737109534913365 -38.522735160551363 ;
	setAttr ".r" -type "double3" -54.387265253690991 121.47673358026246 -75.273885182784667 ;
	setAttr ".s" -type "double3" 0.16894046897677586 0.16894046897677586 0.16894046897677586 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape14" -p "D_PuffCard_0014";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_0014";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_0015" -p "D_Plant_002";
	setAttr ".t" -type "double3" -18.369140579205308 -5.9434939952223012 -42.581236071656491 ;
	setAttr ".r" -type "double3" 89.99999999999973 124.96040802729776 -2.5444437451708134e-014 ;
	setAttr ".s" -type "double3" 0.11111475916912575 0.11111475916912575 0.11111475916912575 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape15" -p "D_PuffCard_0015";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_0015";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_0016" -p "D_Plant_002";
	setAttr ".t" -type "double3" -18.369140579205308 -5.9434939952223012 -42.581236071656491 ;
	setAttr ".r" -type "double3" 90.000000000000426 39.221162415363928 4.1054725033255863e-015 ;
	setAttr ".s" -type "double3" 0.11111475916912575 0.11111475916912575 0.11111475916912575 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape16" -p "D_PuffCard_0016";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_0016";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_0017" -p "D_Plant_002";
	setAttr ".t" -type "double3" -18.369140579205308 -5.9434939952223012 -42.581236071656491 ;
	setAttr ".r" -type "double3" 26.435579678431694 39.221162415363985 -2.0527362516627955e-015 ;
	setAttr ".s" -type "double3" 0.11111475916912575 0.11111475916912575 0.11111475916912575 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape17" -p "D_PuffCard_0017";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_0017";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_0018" -p "D_Plant_002";
	setAttr ".t" -type "double3" -18.369140579205308 -5.9434939952223012 -42.581236071656491 ;
	setAttr ".r" -type "double3" -14.460359687095954 44.242049322709647 -58.462597631210265 ;
	setAttr ".s" -type "double3" 0.11111475916912575 0.11111475916912575 0.11111475916912575 ;
	setAttr ".rp" -type "double3" -23.443967303364584 5.2885061743814308e-015 -23.817314436290779 ;
	setAttr ".rpt" -type "double3" 23.443967303364566 23.817314436290776 47.261281739655352 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 16.297963658244303 -3.6765057859511346e-015 16.557510087635002 ;
createNode mesh -n "D_PuffCard_00Shape18" -p "D_PuffCard_0018";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_0018";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_Leaf_Card_004" -p "D_Plant_002";
	setAttr ".t" -type "double3" -18.25886267974937 -81.557551759478145 -51.669610536453604 ;
	setAttr ".r" -type "double3" -72.505326343156796 -35.600271656298133 137.1165639009613 ;
	setAttr ".s" -type "double3" 0.44525205355411679 0.44525205355411679 0.44525205355411679 ;
	setAttr ".rp" -type "double3" -1.6342482922482304e-013 82.408549157316287 36.032729678677299 ;
	setAttr ".sp" -type "double3" -1.6342482922482304e-013 82.40854915731623 36.032729678677271 ;
createNode mesh -n "D_Leaf_Card_00Shape4" -p "D_Leaf_Card_004";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.24141137 0.97162652
		 0.34847957 0.97162652 0.41834068 0.97162652 0.50238001 0.97162652 0.60229599 0.97162652
		 0.24141137 0.88122553 0.34847957 0.88122553 0.41834068 0.88122553 0.50238001 0.88122553
		 0.60229599 0.88122547;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -1.6276063e-013 85.61630249 37.82884979 -1.5785211e-013 85.61630249 31.51284218
		 -0.91453922 85.61630249 27.10071182 -3.1916151 85.61630249 22.57963943 -6.43962955 85.61630249 18.06183815
		 -1.6335269e-013 80.28349304 37.82884979 -1.5844417e-013 80.28349304 31.51284218 -0.91453922 80.28349304 27.10071182
		 -3.1916151 80.28349304 22.57963943 -6.43962955 80.28349304 18.06183815;
	setAttr -s 13 ".ed[0:12]"  0 5 0 1 6 1 0 1 0 2 7 1 1 2 0 3 8 1 2 3 0
		 4 9 0 3 4 0 5 6 0 6 7 0 7 8 0 8 9 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 9 -2 -3 0
		mu 0 4 5 6 1 0
		f 4 10 -4 -5 1
		mu 0 4 6 7 2 1
		f 4 11 -6 -7 3
		mu 0 4 7 8 3 2
		f 4 12 -8 -9 5
		mu 0 4 8 9 4 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_Leaf_Card_005" -p "D_Plant_002";
	setAttr ".t" -type "double3" -18.25886267974937 -81.557551759478145 -51.669610536453604 ;
	setAttr ".r" -type "double3" 88.620334451678048 -18.907589306710278 42.358253270287022 ;
	setAttr ".s" -type "double3" 0.44525205355411679 0.44525205355411679 0.44525205355411679 ;
	setAttr ".rp" -type "double3" -1.6342482922482304e-013 82.408549157316287 36.032729678677299 ;
	setAttr ".sp" -type "double3" -1.6342482922482304e-013 82.40854915731623 36.032729678677271 ;
createNode mesh -n "D_Leaf_Card_00Shape5" -p "D_Leaf_Card_005";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.24141137 0.97162652
		 0.34847957 0.97162652 0.41834068 0.97162652 0.50238001 0.97162652 0.60229599 0.97162652
		 0.24141137 0.88122553 0.34847957 0.88122553 0.41834068 0.88122553 0.50238001 0.88122553
		 0.60229599 0.88122547;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -1.6276063e-013 85.61630249 37.82884979 -1.5785211e-013 85.61630249 31.51284218
		 -0.91453922 85.61630249 27.10071182 -3.1916151 85.61630249 22.57963943 -6.43962955 85.61630249 18.06183815
		 -1.6335269e-013 80.28349304 37.82884979 -1.5844417e-013 80.28349304 31.51284218 -0.91453922 80.28349304 27.10071182
		 -3.1916151 80.28349304 22.57963943 -6.43962955 80.28349304 18.06183815;
	setAttr -s 13 ".ed[0:12]"  0 5 0 1 6 1 0 1 0 2 7 1 1 2 0 3 8 1 2 3 0
		 4 9 0 3 4 0 5 6 0 6 7 0 7 8 0 8 9 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 9 -2 -3 0
		mu 0 4 5 6 1 0
		f 4 10 -4 -5 1
		mu 0 4 6 7 2 1
		f 4 11 -6 -7 3
		mu 0 4 7 8 3 2
		f 4 12 -8 -9 5
		mu 0 4 8 9 4 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_Plant_003" -p "Dandelion_group";
createNode transform -n "Dandelion_Card_003" -p "D_Plant_003";
	setAttr ".t" -type "double3" -21.457011008024878 25.228408015842341 35.031263179987704 ;
	setAttr ".r" -type "double3" 90 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 0.58990508855776791 0.58990508855776791 0.58990508855776791 ;
	setAttr ".rp" -type "double3" 16.868405264404306 -4.1915277546263885e-014 25.228408015842234 ;
	setAttr ".rpt" -type "double3" -16.868405264404032 -25.228408015842298 -42.096813280245776 ;
	setAttr ".sp" -type "double3" 28.59511740379304 -7.1054273576010019e-014 42.766893361645764 ;
	setAttr ".spt" -type "double3" -11.726712139388844 2.9138996029746134e-014 -17.538485345803529 ;
createNode mesh -n "Dandelion_Card_00Shape3" -p "Dandelion_Card_003";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.93634522 0.46679166
		 0.62338281 0.46679166 0.62338275 0.051418081 0.93634516 0.051418081;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  43.63451385 -7.3737394e-016 3.32083702 12.33827591 -7.3737394e-016 3.32083702
		 12.33827591 -9.9605196e-015 44.85819244 43.63451385 -9.9605196e-015 44.85819244;
	setAttr -s 4 ".ed[0:3]"  0 1 0 2 1 0 3 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 2 0 -2
		mu 0 4 2 3 0 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_0019" -p "D_Plant_003";
	setAttr ".t" -type "double3" -14.927007643968162 13.287174511178204 14.94054676246872 ;
	setAttr ".r" -type "double3" 89.999999999999986 34.52369081997432 3.8604028129937931e-015 ;
	setAttr ".s" -type "double3" 0.1987297429734165 0.19872974297341647 0.1987297429734165 ;
	setAttr ".rp" -type "double3" -7.8979037252677973 1.7816145226304951e-015 -8.0236785002365636 ;
	setAttr ".rpt" -type "double3" 1.3908846694848687 8.0236785002365636 12.499791351950295 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 31.844027236341091 -7.1833974377020699e-015 32.351146023689218 ;
createNode mesh -n "D_PuffCard_00Shape19" -p "D_PuffCard_0019";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_0019";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_0020" -p "D_Plant_003";
	setAttr ".t" -type "double3" -14.927007643968162 13.287174511178204 14.94054676246872 ;
	setAttr ".r" -type "double3" 89.999999999999815 126.20104668235173 0 ;
	setAttr ".s" -type "double3" 0.1987297429734165 0.19872974297341647 0.1987297429734165 ;
	setAttr ".rp" -type "double3" -7.8979037252677973 1.7816145226304951e-015 -8.0236785002365636 ;
	setAttr ".rpt" -type "double3" 1.3908846694848687 8.0236785002365636 12.499791351950295 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 31.844027236341091 -7.1833974377020699e-015 32.351146023689218 ;
createNode mesh -n "D_PuffCard_00Shape20" -p "D_PuffCard_0020";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_0020";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_0021" -p "D_Plant_003";
	setAttr ".t" -type "double3" -14.927007643968162 13.287174511178204 14.94054676246872 ;
	setAttr ".r" -type "double3" 39.074616502096298 126.20104668235162 0 ;
	setAttr ".s" -type "double3" 0.1987297429734165 0.19872974297341647 0.1987297429734165 ;
	setAttr ".rp" -type "double3" -7.8979037252677973 1.7816145226304951e-015 -8.0236785002365636 ;
	setAttr ".rpt" -type "double3" 1.3908846694848687 8.0236785002365636 12.499791351950295 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 31.844027236341091 -7.1833974377020699e-015 32.351146023689218 ;
createNode mesh -n "D_PuffCard_00Shape21" -p "D_PuffCard_0021";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_0021";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_PuffCard_0022" -p "D_Plant_003";
	setAttr ".t" -type "double3" -14.927007643968162 13.287174511178204 14.94054676246872 ;
	setAttr ".r" -type "double3" -43.126092134448847 128.91960546149079 -95.461639383172823 ;
	setAttr ".s" -type "double3" 0.1987297429734165 0.19872974297341647 0.1987297429734165 ;
	setAttr ".rp" -type "double3" -7.8979037252677973 1.7816145226304951e-015 -8.0236785002365636 ;
	setAttr ".rpt" -type "double3" 1.3908846694848687 8.0236785002365636 12.499791351950295 ;
	setAttr ".sp" -type "double3" -39.741930961608887 8.9650119603325654e-015 -40.374824523925781 ;
	setAttr ".spt" -type "double3" 31.844027236341091 -7.1833974377020699e-015 32.351146023689218 ;
createNode mesh -n "D_PuffCard_00Shape22" -p "D_PuffCard_0022";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 1 0.20516141 1
		 0 0.80749649 0.20516141 0.80749649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 1.110223e-014 -50 -29.48386192 1.110223e-014 -50
		 -50 6.8277937e-015 -30.74964905 -29.48386192 6.8277937e-015 -30.74964905;
	setAttr -s 4 ".ed[0:3]"  0 1 0 1 3 0 2 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -2 -1 -3
		mu 0 4 2 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "D_PuffCard_0022";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -50 -1.110223e-014 50 50 -1.110223e-014 50
		 -50 1.110223e-014 -50 50 1.110223e-014 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_Leaf_Card_006" -p "D_Plant_003";
	setAttr ".t" -type "double3" -22.80905141926678 23.695017677141358 -22.631941953358762 ;
	setAttr ".r" -type "double3" 108.05441216966285 26.733459754977712 46.08949875235011 ;
	setAttr ".s" -type "double3" 0.52376335106160654 0.52376335106160665 0.52376335106160665 ;
	setAttr ".rp" -type "double3" -8.559593620146409e-014 43.162577862761161 18.872623244401058 ;
	setAttr ".rpt" -type "double3" 1.5707070753620087 -65.856541765352716 22.379054510028599 ;
	setAttr ".sp" -type "double3" -1.6342482922482304e-013 82.40854915731623 36.032729678677271 ;
	setAttr ".spt" -type "double3" 7.7828893023358953e-014 -39.24597129455514 -17.160106434276251 ;
createNode mesh -n "D_Leaf_Card_00Shape6" -p "D_Leaf_Card_006";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.24141137 0.97162652
		 0.34847957 0.97162652 0.41834068 0.97162652 0.50238001 0.97162652 0.60229599 0.97162652
		 0.24141137 0.88122553 0.34847957 0.88122553 0.41834068 0.88122553 0.50238001 0.88122553
		 0.60229599 0.88122547;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -1.6276063e-013 85.61630249 37.82884979 -1.5785211e-013 85.61630249 31.51284218
		 -0.91453922 85.61630249 27.10071182 -3.1916151 85.61630249 22.57963943 -6.43962955 85.61630249 18.06183815
		 -1.6335269e-013 80.28349304 37.82884979 -1.5844417e-013 80.28349304 31.51284218 -0.91453922 80.28349304 27.10071182
		 -3.1916151 80.28349304 22.57963943 -6.43962955 80.28349304 18.06183815;
	setAttr -s 13 ".ed[0:12]"  0 5 0 1 6 1 0 1 0 2 7 1 1 2 0 3 8 1 2 3 0
		 4 9 0 3 4 0 5 6 0 6 7 0 7 8 0 8 9 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 9 -2 -3 0
		mu 0 4 5 6 1 0
		f 4 10 -4 -5 1
		mu 0 4 6 7 2 1
		f 4 11 -6 -7 3
		mu 0 4 7 8 3 2
		f 4 12 -8 -9 5
		mu 0 4 8 9 4 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_Leaf_Card_007" -p "D_Plant_003";
	setAttr ".t" -type "double3" -22.80905141926678 23.695017677141358 -22.631941953358762 ;
	setAttr ".r" -type "double3" -61.119974403192977 -11.501156801777789 124.14619590114013 ;
	setAttr ".s" -type "double3" 0.52376335106160654 0.52376335106160665 0.52376335106160665 ;
	setAttr ".rp" -type "double3" -8.559593620146409e-014 43.162577862761161 18.872623244401058 ;
	setAttr ".rpt" -type "double3" 1.5707070753620087 -65.856541765352716 22.379054510028599 ;
	setAttr ".sp" -type "double3" -1.6342482922482304e-013 82.40854915731623 36.032729678677271 ;
	setAttr ".spt" -type "double3" 7.7828893023358953e-014 -39.24597129455514 -17.160106434276251 ;
createNode mesh -n "D_Leaf_Card_00Shape7" -p "D_Leaf_Card_007";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.24141137 0.97162652
		 0.34847957 0.97162652 0.41834068 0.97162652 0.50238001 0.97162652 0.60229599 0.97162652
		 0.24141137 0.88122553 0.34847957 0.88122553 0.41834068 0.88122553 0.50238001 0.88122553
		 0.60229599 0.88122547;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -1.6276063e-013 85.61630249 37.82884979 -1.5785211e-013 85.61630249 31.51284218
		 -0.91453922 85.61630249 27.10071182 -3.1916151 85.61630249 22.57963943 -6.43962955 85.61630249 18.06183815
		 -1.6335269e-013 80.28349304 37.82884979 -1.5844417e-013 80.28349304 31.51284218 -0.91453922 80.28349304 27.10071182
		 -3.1916151 80.28349304 22.57963943 -6.43962955 80.28349304 18.06183815;
	setAttr -s 13 ".ed[0:12]"  0 5 0 1 6 1 0 1 0 2 7 1 1 2 0 3 8 1 2 3 0
		 4 9 0 3 4 0 5 6 0 6 7 0 7 8 0 8 9 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 9 -2 -3 0
		mu 0 4 5 6 1 0
		f 4 10 -4 -5 1
		mu 0 4 6 7 2 1
		f 4 11 -6 -7 3
		mu 0 4 7 8 3 2
		f 4 12 -8 -9 5
		mu 0 4 8 9 4 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "D_Leaf_Card_008" -p "D_Plant_003";
	setAttr ".t" -type "double3" -22.924119865652056 31.375215614250287 -22.169481598033101 ;
	setAttr ".r" -type "double3" -137.0023832086498 47.397084897283214 119.5093403030931 ;
	setAttr ".s" -type "double3" 0.28007114836522207 0.28007114836522212 0.28007114836522212 ;
	setAttr ".rp" -type "double3" -8.559593620146409e-014 43.162577862761161 18.872623244401058 ;
	setAttr ".rpt" -type "double3" 1.5707070753620087 -65.856541765352716 22.379054510028599 ;
	setAttr ".sp" -type "double3" -1.6342482922482304e-013 82.40854915731623 36.032729678677271 ;
	setAttr ".spt" -type "double3" 7.7828893023358953e-014 -39.24597129455514 -17.160106434276251 ;
createNode mesh -n "D_Leaf_Card_00Shape8" -p "D_Leaf_Card_008";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.24141137 0.97162652
		 0.34847957 0.97162652 0.41834068 0.97162652 0.50238001 0.97162652 0.60229599 0.97162652
		 0.24141137 0.88122553 0.34847957 0.88122553 0.41834068 0.88122553 0.50238001 0.88122553
		 0.60229599 0.88122547;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -1.6276063e-013 85.61630249 37.82884979 -1.5785211e-013 85.61630249 31.51284218
		 -0.91453922 85.61630249 27.10071182 -3.1916151 85.61630249 22.57963943 -6.43962955 85.61630249 18.06183815
		 -1.6335269e-013 80.28349304 37.82884979 -1.5844417e-013 80.28349304 31.51284218 -0.91453922 80.28349304 27.10071182
		 -3.1916151 80.28349304 22.57963943 -6.43962955 80.28349304 18.06183815;
	setAttr -s 13 ".ed[0:12]"  0 5 0 1 6 1 0 1 0 2 7 1 1 2 0 3 8 1 2 3 0
		 4 9 0 3 4 0 5 6 0 6 7 0 7 8 0 8 9 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 9 -2 -3 0
		mu 0 4 5 6 1 0
		f 4 10 -4 -5 1
		mu 0 4 6 7 2 1
		f 4 11 -6 -7 3
		mu 0 4 7 8 3 2
		f 4 12 -8 -9 5
		mu 0 4 8 9 4 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyPlane -n "polyPlane1";
	setAttr ".w" 100;
	setAttr ".h" 100;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode phong -n "Dandelion_Mat";
	addAttr -ci true -sn "physicalise" -ln "physicalise" -min 0 -max 4 -en "None:Default:ProxyNoDraw:NoCollide:Obstruct" 
		-at "enum";
	setAttr ".dc" 1;
createNode shadingEngine -n "phong1SG";
	setAttr ".ihi" 0;
	setAttr -s 32 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "Dandelion_Diffuse";
	setAttr ".ftn" -type "string" "C:/depot/HEO/HEOGame/Objects/natural/ground/DandelionWeed/texture/DandelionCard_dif.tif";
createNode place2dTexture -n "place2dTexture1";
createNode file -n "Dandelion_Specular";
	setAttr ".ftn" -type "string" "C:/depot/HEO/HEOGame/Objects/natural/ground/DandelionWeed/texture/DandelionCard_spec.tif";
createNode place2dTexture -n "place2dTexture2";
createNode file -n "Dandelion_Normals";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/depot/HEO/HEOGame/Objects/natural/ground/DandelionWeed/texture/DandelionCard_ddn.tif";
createNode place2dTexture -n "place2dTexture3";
createNode bump2d -n "bump2d1";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-005 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode polyCube -n "polyCube1";
	setAttr ".w" 25;
	setAttr ".h" 180;
	setAttr ".d" 25;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[0]" "e[3]";
	setAttr ".ix" -type "matrix" 4.5844834816226311e-016 -3.2746310583018796e-017 -0.5899050885577678 0
		 0.58990508855776791 1.3098524233207518e-016 4.2570203757924435e-016 0 6.5492621166037591e-017 -0.58990508855776791 6.5492621166037591e-017 0
		 5.8583048931627826e-031 20.771881658857545 -47.862746085528627 1;
	setAttr ".wt" 0.20516140758991241;
	setAttr ".re" 3;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6]";
	setAttr ".ix" -type "matrix" 4.5844834816226311e-016 -3.2746310583018796e-017 -0.5899050885577678 0
		 0.58990508855776791 1.3098524233207518e-016 4.2570203757924435e-016 0 6.5492621166037591e-017 -0.58990508855776791 6.5492621166037591e-017 0
		 5.8583048931627826e-031 20.771881658857545 -47.862746085528627 1;
	setAttr ".wt" 0.80749648809432983;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 2 "f[0]" "f[2:3]";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1500 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1.25 -max 30 -ast 1.25 -aet 60 ";
	setAttr ".st" 6;
createNode partition -n "cryMaterials";
createNode objectSet -n "DandelionWeed_Mat";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1.25;
	setAttr ".unw" 1.25;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".ta" 3;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyPlane1.out" "Dandelion_Card_00Shape1.i";
connectAttr "polyCube1.out" "Person_ScaleShape.i";
connectAttr "deleteComponent1.og" "D_PuffCard_00Shape3.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Dandelion_Diffuse.oc" "Dandelion_Mat.c";
connectAttr "Dandelion_Diffuse.ot" "Dandelion_Mat.it";
connectAttr "Dandelion_Specular.oc" "Dandelion_Mat.sc";
connectAttr "bump2d1.o" "Dandelion_Mat.n";
connectAttr "Dandelion_Mat.oc" "phong1SG.ss";
connectAttr "Dandelion_Card_00Shape1.iog" "phong1SG.dsm" -na;
connectAttr "Dandelion_MainCard_00Shape1.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape3.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape4.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape5.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape6.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape7.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape8.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape9.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape10.iog" "phong1SG.dsm" -na;
connectAttr "D_Leaf_Card_00Shape1.iog" "phong1SG.dsm" -na;
connectAttr "D_Leaf_Card_00Shape2.iog" "phong1SG.dsm" -na;
connectAttr "D_Leaf_Card_00Shape3.iog" "phong1SG.dsm" -na;
connectAttr "Dandelion_Card_00Shape2.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape11.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape12.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape13.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape14.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape15.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape16.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape17.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape18.iog" "phong1SG.dsm" -na;
connectAttr "D_Leaf_Card_00Shape4.iog" "phong1SG.dsm" -na;
connectAttr "D_Leaf_Card_00Shape5.iog" "phong1SG.dsm" -na;
connectAttr "Dandelion_Card_00Shape3.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape19.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape20.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape21.iog" "phong1SG.dsm" -na;
connectAttr "D_PuffCard_00Shape22.iog" "phong1SG.dsm" -na;
connectAttr "D_Leaf_Card_00Shape6.iog" "phong1SG.dsm" -na;
connectAttr "D_Leaf_Card_00Shape7.iog" "phong1SG.dsm" -na;
connectAttr "D_Leaf_Card_00Shape8.iog" "phong1SG.dsm" -na;
connectAttr "phong1SG.msg" "materialInfo1.sg";
connectAttr "Dandelion_Mat.msg" "materialInfo1.m";
connectAttr "Dandelion_Diffuse.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "Dandelion_Diffuse.c";
connectAttr "place2dTexture1.tf" "Dandelion_Diffuse.tf";
connectAttr "place2dTexture1.rf" "Dandelion_Diffuse.rf";
connectAttr "place2dTexture1.mu" "Dandelion_Diffuse.mu";
connectAttr "place2dTexture1.mv" "Dandelion_Diffuse.mv";
connectAttr "place2dTexture1.s" "Dandelion_Diffuse.s";
connectAttr "place2dTexture1.wu" "Dandelion_Diffuse.wu";
connectAttr "place2dTexture1.wv" "Dandelion_Diffuse.wv";
connectAttr "place2dTexture1.re" "Dandelion_Diffuse.re";
connectAttr "place2dTexture1.of" "Dandelion_Diffuse.of";
connectAttr "place2dTexture1.r" "Dandelion_Diffuse.ro";
connectAttr "place2dTexture1.n" "Dandelion_Diffuse.n";
connectAttr "place2dTexture1.vt1" "Dandelion_Diffuse.vt1";
connectAttr "place2dTexture1.vt2" "Dandelion_Diffuse.vt2";
connectAttr "place2dTexture1.vt3" "Dandelion_Diffuse.vt3";
connectAttr "place2dTexture1.vc1" "Dandelion_Diffuse.vc1";
connectAttr "place2dTexture1.o" "Dandelion_Diffuse.uv";
connectAttr "place2dTexture1.ofs" "Dandelion_Diffuse.fs";
connectAttr "place2dTexture2.c" "Dandelion_Specular.c";
connectAttr "place2dTexture2.tf" "Dandelion_Specular.tf";
connectAttr "place2dTexture2.rf" "Dandelion_Specular.rf";
connectAttr "place2dTexture2.mu" "Dandelion_Specular.mu";
connectAttr "place2dTexture2.mv" "Dandelion_Specular.mv";
connectAttr "place2dTexture2.s" "Dandelion_Specular.s";
connectAttr "place2dTexture2.wu" "Dandelion_Specular.wu";
connectAttr "place2dTexture2.wv" "Dandelion_Specular.wv";
connectAttr "place2dTexture2.re" "Dandelion_Specular.re";
connectAttr "place2dTexture2.of" "Dandelion_Specular.of";
connectAttr "place2dTexture2.r" "Dandelion_Specular.ro";
connectAttr "place2dTexture2.n" "Dandelion_Specular.n";
connectAttr "place2dTexture2.vt1" "Dandelion_Specular.vt1";
connectAttr "place2dTexture2.vt2" "Dandelion_Specular.vt2";
connectAttr "place2dTexture2.vt3" "Dandelion_Specular.vt3";
connectAttr "place2dTexture2.vc1" "Dandelion_Specular.vc1";
connectAttr "place2dTexture2.o" "Dandelion_Specular.uv";
connectAttr "place2dTexture2.ofs" "Dandelion_Specular.fs";
connectAttr "place2dTexture3.c" "Dandelion_Normals.c";
connectAttr "place2dTexture3.tf" "Dandelion_Normals.tf";
connectAttr "place2dTexture3.rf" "Dandelion_Normals.rf";
connectAttr "place2dTexture3.mu" "Dandelion_Normals.mu";
connectAttr "place2dTexture3.mv" "Dandelion_Normals.mv";
connectAttr "place2dTexture3.s" "Dandelion_Normals.s";
connectAttr "place2dTexture3.wu" "Dandelion_Normals.wu";
connectAttr "place2dTexture3.wv" "Dandelion_Normals.wv";
connectAttr "place2dTexture3.re" "Dandelion_Normals.re";
connectAttr "place2dTexture3.of" "Dandelion_Normals.of";
connectAttr "place2dTexture3.r" "Dandelion_Normals.ro";
connectAttr "place2dTexture3.n" "Dandelion_Normals.n";
connectAttr "place2dTexture3.vt1" "Dandelion_Normals.vt1";
connectAttr "place2dTexture3.vt2" "Dandelion_Normals.vt2";
connectAttr "place2dTexture3.vt3" "Dandelion_Normals.vt3";
connectAttr "place2dTexture3.vc1" "Dandelion_Normals.vc1";
connectAttr "place2dTexture3.o" "Dandelion_Normals.uv";
connectAttr "place2dTexture3.ofs" "Dandelion_Normals.fs";
connectAttr "Dandelion_Normals.oa" "bump2d1.bv";
connectAttr "|cryExportNode_DandelionWeed|Dandelion_group|D_Plant_001|D_PuffCard_003|polySurfaceShape1.o" "polySplitRing1.ip"
		;
connectAttr "D_PuffCard_00Shape3.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "D_PuffCard_00Shape3.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "deleteComponent1.ig";
connectAttr "DandelionWeed_Mat.pa" "cryMaterials.st" -na;
connectAttr "Dandelion_Mat.msg" "DandelionWeed_Mat.dnsm" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "Person_ScaleShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Dandelion_Mat.msg" ":defaultShaderList1.s" -na;
connectAttr "Dandelion_Diffuse.msg" ":defaultTextureList1.tx" -na;
connectAttr "Dandelion_Specular.msg" ":defaultTextureList1.tx" -na;
connectAttr "Dandelion_Normals.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of DandelionWeed.ma
