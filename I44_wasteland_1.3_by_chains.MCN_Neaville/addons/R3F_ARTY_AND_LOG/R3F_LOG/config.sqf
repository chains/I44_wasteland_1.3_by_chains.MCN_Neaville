/**
 * English and French comments
 * Commentaires anglais et fran�ais
 * 
 * This file contains the configuration variables of the logistics system.
 * Fichier contenant les variables de configuration du syst�me de logistique.
 * 
 * Important note : All the classes names which inherits from the ones used in configuration variables will be also available.
 * Note importante : Tous les noms de classes d�rivant de celles utilis�es dans les variables de configuration seront aussi valables.
 */

/*
 * There are two ways to manage new objects with the logistics system. The first is to add these objects in the
 * folowing appropriate lists. The second is to create a new external file in the /addons_config/ directory,
 * according to the same scheme as the existing ones, and to add a #include at the end of this current file.
 * 
 * Deux moyens existent pour g�rer de nouveaux objets avec le syst�me logistique. Le premier consiste � ajouter
 * ces objets dans les listes appropri�es ci-dessous. Le deuxi�me est de cr�er un fichier externe dans le r�pertoire
 * /addons_config/ selon le m�me sch�ma que ceux qui existent d�j�, et d'ajouter un #include � la fin de ce pr�sent fichier.
 */

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of (ground or air) vehicles which can tow towables objects.
 * Liste des noms de classes des v�hicules terrestres pouvant remorquer des objets remorquables.
 */
R3F_LOG_CFG_remorqueurs = [
	"Truck",
    "Car",
	"TowingTractor",
	"Tractor",
	"BRDM2_Base",
	"BTR90_Base",
	"GAZ_Vodnik_HMG",
	"LAV25_Base",
	"StrykerBase_EP1",
	"MLRS",
	"Fishing_Boat",
	"RHIB",
	"Smallboat_1",
	"smallboat_2"
];

/**
 * List of class names of towables objects.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_objets_remorquables = [
	"HMMWV_Base",
	"Truck",
	"GAZ_Vodnik_HMG",
	"BRDM2_Base",
	"BTR40_MG_base_EP1",
	"Ship",
	"Ikarus",
	"Tractor",
	"UAZ_Base",
	"SkodaBase",
	"hilux1_civil_1_open",
	"Pickup_PK_base",
	"Offroad_DSHKM_base",
	"Lada_base",
	"VWGolf",
	"hilux1_civil_3_open_EP1",
	"LandRover_Base",
	"S1203_TK_CIV_EP1",
	"ArmoredSUV_Base_PMC",
	"SUV_Base_EP1",
	"Volha_TK_CIV_Base_EP1",
	"BAF_Jackal2_BASE_D",
//	"ATV_Base_EP1",
	"An2_Base_EP1",
	"M119",
	"D30_base",
	"ZU23_base",
	
    "I44_Truck_A_GMC_CCKW_Open2_Army",
	"I44_Truck_A_GMC_CCKW_Army",
	"I44_Car_G_Kfz1_Camo_WH",
	"I44_Truck_G_Kfz305_Camo_WH",
	"I44_Car_A_WillysMB_Army",
	"I44_Car_G_Kfz1_CamoOpen_WH",
	"I44_Car_B_WillysAB_VGO_Army",
	"I44_Car_B_WillysAB_Army",
	"I44_Plane_A_P51D_AAF",
	"I44_Plane_B_SpitfireMk1a_RAF",
	"I44_Plane_G_Ju87_WL",
	"Old_bike_TK_CIV_EP1",
	"I44_Plane_G_Bf109E4_WL",
	"I44_Plane_B_TyphoonMk1A_RP3_RAF",
	"I44_Plane_G_Ju52_3mg5e_WL",
	"I44_Plane_A_C47A_AAF",
	"I44_Truck_A_GMC_CCKW_Fuel_Army",
	"I44_Truck_A_GMC_CCKW_Repair_Army",
	"I44_Truck_A_GMC_CCKW_Ammo_Army",
	"I44_motorcycle_G_BMWR75_S",
	"I44_motorcycle_G_BMWR75",
	"I44_GunAA_G_FlaK38_WL",
	"I44_GunAT_G_PaK40_Pintle_WH",
	"I44_Gun_G_NbW41_WH",
	"I44_GunAT_A_M3_Army",
	
	"I44_Truck_G_Kfz305_Open_WH",
	"I44_Truck_G_Kfz305_Gray_WH",
	
	"Land_fortified_nest_big",
	"Land_ConcreteRamp",
	"RampConcrete",
	"Land_ConcreteBlock",
	"Land_Fort_Watchtower"
];

/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftables objects.
 * Liste des noms de classes des v�hicules a�riens pouvant h�liporter des objets h�liportables.
 */
