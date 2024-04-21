//Maya ASCII 2014 scene
//Name: PricklyGooseberryBush.ma
//Last modified: Tue, Nov 26, 2013 06:06:50 PM
//Codeset: 1252
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -176.40808580338617 241.18951094224548 175.28684966988658 ;
	setAttr ".r" -type "double3" 69.86164727107618 6.361109362927032e-015 -147.80000000001428 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 369.37294143518238;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -19.189625717911049 5.9346089353915055 53.291287116474507 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -70.821014550771821 -0.65313708481564614 1500.0999999999999 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 236.50686972444907;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.5442007213816158 -1500.0999999999999 69.732224598485885 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 263.78342901080237;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1500.0999999999999 9.4965901147857164 82.204524828737092 ;
	setAttr ".r" -type "double3" 90 1.272221872585407e-014 89.999999999999986 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 401.42393811197616;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "cryExportNode_PricklyGooseberryBush";
	addAttr -ci true -sn "DoNotMerge" -ln "DoNotMerge" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "WriteVertexColours" -ln "WriteVertexColours" -dv 1 -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "UseF32VertexFormat" -ln "UseF32VertexFormat" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "NodeCustomExportPath" -ln "NodeCustomExportPath" -dt "string";
	addAttr -ci true -sn "fileType" -ln "fileType" -min 0 -max 3 -en "Geometry (.CGF):Character (.CHR):Animated Geometry (.CGA):Character Skin (.SKIN)" 
		-at "enum";
createNode transform -n "PricklyGooseberryBush_helper" -p "cryExportNode_PricklyGooseberryBush";
createNode transform -n "PricklyGooseberry_group" -p "PricklyGooseberryBush_helper";
createNode transform -n "bending_proxy" -p "PricklyGooseberry_group";
	setAttr ".t" -type "double3" 0 0 75 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode mesh -n "bending_proxyShape" -p "bending_proxy";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0 0.2 0.1 0.2 0.2
		 0.2 0.30000001 0.2 0.40000001 0.2 0.5 0.2 0.60000002 0.2 0.70000005 0.2 0.80000007
		 0.2 0.9000001 0.2 1.000000119209 0.2 0 0.40000001 0.1 0.40000001 0.2 0.40000001 0.30000001
		 0.40000001 0.40000001 0.40000001 0.5 0.40000001 0.60000002 0.40000001 0.70000005
		 0.40000001 0.80000007 0.40000001 0.9000001 0.40000001 1.000000119209 0.40000001 0
		 0.60000002 0.1 0.60000002 0.2 0.60000002 0.30000001 0.60000002 0.40000001 0.60000002
		 0.5 0.60000002 0.60000002 0.60000002 0.70000005 0.60000002 0.80000007 0.60000002
		 0.9000001 0.60000002 1.000000119209 0.60000002 0 0.80000001 0.1 0.80000001 0.2 0.80000001
		 0.30000001 0.80000001 0.40000001 0.80000001 0.5 0.80000001 0.60000002 0.80000001
		 0.70000005 0.80000001 0.80000007 0.80000001 0.9000001 0.80000001 1.000000119209 0.80000001
		 0.050000001 0 0.15000001 0 0.25 0 0.34999999 0 0.45000002 0 0.55000001 0 0.65000004
		 0 0.75 0 0.85000002 0 0.94999999 0 0.050000001 1 0.15000001 1 0.25 1 0.34999999 1
		 0.45000002 1 0.55000001 1 0.65000004 1 0.75 1 0.85000002 1 0.94999999 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 180 ".clst[0].clsp";
	setAttr ".clst[0].clsp[0:124]"  0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0
		 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0
		 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0
		 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1
		 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0
		 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0
		 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0
		 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1
		 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0
		 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0
		 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0
		 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1
		 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1;
	setAttr ".clst[0].clsp[125:179]" 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0
		 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0
		 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0
		 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1
		 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0
		 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  33.28697968 -56.63119125 -24.184412 12.71449184 -56.63119125 -39.13119507
		 -12.71450043 -56.63119125 -39.13119125 -33.28698349 -56.63119125 -24.18440437 -41.14496994 -56.63119125 2.4524311e-006
		 -33.28697968 -56.63119125 24.18440819 -12.7144928 -56.63119125 39.13119125 12.71449566 -56.63119125 39.13118744
		 33.28697586 -56.63119125 24.18440437 41.14496613 -56.63119125 0 53.85947037 -21.63118744 -39.1312027
		 20.57248116 -21.63118744 -63.31561279 -20.57249451 -21.63118744 -63.31560516 -53.859478 -21.63118744 -39.13119125
		 -66.57396698 -21.63118744 3.9681172e-006 -53.85947037 -21.63118744 39.13119888 -20.57248306 -21.63118744 63.31560516
		 20.57248688 -21.63118744 63.31559753 53.85946655 -21.63118744 39.13119125 66.57395935 -21.63118744 0
		 53.85947037 21.63118744 -39.1312027 20.57248116 21.63118744 -63.31561279 -20.57249451 21.63118744 -63.31560516
		 -53.859478 21.63118744 -39.13119125 -66.57396698 21.63118744 3.9681172e-006 -53.85947037 21.63118744 39.13119888
		 -20.57248306 21.63118744 63.31560516 20.57248688 21.63118744 63.31559753 53.85946655 21.63118744 39.13119125
		 66.57395935 21.63118744 0 33.28697968 56.63119125 -24.184412 12.71449184 56.63119125 -39.13119507
		 -12.71450043 56.63119125 -39.13119125 -33.28698349 56.63119125 -24.18440437 -41.14496994 56.63119125 2.4524311e-006
		 -33.28697968 56.63119125 24.18440819 -12.7144928 56.63119125 39.13119125 12.71449566 56.63119125 39.13118744
		 33.28697586 56.63119125 24.18440437 41.14496613 56.63119125 0 0 -70 0 0 70 0;
	setAttr -s 90 ".ed[0:89]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1
		 7 8 1 8 9 1 9 0 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1
		 18 19 1 19 10 1 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1
		 29 20 1 30 31 1 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 30 1
		 0 10 1 1 11 1 2 12 1 3 13 1 4 14 1 5 15 1 6 16 1 7 17 1 8 18 1 9 19 1 10 20 1 11 21 1
		 12 22 1 13 23 1 14 24 1 15 25 1 16 26 1 17 27 1 18 28 1 19 29 1 20 30 1 21 31 1 22 32 1
		 23 33 1 24 34 1 25 35 1 26 36 1 27 37 1 28 38 1 29 39 1 40 0 1 40 1 1 40 2 1 40 3 1
		 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1
		 35 41 1 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 50 -ch 180 ".fc[0:49]" -type "polyFaces" 
		f 4 0 41 -11 -41
		mu 0 4 0 1 12 11
		mc 0 4 0 1 2 3
		f 4 1 42 -12 -42
		mu 0 4 1 2 13 12
		mc 0 4 4 5 6 7
		f 4 2 43 -13 -43
		mu 0 4 2 3 14 13
		mc 0 4 8 9 10 11
		f 4 3 44 -14 -44
		mu 0 4 3 4 15 14
		mc 0 4 12 13 14 15
		f 4 4 45 -15 -45
		mu 0 4 4 5 16 15
		mc 0 4 16 17 18 19
		f 4 5 46 -16 -46
		mu 0 4 5 6 17 16
		mc 0 4 20 21 22 23
		f 4 6 47 -17 -47
		mu 0 4 6 7 18 17
		mc 0 4 24 25 26 27
		f 4 7 48 -18 -48
		mu 0 4 7 8 19 18
		mc 0 4 28 29 30 31
		f 4 8 49 -19 -49
		mu 0 4 8 9 20 19
		mc 0 4 32 33 34 35
		f 4 9 40 -20 -50
		mu 0 4 9 10 21 20
		mc 0 4 36 37 38 39
		f 4 10 51 -21 -51
		mu 0 4 11 12 23 22
		mc 0 4 40 41 42 43
		f 4 11 52 -22 -52
		mu 0 4 12 13 24 23
		mc 0 4 44 45 46 47
		f 4 12 53 -23 -53
		mu 0 4 13 14 25 24
		mc 0 4 48 49 50 51
		f 4 13 54 -24 -54
		mu 0 4 14 15 26 25
		mc 0 4 52 53 54 55
		f 4 14 55 -25 -55
		mu 0 4 15 16 27 26
		mc 0 4 56 57 58 59
		f 4 15 56 -26 -56
		mu 0 4 16 17 28 27
		mc 0 4 60 61 62 63
		f 4 16 57 -27 -57
		mu 0 4 17 18 29 28
		mc 0 4 64 65 66 67
		f 4 17 58 -28 -58
		mu 0 4 18 19 30 29
		mc 0 4 68 69 70 71
		f 4 18 59 -29 -59
		mu 0 4 19 20 31 30
		mc 0 4 72 73 74 75
		f 4 19 50 -30 -60
		mu 0 4 20 21 32 31
		mc 0 4 76 77 78 79
		f 4 20 61 -31 -61
		mu 0 4 22 23 34 33
		mc 0 4 80 81 82 83
		f 4 21 62 -32 -62
		mu 0 4 23 24 35 34
		mc 0 4 84 85 86 87
		f 4 22 63 -33 -63
		mu 0 4 24 25 36 35
		mc 0 4 88 89 90 91
		f 4 23 64 -34 -64
		mu 0 4 25 26 37 36
		mc 0 4 92 93 94 95
		f 4 24 65 -35 -65
		mu 0 4 26 27 38 37
		mc 0 4 96 97 98 99
		f 4 25 66 -36 -66
		mu 0 4 27 28 39 38
		mc 0 4 100 101 102 103
		f 4 26 67 -37 -67
		mu 0 4 28 29 40 39
		mc 0 4 104 105 106 107
		f 4 27 68 -38 -68
		mu 0 4 29 30 41 40
		mc 0 4 108 109 110 111
		f 4 28 69 -39 -69
		mu 0 4 30 31 42 41
		mc 0 4 112 113 114 115
		f 4 29 60 -40 -70
		mu 0 4 31 32 43 42
		mc 0 4 116 117 118 119
		f 3 -1 -71 71
		mu 0 3 1 0 44
		mc 0 3 120 121 122
		f 3 -2 -72 72
		mu 0 3 2 1 45
		mc 0 3 123 124 125
		f 3 -3 -73 73
		mu 0 3 3 2 46
		mc 0 3 126 127 128
		f 3 -4 -74 74
		mu 0 3 4 3 47
		mc 0 3 129 130 131
		f 3 -5 -75 75
		mu 0 3 5 4 48
		mc 0 3 132 133 134
		f 3 -6 -76 76
		mu 0 3 6 5 49
		mc 0 3 135 136 137
		f 3 -7 -77 77
		mu 0 3 7 6 50
		mc 0 3 138 139 140
		f 3 -8 -78 78
		mu 0 3 8 7 51
		mc 0 3 141 142 143
		f 3 -9 -79 79
		mu 0 3 9 8 52
		mc 0 3 144 145 146
		f 3 -10 -80 70
		mu 0 3 10 9 53
		mc 0 3 147 148 149
		f 3 30 81 -81
		mu 0 3 33 34 54
		mc 0 3 150 151 152
		f 3 31 82 -82
		mu 0 3 34 35 55
		mc 0 3 153 154 155
		f 3 32 83 -83
		mu 0 3 35 36 56
		mc 0 3 156 157 158
		f 3 33 84 -84
		mu 0 3 36 37 57
		mc 0 3 159 160 161
		f 3 34 85 -85
		mu 0 3 37 38 58
		mc 0 3 162 163 164
		f 3 35 86 -86
		mu 0 3 38 39 59
		mc 0 3 165 166 167
		f 3 36 87 -87
		mu 0 3 39 40 60
		mc 0 3 168 169 170
		f 3 37 88 -88
		mu 0 3 40 41 61
		mc 0 3 171 172 173
		f 3 38 89 -89
		mu 0 3 41 42 62
		mc 0 3 174 175 176
		f 3 39 80 -90
		mu 0 3 42 43 63
		mc 0 3 177 178 179;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Branch_001" -p "PricklyGooseberry_group";
	setAttr ".t" -type "double3" 0 -0.50284310356429174 0 ;
	setAttr ".rp" -type "double3" 2.2473385725383448 6.2838458754738724 28.602423572841381 ;
	setAttr ".sp" -type "double3" 2.2473385725383448 6.2838458754738724 28.602423572841381 ;
createNode transform -n "stem_001" -p "Branch_001";
createNode mesh -n "stem_00Shape1" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|stem_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50008620321750641 0.13716666400432587 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "stem_00Shape1Orig" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|stem_001";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.031913817 0.25554633
		 0.34402877 0.25554633 0.65614372 0.25554633 0.96825856 0.2555463 0.031913698 0.22172357
		 0.34402889 0.22172356 0.65614349 0.22172356 0.9682588 0.22172356 0.031913817 0.18790081
		 0.34402889 0.18790081 0.65614372 0.18790081 0.9682588 0.18790081 0.031913817 0.15407804
		 0.34402877 0.15407804 0.65614372 0.15407804 0.96825856 0.15407804 0.031913817 0.12025531
		 0.34402889 0.12025531 0.65614372 0.12025531 0.9682588 0.12025531 0.031913817 0.086432517
		 0.34402877 0.086432509 0.65614372 0.086432509 0.9682588 0.086432509 0.031913817 0.052609816
		 0.34402877 0.052609816 0.65614349 0.052609816 0.96825856 0.052609816 0.031913817
		 0.018787012 0.34402865 0.018787012 0.65614349 0.018787012 0.9682588 0.018787012;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  1.98028839 6.66210127 28.29807091 -16.1902256 6.58645058 42.33244324
		 -23.67531204 6.51079941 65.70194244 -37.34775162 6.43514824 77.48999023 2.22351551 6.83741283 28.59799957
		 -15.92094898 6.72669935 42.51181412 -23.47145462 6.61598587 65.83000183 -37.24419022 6.50527287 77.60459137
		 2.48069787 6.68845224 28.90051842 -15.63986206 6.60753107 42.68977737 -23.25884056 6.5266099 65.95678711
		 -37.13499832 6.44568825 77.71993256 2.60118151 6.30247879 29.028417587 -15.51162243 6.29875231 42.76209259
		 -23.16201782 6.29502535 66.008026123 -37.084140778 6.29129887 77.76844788 2.5143888 5.90559006 28.90677643
		 -15.61135101 5.98124123 42.68639374 -23.23770142 6.056892395 65.95370483 -37.12141037 6.13254356 77.72171021
		 2.27116156 5.73027897 28.60684776 -15.88062859 5.84099245 42.50702667 -23.44155884 5.95170546 65.82563782
		 -37.22496796 6.062418938 77.60710907 2.013979435 5.87923956 28.30432892 -16.16171455 5.96016073 42.3290596
		 -23.65417099 6.041081905 65.69885254 -37.33415985 6.12200308 77.49176788 1.89349568 6.26521301 28.17642784
		 -16.28995514 6.2689395 42.25674438 -23.75099564 6.27266598 65.64761353 -37.3850174 6.27639294 77.44325256;
	setAttr -s 56 ".ed[0:55]"  0 1 1 1 5 1 5 4 1 4 0 0 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 0 7 6 1 5 9 1 9 8 1 8 4 0 6 10 1 10 9 1 7 11 0 11 10 1 9 13 1 13 12 1 12 8 0
		 10 14 1 14 13 1 11 15 0 15 14 1 13 17 1 17 16 1 16 12 0 14 18 1 18 17 1 15 19 0 19 18 1
		 17 21 1 21 20 1 20 16 0 18 22 1 22 21 1 19 23 0 23 22 1 21 25 1 25 24 1 24 20 0 22 26 1
		 26 25 1 23 27 0 27 26 1 25 29 1 29 28 1 28 24 0 26 30 1 30 29 1 27 31 0 31 30 1 29 1 1
		 0 28 0 30 2 1 31 3 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 5 4
		f 4 4 5 6 -2
		mu 0 4 1 2 6 5
		f 4 7 8 9 -6
		mu 0 4 2 3 7 6
		f 4 -3 10 11 12
		mu 0 4 4 5 9 8
		f 4 -7 13 14 -11
		mu 0 4 5 6 10 9
		f 4 -10 15 16 -14
		mu 0 4 6 7 11 10
		f 4 -12 17 18 19
		mu 0 4 8 9 13 12
		f 4 -15 20 21 -18
		mu 0 4 9 10 14 13
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 12 13 17 16
		f 4 -22 27 28 -25
		mu 0 4 13 14 18 17
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 16 17 21 20
		f 4 -29 34 35 -32
		mu 0 4 17 18 22 21
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22
		f 4 -33 38 39 40
		mu 0 4 20 21 25 24
		f 4 -36 41 42 -39
		mu 0 4 21 22 26 25
		f 4 -38 43 44 -42
		mu 0 4 22 23 27 26
		f 4 -40 45 46 47
		mu 0 4 24 25 29 28
		f 4 -43 48 49 -46
		mu 0 4 25 26 30 29
		f 4 -45 50 51 -49
		mu 0 4 26 27 31 30
		f 4 -47 52 -1 53
		mu 0 4 28 29 1 0
		f 4 -50 54 -5 -53
		mu 0 4 29 30 2 1
		f 4 -52 55 -8 -55
		mu 0 4 30 31 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_D_001" -p "Branch_001";
	setAttr ".t" -type "double3" -15.67332130524003 6.2919425047446476 44.810120550222543 ;
	setAttr ".r" -type "double3" 109.8102575085894 -3.1805546814635168e-015 -135.44421740274475 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_D_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|LeafPattern_D_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.1323386430740356 0.39730462431907654 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.44668266 0.41546077
		 0.7659505 0.2669678 0.7188772 0.70343304 1.13233864 0.39730462 0.74087286 0.44873041;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  -2.2360079 -6.3834875e-016 
		2.8748672 -3.9396327 1.2294131e-015 -5.5367842 -0.74533594 2.6006813e-016 -1.1712427 
		16.397413 2.0569039e-015 -9.2634716 0 1.5254763 3.3872379e-016;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_C_001" -p "Branch_001";
	setAttr ".t" -type "double3" -20.460932328480169 5.1311655414252062 57.902198089579862 ;
	setAttr ".r" -type "double3" 64.992834461928908 -10.276474998230364 4.7569438722538573 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_C_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|LeafPattern_C_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47941672801971441 0.45498664677143097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.12313038 0.28323868
		 0.47941673 0.28323868 0.12313038 0.62673461 0.47941673 0.62673461 0.31975374 0.47165516;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[1:4]" -type "float3"  -2.4596114 0 0 0 0 0 -2.4596114 
		0 0 0.67080319 1.5254763 -1.453407;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_C_002" -p "Branch_001";
	setAttr ".t" -type "double3" -21.63755291893435 8.0603995537996855 64.058615308859402 ;
	setAttr ".r" -type "double3" 88.356055487369247 22.363885675813361 112.06335725363668 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_C_002Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|LeafPattern_C_002";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47941672801971441 0.45498664677143097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.12313038 0.28323868
		 0.47941673 0.28323868 0.12313038 0.62673461 0.47941673 0.62673461 0.31975374 0.47165516;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[1:4]" -type "float3"  -2.4596114 0 0 0 0 0 -2.4596114 
		0 0 0.67080319 1.5254763 -1.453407;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_B_001" -p "Branch_001";
	setAttr ".t" -type "double3" -36.177987852420543 7.3071124805664098 78.556080693592222 ;
	setAttr ".r" -type "double3" 105.02701337729452 -13.520199838293877 -89.009043578051717 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_B_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|LeafPattern_B_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.21949344128370285 0.99411702156066895 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.0076776296 0.65062112
		 0.43130925 0.65062112 0.0076776296 0.99411702 0.43130925 0.99411702 0.25086951 0.8390376;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 4.4177093e-016 -1.9895594 
		-2.5131278 4.4177093e-016 -1.9895594 0 -1.0230483e-015 4.6073999 -2.5131278 -1.0230483e-015 
		4.6073999 0 1.5254763 3.3872379e-016;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_A_001" -p "Branch_001";
	setAttr ".t" -type "double3" -23.089939265878709 6.2838458754738724 68.442267635306806 ;
	setAttr ".r" -type "double3" 79.57527923247612 6.1494370389990252 3.9173839840405145 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_A_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|LeafPattern_A_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52342133238717437 0.636894126387753 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.52342135 0.63689411
		 0.89802778 0.66728967 0.49792829 1 0.93528694 1 0.72935414 0.81844705;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt";
	setAttr ".pt[0]" -type "float3" 1.6992735 5.659718e-016 -2.5489104 ;
	setAttr ".pt[1]" -type "float3" -2.1899838 1.12373e-015 -5.0608301 ;
	setAttr ".pt[4]" -type "float3" 0 1.5254763 3.3872379e-016 ;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Branch_002" -p "PricklyGooseberry_group";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 0 5.0990206970584353 ;
	setAttr ".r" -type "double3" -17.794103491422451 -0.86139474733196819 96.411464007279676 ;
	setAttr ".s" -type "double3" 1.2491676199792103 1.2491676199792103 1.2491676199792103 ;
	setAttr ".rp" -type "double3" 2.2473385725383448 6.2838458754738724 28.602423572841381 ;
	setAttr ".sp" -type "double3" 2.2473385725383448 6.2838458754738724 28.602423572841381 ;
