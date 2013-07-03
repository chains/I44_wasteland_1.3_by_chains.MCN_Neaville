//	@file Version: 1.0
//	@file Name: mainMissionController.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 08/12/2012 15:19
#include "setup.sqf"
#include "mainMissions\mainMissionDefines.sqf";

if(!isServer) exitWith {};

private ["_MMarray","_lastMission","_randomIndex","_mission","_missionType","_newMissionArray","_MMarray2","_index"];

diag_log format["WASTELAND SERVER - Started Main Mission State"];

//Main Mission Array
_MMarray = [
                [mission_SupplyDrop,"mission_SupplyDrop"],
                //[mission_APC,"mission_APC"],
                [mission_Heli,"mission_Heli"],
                //[mission_LightArmVeh,"mission_LightArmVeh"],
                [mission_LightTank,"mission_LightTank"],
                [mission_MBT,"mission_MBT"],
                [mission_VIP,"mission_VIP"],
                [mission_Heavy,"mission_Heavy"],
                [mission_Outpost,"mission_Outpost"]
                //[mission_RadarTruck,"mission_RadarTruck"]
            ];

_MMarray2 = [
                [mission_SupplyDrop,"mission_SupplyDrop"],
                //[mission_APC,"mission_APC"],
                [mission_Heli,"mission_Heli"],
                //[mission_LightArmVeh,"mission_LightArmVeh"],
                [mission_LightTank,"mission_LightTank"],
                [mission_MBT,"mission_MBT"],
                [mission_VIP,"mission_VIP"],
                [mission_Heavy,"mission_Heavy"],
                [mission_Outpost,"mission_Outpost"]
                //[mission_RadarTruck,"mission_RadarTruck"]
            ];


_lastMission = "nomission";
while {true} do
{
    _randomIndex = (random (count _MMarray - 1));
    _index = _randomIndex;
    _mission = _MMarray select _randomIndex select 0;
    _missionType = _MMarray select _randomIndex select 1;

    //Select new mission if the same
    while {str(_missionType) == str(_lastMission)} do {
        _randomIndex = (random (count _MMarray - 1));
        _index = _randomIndex;
        _mission = _MMarray select _randomIndex select 0;
        _missionType = _MMarray select _randomIndex select 1;   
    };
    
    //Remove the mission from MMarray so it can't be chosen
    _MMarray set [_index, "REMOVETHISCRAP"];
    _MMarray = _MMarray - ["REMOVETHISCRAP"];
    
    //IF there is no mission left re-add all of them!
    if(count(_MMarray) == 0) then {
        _MMarray = _MMarray2;        
    };
    
    _missionRunning = [] spawn _mission;
    diag_log format["WASTELAND SERVER - Execute New Main Mission: %1",_missionType];
    _hint = parseText format ["<t align='center' color='%2' shadow='2' size='1.75'>Main Objective</t><br/><t align='center' color='%2'>------------------------------</t><br/><t color='%3' size='1.0'>Starting in %1 Minutes</t>", mainMissionDelayTime / 60, mainMissionColor, subTextColor];
    [nil,nil,rHINT,_hint] call RE;
    _lastMission = _missionType;
    waitUntil{sleep 0.1; scriptDone _missionRunning};
    sleep 5;
};