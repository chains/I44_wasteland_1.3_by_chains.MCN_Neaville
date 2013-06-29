//	@file Version: 1.0
//	@file Name: midGroup.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 08/12/2012 21:58
//	@file Args:

if(!X_Server) exitWith {};

private ["_group","_pos","_leader","_man2","_man3","_man4","_man5","_man6","_man7"];

_group = _this select 0;
_pos = _this select 1;

//Anti Vehicle
_leader = _group createunit ["Priest", [(_pos select 0) + 10, _pos select 1, 0], [], 0.5, "Form"];
_leader addMagazine "I44_Rocket_60mm_M6A1_M1A1Bazooka";
_leader addMagazine "I44_Rocket_60mm_M6A1_M1A1Bazooka";
_leader addWeapon "I44_M1A1Bazooka";
_leader addMagazine "I44_32rd_9x19_Ball_MP40";
_leader addMagazine "I44_32rd_9x19_Ball_MP40";
_leader addMagazine "I44_32rd_9x19_Ball_MP40";
_leader addMagazine "I44_32rd_9x19_Ball_MP40";
_leader addWeapon "I44_MP40";

//Support
_man2 = _group createunit ["CIV_EuroMan02_EP1", [(_pos select 0) - 30, _pos select 1, 0], [], 0.5, "Form"];
_man2 addMagazine "I44_30rd_77x56R_Mix_Bren";
_man2 addMagazine "I44_30rd_77x56R_Mix_Bren";
_man2 addMagazine "I44_30rd_77x56R_Mix_Bren";
_man2 addMagazine "I44_30rd_77x56R_Mix_Bren";
_man2 addWeapon "I44_BrenMk1";

//Rifle_man
_man3 = _group createunit ["CIV_EuroMan01_EP1", [_pos select 0, (_pos select 1) + 30, 0], [], 0.5, "Form"];
_man3 addMagazine "I44_5rd_792x57_Mix_K98";
_man3 addMagazine "I44_5rd_792x57_Mix_K98";
_man3 addMagazine "I44_5rd_792x57_Mix_K98";
_man3 addMagazine "I44_5rd_792x57_Mix_K98";
_man3 addWeapon "I44_K98k";

//Rifle_man
_man4 = _group createunit ["RU_Citizen1", [_pos select 0, (_pos select 1) + 40, 0], [], 0.5, "Form"];
_man4 addMagazine "I44_5rd_792x57_Mix_K98";
_man4 addMagazine "I44_5rd_792x57_Mix_K98";
_man4 addMagazine "I44_5rd_792x57_Mix_K98";
_man4 addMagazine "I44_5rd_792x57_Mix_K98";
_man4 addWeapon "I44_K98k";

//Rifle_man
_man5 = _group createunit ["Worker1", [_pos select 0, (_pos select 1) + 40, 0], [], 0.5, "Form"];
_man5 addMagazine "I44_5rd_792x57_Mix_K98";
_man5 addMagazine "I44_5rd_792x57_Mix_K98";
_man5 addMagazine "I44_5rd_792x57_Mix_K98";
_man5 addMagazine "I44_5rd_792x57_Mix_K98";
_man5 addMagazine "I44_5rd_792x57_Mix_K98";
_man5 addWeapon "I44_K98kZf42";

//Sniper
_man6 = _group createunit ["Worker2", [_pos select 0, (_pos select 1) - 30, 0], [], 0.5, "Form"];
_man6 addMagazine "I44_32rd_9x19_Ball_MP40";
_man6 addMagazine "I44_32rd_9x19_Ball_MP40";
_man6 addMagazine "I44_32rd_9x19_Ball_MP40";
_man6 addMagazine "I44_32rd_9x19_Ball_MP40";
_man6 addWeapon "I44_MP40";

//Grenadier
_man7 = _group createunit ["Woodlander3", [_pos select 0, (_pos select 1) - 40, 0], [], 0.5, "Form"];
_man7 addMagazine "I44_30rd_77x56R_Mix_Bren";
_man7 addMagazine "I44_30rd_77x56R_Mix_Bren";
_man7 addMagazine "I44_30rd_77x56R_Mix_Bren";
_man7 addMagazine "I44_30rd_77x56R_Mix_Bren";
_man7 addWeapon "I44_BrenMk1";

// Add event handlers for dropping items and money.
_leader addEventHandler ["Killed", {[_this] call createLootMoney;}];
_man2 addEventHandler ["Killed", {[_this] call createLootMoney;}];
_man3 addEventHandler ["Killed", {[_this] call createLootMoney;}];
_man4 addEventHandler ["Killed", {[_this] call createLootMoney;}];
_man5 addEventHandler ["Killed", {[_this] call createLootMoney;}];
_man6 addEventHandler ["Killed", {[_this] call createLootMoney;}];
_man7 addEventHandler ["Killed", {[_this] call createLootMoney;}];

_leader = leader _group;
[_group, _pos] call defendArea;