createNode transform -n "stem_001" -p "Branch_002";
createNode mesh -n "stem_00Shape1" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_002|stem_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50008620321750641 0.13716666400432587 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_002|stem_001";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50008620321750641 0.13716666400432587 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.031913817 0.25554633
		 0.34402877 0.25554633 0.65614372 0.25554633 0.96825856 0.2555463 0.031913698 0.22172357
		 0.34402889 0.22172356 0.65614349 0.22172356 0.9682588 0.22172356 0.031913817 0.18790081
		 0.34402889 0.18790081 0.65614372 0.18790081 0.9682588 0.18790081 0.031913817 0.15407804
		 0.34402877 0.15407804 0.65614372 0.15407804 0.96825856 0.15407804 0.031913817 0.12025531
		 0.34402889 0.12025531 0.65614372 0.12025531 0.9682588 0.12025531 0.031913817 0.086432517
		 0.34402877 0.086432509 0.65614372 0.086432509 0.9682588 0.086432509 0.031913817 0.052609816
		 0.34402877 0.052609816 0.65614349 0.052609816 0.96825856 0.052609816 0.031913817
		 0.018787012 0.34402865 0.018787012 0.65614349 0.018787012 0.9682588 0.018787012;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[3]" -type "float3" 0.11317062 -0.15130234 0.11585999 ;
	setAttr ".pt[7]" -type "float3" 0.0096092224 -0.22142696 0.0012588501 ;
	setAttr ".pt[11]" -type "float3" -0.099582672 -0.16184235 -0.11408234 ;
	setAttr ".pt[15]" -type "float3" -0.15044022 -0.0074529648 -0.16259766 ;
	setAttr ".pt[19]" -type "float3" -0.11317062 0.15130234 -0.11585999 ;
	setAttr ".pt[23]" -type "float3" -0.0096130371 0.22142696 -0.0012588501 ;
	setAttr ".pt[27]" -type "float3" 0.099578857 0.16184282 0.11408234 ;
	setAttr ".pt[31]" -type "float3" 0.1504364 0.0074529648 0.16259766 ;
	setAttr -s 32 ".vt[0:31]"  1.98028839 6.66210127 28.29807091 -16.1902256 6.58645058 42.33244324
		 -23.67531204 6.51079941 65.70194244 -37.34775162 6.43514824 77.48999023 2.22351551 6.83741283 28.59799957
		 -15.92094898 6.72669935 42.51181412 -23.47145462 6.61598587 65.83000183 -37.24419022 6.50527287 77.60459137
		 2.48069787 6.68845224 28.90051842 -15.63986206 6.60753107 42.68977737 -23.25884056 6.5266099 65.95678711
		 -37.13499832 6.44568825 77.71993256 2.60118151 6.30247879 29.028417587 -15.51162243 6.29875231 42.76209259
		 -23.16201782 6.29502535 66.008026123 -37.084140778 6.29129887 77.76844788 2.5143888 5.90559006 28.90677643
		 -15.61135101 5.98124123 42.68639374 -23.23770142 6.056892395 65.95370483 -37.12141037 6.13254356 77.72171021
		 2.27116156 5.73027897 28.60684776 -15.88062859 5.84099245 42.50702667 -23.44155884 5.95170546 65.82563782
		 -37.22496796 6.062418938 77.60710907 2.013979435 5.87923956 28.30432892 -16.16171455 5.96016073 42.3290596
		 -23.65417099 6.041081905 65.69885254 -37.33415985 6.12200308 77.49176788 1.89349568 6.26521301 28.17642784
		 -16.28995514 6.2689395 42.25674438 -23.75099564 6.27266598 65.64761353 -37.3850174 6.27639294 77.44325256;
	setAttr -s 56 ".ed[0:55]"  0 1 1 1 5 1 5 4 1 4 0 0 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 0 7 6 1 5 9 1 9 8 1 8 4 0 6 10 1 10 9 1 7 11 0 11 10 1 9 13 1 13 12 1 12 8 0
		 10 14 1 14 13 1 11 15 0 15 14 1 13 17 1 17 16 1 16 12 0 14 18 1 18 17 1 15 19 0 19 18 1
		 17 21 1 21 20 1 20 16 0 18 22 1 22 21 1 19 23 0 23 22 1 21 25 1 25 24 1 24 20 0 22 26 1
		 26 25 1 23 27 0 27 26 1 25 29 1 29 28 1 28 24 0 26 30 1 30 29 1 27 31 0 31 30 1 29 1 1
		 0 28 0 30 2 1 31 3 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 5 4
		f 4 4 5 6 -2
		mu 0 4 1 2 6 5
		f 4 7 8 9 -6
		mu 0 4 2 3 7 6
		f 4 -3 10 11 12
		mu 0 4 4 5 9 8
		f 4 -7 13 14 -11
		mu 0 4 5 6 10 9
		f 4 -10 15 16 -14
		mu 0 4 6 7 11 10
		f 4 -12 17 18 19
		mu 0 4 8 9 13 12
		f 4 -15 20 21 -18
		mu 0 4 9 10 14 13
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 12 13 17 16
		f 4 -22 27 28 -25
		mu 0 4 13 14 18 17
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 16 17 21 20
		f 4 -29 34 35 -32
		mu 0 4 17 18 22 21
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22
		f 4 -33 38 39 40
		mu 0 4 20 21 25 24
		f 4 -36 41 42 -39
		mu 0 4 21 22 26 25
		f 4 -38 43 44 -42
		mu 0 4 22 23 27 26
		f 4 -40 45 46 47
		mu 0 4 24 25 29 28
		f 4 -43 48 49 -46
		mu 0 4 25 26 30 29
		f 4 -45 50 51 -49
		mu 0 4 26 27 31 30
		f 4 -47 52 -1 53
		mu 0 4 28 29 1 0
		f 4 -50 54 -5 -53
		mu 0 4 29 30 2 1
		f 4 -52 55 -8 -55
		mu 0 4 30 31 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_D_001" -p "Branch_002";
	setAttr ".t" -type "double3" -15.67332130524003 6.2919425047446476 44.810120550222543 ;
	setAttr ".r" -type "double3" 109.8102575085894 -3.1805546814635168e-015 -135.44421740274475 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_D_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_002|LeafPattern_D_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.1323386430740356 0.39730462431907654 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.44668266 0.41546077
		 0.7659505 0.2669678 0.7188772 0.70343304 1.13233864 0.39730462 0.74087286 0.44873041;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  -2.2360079 -6.3834875e-016 
		2.8748672 -3.9396327 1.2294131e-015 -5.5367842 -0.74533594 2.6006813e-016 -1.1712427 
		16.397413 2.0569039e-015 -9.2634716 0 1.5254763 3.3872379e-016;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_C_001" -p "Branch_002";
	setAttr ".t" -type "double3" -20.460932328480169 5.1311655414252062 57.902198089579862 ;
	setAttr ".r" -type "double3" 64.992834461928908 -10.276474998230364 4.7569438722538573 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_C_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_002|LeafPattern_C_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47941672801971441 0.45498664677143097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.12313038 0.28323868
		 0.47941673 0.28323868 0.12313038 0.62673461 0.47941673 0.62673461 0.31975374 0.47165516;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[1:4]" -type "float3"  -2.4596114 0 0 0 0 0 -2.4596114 
		0 0 0.67080319 1.5254763 -1.453407;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_C_002" -p "Branch_002";
	setAttr ".t" -type "double3" -21.63755291893435 8.0603995537996855 64.058615308859402 ;
	setAttr ".r" -type "double3" 88.356055487369247 22.363885675813361 112.06335725363668 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_C_002Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_002|LeafPattern_C_002";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47941672801971441 0.45498664677143097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.12313038 0.28323868
		 0.47941673 0.28323868 0.12313038 0.62673461 0.47941673 0.62673461 0.31975374 0.47165516;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[1:4]" -type "float3"  -2.4596114 0 0 0 0 0 -2.4596114 
		0 0 0.67080319 1.5254763 -1.453407;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_B_001" -p "Branch_002";
	setAttr ".t" -type "double3" -36.177987852420543 7.3071124805664098 78.556080693592222 ;
	setAttr ".r" -type "double3" 105.02701337729452 -13.520199838293877 -89.009043578051717 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_B_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_002|LeafPattern_B_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.21949344128370285 0.99411702156066895 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.0076776296 0.65062112
		 0.43130925 0.65062112 0.0076776296 0.99411702 0.43130925 0.99411702 0.25086951 0.8390376;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 4.4177093e-016 -1.9895594 
		-2.5131278 4.4177093e-016 -1.9895594 0 -1.0230483e-015 4.6073999 -2.5131278 -1.0230483e-015 
		4.6073999 0 1.5254763 3.3872379e-016;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_A_001" -p "Branch_002";
	setAttr ".t" -type "double3" -23.089939265878709 6.2838458754738724 68.442267635306806 ;
	setAttr ".r" -type "double3" 79.57527923247612 6.1494370389990252 3.9173839840405145 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_A_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_002|LeafPattern_A_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52342133238717437 0.636894126387753 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.52342135 0.63689411
		 0.89802778 0.66728967 0.49792829 1 0.93528694 1 0.72935414 0.81844705;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt";
	setAttr ".pt[0]" -type "float3" 1.6992735 5.659718e-016 -2.5489104 ;
	setAttr ".pt[1]" -type "float3" -2.1899838 1.12373e-015 -5.0608301 ;
	setAttr ".pt[4]" -type "float3" 0 1.5254763 3.3872379e-016 ;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Branch_003" -p "PricklyGooseberry_group";
	setAttr ".t" -type "double3" -0.27778956023094992 -0.93035625050456083 0 ;
	setAttr ".r" -type "double3" -12.129920017733136 -3.9088349261600857 -89.66821290654299 ;
	setAttr ".s" -type "double3" 1.1640411636723096 1.1640411636723096 1.1640411636723096 ;
	setAttr ".rp" -type "double3" 2.2473385725383448 6.2838458754738724 28.602423572841381 ;
	setAttr ".sp" -type "double3" 2.2473385725383448 6.2838458754738724 28.602423572841381 ;
