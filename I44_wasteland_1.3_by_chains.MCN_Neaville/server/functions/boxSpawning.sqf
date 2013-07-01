//	@file Version: 1.0
//	@file Name: boxSpawning.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

//waitUntil{objectSpawnComplete};
if(!X_Server) exitWith {};

private ["_counter","_pos","_markerName","_marker","_hint","_newpos","_countActual","_boxes"];

_counter = 0;
_countActual = 0;
_boxes = ["I44_WeaponBox_B","I44_WeaponBox_G_H","I44_WeaponBox_AB","I44_WeaponBox_A","I44_WeaponBox_FJ","I44_WeaponBox_G","I44_AmmoBox_G","I44_AmmoBox_FJ"];

diag_log format["Weapon Caches Spawning"];

while {_counter < 770} do
{
    _pos = getMarkerPos format ["Spawn_%1", _counter];
    _box = _boxes select (random (count _boxes - 1));
    _newpos = [_pos, 25, 50, 1, 0, 60 * (pi / 180), 0] call BIS_fnc_findSafePos;
	_box = createVehicle [_box, _newpos,[], 30, "NONE"];
    
     /*  
    _markerName = format["marker%1",_counter];
	_marker = createMarker [_markerName, _newpos];
	_marker setMarkerType "dot";
	_marker setMarkerSize [1.25, 1.25];
	_marker setMarkerColor "ColorRed";
    */
    
    _counter = _counter + 25;
    _countActual = _countActual + 1;
};

diag_log format["WASTELAND SERVER - %1 Ammo Caches Spawned",_countActual];
//ammoCrateSpawnComplete = true;