//	@file Version: 1.0
//	@file Name: mission_MBT.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 08/12/2012 15:19
//	@file Args:

//Side Mission Colour = #4BC9B0 - Turquoise 
//Main Mission Colour = #52bf90 - Light blue
//Fail Mission Colour = #FF1717 - Light red
//Fail Mission Colour = #17FF41 - Light green
//Sub Colour = #FFF - White

if(!isServer) exitwith {};
diag_log format["WASTELAND SERVER - Mission Started"];
private ["_unitsAlive","_playerPresent","_missionType","_successTextColour","_mainTextColour","_failTextColour","_subTextColour","_picture","_vehicleName","_rad","_centerPos","_missionTimeOut","_missionDelayTime","_missionTriggerRadius","_missionPlayerRadius","_flatAreas","_randomArea","_hint","_startTime","_currTime","_result","_c130wreck","_box","_box2","_randomIndex","_selectedMarker","_indexAmount","_GotLoc","_WhyDoINeedThis","_randomPos"];

//Mission Initialization.
_rad=20000;
_result = 0;
_missionType = "Immobile Heavy Tank";
_mainTextColour = "#CD7F32";
_successTextColour = "#17FF41";
_failTextColour = "#FF1717";
_subTextColour = "#FFFFFF";
_missionTimeOut = 1800;
_missionDelayTime = 2400;
_missionPlayerRadius = 50;

// New spawn system by Kettlewell
_GotLoc = false; //Make sure this is false at first
while {!_GotLoc} do { //Loop until it's true 

	_randomIndex = random (count MissionSpawnMarkers - 1);
	
	if (!(MissionSpawnMarkers select _randomIndex select 1)) then {
		_selectedMarker = MissionSpawnMarkers select _randomIndex select 0;
		_randomPos = getMarkerPos _selectedMarker; 
		sideMissionPos = str(_randomPos);
		MissionSpawnMarkers select _randomIndex set[1, true];
		_GotLoc = true;
	};
};

//Tell everyone their will be a mission soon.
_hint = parseText format ["<t align='center' color='%2' shadow='2' size='1.75'>Heavy Tank Objective</t><br/><t align='center' color='%2'>------------------------------</t><br/><t color='%3' size='1.0'>Starting in %1 Minutes</t>", _missionDelayTime / 60, _mainTextColour, _subTextColour];
[nil,nil,rHINT,_hint] call RE;

//Wait till the mission is ready to be ran.
diag_log format["WASTELAND SERVER - Mission Waiting to run"];
_startTime = floor(time);
waitUntil
{ 
    _currTime = floor(time);
    if(_currTime - _startTime >= _missionDelayTime) then {_result = 1;};
    (_result == 1)
};
diag_log format["WASTELAND SERVER - Mission Resumed"];
_result = 0;

//Add marker to client marker array.
clientMissionMarkers set [count clientMissionMarkers,["MBT_Marker",_randomPos,"Immobile MBT"]];
publicVariable "clientMissionMarkers";

_veh = ["I44_Tank_B_ShermanVC_Army","I44_Tank_G_PzKpfwVI_E_Late_WH","I44_Veh_B_Army_MKIV_Churchill","I44_Tank_A_M4A3E8_76_HVSS_Sherman_Army","I44_Tank_G_PzKpfwVI_B_SS","I44_Tank_G_PzKpfwIV_G_SS","I44_Tank_G_PzKpfwV_G_SS"] call BIS_fnc_selectRandom;

_tank = createVehicle [_veh,[(_randomPos select 0), _randomPos select 1,0],[], 0, "NONE"];
_tank setFuel 0;
_tank setVehicleAmmo 1;
_tank setdamage 0.50;

//_tank setVehicleLock "LOCKED";
_tank setVariable["original",1,true];
_tank setVariable ["R3F_LOG_disabled", true, true];

_picture = getText (configFile >> "cfgVehicles" >> typeOf _tank >> "picture");
_vehicleName = getText (configFile >> "cfgVehicles" >> typeOf _tank >> "displayName");
_hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Heavy Tank Objective</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>A<t color='%4'> %3</t>, has been immobilized go get it for your team.</t>", _missionType, _picture, _vehicleName, _mainTextColour, _subTextColour];
[nil,nil,rHINT,_hint] call RE;

CivGrpM = createGroup civilian;
[CivGrpM,_randomPos]execVM "server\missions\createUnits\largeGroup.sqf";

diag_log format["WASTELAND SERVER - Mission Waiting to be Finished"];
_startTime = floor(time);
waitUntil
{
    sleep 1; 
	_playerPresent = false;
    _currTime = floor(time);
    if(_currTime - _startTime >= _missionTimeOut) then {_result = 1;};
    {if((isPlayer _x) AND (_x distance _tank <= _missionPlayerRadius)) then {_playerPresent = true};}forEach playableUnits;
    _unitsAlive = ({alive _x} count units CivGrpM);
    (_result == 1) OR ((_playerPresent) AND (_unitsAlive < 1)) OR ((damage _tank) == 1)
};

_tank setVehicleLock "UNLOCKED";
_tank setVariable ["R3F_LOG_disabled", false, true];

if(_result == 1) then
{
	//Mission Failed.
    deleteVehicle _tank;
    {deleteVehicle _x;}forEach units CivGrpM;
    deleteGroup CivGrpM;
    _hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Objective Failed</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>Objective failed, better luck next time</t>", _missionType, _picture, _vehicleName, _failTextColour, _subTextColour];
	[nil,nil,rHINT,_hint] call RE;
	MissionSpawnMarkers select _randomIndex set[1, false]; //Reset the mission spawn bool
    diag_log format["WASTELAND SERVER - Mission Failed"];
} else {
	//Mission Complete.
    deleteGroup CivGrpM;
    _hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Objective Complete</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>The main tank has been captured now destroy the enemy</t>", _missionType, _picture, _vehicleName, _successTextColour, _subTextColour];
	[nil,nil,rHINT,_hint] call RE;
	MissionSpawnMarkers select _randomIndex set[1, false]; //Reset the mission spawn bool
    diag_log format["WASTELAND SERVER - Mission Finished"];
};

//Remove marker from client marker array.
{
    if(_x select 0 == "MBT_Marker") then
    {
    	clientMissionMarkers set [_forEachIndex, "REMOVETHISCRAP"];
		clientMissionMarkers = clientMissionMarkers - ["REMOVETHISCRAP"];
        publicVariable "clientMissionMarkers";    
    };
}forEach clientMissionMarkers;
mainMissionRunning = false;