createNode transform -n "stem_001" -p "Branch_003";
createNode mesh -n "stem_00Shape1" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_003|stem_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50008620321750641 0.13716666400432587 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_003|stem_001";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50008620321750641 0.13716666400432587 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.031913817 0.25554633
		 0.34402877 0.25554633 0.65614372 0.25554633 0.96825856 0.2555463 0.031913698 0.22172357
		 0.34402889 0.22172356 0.65614349 0.22172356 0.9682588 0.22172356 0.031913817 0.18790081
		 0.34402889 0.18790081 0.65614372 0.18790081 0.9682588 0.18790081 0.031913817 0.15407804
		 0.34402877 0.15407804 0.65614372 0.15407804 0.96825856 0.15407804 0.031913817 0.12025531
		 0.34402889 0.12025531 0.65614372 0.12025531 0.9682588 0.12025531 0.031913817 0.086432517
		 0.34402877 0.086432509 0.65614372 0.086432509 0.9682588 0.086432509 0.031913817 0.052609816
		 0.34402877 0.052609816 0.65614349 0.052609816 0.96825856 0.052609816 0.031913817
		 0.018787012 0.34402865 0.018787012 0.65614349 0.018787012 0.9682588 0.018787012;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[3]" -type "float3" 0.11317062 -0.15130234 0.11585999 ;
	setAttr ".pt[7]" -type "float3" 0.0096092224 -0.22142696 0.0012588501 ;
	setAttr ".pt[11]" -type "float3" -0.099582672 -0.16184235 -0.11408234 ;
	setAttr ".pt[15]" -type "float3" -0.15044022 -0.0074529648 -0.16259766 ;
	setAttr ".pt[19]" -type "float3" -0.11317062 0.15130234 -0.11585999 ;
	setAttr ".pt[23]" -type "float3" -0.0096130371 0.22142696 -0.0012588501 ;
	setAttr ".pt[27]" -type "float3" 0.099578857 0.16184282 0.11408234 ;
	setAttr ".pt[31]" -type "float3" 0.1504364 0.0074529648 0.16259766 ;
	setAttr -s 32 ".vt[0:31]"  1.98028839 6.66210127 28.29807091 -16.1902256 6.58645058 42.33244324
		 -23.67531204 6.51079941 65.70194244 -37.34775162 6.43514824 77.48999023 2.22351551 6.83741283 28.59799957
		 -15.92094898 6.72669935 42.51181412 -23.47145462 6.61598587 65.83000183 -37.24419022 6.50527287 77.60459137
		 2.48069787 6.68845224 28.90051842 -15.63986206 6.60753107 42.68977737 -23.25884056 6.5266099 65.95678711
		 -37.13499832 6.44568825 77.71993256 2.60118151 6.30247879 29.028417587 -15.51162243 6.29875231 42.76209259
		 -23.16201782 6.29502535 66.008026123 -37.084140778 6.29129887 77.76844788 2.5143888 5.90559006 28.90677643
		 -15.61135101 5.98124123 42.68639374 -23.23770142 6.056892395 65.95370483 -37.12141037 6.13254356 77.72171021
		 2.27116156 5.73027897 28.60684776 -15.88062859 5.84099245 42.50702667 -23.44155884 5.95170546 65.82563782
		 -37.22496796 6.062418938 77.60710907 2.013979435 5.87923956 28.30432892 -16.16171455 5.96016073 42.3290596
		 -23.65417099 6.041081905 65.69885254 -37.33415985 6.12200308 77.49176788 1.89349568 6.26521301 28.17642784
		 -16.28995514 6.2689395 42.25674438 -23.75099564 6.27266598 65.64761353 -37.3850174 6.27639294 77.44325256;
	setAttr -s 56 ".ed[0:55]"  0 1 1 1 5 1 5 4 1 4 0 0 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 0 7 6 1 5 9 1 9 8 1 8 4 0 6 10 1 10 9 1 7 11 0 11 10 1 9 13 1 13 12 1 12 8 0
		 10 14 1 14 13 1 11 15 0 15 14 1 13 17 1 17 16 1 16 12 0 14 18 1 18 17 1 15 19 0 19 18 1
		 17 21 1 21 20 1 20 16 0 18 22 1 22 21 1 19 23 0 23 22 1 21 25 1 25 24 1 24 20 0 22 26 1
		 26 25 1 23 27 0 27 26 1 25 29 1 29 28 1 28 24 0 26 30 1 30 29 1 27 31 0 31 30 1 29 1 1
		 0 28 0 30 2 1 31 3 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 5 4
		f 4 4 5 6 -2
		mu 0 4 1 2 6 5
		f 4 7 8 9 -6
		mu 0 4 2 3 7 6
		f 4 -3 10 11 12
		mu 0 4 4 5 9 8
		f 4 -7 13 14 -11
		mu 0 4 5 6 10 9
		f 4 -10 15 16 -14
		mu 0 4 6 7 11 10
		f 4 -12 17 18 19
		mu 0 4 8 9 13 12
		f 4 -15 20 21 -18
		mu 0 4 9 10 14 13
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 12 13 17 16
		f 4 -22 27 28 -25
		mu 0 4 13 14 18 17
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 16 17 21 20
		f 4 -29 34 35 -32
		mu 0 4 17 18 22 21
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22
		f 4 -33 38 39 40
		mu 0 4 20 21 25 24
		f 4 -36 41 42 -39
		mu 0 4 21 22 26 25
		f 4 -38 43 44 -42
		mu 0 4 22 23 27 26
		f 4 -40 45 46 47
		mu 0 4 24 25 29 28
		f 4 -43 48 49 -46
		mu 0 4 25 26 30 29
		f 4 -45 50 51 -49
		mu 0 4 26 27 31 30
		f 4 -47 52 -1 53
		mu 0 4 28 29 1 0
		f 4 -50 54 -5 -53
		mu 0 4 29 30 2 1
		f 4 -52 55 -8 -55
		mu 0 4 30 31 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_D_001" -p "Branch_003";
	setAttr ".t" -type "double3" -15.67332130524003 6.2919425047446476 44.810120550222543 ;
	setAttr ".r" -type "double3" 109.8102575085894 -3.1805546814635168e-015 -135.44421740274475 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_D_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_003|LeafPattern_D_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.1323386430740356 0.39730462431907654 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.44668266 0.41546077
		 0.7659505 0.2669678 0.7188772 0.70343304 1.13233864 0.39730462 0.74087286 0.44873041;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  -2.2360079 -6.3834875e-016 
		2.8748672 -3.9396327 1.2294131e-015 -5.5367842 -0.74533594 2.6006813e-016 -1.1712427 
		16.397413 2.0569039e-015 -9.2634716 0 1.5254763 3.3872379e-016;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_C_001" -p "Branch_003";
	setAttr ".t" -type "double3" -20.460932328480169 5.1311655414252062 57.902198089579862 ;
	setAttr ".r" -type "double3" 64.992834461928908 -10.276474998230364 4.7569438722538573 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_C_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_003|LeafPattern_C_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47941672801971441 0.45498664677143097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.12313038 0.28323868
		 0.47941673 0.28323868 0.12313038 0.62673461 0.47941673 0.62673461 0.31975374 0.47165516;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[1:4]" -type "float3"  -2.4596114 0 0 0 0 0 -2.4596114 
		0 0 0.67080319 1.5254763 -1.453407;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_C_002" -p "Branch_003";
	setAttr ".t" -type "double3" -21.63755291893435 8.0603995537996855 64.058615308859402 ;
	setAttr ".r" -type "double3" 88.356055487369247 22.363885675813361 112.06335725363668 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_C_002Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_003|LeafPattern_C_002";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47941672801971441 0.45498664677143097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.12313038 0.28323868
		 0.47941673 0.28323868 0.12313038 0.62673461 0.47941673 0.62673461 0.31975374 0.47165516;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[1:4]" -type "float3"  -2.4596114 0 0 0 0 0 -2.4596114 
		0 0 0.67080319 1.5254763 -1.453407;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_B_001" -p "Branch_003";
	setAttr ".t" -type "double3" -36.177987852420543 7.3071124805664098 78.556080693592222 ;
	setAttr ".r" -type "double3" 105.02701337729452 -13.520199838293877 -89.009043578051717 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_B_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_003|LeafPattern_B_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.21949344128370285 0.99411702156066895 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.0076776296 0.65062112
		 0.43130925 0.65062112 0.0076776296 0.99411702 0.43130925 0.99411702 0.25086951 0.8390376;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 4.4177093e-016 -1.9895594 
		-2.5131278 4.4177093e-016 -1.9895594 0 -1.0230483e-015 4.6073999 -2.5131278 -1.0230483e-015 
		4.6073999 0 1.5254763 3.3872379e-016;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_A_001" -p "Branch_003";
	setAttr ".t" -type "double3" -23.089939265878709 6.2838458754738724 68.442267635306806 ;
	setAttr ".r" -type "double3" 79.57527923247612 6.1494370389990252 3.9173839840405145 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_A_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_003|LeafPattern_A_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52342133238717437 0.636894126387753 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.52342135 0.63689411
		 0.89802778 0.66728967 0.49792829 1 0.93528694 1 0.72935414 0.81844705;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt";
	setAttr ".pt[0]" -type "float3" 1.6992735 5.659718e-016 -2.5489104 ;
	setAttr ".pt[1]" -type "float3" -2.1899838 1.12373e-015 -5.0608301 ;
	setAttr ".pt[4]" -type "float3" 0 1.5254763 3.3872379e-016 ;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Branch_004" -p "PricklyGooseberry_group";
	setAttr ".t" -type "double3" -0.85344853967701317 0.67371356778642966 36.840902939514677 ;
	setAttr ".r" -type "double3" 19.800768251558377 23.378357400325527 68.889036007947851 ;
	setAttr ".rp" -type "double3" 2.2473385725383448 6.2838458754738724 28.602423572841381 ;
	setAttr ".sp" -type "double3" 2.2473385725383448 6.2838458754738724 28.602423572841381 ;
createNode transform -n "stem_001" -p "Branch_004";
createNode mesh -n "stem_00Shape1" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_004|stem_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50008620321750641 0.13716666400432587 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_004|stem_001";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50008620321750641 0.13716666400432587 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.031913817 0.25554633
		 0.34402877 0.25554633 0.65614372 0.25554633 0.96825856 0.2555463 0.031913698 0.22172357
		 0.34402889 0.22172356 0.65614349 0.22172356 0.9682588 0.22172356 0.031913817 0.18790081
		 0.34402889 0.18790081 0.65614372 0.18790081 0.9682588 0.18790081 0.031913817 0.15407804
		 0.34402877 0.15407804 0.65614372 0.15407804 0.96825856 0.15407804 0.031913817 0.12025531
		 0.34402889 0.12025531 0.65614372 0.12025531 0.9682588 0.12025531 0.031913817 0.086432517
		 0.34402877 0.086432509 0.65614372 0.086432509 0.9682588 0.086432509 0.031913817 0.052609816
		 0.34402877 0.052609816 0.65614349 0.052609816 0.96825856 0.052609816 0.031913817
		 0.018787012 0.34402865 0.018787012 0.65614349 0.018787012 0.9682588 0.018787012;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[3]" -type "float3" 0.11317062 -0.15130234 0.11585999 ;
	setAttr ".pt[7]" -type "float3" 0.0096092224 -0.22142696 0.0012588501 ;
	setAttr ".pt[11]" -type "float3" -0.099582672 -0.16184235 -0.11408234 ;
	setAttr ".pt[15]" -type "float3" -0.15044022 -0.0074529648 -0.16259766 ;
	setAttr ".pt[19]" -type "float3" -0.11317062 0.15130234 -0.11585999 ;
	setAttr ".pt[23]" -type "float3" -0.0096130371 0.22142696 -0.0012588501 ;
	setAttr ".pt[27]" -type "float3" 0.099578857 0.16184282 0.11408234 ;
	setAttr ".pt[31]" -type "float3" 0.1504364 0.0074529648 0.16259766 ;
	setAttr -s 32 ".vt[0:31]"  1.98028839 6.66210127 28.29807091 -16.1902256 6.58645058 42.33244324
		 -23.67531204 6.51079941 65.70194244 -37.34775162 6.43514824 77.48999023 2.22351551 6.83741283 28.59799957
		 -15.92094898 6.72669935 42.51181412 -23.47145462 6.61598587 65.83000183 -37.24419022 6.50527287 77.60459137
		 2.48069787 6.68845224 28.90051842 -15.63986206 6.60753107 42.68977737 -23.25884056 6.5266099 65.95678711
		 -37.13499832 6.44568825 77.71993256 2.60118151 6.30247879 29.028417587 -15.51162243 6.29875231 42.76209259
		 -23.16201782 6.29502535 66.008026123 -37.084140778 6.29129887 77.76844788 2.5143888 5.90559006 28.90677643
		 -15.61135101 5.98124123 42.68639374 -23.23770142 6.056892395 65.95370483 -37.12141037 6.13254356 77.72171021
		 2.27116156 5.73027897 28.60684776 -15.88062859 5.84099245 42.50702667 -23.44155884 5.95170546 65.82563782
		 -37.22496796 6.062418938 77.60710907 2.013979435 5.87923956 28.30432892 -16.16171455 5.96016073 42.3290596
		 -23.65417099 6.041081905 65.69885254 -37.33415985 6.12200308 77.49176788 1.89349568 6.26521301 28.17642784
		 -16.28995514 6.2689395 42.25674438 -23.75099564 6.27266598 65.64761353 -37.3850174 6.27639294 77.44325256;
	setAttr -s 56 ".ed[0:55]"  0 1 1 1 5 1 5 4 1 4 0 0 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 0 7 6 1 5 9 1 9 8 1 8 4 0 6 10 1 10 9 1 7 11 0 11 10 1 9 13 1 13 12 1 12 8 0
		 10 14 1 14 13 1 11 15 0 15 14 1 13 17 1 17 16 1 16 12 0 14 18 1 18 17 1 15 19 0 19 18 1
		 17 21 1 21 20 1 20 16 0 18 22 1 22 21 1 19 23 0 23 22 1 21 25 1 25 24 1 24 20 0 22 26 1
		 26 25 1 23 27 0 27 26 1 25 29 1 29 28 1 28 24 0 26 30 1 30 29 1 27 31 0 31 30 1 29 1 1
		 0 28 0 30 2 1 31 3 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 5 4
		f 4 4 5 6 -2
		mu 0 4 1 2 6 5
		f 4 7 8 9 -6
		mu 0 4 2 3 7 6
		f 4 -3 10 11 12
		mu 0 4 4 5 9 8
		f 4 -7 13 14 -11
		mu 0 4 5 6 10 9
		f 4 -10 15 16 -14
		mu 0 4 6 7 11 10
		f 4 -12 17 18 19
		mu 0 4 8 9 13 12
		f 4 -15 20 21 -18
		mu 0 4 9 10 14 13
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 12 13 17 16
		f 4 -22 27 28 -25
		mu 0 4 13 14 18 17
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 16 17 21 20
		f 4 -29 34 35 -32
		mu 0 4 17 18 22 21
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22
		f 4 -33 38 39 40
		mu 0 4 20 21 25 24
		f 4 -36 41 42 -39
		mu 0 4 21 22 26 25
		f 4 -38 43 44 -42
		mu 0 4 22 23 27 26
		f 4 -40 45 46 47
		mu 0 4 24 25 29 28
		f 4 -43 48 49 -46
		mu 0 4 25 26 30 29
		f 4 -45 50 51 -49
		mu 0 4 26 27 31 30
		f 4 -47 52 -1 53
		mu 0 4 28 29 1 0
		f 4 -50 54 -5 -53
		mu 0 4 29 30 2 1
		f 4 -52 55 -8 -55
		mu 0 4 30 31 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_D_001" -p "Branch_004";
	setAttr ".t" -type "double3" -15.67332130524003 6.2919425047446476 44.810120550222543 ;
	setAttr ".r" -type "double3" 109.8102575085894 -3.1805546814635168e-015 -135.44421740274475 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_D_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_004|LeafPattern_D_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.1323386430740356 0.39730462431907654 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.44668266 0.41546077
		 0.7659505 0.2669678 0.7188772 0.70343304 1.13233864 0.39730462 0.74087286 0.44873041;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  -2.2360079 -6.3834875e-016 
		2.8748672 -3.9396327 1.2294131e-015 -5.5367842 -0.74533594 2.6006813e-016 -1.1712427 
		16.397413 2.0569039e-015 -9.2634716 0 1.5254763 3.3872379e-016;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_C_001" -p "Branch_004";
	setAttr ".t" -type "double3" -20.460932328480169 5.1311655414252062 57.902198089579862 ;
	setAttr ".r" -type "double3" 64.992834461928908 -10.276474998230364 4.7569438722538573 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_C_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_004|LeafPattern_C_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47941672801971441 0.45498664677143097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.12313038 0.28323868
		 0.47941673 0.28323868 0.12313038 0.62673461 0.47941673 0.62673461 0.31975374 0.47165516;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[1:4]" -type "float3"  -2.4596114 0 0 0 0 0 -2.4596114 
		0 0 0.67080319 1.5254763 -1.453407;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_C_002" -p "Branch_004";
	setAttr ".t" -type "double3" -21.63755291893435 8.0603995537996855 64.058615308859402 ;
	setAttr ".r" -type "double3" 88.356055487369247 22.363885675813361 112.06335725363668 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_C_002Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_004|LeafPattern_C_002";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47941672801971441 0.45498664677143097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.12313038 0.28323868
		 0.47941673 0.28323868 0.12313038 0.62673461 0.47941673 0.62673461 0.31975374 0.47165516;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[1:4]" -type "float3"  -2.4596114 0 0 0 0 0 -2.4596114 
		0 0 0.67080319 1.5254763 -1.453407;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_B_001" -p "Branch_004";
	setAttr ".t" -type "double3" -36.177987852420543 7.3071124805664098 78.556080693592222 ;
	setAttr ".r" -type "double3" 105.02701337729452 -13.520199838293877 -89.009043578051717 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_B_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_004|LeafPattern_B_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.21949344128370285 0.99411702156066895 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.0076776296 0.65062112
		 0.43130925 0.65062112 0.0076776296 0.99411702 0.43130925 0.99411702 0.25086951 0.8390376;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 4.4177093e-016 -1.9895594 
		-2.5131278 4.4177093e-016 -1.9895594 0 -1.0230483e-015 4.6073999 -2.5131278 -1.0230483e-015 
		4.6073999 0 1.5254763 3.3872379e-016;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_A_001" -p "Branch_004";
	setAttr ".t" -type "double3" -23.089939265878709 6.2838458754738724 68.442267635306806 ;
	setAttr ".r" -type "double3" 79.57527923247612 6.1494370389990252 3.9173839840405145 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_A_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_004|LeafPattern_A_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52342133238717437 0.636894126387753 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.52342135 0.63689411
		 0.89802778 0.66728967 0.49792829 1 0.93528694 1 0.72935414 0.81844705;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt";
	setAttr ".pt[0]" -type "float3" 1.6992735 5.659718e-016 -2.5489104 ;
	setAttr ".pt[1]" -type "float3" -2.1899838 1.12373e-015 -5.0608301 ;
	setAttr ".pt[4]" -type "float3" 0 1.5254763 3.3872379e-016 ;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Branch_005" -p "PricklyGooseberry_group";
	setAttr ".t" -type "double3" -0.5538778288409949 0.83430684348521744 31.112891580709203 ;
	setAttr ".r" -type "double3" -19.714470189047965 61.502326726169592 31.029499924720607 ;
	setAttr ".rp" -type "double3" 2.2473385725383448 6.2838458754738724 28.602423572841381 ;
	setAttr ".sp" -type "double3" 2.2473385725383448 6.2838458754738724 28.602423572841381 ;
