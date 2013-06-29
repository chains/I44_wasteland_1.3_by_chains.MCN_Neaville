//	@file Version: 1.0
//	@file Name: serverVars.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [404] Pulse
//	@file Created: 20/11/2012 05:19
//	@file Args:
// --------------------------------------------------------------------------------------------------- \\
// ----------  !DO NOT CHANGE ANYTHING BELOW THIS POINT UNLESS YOU KNOW WHAT YOU ARE DOING!	---------- \\
// ----------																				---------- \\
// ----------			404Games are not responsible for anything that may happen 			---------- \\
// ----------			 as a result of unauthorised modifications to this file.			---------- \\
// --------------------------------------------------------------------------------------------------- \\
#include "setup.sqf"
if(!X_Server) exitWith {};

diag_log format["WASTELAND SERVER - Initilizing Server Vars"];

CVG_weapons = [];
CVG_weapons = CVG_rifles;
CVG_weapons = CVG_weapons + CVG_Scoped;
CVG_weapons = CVG_weapons + CVG_Heavy;
CVG_weapons = CVG_weapons + CVG_pistols;
CVG_weapons = CVG_weapons + CVG_Launchers;

#ifdef __A2NET__
missionStartTime = 0;
netTime = 0;
#endif

sideMissionPos = "";
mainMissionPos = "";

currentVehicles = [];
publicVariable "currentVehicles";
pvar_teamSwitchList = [];
publicVariable "pvar_teamSwitchList";
pvar_teamKillList = [];
publicVariable "pvar_teamKillList";
pvar_beaconListBlu = []; 
publicVariable "pvar_beaconListBlu";
pvar_beaconListRed = []; 
publicVariable "pvar_beaconListRed";
pvar_beaconListIndep = []; 
publicVariable "pvar_beaconListIndep";
clientMissionMarkers = [];
publicVariable "clientMissionMarkers";
clientRadarMarkers = [];
publicVariable "clientRadarMarkers";
currentDate = [];
publicVariable "currentDate";
currentInvites = [];
publicVariable "currentInvites";

"processVIP" addPublicVariableEventHandler {[_this] spawn server_VIPEscape};
                  
"PlayerCDeath" addPublicVariableEventHandler {_id = (_this select 1) spawn server_playerDied};

currentStaticHelis = []; // Storage for the heli marker numbers so that we don't spawn wrecks on top of live helis

staticHeliWrecks = [];

//Civilian Vehicle List - Random Spawns
civilianVehicles = ["I44_Car_B_WillysAB_Army",
					"I44_Car_G_Kfz1_CamoOpen_WH",
					"I44_HT_G_SdKfz2_Camo_WH",
					"tractorOld",
					"I44_motorcycle_G_BMWR75",
					"I44_HT_G_SdKfz2_Gray_WH"];

//Military Vehicle List - Random Spawns
militaryVehicles = ["I44_Truck_A_GMC_CCKW_Open2_Army",
					"I44_Truck_A_GMC_CCKW_Army",
					"I44_Car_G_Kfz1_Camo_WH",
					"I44_Truck_G_Kfz305_Camo_WH",
					"I44_Car_A_WillysMB_Army",
					"I44_Car_G_Kfz1_CamoOpen_WH",
					"I44_Car_B_WillysAB_VGO_Army",
					"I44_motorcycle_G_BMWR75_S",
					"I44_motorcycle_G_BMWR75",
					"I44_Car_B_WillysAB_Army",
					"I44_Car_A_WillysMB_Medic_Army",
					"I44_Car_B_WillysAB_Medic_Army",
					"I44_Car_G_Kfz1_GrayOpen_Medic_WH"
					];

//Armed Military Vehicle List - Random Spawns
armedMilitaryVehicles = ["I44_Car_A_WillysMB_M1919_Army",
						"I44_motorcycle_G_BMWR75_S",
						 "I44_Car_G_Kfz1_Camo_WH"];


//Item Config
pickupList = ["Satelit",
				"EvMoney",
				"Suitcase",
				"Fuel_can"];

