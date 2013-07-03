//	@file Version: 1.0
//	@file Name: sideMissionController.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 08/12/2012 15:19
#include "setup.sqf"
#include "sideMissions\sideMissionDefines.sqf";

if(!isServer) exitWith {};

private ["_SMarray","_lastMission","_randomIndex","_mission","_missionType","_newMissionArray","_SMarray2","_index"];

diag_log format["WASTELAND SERVER - Started Side Mission State"];

//Side Mission Array
_SMarray = [
			[mission_WepCache,"mission_WepCache"],
            [mission_ReconVeh,"mission_ReconVeh"],
            [mission_AirWreck,"mission_AirWreck"],
            [mission_SmallHeli,"mission_SmallHeli"],
            [mission_Truck,"mission_Truck"]
            ];
            
            //Side Mission Array
_SMarray2 = [
			[mission_WepCache,"mission_WepCache"],
            [mission_ReconVeh,"mission_ReconVeh"],
            [mission_AirWreck,"mission_AirWreck"],
            [mission_SmallHeli,"mission_SmallHeli"],
            [mission_Truck,"mission_Truck"]
            ];

_lastMission = "nomission";
while {true} do
{
    _randomIndex = (random (count _SMarray - 1));
    _index = _randomIndex;
    _mission = _SMarray select _randomIndex select 0;
    _missionType = _SMarray select _randomIndex select 1;

    //Select new mission if the same
    while {str(_missionType) == str(_lastMission)} do {
        _randomIndex = (random (count _SMarray - 1));
        _index = _randomIndex;
        _mission = _SMarray select _randomIndex select 0;
        _missionType = _SMarray select _randomIndex select 1;   
    };
    
    //Remove the mission from MMarray so it can't be chosen
    _SMarray set [_index, "REMOVETHISCRAP"];
    _SMarray = _SMarray - ["REMOVETHISCRAP"];
    
    //IF there is no mission left re-add all of them!
    if(count(_SMarray) == 0) then {
        _SMarray = _SMarray2;        
    };
    
	_missionRunning = [] spawn _mission;
    diag_log format["WASTELAND SERVER - Execute New Side Mission: %1",_missionType];
    _hint = parseText format ["<t align='center' color='%2' shadow='2' size='1.75'>Side Objective</t><br/><t align='center' color='%2'>------------------------------</t><br/><t color='%3' size='1.0'>Starting in %1 Minutes</t>", sideMissionDelayTime / 60, sideMissionColor, subTextColor];
	[nil,nil,rHINT,_hint] call RE;
    _lastMission = _missionType;
	waitUntil{sleep 0.1; scriptDone _missionRunning};
    sleep 5;
};