createNode transform -n "stem_001" -p "Branch_005";
createNode mesh -n "stem_00Shape1" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_005|stem_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50008620321750641 0.13716666400432587 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape4" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_005|stem_001";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50008620321750641 0.13716666400432587 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.031913817 0.25554633
		 0.34402877 0.25554633 0.65614372 0.25554633 0.96825856 0.2555463 0.031913698 0.22172357
		 0.34402889 0.22172356 0.65614349 0.22172356 0.9682588 0.22172356 0.031913817 0.18790081
		 0.34402889 0.18790081 0.65614372 0.18790081 0.9682588 0.18790081 0.031913817 0.15407804
		 0.34402877 0.15407804 0.65614372 0.15407804 0.96825856 0.15407804 0.031913817 0.12025531
		 0.34402889 0.12025531 0.65614372 0.12025531 0.9682588 0.12025531 0.031913817 0.086432517
		 0.34402877 0.086432509 0.65614372 0.086432509 0.9682588 0.086432509 0.031913817 0.052609816
		 0.34402877 0.052609816 0.65614349 0.052609816 0.96825856 0.052609816 0.031913817
		 0.018787012 0.34402865 0.018787012 0.65614349 0.018787012 0.9682588 0.018787012;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[3]" -type "float3" 0.11317062 -0.15130234 0.11585999 ;
	setAttr ".pt[7]" -type "float3" 0.0096092224 -0.22142696 0.0012588501 ;
	setAttr ".pt[11]" -type "float3" -0.099582672 -0.16184235 -0.11408234 ;
	setAttr ".pt[15]" -type "float3" -0.15044022 -0.0074529648 -0.16259766 ;
	setAttr ".pt[19]" -type "float3" -0.11317062 0.15130234 -0.11585999 ;
	setAttr ".pt[23]" -type "float3" -0.0096130371 0.22142696 -0.0012588501 ;
	setAttr ".pt[27]" -type "float3" 0.099578857 0.16184282 0.11408234 ;
	setAttr ".pt[31]" -type "float3" 0.1504364 0.0074529648 0.16259766 ;
	setAttr -s 32 ".vt[0:31]"  1.98028839 6.66210127 28.29807091 -16.1902256 6.58645058 42.33244324
		 -23.67531204 6.51079941 65.70194244 -37.34775162 6.43514824 77.48999023 2.22351551 6.83741283 28.59799957
		 -15.92094898 6.72669935 42.51181412 -23.47145462 6.61598587 65.83000183 -37.24419022 6.50527287 77.60459137
		 2.48069787 6.68845224 28.90051842 -15.63986206 6.60753107 42.68977737 -23.25884056 6.5266099 65.95678711
		 -37.13499832 6.44568825 77.71993256 2.60118151 6.30247879 29.028417587 -15.51162243 6.29875231 42.76209259
		 -23.16201782 6.29502535 66.008026123 -37.084140778 6.29129887 77.76844788 2.5143888 5.90559006 28.90677643
		 -15.61135101 5.98124123 42.68639374 -23.23770142 6.056892395 65.95370483 -37.12141037 6.13254356 77.72171021
		 2.27116156 5.73027897 28.60684776 -15.88062859 5.84099245 42.50702667 -23.44155884 5.95170546 65.82563782
		 -37.22496796 6.062418938 77.60710907 2.013979435 5.87923956 28.30432892 -16.16171455 5.96016073 42.3290596
		 -23.65417099 6.041081905 65.69885254 -37.33415985 6.12200308 77.49176788 1.89349568 6.26521301 28.17642784
		 -16.28995514 6.2689395 42.25674438 -23.75099564 6.27266598 65.64761353 -37.3850174 6.27639294 77.44325256;
	setAttr -s 56 ".ed[0:55]"  0 1 1 1 5 1 5 4 1 4 0 0 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 0 7 6 1 5 9 1 9 8 1 8 4 0 6 10 1 10 9 1 7 11 0 11 10 1 9 13 1 13 12 1 12 8 0
		 10 14 1 14 13 1 11 15 0 15 14 1 13 17 1 17 16 1 16 12 0 14 18 1 18 17 1 15 19 0 19 18 1
		 17 21 1 21 20 1 20 16 0 18 22 1 22 21 1 19 23 0 23 22 1 21 25 1 25 24 1 24 20 0 22 26 1
		 26 25 1 23 27 0 27 26 1 25 29 1 29 28 1 28 24 0 26 30 1 30 29 1 27 31 0 31 30 1 29 1 1
		 0 28 0 30 2 1 31 3 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 5 4
		f 4 4 5 6 -2
		mu 0 4 1 2 6 5
		f 4 7 8 9 -6
		mu 0 4 2 3 7 6
		f 4 -3 10 11 12
		mu 0 4 4 5 9 8
		f 4 -7 13 14 -11
		mu 0 4 5 6 10 9
		f 4 -10 15 16 -14
		mu 0 4 6 7 11 10
		f 4 -12 17 18 19
		mu 0 4 8 9 13 12
		f 4 -15 20 21 -18
		mu 0 4 9 10 14 13
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 12 13 17 16
		f 4 -22 27 28 -25
		mu 0 4 13 14 18 17
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 16 17 21 20
		f 4 -29 34 35 -32
		mu 0 4 17 18 22 21
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22
		f 4 -33 38 39 40
		mu 0 4 20 21 25 24
		f 4 -36 41 42 -39
		mu 0 4 21 22 26 25
		f 4 -38 43 44 -42
		mu 0 4 22 23 27 26
		f 4 -40 45 46 47
		mu 0 4 24 25 29 28
		f 4 -43 48 49 -46
		mu 0 4 25 26 30 29
		f 4 -45 50 51 -49
		mu 0 4 26 27 31 30
		f 4 -47 52 -1 53
		mu 0 4 28 29 1 0
		f 4 -50 54 -5 -53
		mu 0 4 29 30 2 1
		f 4 -52 55 -8 -55
		mu 0 4 30 31 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_D_001" -p "Branch_005";
	setAttr ".t" -type "double3" -15.67332130524003 6.2919425047446476 44.810120550222543 ;
	setAttr ".r" -type "double3" 109.8102575085894 -3.1805546814635168e-015 -135.44421740274475 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_D_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_005|LeafPattern_D_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.1323386430740356 0.39730462431907654 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.44668266 0.41546077
		 0.7659505 0.2669678 0.7188772 0.70343304 1.13233864 0.39730462 0.74087286 0.44873041;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  -2.2360079 -6.3834875e-016 
		2.8748672 -3.9396327 1.2294131e-015 -5.5367842 -0.74533594 2.6006813e-016 -1.1712427 
		16.397413 2.0569039e-015 -9.2634716 0 1.5254763 3.3872379e-016;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_C_001" -p "Branch_005";
	setAttr ".t" -type "double3" -20.460932328480169 5.1311655414252062 57.902198089579862 ;
	setAttr ".r" -type "double3" 64.992834461928908 -10.276474998230364 4.7569438722538573 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_C_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_005|LeafPattern_C_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47941672801971441 0.45498664677143097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.12313038 0.28323868
		 0.47941673 0.28323868 0.12313038 0.62673461 0.47941673 0.62673461 0.31975374 0.47165516;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[1:4]" -type "float3"  -2.4596114 0 0 0 0 0 -2.4596114 
		0 0 0.67080319 1.5254763 -1.453407;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_C_002" -p "Branch_005";
	setAttr ".t" -type "double3" -21.63755291893435 8.0603995537996855 64.058615308859402 ;
	setAttr ".r" -type "double3" 88.356055487369247 22.363885675813361 112.06335725363668 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_C_002Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_005|LeafPattern_C_002";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47941672801971441 0.45498664677143097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.12313038 0.28323868
		 0.47941673 0.28323868 0.12313038 0.62673461 0.47941673 0.62673461 0.31975374 0.47165516;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[1:4]" -type "float3"  -2.4596114 0 0 0 0 0 -2.4596114 
		0 0 0.67080319 1.5254763 -1.453407;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_B_001" -p "Branch_005";
	setAttr ".t" -type "double3" -36.177987852420543 7.3071124805664098 78.556080693592222 ;
	setAttr ".r" -type "double3" 105.02701337729452 -13.520199838293877 -89.009043578051717 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_B_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_005|LeafPattern_B_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.21949344128370285 0.99411702156066895 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.0076776296 0.65062112
		 0.43130925 0.65062112 0.0076776296 0.99411702 0.43130925 0.99411702 0.25086951 0.8390376;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 4.4177093e-016 -1.9895594 
		-2.5131278 4.4177093e-016 -1.9895594 0 -1.0230483e-015 4.6073999 -2.5131278 -1.0230483e-015 
		4.6073999 0 1.5254763 3.3872379e-016;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_A_001" -p "Branch_005";
	setAttr ".t" -type "double3" -23.089939265878709 6.2838458754738724 68.442267635306806 ;
	setAttr ".r" -type "double3" 79.57527923247612 6.1494370389990252 3.9173839840405145 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_A_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_005|LeafPattern_A_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52342133238717437 0.636894126387753 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.52342135 0.63689411
		 0.89802778 0.66728967 0.49792829 1 0.93528694 1 0.72935414 0.81844705;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt";
	setAttr ".pt[0]" -type "float3" 1.6992735 5.659718e-016 -2.5489104 ;
	setAttr ".pt[1]" -type "float3" -2.1899838 1.12373e-015 -5.0608301 ;
	setAttr ".pt[4]" -type "float3" 0 1.5254763 3.3872379e-016 ;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Branch_006" -p "PricklyGooseberry_group";
	setAttr ".t" -type "double3" 0.01306844589002054 1.2679197937623119 22.759272235464096 ;
	setAttr ".r" -type "double3" 13.937169158695362 22.160924005281668 -4.292811684689001e-016 ;
	setAttr ".rp" -type "double3" 2.2473385725383448 6.2838458754738724 28.602423572841381 ;
	setAttr ".sp" -type "double3" 2.2473385725383448 6.2838458754738724 28.602423572841381 ;
createNode transform -n "stem_001" -p "Branch_006";
createNode mesh -n "stem_00Shape1" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_006|stem_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50008620321750641 0.13716666400432587 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape5" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_006|stem_001";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50008620321750641 0.13716666400432587 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.031913817 0.25554633
		 0.34402877 0.25554633 0.65614372 0.25554633 0.96825856 0.2555463 0.031913698 0.22172357
		 0.34402889 0.22172356 0.65614349 0.22172356 0.9682588 0.22172356 0.031913817 0.18790081
		 0.34402889 0.18790081 0.65614372 0.18790081 0.9682588 0.18790081 0.031913817 0.15407804
		 0.34402877 0.15407804 0.65614372 0.15407804 0.96825856 0.15407804 0.031913817 0.12025531
		 0.34402889 0.12025531 0.65614372 0.12025531 0.9682588 0.12025531 0.031913817 0.086432517
		 0.34402877 0.086432509 0.65614372 0.086432509 0.9682588 0.086432509 0.031913817 0.052609816
		 0.34402877 0.052609816 0.65614349 0.052609816 0.96825856 0.052609816 0.031913817
		 0.018787012 0.34402865 0.018787012 0.65614349 0.018787012 0.9682588 0.018787012;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[3]" -type "float3" 0.11317062 -0.15130234 0.11585999 ;
	setAttr ".pt[7]" -type "float3" 0.0096092224 -0.22142696 0.0012588501 ;
	setAttr ".pt[11]" -type "float3" -0.099582672 -0.16184235 -0.11408234 ;
	setAttr ".pt[15]" -type "float3" -0.15044022 -0.0074529648 -0.16259766 ;
	setAttr ".pt[19]" -type "float3" -0.11317062 0.15130234 -0.11585999 ;
	setAttr ".pt[23]" -type "float3" -0.0096130371 0.22142696 -0.0012588501 ;
	setAttr ".pt[27]" -type "float3" 0.099578857 0.16184282 0.11408234 ;
	setAttr ".pt[31]" -type "float3" 0.1504364 0.0074529648 0.16259766 ;
	setAttr -s 32 ".vt[0:31]"  1.98028839 6.66210127 28.29807091 -16.1902256 6.58645058 42.33244324
		 -23.67531204 6.51079941 65.70194244 -37.34775162 6.43514824 77.48999023 2.22351551 6.83741283 28.59799957
		 -15.92094898 6.72669935 42.51181412 -23.47145462 6.61598587 65.83000183 -37.24419022 6.50527287 77.60459137
		 2.48069787 6.68845224 28.90051842 -15.63986206 6.60753107 42.68977737 -23.25884056 6.5266099 65.95678711
		 -37.13499832 6.44568825 77.71993256 2.60118151 6.30247879 29.028417587 -15.51162243 6.29875231 42.76209259
		 -23.16201782 6.29502535 66.008026123 -37.084140778 6.29129887 77.76844788 2.5143888 5.90559006 28.90677643
		 -15.61135101 5.98124123 42.68639374 -23.23770142 6.056892395 65.95370483 -37.12141037 6.13254356 77.72171021
		 2.27116156 5.73027897 28.60684776 -15.88062859 5.84099245 42.50702667 -23.44155884 5.95170546 65.82563782
		 -37.22496796 6.062418938 77.60710907 2.013979435 5.87923956 28.30432892 -16.16171455 5.96016073 42.3290596
		 -23.65417099 6.041081905 65.69885254 -37.33415985 6.12200308 77.49176788 1.89349568 6.26521301 28.17642784
		 -16.28995514 6.2689395 42.25674438 -23.75099564 6.27266598 65.64761353 -37.3850174 6.27639294 77.44325256;
	setAttr -s 56 ".ed[0:55]"  0 1 1 1 5 1 5 4 1 4 0 0 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 0 7 6 1 5 9 1 9 8 1 8 4 0 6 10 1 10 9 1 7 11 0 11 10 1 9 13 1 13 12 1 12 8 0
		 10 14 1 14 13 1 11 15 0 15 14 1 13 17 1 17 16 1 16 12 0 14 18 1 18 17 1 15 19 0 19 18 1
		 17 21 1 21 20 1 20 16 0 18 22 1 22 21 1 19 23 0 23 22 1 21 25 1 25 24 1 24 20 0 22 26 1
		 26 25 1 23 27 0 27 26 1 25 29 1 29 28 1 28 24 0 26 30 1 30 29 1 27 31 0 31 30 1 29 1 1
		 0 28 0 30 2 1 31 3 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 5 4
		f 4 4 5 6 -2
		mu 0 4 1 2 6 5
		f 4 7 8 9 -6
		mu 0 4 2 3 7 6
		f 4 -3 10 11 12
		mu 0 4 4 5 9 8
		f 4 -7 13 14 -11
		mu 0 4 5 6 10 9
		f 4 -10 15 16 -14
		mu 0 4 6 7 11 10
		f 4 -12 17 18 19
		mu 0 4 8 9 13 12
		f 4 -15 20 21 -18
		mu 0 4 9 10 14 13
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 12 13 17 16
		f 4 -22 27 28 -25
		mu 0 4 13 14 18 17
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 16 17 21 20
		f 4 -29 34 35 -32
		mu 0 4 17 18 22 21
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22
		f 4 -33 38 39 40
		mu 0 4 20 21 25 24
		f 4 -36 41 42 -39
		mu 0 4 21 22 26 25
		f 4 -38 43 44 -42
		mu 0 4 22 23 27 26
		f 4 -40 45 46 47
		mu 0 4 24 25 29 28
		f 4 -43 48 49 -46
		mu 0 4 25 26 30 29
		f 4 -45 50 51 -49
		mu 0 4 26 27 31 30
		f 4 -47 52 -1 53
		mu 0 4 28 29 1 0
		f 4 -50 54 -5 -53
		mu 0 4 29 30 2 1
		f 4 -52 55 -8 -55
		mu 0 4 30 31 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_D_001" -p "Branch_006";
	setAttr ".t" -type "double3" -15.67332130524003 6.2919425047446476 44.810120550222543 ;
	setAttr ".r" -type "double3" 109.8102575085894 -3.1805546814635168e-015 -135.44421740274475 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_D_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_006|LeafPattern_D_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.1323386430740356 0.39730462431907654 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.44668266 0.41546077
		 0.7659505 0.2669678 0.7188772 0.70343304 1.13233864 0.39730462 0.74087286 0.44873041;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  -2.2360079 -6.3834875e-016 
		2.8748672 -3.9396327 1.2294131e-015 -5.5367842 -0.74533594 2.6006813e-016 -1.1712427 
		16.397413 2.0569039e-015 -9.2634716 0 1.5254763 3.3872379e-016;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_C_001" -p "Branch_006";
	setAttr ".t" -type "double3" -20.460932328480169 5.1311655414252062 57.902198089579862 ;
	setAttr ".r" -type "double3" 64.992834461928908 -10.276474998230364 4.7569438722538573 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_C_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_006|LeafPattern_C_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47941672801971441 0.45498664677143097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.12313038 0.28323868
		 0.47941673 0.28323868 0.12313038 0.62673461 0.47941673 0.62673461 0.31975374 0.47165516;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[1:4]" -type "float3"  -2.4596114 0 0 0 0 0 -2.4596114 
		0 0 0.67080319 1.5254763 -1.453407;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_C_002" -p "Branch_006";
	setAttr ".t" -type "double3" -21.63755291893435 8.0603995537996855 64.058615308859402 ;
	setAttr ".r" -type "double3" 88.356055487369247 22.363885675813361 112.06335725363668 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_C_002Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_006|LeafPattern_C_002";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47941672801971441 0.45498664677143097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.12313038 0.28323868
		 0.47941673 0.28323868 0.12313038 0.62673461 0.47941673 0.62673461 0.31975374 0.47165516;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[1:4]" -type "float3"  -2.4596114 0 0 0 0 0 -2.4596114 
		0 0 0.67080319 1.5254763 -1.453407;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_B_001" -p "Branch_006";
	setAttr ".t" -type "double3" -36.177987852420543 7.3071124805664098 78.556080693592222 ;
	setAttr ".r" -type "double3" 105.02701337729452 -13.520199838293877 -89.009043578051717 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_B_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_006|LeafPattern_B_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.21949344128370285 0.99411702156066895 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.0076776296 0.65062112
		 0.43130925 0.65062112 0.0076776296 0.99411702 0.43130925 0.99411702 0.25086951 0.8390376;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 4.4177093e-016 -1.9895594 
		-2.5131278 4.4177093e-016 -1.9895594 0 -1.0230483e-015 4.6073999 -2.5131278 -1.0230483e-015 
		4.6073999 0 1.5254763 3.3872379e-016;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_A_001" -p "Branch_006";
	setAttr ".t" -type "double3" -23.089939265878709 6.2838458754738724 68.442267635306806 ;
	setAttr ".r" -type "double3" 79.57527923247612 6.1494370389990252 3.9173839840405145 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_A_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_006|LeafPattern_A_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52342133238717437 0.636894126387753 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.52342135 0.63689411
		 0.89802778 0.66728967 0.49792829 1 0.93528694 1 0.72935414 0.81844705;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt";
	setAttr ".pt[0]" -type "float3" 1.6992735 5.659718e-016 -2.5489104 ;
	setAttr ".pt[1]" -type "float3" -2.1899838 1.12373e-015 -5.0608301 ;
	setAttr ".pt[4]" -type "float3" 0 1.5254763 3.3872379e-016 ;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Branch_007" -p "PricklyGooseberry_group";
	setAttr ".t" -type "double3" 0.36462777077894648 1.5547362595109553 12.952901578237473 ;
	setAttr ".r" -type "double3" 0 0 -187.33444103651016 ;
	setAttr ".s" -type "double3" 1.0472951708732388 1.0472951708732388 1.0472951708732388 ;
	setAttr ".rp" -type "double3" 2.2473385725383448 6.2838458754738724 28.602423572841381 ;
	setAttr ".sp" -type "double3" 2.2473385725383448 6.2838458754738724 28.602423572841381 ;