R3F_LOG_CFG_heliporteurs = [
	"CH47_base_EP1",
	"Mi17_base",
	"Mi24_Base",
	"UH1H_base",
	"UH1_Base",
	"UH60_Base",
	"MV22",
	"BAF_Merlin_HC3_D",
	"Ka60_Base_PMC",
	"Mi24_Base"
];

/**
 * List of class names of liftables objects.
 * Liste des noms de classes des objets h�liportables.
 */
R3F_LOG_CFG_objets_heliportables = [

	"HMMWV_Base",
	"Truck",
	"GAZ_Vodnik_HMG",
	"BTR40_MG_base_EP1",
	"Ship",
	"Ikarus",
	"Tractor",
	"UAZ_Base",
	"SkodaBase",
	"hilux1_civil_1_open",
	"Pickup_PK_base",
	"Offroad_DSHKM_base",
	"Lada_base",
	"VWGolf",
	"hilux1_civil_3_open_EP1",
	"LandRover_Base",
	"S1203_TK_CIV_EP1",
	"ArmoredSUV_Base_PMC",
	"SUV_Base_EP1",
	"Volha_TK_CIV_Base_EP1",
	"BAF_Jackal2_BASE_D",
	"M119",
	"D30_base",
	"ZU23_base",

	"USBasicAmmunitionBox",
	"RUBasicAmmunitionBox",
	"LocalBasicAmmunitionBox",
	"GuerillaCacheBox",
	"ReammoBox_EP1"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section use a quantification of the volume and/or weight of the objets.
 * The arbitrary referencial used is : an ammo box of type USVehicleBox "weights" 12 units.
 * 
 * Cette section utilise une quantification du volume et/ou poids des objets.
 * Le r�f�rentiel arbitraire utilis� est : une caisse de munition de type USVehicleBox "p�se" 12 unit�s.
 * 
 * Note : the priority of a declaration of capacity to another corresponds to their order in the tables.
 *   For example : the "Truck" class is in the "Car" class (see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   If "Truck" is declared with a capacity of 140 before "Car". And if "Car" is declared after "Truck" with a capacity of 40,
 *   Then all the sub-classes in "Truck" will have a capacity of 140. And all the sub-classes of "Car", excepted the ones
 *   in "Truck", will have a capacity of 40.
 * 
 * Note : la priorit� d'une d�claration de capacit� sur une autre correspond � leur ordre dans les tableaux.
 *   Par exemple : la classe "Truck" appartient � la classe "Car" (voir http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   Si "Truck" est d�clar� avec une capacit� de 140 avant "Car". Et que "Car" est d�clar� apr�s "Truck" avec une capacit� de 40,
 *   Alors toutes les sous-classes appartenant � "Truck" auront une capacit� de 140. Et toutes les sous-classes appartenant
 *   � "Car", except�es celles de "Truck", auront une capacit� de 40.
 */

/**
 * List of class names of (ground or air) vehicles which can transport transportables objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 * Liste des noms de classes des v�hicules (terrestres ou a�riens) pouvant transporter des objets transportables.
 * Le deuxi�me �l�ment des tableaux est la capacit� de chargement (en relation avec le co�t de capacit� des objets).
 */
R3F_LOG_CFG_transporteurs = [
	["CH47_base_EP1", 80],
	["AH6_Base_EP1", 25],
	["Mi17_base", 60],
	["Mi24_Base", 50],
	["UH1H_base", 35],
	["UH1_Base", 30],
	["UH60_Base", 40],
	["An2_Base_EP1", 40],
	["C130J", 150],
	["MV22", 80],
	["ATV_Base_EP1", 5],
	["HMMWV_Avenger", 5],
	["HMMWV_M998A2_SOV_DES_EP1", 12],
	["HMMWV_Base", 18],
	["Ikarus", 50],
	["Lada_base", 10],
	["LandRover_Base", 15],
	["Offroad_DSHKM_base", 15],
	["Pickup_PK_base", 15],
	["S1203_TK_CIV_EP1", 20],
	["SUV_Base_EP1", 15],
	["SkodaBase", 10],
	["TowingTractor", 5],
	["Tractor", 5],
	["KamazRefuel", 10],
	["Kamaz_Base", 50],
	["MAZ_543_SCUD_Base_EP1", 10],
	["MtvrRefuel", 10],
	["MTVR", 50],
	["GRAD_Base", 10],
	["Ural_Base", 35],
	["Ural_ZU23_Base", 20],
	["Ural_CDF", 50],
	["Ural_INS", 50],
	["UralRefuel_Base", 10],
	["V3S_Refuel_TK_GUE_EP1", 10],
	["V3S_Civ", 50],
	["V3S_Base_EP1", 50],
	["UAZ_Base", 10],
	["VWGolf", 8],
	["Volha_TK_CIV_Base_EP1", 8],
	["BRDM2_Base", 15],
	["M2StaticMG_base", 4],
	["BTR40_MG_base_EP1", 15],
	["BTR60_TK_EP1", 25],
	["BTR90_Base", 25],
	["GAZ_Vodnik_HMG", 25],
	["LAV25_Base", 25],
	["StrykerBase_EP1", 25],
	["I44_HT_A_M3_Army", 25],
	["I44_HT_A_M3A1_Army", 25],
	["Motorcycle", 5],
	["2S6M_Tunguska", 10],
	["M113_Base", 12],
	["M1A1", 5],
	["M2A2_Base", 15],
	["MLRS", 8],
	["T34", 5],
	["T55_Base", 5],
	["T72_Base", 5],
    ["I44_Truck_A_GMC_CCKW_Open2_Army", 40],	 
    ["I44_Truck_A_GMC_CCKW_Army", 40],
	["I44_Car_G_Kfz1_Camo_WH", 15],
	["I44_Truck_G_Kfz305_Camo_WH", 35],
    ["I44_Car_A_WillysMB_Army", 15],
    ["I44_Car_G_Kfz1_CamoOpen_WH", 15],
	["I44_Car_B_WillysAB_VGO_Army", 15],
	
	["I44_Plane_G_Bf109E4_WL", 5],
	["I44_Plane_B_TyphoonMk1A_RP3_RAF", 5],
	["I44_Plane_G_Ju52_3mg5e_WL", 70],
	["I44_Plane_A_C47A_AAF", 70],
	["I44_Truck_A_GMC_CCKW_Fuel_Army", 50],
	["I44_Truck_A_GMC_CCKW_Repair_Army", 50],
	["I44_Truck_A_GMC_CCKW_Ammo_Army", 50],
	["I44_motorcycle_G_BMWR75_S", 5],
	["I44_motorcycle_G_BMWR75", 5],
	["I44_Car_A_WillysMB_M1919_Army", 5],
	["I44_Car_G_Kfz1_Camo_WH", 5],
	
	["I44_HT_A_M3_Army", 5],
	["I44_HT_A_M3A1_Army", 5],
	["I44_ACar_G_SdKfz222_WH", 5],
	["I44_ACar_G_SdKfz234_1_WH", 5],
	["I44_ACar_A_M8_Greyhound_Army", 5],
	["I44_HT_G_SdKfz251_22_WH", 5],
	
	["I44_Truck_G_Kfz305_Open_WH", 35],
	["I44_Truck_G_Kfz305_Gray_WH", 35],
	["I44_HT_G_SdKfz251_1D_WH", 15],
	
	["I44_Car_B_WillysAB_Army", 15]
];

/**
 * List of class names of transportables objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 * Liste des noms de classes des objets transportables.
 * Le deuxi�me �l�ment des tableaux est le co�t de capacit� (en relation avec la capacit� des v�hicules).
 */
 
R3F_LOG_CFG_objets_transportables =  [
	["SatPhone", 1],
	["I44_tent_a_large", 10], 
    ["I44_dessi_foxhole_1", 7], 
    ["I44_bunker_01", 25], 
    ["I44_trench_line_wire", 7], 
    ["I44_tent_g_zeltbahn_16", 10],
	["I44_WeaponBox_A", 5],
	["I44_bunker_AA",10],
	["Land_bags_EP1",2],
	["I44_bunker_R67_left",10],
	["Fort_RazorWire", 5],
	["I44_GunAA_G_FlaK38_WL", 20],
	["I44_GunAT_G_PaK40_Pintle_WH", 20],
	["I44_Gun_G_NbW41_WH", 20],
	["I44_GunAT_A_M1_Army", 20],
	["I44_GunAT_A_M3_Army", 20],
	["Hhedgehog_concrete", 5], 
	["Hhedgehog_concreteBig", 7],
	["Pchela1T", 15],
	["ATV_Base_EP1", 10],
	["FoldChair_with_Cargo", 1],
	["I44_GunMG_A_M2HB_TripodM3_Army", 4],
	["I44_GunMG_G_MG42_Tripod_WH", 4],
	["I44_GunMG_A_M1919A4_TripodM2_Army", 4],
	["I44_GunMG_A_M2HB_TripodAA_Army", 4],
	["I44_GunMG_B_Vickers_Army", 4],
	["MMT_base", 1],
	["Old_bike_TK_CIV_EP1", 1],
	["M1030", 5],
	["Old_moto_base", 5],
	["TT650_Base", 5],
	["Igla_AA_pod_East", 7],
	["Stinger_Pod_base", 7],
	["Metis", 4],
	["SPG9_base", 4],
	["TOW_TriPod", 5],
	["TOW_TriPod_Base", 5],
	["AGS_base", 4],
	["MK19_TriPod", 4],
	["DSHKM_base", 4],
	["KORD_Base", 5],
	["M2StaticMG_base", 4],
	["WarfareBMGNest_M240_base", 10],
	["WarfareBMGNest_PK_Base", 10],
	["2b14_82mm", 4],
	["M252", 4],
	["Warfare2b14_82mm_Base", 4],
	["StaticSEARCHLight", 4],
	["FlagCarrierSmall", 1],
	["Fort_Crate_wood", 2],
	["Fort_RazorWire", 2],
	["Base_WarfareBBarrier10xTall", 10],
	["Base_WarfareBBarrier10x", 7],
	["Base_WarfareBBarrier5x", 5],
	["Fort_EnvelopeBig", 1],
	["Fort_EnvelopeSmall", 1],
	["Land_Fire_barrel", 1],
	["Land_GuardShed", 3],
	["Land_fort_bagfence_corner", 2],
	["Land_fort_bagfence_long", 2],
	["Land_fort_bagfence_round", 3],
	["Land_fortified_nest_small", 6],
	["Land_tent_east", 6],
	["Land_BagFenceCorner", 2],
	["Land_HBarrier_large", 3],
	["Land_Toilet", 3],
	["RoadBarrier_light", 2],
	["ACamp", 3],
	["Camp", 5],
	["CampEast", 6],
	["MASH", 5],
	["FlagCarrier", 1],
	["FlagCarrierChecked", 1],
	["Hedgehog", 3],
	["AmmoCrate_NoInteractive_Base_EP1", 5],
	["RUVehicleBox", 12],
	["TKVehicleBox_EP1", 12],
	["USVehicleBox_EP1", 12],
	["USVehicleBox", 12],
	["I44_WeaponBox_B", 5],
	["I44_WeaponBox_G_H", 5],
	["I44_WeaponBox_AB", 5],
	["I44_WeaponBox_FJ",5],
	["I44_WeaponBox_G",5],
	["GuerillaCacheBox", 5],
	["ReammoBox_EP1", 5],
//	["ReammoBox", 5],
	["Desk", 1],
	["FoldChair", 1],
	["FoldTable", 1],
	["BarrelBase", 2],
	["Barrels", 2],
	["Notice_board", 1],
	["SmallTable", 1],
	["Notebook", 1],
	["Land_Chair_EP1", 1],
	["Land_Misc_Scaffolding", 5],
	["Suitcase",1],
	["Fuel_can",1],
	["Land_Barrel_water",2],
	["Land_Teapot_EP1",1],
	["Land_Sack_EP1",1],
	["Land_Bag_EP1",1],
	["Land_Campfire_burning",1],
	["Land_Fire_barrel_burning",1],
	["Land_fort_bagfence_corner",2],
	["Land_HBarrier5",3],
	["Land_BagFenceLong",2],
	["Fort_EnvelopeBig_EP1",3],
	["Fort_EnvelopeSmall_EP1",2],
	["Fort_StoneWall_EP1",2],
	["Land_Fort_Watchtower",8],
	["Land_Misc_Rubble_EP1",2],
	["Land_stand_small_EP1",1],
	["Fort_RazorWire",1],
	["Land_HBarrier_large",7],
	["Land_HBarrier5",3],
	["Fort_Barricade",4],
	["Land_fort_artillery_nest",10],
	["Land_fort_rampart",6],
	["Land_fortified_nest_small",3],
	["Land_fort_bagfence_round", 2],
	["Base_WarfareBBarrier10xTall", 10],
	["Base_WarfareBBarrier10x", 8],
	["Land_Misc_deerstand", 3],
	["Barrack2", 15],
	["Land_Fort_Watchtower", 8],
	["Land_Dirthump01", 10],
	["Land_CncBlock_Stripes", 2],
	["Land_CncBlock", 2],
	["Land_fortified_nest_big", 15],
	["Misc_cargo_cont_tiny", 10],
	["Land_RedWhiteBarrier", 2],
	["Land_ladder_half", 3],
	["Land_ladder", 5],
	["Land_WoodenRamp", 2],
	["Land_prebehlavka", 4],
	["Land_prolejzacka", 5],
	["Land_ConcreteRamp", 15],
	["Land_ConcreteBlock", 20],
	["RampConcrete", 10],
	["Land_Misc_ConcPipeline_EP1", 5],
	["Concrete_Wall_EP1", 5],
	["Paleta1", 2],
	["Obstacle_saddle", 2],
	["Land_Climbing_Obstacle", 3],
	["Fort_StoneWall_EP1", 5],
	["Land_CamoNet_NATO", 3],
	["WarfareBCamp", 15],
	["WarfareBDepot", 30],
	["I44_AmmoBox_G", 5],
	["Land_leseni2x", 8],
	["Land_leseni4x", 15],
	["Wall_L_2m5_EP1", 5],
	["PowerGenerator", 10],
	["Land_Antenna", 15],
	["Land_runway_edgelight", 1],
	["Ka137_Base_PMC", 15],
	["BAF_L2A1_ACOG_base", 4],
	["GMG_TriPod", 4],
	["Land_tires_EP1", 1]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveables by player.
 * Liste des noms de classes des objets transportables par le joueur.
 */

R3F_LOG_CFG_objets_deplacables = [
	"I44_WeaponBox_B", 
	"I44_WeaponBox_G_H", 
	"I44_WeaponBox_AB",
	"I44_WeaponBox_FJ",
	"I44_WeaponBox_G",
	"I44_AmmoBox_G",
	"I44_tent_a_large",  
    "I44_dessi_foxhole_1",  
    "I44_bunker_01", 
    "I44_trench_line_wire",  
    "I44_tent_g_zeltbahn_16", 
	"I44_WeaponBox_A", 
    "I44_GunAA_G_FlaK38_WL",
	"I44_GunAT_G_PaK40_Pintle_WH",
	"I44_Gun_G_NbW41_WH",
	"I44_GunAT_A_M1_Army",
	"I44_GunAT_A_M3_Army",
	"I44_GunMG_A_M2HB_TripodM3_Army",
	"I44_GunMG_G_MG42_Tripod_WH",
	"I44_GunMG_A_M1919A4_TripodM2_Army",
	"I44_GunMG_A_M2HB_TripodAA_Army",
	"I44_GunMG_B_Vickers_Army",
	"I44_bunker_AA",
	"Land_bags_EP1",
	"I44_bunker_R67_left",
	"Fort_RazorWire", 
	"Hhedgehog_concrete",
	"Hhedgehog_concreteBig",
	"SatPhone",
    "Land_CamoNet_NATO",
	"FoldChair_with_Cargo",
	"StaticWeapon",
	"FlagCarrierSmall",
	"Fort_Crate_wood",
	"Fort_RazorWire",
	"Gunrack1",
	"Base_WarfareBBarrier5x",
	"Fort_EnvelopeBig",
	"Fort_EnvelopeSmall",
	"Land_A_tent",
	"Land_Antenna",
	"Land_Fire_barrel",
	"Land_GuardShed",
	"Land_fort_bagfence_corner",
	"Land_fort_bagfence_long",
	"Land_fort_bagfence_round",
	"Land_fortified_nest_small",
	"Land_tent_east",
	"Land_HBarrier_large",
	"Land_Toilet",
	"RoadBarrier_light",
	"WarfareBunkerSign",
	"ACamp",
	"Camp",
	"CampEast",
	"MASH",
	"FlagCarrier",
	"FlagCarrierChecked",
	"Hedgehog",
	"AmmoCrate_NoInteractive_Base_EP1",
	"ReammoBox",
	"TargetE",
	"TargetEpopup",
	"TargetPopUpTarget",
	"Desk",
	"FoldChair",
	"FoldTable",
	"Land_Barrel_empty",
	"Land_Barrel_sand",
	"Land_Barrel_water",
	"Land_arrows_yellow_L",
	"Land_arrows_yellow_R",
	"Land_coneLight",
	"BarrelBase",
	"Barrels",
	"Fuel_can",
	"SmallTable",
	"Notebook",
	"Radio",
	"SmallTV",
	"Land_Chair_EP1",
	"Suitcase",
	"Land_Misc_deerstand",
	"Land_Fort_Watchtower",
	"Land_CncBlock_Stripes",
	"Land_CncBlock",
	"Land_Dirthump01",
	"Barrack2",
	"Land_fortified_nest_big",
	"Base_WarfareBBarrier10x",
	"Base_WarfareBBarrier10xTall",
	"Land_Teapot_EP1",
	"Land_Sack_EP1",
	"Land_Bag_EP1",
	"Land_Campfire_burning",
	"Land_Fire_barrel_burning",
	"Land_HBarrier5",
	"Land_BagFenceLong",
	"Fort_EnvelopeBig_EP1",
	"Fort_EnvelopeSmall_EP1",
	"Fort_StoneWall_EP1",
	"Land_Fort_Watchtower",
	"Land_Misc_IronPipes_EP1",
	"Land_Misc_Rubble_EP1",
	"Land_stand_small_EP1",
	"Fort_Barricade",
	"Land_fort_artillery_nest",
	"Land_fort_rampart",
	"Land_RedWhiteBarrier",
	"Land_ladder_half",
	"Land_ladder",
	"Land_ConcreteRamp",
	"Land_WoodenRamp",
	"Land_prebehlavka",
	"Land_prolejzacka",
	"RampConcrete",
    "Land_Misc_Scaffolding",
	"Land_ConcreteBlock",
	"Land_Misc_ConcPipeline_EP1",
	"Paleta1",
	"Misc_cargo_cont_tiny",
	"Concrete_Wall_EP1",
	"PowerGenerator",
	"WarfareBCamp",
	"WarfareBDepot",
	"BAF_L2A1_ACOG_base",
	"GMG_TriPod",
	"Land_runway_edgelight",
	"Obstacle_saddle",
	"Land_Climbing_Obstacle",
	"Ka137_Base_PMC",
	"Land_leseni2x",
	"Land_leseni4x",
	"Wall_L_2m5_EP1",
	"ATV_Base_EP1",
	"Motorcycle",
	"Land_tires_EP1"
];

/*
 * List of files adding objects in the arrays of logistics configuration (e.g. R3F_LOG_CFG_remorqueurs)
 * Add an include to the new file here if you want to use the logistics with a new addon.
 * 
 * Liste des fichiers ajoutant des objets dans les tableaux de fonctionnalit�s logistiques (ex : R3F_LOG_CFG_remorqueurs)
 * Ajoutez une inclusion vers votre nouveau fichier ici si vous souhaitez utilisez la logistique avec un nouvel addon.
 */
#include "addons_config\arma2_CO_objects.sqf"