//Object List - Random Spawns.
objectList = ["Land_Barrel_water",
				"Land_prebehlavka",
				"Land_leseni2x",
                "Fort_Crate_wood",
                "Land_CamoNet_NATO",
				"Land_Barrel_water",
				"Land_stand_small_EP1",
                "Land_stand_small_EP1",
				"Base_WarfareBBarrier10xTall",
				"Base_WarfareBBarrier10x",
				"Base_WarfareBBarrier5x",
                "Base_WarfareBBarrier10xTall",
                "Base_WarfareBBarrier10x",
                "Base_WarfareBBarrier5x",
				"Land_Misc_deerstand",
				"Fort_Barricade",
				"Concrete_Wall_EP1",
                "Concrete_Wall_EP1",
                "Land_fort_bagfence_long",
                "Land_fort_bagfence_long",
                "Land_fort_bagfence_round",
                "Land_fort_bagfence_corner",
                "Land_BagFenceLong",
                "Land_BagFenceLong",
                "Land_fort_artillery_nest",
				"Land_fortified_nest_small_EP1",
				"Land_Misc_deerstand",
                "Land_fort_rampart",
                "Land_fort_rampart_EP1",
				"Land_HBarrier_large",
                "Land_HBarrier_large",
				"Land_Misc_Scaffolding",
				//"Land_Fort_Watchtower_EP1",
                "Land_Fort_Watchtower",
				"Land_fortified_nest_big",
				"RampConcrete",
				//"WarfareBDepot",
				"WarfareBCamp",
                "Hedgehog",
                "Land_ConcreteRamp",
                "Land_CncBlock_Stripes",
                "Land_Campfire_burning",
                "Land_GuardShed",
                "Land_tent_east",
				"Land_ConcreteBlock",

				//I44 and other adds
				"I44_Bag_AMusette",
				"I44_Bag_AHE",
				"CampEast",
				"Land_Teapot_EP1",
				"Land_Bag_EP1",
				"Land_ladder",
				"Land_Fire_barrel_burning",
				"I44_trench_line_wire",
				"I44_bunker_01",
				"I44_dessi_foxhole_1",
				"I44_bunker_AA",
				"Land_tires_EP1",
				"Old_bike_TK_CIV_EP1"
				
				];
                                         
//Object List - Random Spawns.
staticWeaponsList = [
					"I44_GunMG_G_MG42_Tripod_WH",
                    "I44_GunMG_A_M1919A4_TripodM2_Army",
                    "I44_GunMG_B_Vickers_Army",
					"I44_GunMG_A_M2HB_TripodAA_Army"
					];

//Object List - Random Helis.
staticHeliList = [];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons = ["I44_MG42",
				"I44_MG34",
				"I44_M1919A4",
				"I44_BrenMk1",
				"I44_StG44",
				"I44_MP43",
				"I44_M1918A2",
				"I44_FG42I",
				"I44_K43",
				"I44_K98k",
				"I44_M37Ithaca_26",
				"I44_LeeEnfield",
				"I44_DeLisleCarbine",
				"I44_M1A1Carbine",
				"I44_M1Garand",
		        "I44_M1A1Thompson",
				"I44_M3Greasegun",
				"I44_MP40",
				"I44_StenMk2"];
                
MissionSpawnMarkers = [
            ["Mission_3",false],
            ["Mission_4",false],
            ["Mission_5",false],
            ["Mission_6",false],
            ["Mission_7",false],
            ["Mission_8",false],
            ["Mission_9",false],
            ["Mission_10",false],
            ["Mission_11",false],
            ["Mission_12",false],
            ["Mission_13",false],
            ["Mission_17",false],
            ["Mission_34",false],
            ["Mission_35",false],
            ["Mission_36",false],
            ["Mission_37",false],
            ["Mission_38",false],
            ["Mission_39",false],
            ["Mission_40",false],
            ["Mission_41",false],
            ["Mission_42",false],
            ["Mission_43",false],
            ["Mission_46",false]
];