createNode transform -n "stem_001" -p "Branch_007";
createNode mesh -n "stem_00Shape1" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_007|stem_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50008620321750641 0.13716666400432587 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape6" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_007|stem_001";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50008620321750641 0.13716666400432587 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.031913817 0.25554633
		 0.34402877 0.25554633 0.65614372 0.25554633 0.96825856 0.2555463 0.031913698 0.22172357
		 0.34402889 0.22172356 0.65614349 0.22172356 0.9682588 0.22172356 0.031913817 0.18790081
		 0.34402889 0.18790081 0.65614372 0.18790081 0.9682588 0.18790081 0.031913817 0.15407804
		 0.34402877 0.15407804 0.65614372 0.15407804 0.96825856 0.15407804 0.031913817 0.12025531
		 0.34402889 0.12025531 0.65614372 0.12025531 0.9682588 0.12025531 0.031913817 0.086432517
		 0.34402877 0.086432509 0.65614372 0.086432509 0.9682588 0.086432509 0.031913817 0.052609816
		 0.34402877 0.052609816 0.65614349 0.052609816 0.96825856 0.052609816 0.031913817
		 0.018787012 0.34402865 0.018787012 0.65614349 0.018787012 0.9682588 0.018787012;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[3]" -type "float3" 0.11317062 -0.15130234 0.11585999 ;
	setAttr ".pt[7]" -type "float3" 0.0096092224 -0.22142696 0.0012588501 ;
	setAttr ".pt[11]" -type "float3" -0.099582672 -0.16184235 -0.11408234 ;
	setAttr ".pt[15]" -type "float3" -0.15044022 -0.0074529648 -0.16259766 ;
	setAttr ".pt[19]" -type "float3" -0.11317062 0.15130234 -0.11585999 ;
	setAttr ".pt[23]" -type "float3" -0.0096130371 0.22142696 -0.0012588501 ;
	setAttr ".pt[27]" -type "float3" 0.099578857 0.16184282 0.11408234 ;
	setAttr ".pt[31]" -type "float3" 0.1504364 0.0074529648 0.16259766 ;
	setAttr -s 32 ".vt[0:31]"  1.98028839 6.66210127 28.29807091 -16.1902256 6.58645058 42.33244324
		 -23.67531204 6.51079941 65.70194244 -37.34775162 6.43514824 77.48999023 2.22351551 6.83741283 28.59799957
		 -15.92094898 6.72669935 42.51181412 -23.47145462 6.61598587 65.83000183 -37.24419022 6.50527287 77.60459137
		 2.48069787 6.68845224 28.90051842 -15.63986206 6.60753107 42.68977737 -23.25884056 6.5266099 65.95678711
		 -37.13499832 6.44568825 77.71993256 2.60118151 6.30247879 29.028417587 -15.51162243 6.29875231 42.76209259
		 -23.16201782 6.29502535 66.008026123 -37.084140778 6.29129887 77.76844788 2.5143888 5.90559006 28.90677643
		 -15.61135101 5.98124123 42.68639374 -23.23770142 6.056892395 65.95370483 -37.12141037 6.13254356 77.72171021
		 2.27116156 5.73027897 28.60684776 -15.88062859 5.84099245 42.50702667 -23.44155884 5.95170546 65.82563782
		 -37.22496796 6.062418938 77.60710907 2.013979435 5.87923956 28.30432892 -16.16171455 5.96016073 42.3290596
		 -23.65417099 6.041081905 65.69885254 -37.33415985 6.12200308 77.49176788 1.89349568 6.26521301 28.17642784
		 -16.28995514 6.2689395 42.25674438 -23.75099564 6.27266598 65.64761353 -37.3850174 6.27639294 77.44325256;
	setAttr -s 56 ".ed[0:55]"  0 1 1 1 5 1 5 4 1 4 0 0 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 0 7 6 1 5 9 1 9 8 1 8 4 0 6 10 1 10 9 1 7 11 0 11 10 1 9 13 1 13 12 1 12 8 0
		 10 14 1 14 13 1 11 15 0 15 14 1 13 17 1 17 16 1 16 12 0 14 18 1 18 17 1 15 19 0 19 18 1
		 17 21 1 21 20 1 20 16 0 18 22 1 22 21 1 19 23 0 23 22 1 21 25 1 25 24 1 24 20 0 22 26 1
		 26 25 1 23 27 0 27 26 1 25 29 1 29 28 1 28 24 0 26 30 1 30 29 1 27 31 0 31 30 1 29 1 1
		 0 28 0 30 2 1 31 3 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 5 4
		f 4 4 5 6 -2
		mu 0 4 1 2 6 5
		f 4 7 8 9 -6
		mu 0 4 2 3 7 6
		f 4 -3 10 11 12
		mu 0 4 4 5 9 8
		f 4 -7 13 14 -11
		mu 0 4 5 6 10 9
		f 4 -10 15 16 -14
		mu 0 4 6 7 11 10
		f 4 -12 17 18 19
		mu 0 4 8 9 13 12
		f 4 -15 20 21 -18
		mu 0 4 9 10 14 13
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 12 13 17 16
		f 4 -22 27 28 -25
		mu 0 4 13 14 18 17
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 16 17 21 20
		f 4 -29 34 35 -32
		mu 0 4 17 18 22 21
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22
		f 4 -33 38 39 40
		mu 0 4 20 21 25 24
		f 4 -36 41 42 -39
		mu 0 4 21 22 26 25
		f 4 -38 43 44 -42
		mu 0 4 22 23 27 26
		f 4 -40 45 46 47
		mu 0 4 24 25 29 28
		f 4 -43 48 49 -46
		mu 0 4 25 26 30 29
		f 4 -45 50 51 -49
		mu 0 4 26 27 31 30
		f 4 -47 52 -1 53
		mu 0 4 28 29 1 0
		f 4 -50 54 -5 -53
		mu 0 4 29 30 2 1
		f 4 -52 55 -8 -55
		mu 0 4 30 31 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_D_001" -p "Branch_007";
	setAttr ".t" -type "double3" -15.67332130524003 6.2919425047446476 44.810120550222543 ;
	setAttr ".r" -type "double3" 109.8102575085894 -3.1805546814635168e-015 -135.44421740274475 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_D_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_007|LeafPattern_D_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.1323386430740356 0.39730462431907654 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.44668266 0.41546077
		 0.7659505 0.2669678 0.7188772 0.70343304 1.13233864 0.39730462 0.74087286 0.44873041;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  -2.2360079 -6.3834875e-016 
		2.8748672 -3.9396327 1.2294131e-015 -5.5367842 -0.74533594 2.6006813e-016 -1.1712427 
		16.397413 2.0569039e-015 -9.2634716 0 1.5254763 3.3872379e-016;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_C_001" -p "Branch_007";
	setAttr ".t" -type "double3" -20.460932328480169 5.1311655414252062 57.902198089579862 ;
	setAttr ".r" -type "double3" 64.992834461928908 -10.276474998230364 4.7569438722538573 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_C_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_007|LeafPattern_C_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47941672801971441 0.45498664677143097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.12313038 0.28323868
		 0.47941673 0.28323868 0.12313038 0.62673461 0.47941673 0.62673461 0.31975374 0.47165516;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[1:4]" -type "float3"  -2.4596114 0 0 0 0 0 -2.4596114 
		0 0 0.67080319 1.5254763 -1.453407;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_C_002" -p "Branch_007";
	setAttr ".t" -type "double3" -21.63755291893435 8.0603995537996855 64.058615308859402 ;
	setAttr ".r" -type "double3" 88.356055487369247 22.363885675813361 112.06335725363668 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_C_002Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_007|LeafPattern_C_002";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47941672801971441 0.45498664677143097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.12313038 0.28323868
		 0.47941673 0.28323868 0.12313038 0.62673461 0.47941673 0.62673461 0.31975374 0.47165516;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[1:4]" -type "float3"  -2.4596114 0 0 0 0 0 -2.4596114 
		0 0 0.67080319 1.5254763 -1.453407;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_B_001" -p "Branch_007";
	setAttr ".t" -type "double3" -36.177987852420543 7.3071124805664098 78.556080693592222 ;
	setAttr ".r" -type "double3" 105.02701337729452 -13.520199838293877 -89.009043578051717 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_B_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_007|LeafPattern_B_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.21949344128370285 0.99411702156066895 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.0076776296 0.65062112
		 0.43130925 0.65062112 0.0076776296 0.99411702 0.43130925 0.99411702 0.25086951 0.8390376;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 4.4177093e-016 -1.9895594 
		-2.5131278 4.4177093e-016 -1.9895594 0 -1.0230483e-015 4.6073999 -2.5131278 -1.0230483e-015 
		4.6073999 0 1.5254763 3.3872379e-016;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeafPattern_A_001" -p "Branch_007";
	setAttr ".t" -type "double3" -23.089939265878709 6.2838458754738724 68.442267635306806 ;
	setAttr ".r" -type "double3" 79.57527923247612 6.1494370389990252 3.9173839840405145 ;
	setAttr ".s" -type "double3" 0.8 0.8 0.8 ;
createNode mesh -n "LeafPattern_A_001Shape" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_007|LeafPattern_A_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52342133238717437 0.636894126387753 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.52342135 0.63689411
		 0.89802778 0.66728967 0.49792829 1 0.93528694 1 0.72935414 0.81844705;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 12 ".clst[0].clsp[0:11]"  1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt";
	setAttr ".pt[0]" -type "float3" 1.6992735 5.659718e-016 -2.5489104 ;
	setAttr ".pt[1]" -type "float3" -2.1899838 1.12373e-015 -5.0608301 ;
	setAttr ".pt[4]" -type "float3" 0 1.5254763 3.3872379e-016 ;
	setAttr -s 5 ".vt[0:4]"  -15 -3.3306691e-015 15 15 -3.3306691e-015 15
		 -15 3.3306691e-015 -15 15 3.3306691e-015 -15 0 -4.7557745 -1.0559941e-015;
	setAttr -s 8 ".ed[0:7]"  0 1 0 0 2 0 1 3 0 2 3 0 0 4 1 4 3 1 1 4 1
		 2 4 1;
	setAttr -s 4 -ch 12 ".fc[0:3]" -type "polyFaces" 
		f 3 7 5 -4
		mu 0 3 2 4 3
		mc 0 3 0 1 2
		f 3 0 6 -5
		mu 0 3 0 1 4
		mc 0 3 3 4 5
		f 3 -7 2 -6
		mu 0 3 4 1 3
		mc 0 3 6 7 8
		f 3 4 -8 -2
		mu 0 3 0 4 2
		mc 0 3 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Main_TrunkStem" -p "PricklyGooseberry_group";
	setAttr ".r" -type "double3" -1.8911758811100696 38.938203493464201 65.884038324428758 ;
	setAttr ".s" -type "double3" 1.8 1.8 1.8 ;
createNode transform -n "stem_001" -p "Main_TrunkStem";
	setAttr ".rp" -type "double3" -0.35384289363667243 -0.018632862778559911 -0.42599573165485793 ;
	setAttr ".sp" -type "double3" -0.35384289363667243 -0.018632862778559911 -0.42599573165485793 ;
createNode mesh -n "stem_00Shape1" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Main_TrunkStem|stem_001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50008620321750641 0.13716666400432587 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "stem_00Shape1Orig" -p "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Main_TrunkStem|stem_001";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.031913817 0.25554633
		 0.34402877 0.25554633 0.65614372 0.25554633 0.96825856 0.2555463 0.031913698 0.22172357
		 0.34402889 0.22172356 0.65614349 0.22172356 0.9682588 0.22172356 0.031913817 0.18790081
		 0.34402889 0.18790081 0.65614372 0.18790081 0.9682588 0.18790081 0.031913817 0.15407804
		 0.34402877 0.15407804 0.65614372 0.15407804 0.96825856 0.15407804 0.031913817 0.12025531
		 0.34402889 0.12025531 0.65614372 0.12025531 0.9682588 0.12025531 0.031913817 0.086432517
		 0.34402877 0.086432509 0.65614372 0.086432509 0.9682588 0.086432509 0.031913817 0.052609816
		 0.34402877 0.052609816 0.65614349 0.052609816 0.96825856 0.052609816 0.031913817
		 0.018787012 0.34402865 0.018787012 0.65614349 0.018787012 0.9682588 0.018787012;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt[0:31]" -type "float3"  -2.2473385 -6.2838459 -28.602423 
		5.5389977 -6.5864053 -22.317617 -2.2473385 -6.2838459 -28.602423 -2.2473385 -6.2838459 
		-28.602423 -2.2473385 -6.2838459 -28.602423 5.5389977 -6.5864053 -22.317617 -2.2473385 
		-6.2838459 -28.602423 -2.2473385 -6.2838459 -28.602423 -2.2473385 -6.2838459 -28.602423 
		5.5389977 -6.5864053 -22.317617 -2.2473385 -6.2838459 -28.602423 -2.2473385 -6.2838459 
		-28.602423 -2.2473385 -6.2838459 -28.602423 5.5389977 -6.5864053 -22.317617 -2.2473385 
		-6.2838459 -28.602423 -2.2473385 -6.2838459 -28.602423 -2.2473385 -6.2838459 -28.602423 
		5.5389977 -6.5864053 -22.317617 -2.2473385 -6.2838459 -28.602423 -2.2473385 -6.2838459 
		-28.602423 -2.2473385 -6.2838459 -28.602423 5.5389977 -6.5864053 -22.317617 -2.2473385 
		-6.2838459 -28.602423 -2.2473385 -6.2838459 -28.602423 -2.2473385 -6.2838459 -28.602423 
		5.5389977 -6.5864053 -22.317617 -2.2473385 -6.2838459 -28.602423 -2.2473385 -6.2838459 
		-28.602423 -2.2473385 -6.2838459 -28.602423 5.5389977 -6.5864053 -22.317617 -2.2473385 
		-6.2838459 -28.602423 -2.2473385 -6.2838459 -28.602423;
	setAttr -s 32 ".vt[0:31]"  1.98028839 6.66210127 28.29807091 -16.1902256 6.58645058 42.33244324
		 -23.67531204 6.51079941 65.70194244 -37.34775162 6.43514824 77.48999023 2.22351551 6.83741283 28.59799957
		 -15.92094898 6.72669935 42.51181412 -23.47145462 6.61598587 65.83000183 -37.24419022 6.50527287 77.60459137
		 2.48069787 6.68845224 28.90051842 -15.63986206 6.60753107 42.68977737 -23.25884056 6.5266099 65.95678711
		 -37.13499832 6.44568825 77.71993256 2.60118151 6.30247879 29.028417587 -15.51162243 6.29875231 42.76209259
		 -23.16201782 6.29502535 66.008026123 -37.084140778 6.29129887 77.76844788 2.5143888 5.90559006 28.90677643
		 -15.61135101 5.98124123 42.68639374 -23.23770142 6.056892395 65.95370483 -37.12141037 6.13254356 77.72171021
		 2.27116156 5.73027897 28.60684776 -15.88062859 5.84099245 42.50702667 -23.44155884 5.95170546 65.82563782
		 -37.22496796 6.062418938 77.60710907 2.013979435 5.87923956 28.30432892 -16.16171455 5.96016073 42.3290596
		 -23.65417099 6.041081905 65.69885254 -37.33415985 6.12200308 77.49176788 1.89349568 6.26521301 28.17642784
		 -16.28995514 6.2689395 42.25674438 -23.75099564 6.27266598 65.64761353 -37.3850174 6.27639294 77.44325256;
	setAttr -s 56 ".ed[0:55]"  0 1 1 1 5 1 5 4 1 4 0 0 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 0 7 6 1 5 9 1 9 8 1 8 4 0 6 10 1 10 9 1 7 11 0 11 10 1 9 13 1 13 12 1 12 8 0
		 10 14 1 14 13 1 11 15 0 15 14 1 13 17 1 17 16 1 16 12 0 14 18 1 18 17 1 15 19 0 19 18 1
		 17 21 1 21 20 1 20 16 0 18 22 1 22 21 1 19 23 0 23 22 1 21 25 1 25 24 1 24 20 0 22 26 1
		 26 25 1 23 27 0 27 26 1 25 29 1 29 28 1 28 24 0 26 30 1 30 29 1 27 31 0 31 30 1 29 1 1
		 0 28 0 30 2 1 31 3 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 5 4
		f 4 4 5 6 -2
		mu 0 4 1 2 6 5
		f 4 7 8 9 -6
		mu 0 4 2 3 7 6
		f 4 -3 10 11 12
		mu 0 4 4 5 9 8
		f 4 -7 13 14 -11
		mu 0 4 5 6 10 9
		f 4 -10 15 16 -14
		mu 0 4 6 7 11 10
		f 4 -12 17 18 19
		mu 0 4 8 9 13 12
		f 4 -15 20 21 -18
		mu 0 4 9 10 14 13
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 12 13 17 16
		f 4 -22 27 28 -25
		mu 0 4 13 14 18 17
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 16 17 21 20
		f 4 -29 34 35 -32
		mu 0 4 17 18 22 21
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22
		f 4 -33 38 39 40
		mu 0 4 20 21 25 24
		f 4 -36 41 42 -39
		mu 0 4 21 22 26 25
		f 4 -38 43 44 -42
		mu 0 4 22 23 27 26
		f 4 -40 45 46 47
		mu 0 4 24 25 29 28
		f 4 -43 48 49 -46
		mu 0 4 25 26 30 29
		f 4 -45 50 51 -49
		mu 0 4 26 27 31 30
		f 4 -47 52 -1 53
		mu 0 4 28 29 1 0
		f 4 -50 54 -5 -53
		mu 0 4 29 30 2 1
		f 4 -52 55 -8 -55
		mu 0 4 30 31 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "_lod1_PricklyGooseberryBush_group" -p "PricklyGooseberry_group";
createNode transform -n "PricklyGooseberryBush_LOD1_mesh" -p "_lod1_PricklyGooseberryBush_group";
createNode mesh -n "PricklyGooseberryBush_LOD1_meshShape" -p "PricklyGooseberryBush_LOD1_mesh";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:66]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 159 ".uvst[0].uvsp[0:158]" -type "float2" 0.031913817 0.25554633
		 0.34402877 0.25554633 0.65614372 0.25554633 0.96825868 0.13716666 0.34402886 0.13716668
		 0.65614367 0.13716668 0.031913817 0.13716668 0.031913817 0.018787012 0.34402865 0.018787012
		 0.65614349 0.018787012 0.7188772 0.70343304 0.44668266 0.41546077 0.7659505 0.2669678
		 1.13233864 0.39730462 0.12313038 0.62673461 0.12313038 0.28323868 0.47941673 0.28323868
		 0.47941673 0.62673461 0.0076776296 0.99411702 0.0076776296 0.65062112 0.43130925
		 0.65062112 0.43130925 0.99411702 0.49792829 1 0.52342135 0.63689411 0.89802778 0.66728967
		 0.93528694 1 0.031913817 0.13716668 0.031913817 0.25554633 0.96825868 0.13716666
		 0.031913817 0.018787012 0.7188772 0.70343304 0.44668266 0.41546077 0.7659505 0.2669678
		 1.13233864 0.39730462 0.12313038 0.62673461 0.12313038 0.28323868 0.47941673 0.28323868
		 0.47941673 0.62673461 0.0076776296 0.99411702 0.0076776296 0.65062112 0.43130925
		 0.65062112 0.43130925 0.99411702 0.49792829 1 0.52342135 0.63689411 0.89802778 0.66728967
		 0.93528694 1 0.031913817 0.13716668 0.031913817 0.25554633 0.96825868 0.13716666
		 0.031913817 0.018787012 0.7188772 0.70343304 0.44668266 0.41546077 0.7659505 0.2669678
		 1.13233864 0.39730462 0.12313038 0.62673461 0.12313038 0.28323868 0.47941673 0.28323868
		 0.47941673 0.62673461 0.0076776296 0.99411702 0.0076776296 0.65062112 0.43130925
		 0.65062112 0.43130925 0.99411702 0.49792829 1 0.52342135 0.63689411 0.89802778 0.66728967
		 0.93528694 1 0.031913817 0.13716668 0.031913817 0.25554633 0.96825868 0.13716666
		 0.031913817 0.018787012 0.7188772 0.70343304 0.44668266 0.41546077 0.7659505 0.2669678
		 1.13233864 0.39730462 0.12313038 0.62673461 0.12313038 0.28323868 0.47941673 0.28323868
		 0.47941673 0.62673461 0.0076776296 0.99411702 0.0076776296 0.65062112 0.43130925
		 0.65062112 0.43130925 0.99411702 0.49792829 1 0.52342135 0.63689411 0.89802778 0.66728967
		 0.93528694 1 0.031913817 0.13716668 0.031913817 0.25554633 0.96825868 0.13716666
		 0.031913817 0.018787012 0.7188772 0.70343304 0.44668266 0.41546077 0.7659505 0.2669678
		 1.13233864 0.39730462 0.12313038 0.62673461 0.12313038 0.28323868 0.47941673 0.28323868
		 0.47941673 0.62673461 0.0076776296 0.99411702 0.0076776296 0.65062112 0.43130925
		 0.65062112 0.43130925 0.99411702 0.49792829 1 0.52342135 0.63689411 0.89802778 0.66728967
		 0.93528694 1 0.031913817 0.13716668 0.031913817 0.25554633 0.96825868 0.13716666
		 0.031913817 0.018787012 0.7188772 0.70343304 0.44668266 0.41546077 0.7659505 0.2669678
		 1.13233864 0.39730462 0.12313038 0.62673461 0.12313038 0.28323868 0.47941673 0.28323868
		 0.47941673 0.62673461 0.0076776296 0.99411702 0.0076776296 0.65062112 0.43130925
		 0.65062112 0.43130925 0.99411702 0.49792829 1 0.52342135 0.63689411 0.89802778 0.66728967
		 0.93528694 1 0.031913817 0.13716668 0.031913817 0.25554633 0.96825868 0.13716666
		 0.031913817 0.018787012 0.7188772 0.70343304 0.44668266 0.41546077 0.7659505 0.2669678
		 1.13233864 0.39730462 0.12313038 0.62673461 0.12313038 0.28323868 0.47941673 0.28323868
		 0.47941673 0.62673461 0.0076776296 0.99411702 0.0076776296 0.65062112 0.43130925
		 0.65062112 0.43130925 0.99411702 0.49792829 1 0.52342135 0.63689411 0.89802778 0.66728967
		 0.93528694 1 0.031913817 0.18790081 0.031913817 0.25554633 0.34402877 0.25554633
		 0.34402889 0.18790081 0.65614372 0.25554633 0.65614372 0.18790081 0.96825868 0.13716666
		 0.031913817 0.086432561 0.34402883 0.086432561 0.65614361 0.086432561 0.34402865
		 0.018787012 0.031913817 0.018787012 0.65614349 0.018787012;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 243 ".clst[0].clsp";
	setAttr ".clst[0].clsp[0:124]"  0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0
		 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0
		 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0
		 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0
		 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 1
		 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1;
	setAttr ".clst[0].clsp[125:242]" 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0
		 0 0 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0
		 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0
		 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 1
		 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0
		 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0
		 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0
		 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 159 ".vt[0:158]"  1.98028839 6.15925837 28.29807091 -16.1902256 6.083607674 42.33244324
		 -23.67531204 6.0079565048 65.70194244 -37.23458481 5.781003 77.60584259 -15.76319695 5.786273 42.59875488
		 -23.35238838 5.78495598 65.8915329 2.37244081 5.78759098 28.7530365 1.89349568 5.76237011 28.17642784
		 -16.28995514 5.76609659 42.25674438 -23.75099564 5.76982307 65.64761353 -15.286973 25.049991608 39.96379471
		 -26.97553253 4.65640306 42.24440384 1.84185696 5.95374918 49.19454956 -20.75883102 -24.84667397 51.38855362
		 -32.22776031 -7.26350975 60.75282288 -10.623559 -5.46570206 64.68334961 -32.22776031 14.56178665 50.77001572
		 -10.623559 16.35959435 54.70054245 -46.41978073 17.66531181 73.12679291 -46.050022125 -3.71160555 78.26767731
		 -28.35991669 19.11273193 77.84651947 -27.99015808 -2.26418543 82.98739624 -32.78268051 -4.70213127 71.3740921
		 -12.23668671 -1.31418896 68.77494812 -36.031349182 16.72436142 67.56890106 -12.22520065 18.35455894 64.99797821
		 1.95210838 5.92267942 33.19009018 -10.73771095 -45.68138123 91.23848724 2.16526413 6.42919064 33.8803978
		 2.47948074 5.87274885 33.1952858 -22.38205338 -18.61558342 39.52898788 2.50528049 -30.6689949 49.80596924
		 -5.671 4.51488113 58.11757278 33.078224182 -19.75472069 72.058914185 10.35015392 -36.79079437 76.26873016
		 3.72756577 -10.44126987 80.66269684 -11.69357586 -38.96219254 56.065742493 -18.31616402 -12.61266613 60.45970917
		 -21.82089615 -58.32233429 81.20294189 1.4681406 -55.45654297 95.48336029 -27.83257294 -36.37522125 86.60266876
		 -4.54353666 -33.50942993 100.88308716 3.39041901 -38.44665909 87.91223907 -2.50106049 -13.21834946 83.91381073
		 -20.059743881 -44.97277069 75.1473465 -24.3378582 -15.47617722 71.91462708 2.32394981 5.63576221 28.14336014
		 13.66800308 55.075424194 81.10819244 2.014659882 5.22003794 28.78174591 1.84195709 5.73094845 28.095214844
		 26.55607414 26.41951942 35.40859604 3.82371616 40.37940598 42.047149658 7.190907 7.44931793 51.90849686
		 -27.48030281 34.17971039 60.12240601 -5.2592659 48.061164856 65.55374146 -2.10821915 23.26426697 71.29209137
		 17.14349747 47.052490234 48.89318848 20.29454422 22.25559616 54.63153839 26.038578033 65.2686615 72.3936615
		 2.96648216 65.46092224 83.47660065 28.95968246 44.6537323 78.8323288 5.88758659 44.84598541 89.91526794
		 0.24532032 49.51879883 76.94409943 3.60483932 25.4189682 74.79660797 23.68058395 52.77487564 67.13717651
		 25.068374634 24.90893364 65.70937347 0.85480309 6.83563185 65.40405273 10.4161272 -15.76255798 123.43084717
		 1.49763489 7.10182333 65.52581024 1.10045624 6.54952192 65.2100296 -15.26502991 3.45985365 88.2045517
		 -1.18925071 -15.50125122 88.47100067 10.39298248 11.35001755 83.44200897 29.45267487 -21.80636978 84.72770691
		 15.29743004 -21.34487534 102.83321381 22.71960831 -1.12116194 98.21418762 -7.29971313 -13.4707756 100.99809265
		 0.12246513 6.75293779 96.37906647 -4.49413681 -19.12373734 126.90259552 15.67219734 -27.56864166 124.54876709
		 2.40236235 -1.91913795 124.26259613 22.56869507 -10.36404324 121.9087677 17.77448273 -18.22754669 113.022743225
		 20.58657837 0.35078812 103.67880249 -2.78304386 -11.92259789 117.68789673 2.57731915 8.63771152 106.52813721
		 1.14178848 7.082023621 59.75242615 11.77051163 32.47109222 116.4236908 1.82032204 7.26099586 59.67195892
		 1.3346405 6.7141304 59.83794403 -13.64214134 23.53417969 77.12680817 -2.12371993 8.95678902 91.70582581
		 12.41772938 21.86565399 69.29295349 27.12221146 -2.26207447 95.098022461 14.44421577 13.11443806 106.55335999
		 24.05093956 22.41584206 89.042869568 -7.032550812 20.24203873 98.55674744 2.5741725 29.54344177 81.046257019
		 -3.16743946 34.77774429 120.57139587 15.53835869 24.56972122 125.99610138 5.67148876 43.54302216 106.58666992
		 24.377285 33.33499908 112.011375427 18.0065860748 22.25256348 111.39940643 22.51138687 27.66124725 91.63012695
		 -1.19823837 32.74067307 109.096748352 5.95407486 37.82206345 86.75790405 1.93602562 7.99219084 51.27323151
		 -16.36454391 -4.25108719 110.30201721 2.43200588 7.52188301 51.45135498 1.77505207 7.63628531 51.10810089
		 -8.068502426 23.51700783 72.48635864 -19.91149902 3.17449784 74.39624786 9.43944073 2.75965285 70.062683105
		 -13.48679161 -27.66245842 73.68948364 -19.082691193 -12.85239315 90.35506439 2.52788639 -12.054209709 86.13978577
		 -20.75452995 10.73481083 86.25034332 0.85604763 11.53299427 82.035072327 -25.43128014 8.36216831 112.39167786
		 -25.14890671 -13.62364292 112.10470581 -6.84611797 8.63019466 110.14458466 -6.5637455 -13.35561657 109.85761261
		 -15.47541428 -12.92463589 100.68280029 2.90905571 -9.010408401 91.35211182 -17.9305172 8.78757858 103.26738739
		 3.32390785 10.98901176 92.34021759 2.83878589 7.4099741 41.2365799 43.6228714 2.55990505 92.87637329
		 2.48113847 7.84846497 41.71306229 2.98200321 7.81062794 41.10918427 18.24907684 -14.52093124 53.45403671
		 33.11688232 5.099676132 55.84250641 3.010055542 7.60493469 63.12136078 30.60395432 36.57645416 65.41912842
		 40.16618347 16.77898598 75.22628021 17.484972 17.80000687 79.34270477 37.24817657 -5.89151764 64.77133942
		 14.56696129 -4.87049675 68.88775635 51.57485962 -11.012681961 88.18547821 54.048843384 11.24151421 93.56950378
		 32.62208939 -10.10157776 93.1284256 35.096073151 12.15261841 98.51245117 40.40014267 14.044223785 86.34989166
		 18.60551834 13.27204895 83.62781525 40.90992737 -8.64637566 82.36473083 15.96390438 -7.15685606 79.67221069
		 -0.90373188 -0.39757928 -0.14125788 2.067887783 7.52942944 40.056552887 -0.077949524 6.21888351 81.22909546
		 -2.60463905 1.30598068 113.23612213 -0.41549399 0.89668655 0.13444516 2.49349213 8.62493801 39.93299484
		 0.23800564 7.031349182 81.1138382 3.33354282 7.67102814 39.98672104 0.86930466 6.3196106 81.16493225
		 0.65961421 -0.24955155 0.0034088432 -0.34523639 -0.91518414 -0.19495183 2.50616884 7.099462509 40.078117371
		 0.25125122 5.89786148 81.24969482;
	setAttr -s 190 ".ed";
	setAttr ".ed[0:165]"  0 1 1 6 0 0 1 2 1 2 3 1 1 4 1 4 6 1 2 5 1 5 4 1 3 5 1
		 4 8 1 8 7 1 7 6 0 5 9 1 9 8 1 3 9 1 8 1 1 0 7 0 9 2 1 10 11 0 10 12 0 11 13 0 12 13 0
		 14 15 0 14 16 0 15 17 0 16 17 0 18 19 0 18 20 0 19 21 0 20 21 0 22 23 0 22 24 0 23 25 0
		 24 25 0 26 27 1 28 26 0 27 28 1 29 28 0 27 29 1 26 29 0 30 31 0 30 32 0 31 33 0 32 33 0
		 34 35 0 34 36 0 35 37 0 36 37 0 38 39 0 38 40 0 39 41 0 40 41 0 42 43 0 42 44 0 43 45 0
		 44 45 0 46 47 1 48 46 0 47 48 1 49 48 0 47 49 1 46 49 0 50 51 0 50 52 0 51 53 0 52 53 0
		 54 55 0 54 56 0 55 57 0 56 57 0 58 59 0 58 60 0 59 61 0 60 61 0 62 63 0 62 64 0 63 65 0
		 64 65 0 66 67 1 68 66 0 67 68 1 69 68 0 67 69 1 66 69 0 70 71 0 70 72 0 71 73 0 72 73 0
		 74 75 0 74 76 0 75 77 0 76 77 0 78 79 0 78 80 0 79 81 0 80 81 0 82 83 0 82 84 0 83 85 0
		 84 85 0 86 87 1 88 86 0 87 88 1 89 88 0 87 89 1 86 89 0 90 91 0 90 92 0 91 93 0 92 93 0
		 94 95 0 94 96 0 95 97 0 96 97 0 98 99 0 98 100 0 99 101 0 100 101 0 102 103 0 102 104 0
		 103 105 0 104 105 0 106 107 1 108 106 0 107 108 1 109 108 0 107 109 1 106 109 0 110 111 0
		 110 112 0 111 113 0 112 113 0 114 115 0 114 116 0 115 117 0 116 117 0 118 119 0 118 120 0
		 119 121 0 120 121 0 122 123 0 122 124 0 123 125 0 124 125 0 126 127 1 128 126 0 127 128 1
		 129 128 0 127 129 1 126 129 0 130 131 0 130 132 0 131 133 0 132 133 0 134 135 0 134 136 0
		 135 137 0 136 137 0 138 139 0 138 140 0 139 141 0 140 141 0 142 143 0 142 144 0 143 145 0
		 144 145 0;
	setAttr ".ed[166:189]" 146 147 1 150 146 0 147 148 1 148 149 1 147 151 1 151 150 1
		 148 152 1 152 151 1 149 152 1 155 150 0 151 153 1 153 155 1 152 154 1 154 153 1 149 154 1
		 153 157 1 157 156 1 156 155 0 154 158 1 158 157 1 149 158 1 157 147 1 146 156 0 158 148 1;
	setAttr -s 67 -ch 243 ".fc[0:66]" -type "polyFaces" 
		f 4 1 0 4 5
		mu 0 4 6 0 1 4
		mc 0 4 13 0 3 15
		f 4 2 6 7 -5
		mu 0 4 1 2 5 4
		mc 0 4 4 7 17 14
		f 3 3 8 -7
		mu 0 3 2 3 5
		mc 0 3 8 11 16
		f 4 -6 9 10 11
		mu 0 4 6 4 8 7
		mc 0 4 18 20 27 24
		f 4 -8 12 13 -10
		mu 0 4 4 5 9 8
		mc 0 4 19 22 31 26
		f 3 -9 14 -13
		mu 0 3 5 3 9
		mc 0 3 21 12 30
		f 4 -11 15 -1 16
		mu 0 4 7 8 1 0
		mc 0 4 23 28 2 1
		f 4 -14 17 -3 -16
		mu 0 4 8 9 2 1
		mc 0 4 25 32 6 5
		f 3 -15 -4 -18
		mu 0 3 9 3 2
		mc 0 3 29 10 9
		f 4 -20 18 20 -22
		mu 0 4 10 11 12 13
		mc 0 4 36 34 35 33
		f 4 -24 22 24 -26
		mu 0 4 14 15 16 17
		mc 0 4 40 38 39 37
		f 4 -28 26 28 -30
		mu 0 4 18 19 20 21
		mc 0 4 44 42 43 41
		f 4 -32 30 32 -34
		mu 0 4 22 23 24 25
		mc 0 4 48 46 47 45
		f 3 35 34 36
		mu 0 3 26 27 28
		mc 0 3 54 49 52
		f 3 37 -37 38
		mu 0 3 29 26 28
		mc 0 3 57 55 53
		f 3 -35 39 -39
		mu 0 3 28 27 29
		mc 0 3 51 50 56
		f 4 -42 40 42 -44
		mu 0 4 30 31 32 33
		mc 0 4 61 59 60 58
		f 4 -46 44 46 -48
		mu 0 4 34 35 36 37
		mc 0 4 65 63 64 62
		f 4 -50 48 50 -52
		mu 0 4 38 39 40 41
		mc 0 4 69 67 68 66
		f 4 -54 52 54 -56
		mu 0 4 42 43 44 45
		mc 0 4 73 71 72 70
		f 3 57 56 58
		mu 0 3 46 47 48
		mc 0 3 79 74 77
		f 3 59 -59 60
		mu 0 3 49 46 48
		mc 0 3 82 80 78
		f 3 -57 61 -61
		mu 0 3 48 47 49
		mc 0 3 76 75 81
		f 4 -64 62 64 -66
		mu 0 4 50 51 52 53
		mc 0 4 86 84 85 83
		f 4 -68 66 68 -70
		mu 0 4 54 55 56 57
		mc 0 4 90 88 89 87
		f 4 -72 70 72 -74
		mu 0 4 58 59 60 61
		mc 0 4 94 92 93 91
		f 4 -76 74 76 -78
		mu 0 4 62 63 64 65
		mc 0 4 98 96 97 95
		f 3 79 78 80
		mu 0 3 66 67 68
		mc 0 3 104 99 102
		f 3 81 -81 82
		mu 0 3 69 66 68
		mc 0 3 107 105 103
		f 3 -79 83 -83
		mu 0 3 68 67 69
		mc 0 3 101 100 106
		f 4 -86 84 86 -88
		mu 0 4 70 71 72 73
		mc 0 4 111 109 110 108
		f 4 -90 88 90 -92
		mu 0 4 74 75 76 77
		mc 0 4 115 113 114 112
		f 4 -94 92 94 -96
		mu 0 4 78 79 80 81
		mc 0 4 119 117 118 116
		f 4 -98 96 98 -100
		mu 0 4 82 83 84 85
		mc 0 4 123 121 122 120
		f 3 101 100 102
		mu 0 3 86 87 88
		mc 0 3 129 124 127
		f 3 103 -103 104
		mu 0 3 89 86 88
		mc 0 3 132 130 128
		f 3 -101 105 -105
		mu 0 3 88 87 89
		mc 0 3 126 125 131
		f 4 -108 106 108 -110
		mu 0 4 90 91 92 93
		mc 0 4 136 134 135 133
		f 4 -112 110 112 -114
		mu 0 4 94 95 96 97
		mc 0 4 140 138 139 137
		f 4 -116 114 116 -118
		mu 0 4 98 99 100 101
		mc 0 4 144 142 143 141
		f 4 -120 118 120 -122
		mu 0 4 102 103 104 105
		mc 0 4 148 146 147 145
		f 3 123 122 124
		mu 0 3 106 107 108
		mc 0 3 154 149 152
		f 3 125 -125 126
		mu 0 3 109 106 108
		mc 0 3 157 155 153
		f 3 -123 127 -127
		mu 0 3 108 107 109
		mc 0 3 151 150 156
		f 4 -130 128 130 -132
		mu 0 4 110 111 112 113
		mc 0 4 161 159 160 158
		f 4 -134 132 134 -136
		mu 0 4 114 115 116 117
		mc 0 4 165 163 164 162
		f 4 -138 136 138 -140
		mu 0 4 118 119 120 121
		mc 0 4 169 167 168 166
		f 4 -142 140 142 -144
		mu 0 4 122 123 124 125
		mc 0 4 173 171 172 170
		f 3 145 144 146
		mu 0 3 126 127 128
		mc 0 3 179 174 177
		f 3 147 -147 148
		mu 0 3 129 126 128
		mc 0 3 182 180 178
		f 3 -145 149 -149
		mu 0 3 128 127 129
		mc 0 3 176 175 181
		f 4 -152 150 152 -154
		mu 0 4 130 131 132 133
		mc 0 4 186 184 185 183
		f 4 -156 154 156 -158
		mu 0 4 134 135 136 137
		mc 0 4 190 188 189 187
		f 4 -160 158 160 -162
		mu 0 4 138 139 140 141
		mc 0 4 194 192 193 191
		f 4 -164 162 164 -166
		mu 0 4 142 143 144 145
		mc 0 4 198 196 197 195
		f 4 167 166 170 171
		mu 0 4 146 147 148 149
		mc 0 4 214 199 202 217
		f 4 168 172 173 -171
		mu 0 4 148 150 151 149
		mc 0 4 203 206 221 216
		f 3 169 174 -173
		mu 0 3 150 152 151
		mc 0 3 207 210 220
		f 4 175 -172 176 177
		mu 0 4 153 146 149 154
		mc 0 4 223 213 218 225
		f 4 -174 178 179 -177
		mu 0 4 149 151 155 154
		mc 0 4 215 222 227 224
		f 3 -175 180 -179
		mu 0 3 151 152 155
		mc 0 3 219 211 226
		f 4 -178 181 182 183
		mu 0 4 153 154 156 157
		mc 0 4 228 230 237 234
		f 4 -180 184 185 -182
		mu 0 4 154 155 158 156
		mc 0 4 229 232 241 236
		f 3 -181 186 -185
		mu 0 3 155 152 158
		mc 0 3 231 212 240
		f 4 -183 187 -167 188
		mu 0 4 157 156 148 147
		mc 0 4 233 238 201 200
		f 4 -186 189 -169 -188
		mu 0 4 156 158 150 148
		mc 0 4 235 242 205 204
		f 3 -187 -170 -190
		mu 0 3 158 152 150
		mc 0 3 239 209 208;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "branch1_1" -p "PricklyGooseberryBush_helper";
	setAttr ".t" -type "double3" 3.8885988823400552e-007 7.6167876394972467e-008 -6.7428785471834729e-008 ;
createNode locator -n "branch1_Shape1" -p "branch1_1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch1_2" -p "PricklyGooseberryBush_helper";
	setAttr ".t" -type "double3" 1.3004020123974915 7.3435094862773811 63.479639549913024 ;
createNode locator -n "branch1_Shape2" -p "branch1_2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch1_3" -p "PricklyGooseberryBush_helper";
	setAttr ".t" -type "double3" -2.6046397109542099 1.3059858100965371 113.23612344115112 ;
createNode locator -n "branch1_Shape3" -p "branch1_3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch2_1" -p "PricklyGooseberryBush_helper";
	setAttr ".t" -type "double3" 2.247338593006134 5.7810027979249661 28.602422714233398 ;
createNode locator -n "branch2_Shape1" -p "branch2_1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch2_2" -p "PricklyGooseberryBush_helper";
	setAttr ".t" -type "double3" -19.330628820278452 5.7955585784868342 53.291287116474507 ;
createNode locator -n "branch2_Shape2" -p "branch2_2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch2_3" -p "PricklyGooseberryBush_helper";
	setAttr ".t" -type "double3" -37.234584808349609 5.7810027979249661 77.605842590332031 ;
createNode locator -n "branch2_Shape3" -p "branch2_3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch3_1" -p "PricklyGooseberryBush_helper";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -35.497969667549469 6.2324403247914102 76.129380241081165 ;
createNode locator -n "branch3_Shape1" -p "branch3_1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch3_2" -p "PricklyGooseberryBush_helper";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -39.908703994280522 10.603813042005063 73.126788453124263 ;
createNode locator -n "branch3_Shape2" -p "branch3_2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch3_3" -p "PricklyGooseberryBush_helper";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -46.419782350392119 17.665311516107558 73.126788453124263 ;
createNode locator -n "branch3_Shape3" -p "branch3_3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch4_3" -p "PricklyGooseberryBush_helper";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -32.782681274643444 -4.702131419258361 71.374091906637204 ;
createNode locator -n "branch4_Shape3" -p "branch4_3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch4_2" -p "PricklyGooseberryBush_helper";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -25.477276495849313 3.3979078092341908 68.084738147258221 ;
createNode locator -n "branch4_Shape2" -p "branch4_2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch5_2" -p "PricklyGooseberryBush_helper";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -16.928338996242164 5.674527065894206 64.744226574847488 ;
createNode locator -n "branch5_Shape2" -p "branch5_2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch5_1" -p "PricklyGooseberryBush_helper";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -22.458434617159575 6.6861125783453312 61.434697772241286 ;
createNode locator -n "branch5_Shape1" -p "branch5_1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch4_1" -p "PricklyGooseberryBush_helper";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -23.329616862599888 5.2958939251872232 65.915310504806456 ;
createNode locator -n "branch4_Shape1" -p "branch4_1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch5_3" -p "PricklyGooseberryBush_helper";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.4015576792052791 1.8999180565876372 68.942832427464595 ;
createNode locator -n "branch5_Shape3" -p "branch5_3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch6_1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -15.058846686109073 5.1650220263360147 42.37881706123229 ;
createNode locator -n "branch6_Shape1" -p "branch6_1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch6_2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.206925749072937 -5.4170461360297431 45.970970741381429 ;
createNode locator -n "branch6_Shape2" -p "branch6_2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode transform -n "branch6_3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -20.758832554673106 -24.846671680289671 51.388556388118275 ;
createNode locator -n "branch6_Shape3" -p "branch6_3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 10 10 10 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 2;
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode displayLayer -n "BendingProxy_Layer";
	setAttr ".dt" 1;
	setAttr ".do" 1;
createNode phong -n "PricklyGooseberry_Mat";
	addAttr -ci true -sn "physicalise" -ln "physicalise" -min 0 -max 4 -en "None:Default:ProxyNoDraw:NoCollide:Obstruct" 
		-at "enum";
	setAttr ".dc" 1;
	setAttr ".rfl" 0;
	setAttr ".cp" 57.420688629150391;
createNode shadingEngine -n "phong1SG";
	setAttr ".ihi" 0;
	setAttr -s 44 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "PrickleyGooseberry_Diffuse";
	setAttr ".ftn" -type "string" "C:/depot/HEO/HEOGame/Objects/natural/bushes/PricklyGooseberryBush/textures/PricklyGooseburyLeaf_diff.tif";
createNode place2dTexture -n "place2dTexture1";
createNode file -n "PrickleyGooseberry_Specular";
	setAttr ".ftn" -type "string" "C:/depot/HEO/HEOGame/Objects/natural/bushes/PricklyGooseberryBush/textures/PricklyGooseburyLeaf_spec.tif";
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
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
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
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n"
		+ "                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 22 100 -ps 2 78 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1500 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1.25 -max 30 -ast 1.25 -aet 60 ";
	setAttr ".st" 6;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 8 "vtx[3]" "vtx[7]" "vtx[11]" "vtx[15]" "vtx[19]" "vtx[23]" "vtx[27]" "vtx[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.50284310356429174 0 1;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[3]" -type "float3" 0.11317062 -0.15130234 0.11585999 ;
	setAttr ".tk[7]" -type "float3" 0.0096092224 -0.22142696 0.0012588501 ;
	setAttr ".tk[11]" -type "float3" -0.099582672 -0.16184235 -0.11408234 ;
	setAttr ".tk[15]" -type "float3" -0.15044022 -0.0074529648 -0.16259766 ;
	setAttr ".tk[19]" -type "float3" -0.11317062 0.15130234 -0.11585999 ;
	setAttr ".tk[23]" -type "float3" -0.0096130371 0.22142696 -0.0012588501 ;
	setAttr ".tk[27]" -type "float3" 0.099578857 0.16184282 0.11408234 ;
	setAttr ".tk[31]" -type "float3" 0.1504364 0.0074529648 0.16259766 ;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 8 "vtx[3]" "vtx[7]" "vtx[11]" "vtx[15]" "vtx[19]" "vtx[23]" "vtx[27]" "vtx[31]";
	setAttr ".ix" -type "matrix" -0.13947599549577444 1.2412145342347434 0.018779496516596317 0
		 -1.1826103162122219 -0.12711552215935595 -0.38169913127895361 0 -0.37735795933492161 -0.060397573089557149 1.1892740838410631 0
		 20.785481506462688 6.0207078938018537 2.0416578045394687 1;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 8 "vtx[3]" "vtx[7]" "vtx[11]" "vtx[15]" "vtx[19]" "vtx[23]" "vtx[27]" "vtx[31]";
	setAttr ".ix" -type "matrix" 0.0067249850770814213 -1.1613138753072412 0.079351674955071713 0
		 1.1381298359367349 -0.010083648457110472 -0.24402997215096189 0 0.2441456160776164 0.078995150333775188 1.1354050004722589 0
		 -12.180553105865178 5.7672664344912832 -2.5177945233175656 1;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 8 "vtx[3]" "vtx[7]" "vtx[11]" "vtx[15]" "vtx[19]" "vtx[23]" "vtx[27]" "vtx[31]";
	setAttr ".ix" -type "matrix" 0.33060658330074177 0.85629907102162162 -0.39680119461226121 0
		 -0.82931542094805955 0.46427560127730277 0.31094066738904019 0 0.45048331784423784 0.22627431808781737 0.863634594789915 0
		 -7.0227192762140183 -4.3562647004484667 39.679127420007411 1;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 8 "vtx[3]" "vtx[7]" "vtx[11]" "vtx[15]" "vtx[19]" "vtx[23]" "vtx[27]" "vtx[31]";
	setAttr ".ix" -type "matrix" 0.40884771890969873 0.24594708482254993 -0.87883648889291421 0
		 -0.73930236600152688 0.65385572813292181 -0.16094936598915507 0 0.53504724498578671 0.71552967671163448 0.44915668466367453 0
		 -9.8833443145412652 -18.00918516419344 49.854769558301314 1;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 8 "vtx[3]" "vtx[7]" "vtx[11]" "vtx[15]" "vtx[19]" "vtx[23]" "vtx[27]" "vtx[31]";
	setAttr ".ix" -type "matrix" 0.92612805868222481 -6.9388939039072284e-018 -0.37720925084294199 0
		 0.090853759802697553 0.97056043558493166 0.22306509186087695 0 0.36610437480479152 -0.24085771915632623 0.89886325204204731 0
		 -10.863299714802654 8.3420279832854014 25.098038581222621 1;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 8 "vtx[3]" "vtx[7]" "vtx[11]" "vtx[15]" "vtx[19]" "vtx[23]" "vtx[27]" "vtx[31]";
	setAttr ".ix" -type "matrix" -1.0387260799337263 0.13369856319317827 0 0 -0.13369856319317827 -1.0387260799337263 0 0
		 0 0 1.0472951708732388 0 5.7864766939321388 14.065310789966532 11.600145067971187 1;
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 8 "vtx[3]" "vtx[7]" "vtx[11]" "vtx[15]" "vtx[19]" "vtx[23]" "vtx[27]" "vtx[31]";
	setAttr ".ix" -type "matrix" 0.57205283217540603 1.2778849152953244 -1.1312672984139331 0
		 -1.6572556202850224 0.70097714071474804 -0.046204515245614711 0 0.40774914620855146 1.0562391734148278 1.3993210647703975 0
		 0 0 0 1;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[3]" -type "float3" 0.11317062 -0.1513024 0.11585999 ;
	setAttr ".tk[7]" -type "float3" 0.0096092224 -0.22142702 0.0012588501 ;
	setAttr ".tk[11]" -type "float3" -0.099582672 -0.16184241 -0.11408234 ;
	setAttr ".tk[15]" -type "float3" -0.15044022 -0.0074530244 -0.16259766 ;
	setAttr ".tk[19]" -type "float3" -0.11317062 0.15130228 -0.11585999 ;
	setAttr ".tk[23]" -type "float3" -0.0096130371 0.2214269 -0.0012588501 ;
	setAttr ".tk[27]" -type "float3" 0.099578857 0.16184276 0.11408234 ;
	setAttr ".tk[31]" -type "float3" 0.1504364 0.0074529052 0.16259766 ;
createNode partition -n "cryMaterials";
createNode objectSet -n "PricklyGooseberryBush_Materials";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dnsm";
createNode phong -n "BendingProxy_Mat";
	addAttr -ci true -sn "physicalise" -ln "physicalise" -min 0 -max 4 -en "None:Default:ProxyNoDraw:NoCollide:Obstruct" 
		-at "enum";
	setAttr ".c" -type "float3" 0.72549021 0.24183005 0.24183005 ;
	setAttr ".it" -type "float3" 0.45517662 0.45517662 0.45517662 ;
	setAttr ".physicalise" 3;
createNode shadingEngine -n "phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode polyColorPerVertex -n "polyColorPerVertex1";
	setAttr ".uopa" yes;
	setAttr -s 25 ".vclr";
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode polyColorPerVertex -n "polyColorPerVertex2";
	setAttr ".uopa" yes;
	setAttr -s 25 ".vclr";
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode polyColorPerVertex -n "polyColorPerVertex3";
	setAttr ".uopa" yes;
	setAttr -s 25 ".vclr";
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode polyColorPerVertex -n "polyColorPerVertex4";
	setAttr ".uopa" yes;
	setAttr -s 25 ".vclr";
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode polyColorPerVertex -n "polyColorPerVertex5";
	setAttr ".uopa" yes;
	setAttr -s 25 ".vclr";
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode polyColorPerVertex -n "polyColorPerVertex6";
	setAttr ".uopa" yes;
	setAttr -s 25 ".vclr";
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode polyColorPerVertex -n "polyColorPerVertex7";
	setAttr ".uopa" yes;
	setAttr -s 25 ".vclr";
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode polyColorPerVertex -n "polyColorPerVertex8";
	setAttr ".uopa" yes;
	setAttr -s 25 ".vclr";
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode displayLayer -n "LOD1";
	setAttr ".v" no;
	setAttr ".do" 2;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1.25;
	setAttr ".unw" 1.25;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".st";
	setAttr -k on ".an";
	setAttr -k on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -av -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -av -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".s";
select -ne :defaultTextureList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultObjectSet;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".ex";
	setAttr -av -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
connectAttr "BendingProxy_Layer.di" "bending_proxy.do";
connectAttr "polyColorPerVertex1.out" "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|stem_001|stem_00Shape1.i"
		;
connectAttr "polyColorPerVertex2.out" "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_002|stem_001|stem_00Shape1.i"
		;
connectAttr "polyColorPerVertex3.out" "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_003|stem_001|stem_00Shape1.i"
		;
connectAttr "polyColorPerVertex4.out" "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_004|stem_001|stem_00Shape1.i"
		;
connectAttr "polyColorPerVertex5.out" "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_005|stem_001|stem_00Shape1.i"
		;
connectAttr "polyColorPerVertex6.out" "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_006|stem_001|stem_00Shape1.i"
		;
connectAttr "polyColorPerVertex7.out" "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_007|stem_001|stem_00Shape1.i"
		;
connectAttr "polyColorPerVertex8.out" "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Main_TrunkStem|stem_001|stem_00Shape1.i"
		;
connectAttr "LOD1.di" "_lod1_PricklyGooseberryBush_group.do";
connectAttr "groupId1.id" "PricklyGooseberryBush_LOD1_meshShape.iog.og[0].gid";
connectAttr "phong1SG.mwc" "PricklyGooseberryBush_LOD1_meshShape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "BendingProxy_Layer.id";
connectAttr "PrickleyGooseberry_Diffuse.oc" "PricklyGooseberry_Mat.c";
connectAttr "PrickleyGooseberry_Diffuse.ot" "PricklyGooseberry_Mat.it";
connectAttr "PrickleyGooseberry_Specular.oc" "PricklyGooseberry_Mat.sc";
connectAttr "PricklyGooseberry_Mat.oc" "phong1SG.ss";
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|LeafPattern_A_001|LeafPattern_A_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|LeafPattern_B_001|LeafPattern_B_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|LeafPattern_C_001|LeafPattern_C_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|LeafPattern_D_001|LeafPattern_D_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|LeafPattern_C_002|LeafPattern_C_002Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|stem_001|stem_00Shape1.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_002|stem_001|stem_00Shape1.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_002|LeafPattern_D_001|LeafPattern_D_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_002|LeafPattern_C_001|LeafPattern_C_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_002|LeafPattern_C_002|LeafPattern_C_002Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_002|LeafPattern_B_001|LeafPattern_B_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_002|LeafPattern_A_001|LeafPattern_A_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_003|stem_001|stem_00Shape1.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_003|LeafPattern_D_001|LeafPattern_D_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_003|LeafPattern_C_001|LeafPattern_C_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_003|LeafPattern_C_002|LeafPattern_C_002Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_003|LeafPattern_B_001|LeafPattern_B_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_003|LeafPattern_A_001|LeafPattern_A_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_004|stem_001|stem_00Shape1.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_004|LeafPattern_D_001|LeafPattern_D_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_004|LeafPattern_C_001|LeafPattern_C_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_004|LeafPattern_C_002|LeafPattern_C_002Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_004|LeafPattern_B_001|LeafPattern_B_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_004|LeafPattern_A_001|LeafPattern_A_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_005|stem_001|stem_00Shape1.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_005|LeafPattern_D_001|LeafPattern_D_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_005|LeafPattern_C_001|LeafPattern_C_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_005|LeafPattern_C_002|LeafPattern_C_002Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_005|LeafPattern_B_001|LeafPattern_B_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_005|LeafPattern_A_001|LeafPattern_A_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_006|stem_001|stem_00Shape1.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_006|LeafPattern_D_001|LeafPattern_D_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_006|LeafPattern_C_001|LeafPattern_C_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_006|LeafPattern_C_002|LeafPattern_C_002Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_006|LeafPattern_B_001|LeafPattern_B_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_006|LeafPattern_A_001|LeafPattern_A_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_007|stem_001|stem_00Shape1.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_007|LeafPattern_D_001|LeafPattern_D_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_007|LeafPattern_C_001|LeafPattern_C_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_007|LeafPattern_C_002|LeafPattern_C_002Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_007|LeafPattern_B_001|LeafPattern_B_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_007|LeafPattern_A_001|LeafPattern_A_001Shape.iog" "phong1SG.dsm"
		 -na;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Main_TrunkStem|stem_001|stem_00Shape1.iog" "phong1SG.dsm"
		 -na;
connectAttr "PricklyGooseberryBush_LOD1_meshShape.iog.og[0]" "phong1SG.dsm" -na;
connectAttr "groupId1.msg" "phong1SG.gn" -na;
connectAttr "phong1SG.msg" "materialInfo1.sg";
connectAttr "PricklyGooseberry_Mat.msg" "materialInfo1.m";
connectAttr "PrickleyGooseberry_Diffuse.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "PrickleyGooseberry_Diffuse.c";
connectAttr "place2dTexture1.tf" "PrickleyGooseberry_Diffuse.tf";
connectAttr "place2dTexture1.rf" "PrickleyGooseberry_Diffuse.rf";
connectAttr "place2dTexture1.mu" "PrickleyGooseberry_Diffuse.mu";
connectAttr "place2dTexture1.mv" "PrickleyGooseberry_Diffuse.mv";
connectAttr "place2dTexture1.s" "PrickleyGooseberry_Diffuse.s";
connectAttr "place2dTexture1.wu" "PrickleyGooseberry_Diffuse.wu";
connectAttr "place2dTexture1.wv" "PrickleyGooseberry_Diffuse.wv";
connectAttr "place2dTexture1.re" "PrickleyGooseberry_Diffuse.re";
connectAttr "place2dTexture1.of" "PrickleyGooseberry_Diffuse.of";
connectAttr "place2dTexture1.r" "PrickleyGooseberry_Diffuse.ro";
connectAttr "place2dTexture1.n" "PrickleyGooseberry_Diffuse.n";
connectAttr "place2dTexture1.vt1" "PrickleyGooseberry_Diffuse.vt1";
connectAttr "place2dTexture1.vt2" "PrickleyGooseberry_Diffuse.vt2";
connectAttr "place2dTexture1.vt3" "PrickleyGooseberry_Diffuse.vt3";
connectAttr "place2dTexture1.vc1" "PrickleyGooseberry_Diffuse.vc1";
connectAttr "place2dTexture1.o" "PrickleyGooseberry_Diffuse.uv";
connectAttr "place2dTexture1.ofs" "PrickleyGooseberry_Diffuse.fs";
connectAttr "place2dTexture1.c" "PrickleyGooseberry_Specular.c";
connectAttr "place2dTexture1.tf" "PrickleyGooseberry_Specular.tf";
connectAttr "place2dTexture1.rf" "PrickleyGooseberry_Specular.rf";
connectAttr "place2dTexture1.mu" "PrickleyGooseberry_Specular.mu";
connectAttr "place2dTexture1.mv" "PrickleyGooseberry_Specular.mv";
connectAttr "place2dTexture1.s" "PrickleyGooseberry_Specular.s";
connectAttr "place2dTexture1.wu" "PrickleyGooseberry_Specular.wu";
connectAttr "place2dTexture1.wv" "PrickleyGooseberry_Specular.wv";
connectAttr "place2dTexture1.re" "PrickleyGooseberry_Specular.re";
connectAttr "place2dTexture1.of" "PrickleyGooseberry_Specular.of";
connectAttr "place2dTexture1.r" "PrickleyGooseberry_Specular.ro";
connectAttr "place2dTexture1.n" "PrickleyGooseberry_Specular.n";
connectAttr "place2dTexture1.vt1" "PrickleyGooseberry_Specular.vt1";
connectAttr "place2dTexture1.vt2" "PrickleyGooseberry_Specular.vt2";
connectAttr "place2dTexture1.vt3" "PrickleyGooseberry_Specular.vt3";
connectAttr "place2dTexture1.vc1" "PrickleyGooseberry_Specular.vc1";
connectAttr "place2dTexture1.o" "PrickleyGooseberry_Specular.uv";
connectAttr "place2dTexture1.ofs" "PrickleyGooseberry_Specular.fs";
connectAttr "polyTweak1.out" "polyMergeVert1.ip";
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|stem_001|stem_00Shape1.wm" "polyMergeVert1.mp"
		;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_001|stem_001|stem_00Shape1Orig.w" "polyTweak1.ip"
		;
connectAttr "polySurfaceShape1.o" "polyMergeVert2.ip";
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_002|stem_001|stem_00Shape1.wm" "polyMergeVert2.mp"
		;
connectAttr "polySurfaceShape2.o" "polyMergeVert3.ip";
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_003|stem_001|stem_00Shape1.wm" "polyMergeVert3.mp"
		;
connectAttr "polySurfaceShape3.o" "polyMergeVert4.ip";
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_004|stem_001|stem_00Shape1.wm" "polyMergeVert4.mp"
		;
connectAttr "polySurfaceShape4.o" "polyMergeVert5.ip";
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_005|stem_001|stem_00Shape1.wm" "polyMergeVert5.mp"
		;
connectAttr "polySurfaceShape5.o" "polyMergeVert6.ip";
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_006|stem_001|stem_00Shape1.wm" "polyMergeVert6.mp"
		;
connectAttr "polySurfaceShape6.o" "polyMergeVert7.ip";
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Branch_007|stem_001|stem_00Shape1.wm" "polyMergeVert7.mp"
		;
connectAttr "polyTweak2.out" "polyMergeVert8.ip";
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Main_TrunkStem|stem_001|stem_00Shape1.wm" "polyMergeVert8.mp"
		;
connectAttr "|cryExportNode_PricklyGooseberryBush|PricklyGooseberryBush_helper|PricklyGooseberry_group|Main_TrunkStem|stem_001|stem_00Shape1Orig.w" "polyTweak2.ip"
		;
connectAttr "PricklyGooseberryBush_Materials.pa" "cryMaterials.st" -na;
connectAttr "PricklyGooseberry_Mat.msg" "PricklyGooseberryBush_Materials.dnsm" -na
		;
connectAttr "BendingProxy_Mat.msg" "PricklyGooseberryBush_Materials.dnsm" -na;
connectAttr "BendingProxy_Mat.oc" "phong2SG.ss";
connectAttr "bending_proxyShape.iog" "phong2SG.dsm" -na;
connectAttr "phong2SG.msg" "materialInfo2.sg";
connectAttr "BendingProxy_Mat.msg" "materialInfo2.m";
connectAttr "polyMergeVert1.out" "polyColorPerVertex1.ip";
connectAttr "polyMergeVert2.out" "polyColorPerVertex2.ip";
connectAttr "polyMergeVert3.out" "polyColorPerVertex3.ip";
connectAttr "polyMergeVert4.out" "polyColorPerVertex4.ip";
connectAttr "polyMergeVert5.out" "polyColorPerVertex5.ip";
connectAttr "polyMergeVert6.out" "polyColorPerVertex6.ip";
connectAttr "polyMergeVert7.out" "polyColorPerVertex7.ip";
connectAttr "polyMergeVert8.out" "polyColorPerVertex8.ip";
connectAttr "layerManager.dli[2]" "LOD1.id";
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "phong2SG.pa" ":renderPartition.st" -na;
connectAttr "PricklyGooseberry_Mat.msg" ":defaultShaderList1.s" -na;
connectAttr "BendingProxy_Mat.msg" ":defaultShaderList1.s" -na;
connectAttr "PrickleyGooseberry_Diffuse.msg" ":defaultTextureList1.tx" -na;
connectAttr "PrickleyGooseberry_Specular.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of PricklyGooseberryBush.ma
