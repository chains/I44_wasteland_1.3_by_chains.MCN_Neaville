//	@file Version: 1.0
//	@file Name: boxCreation.sqf
//	@file Author: [404] Costlyy
//	@file Created: 19/12/2012 23:19
//	@file Args: [string (selected weapon crate), array (position)]

// This file is to address the serious imbalance caused by the default load-out of all weapon crates.

if(!X_Server) exitWith {};

private ["_selectedBox", "_selectedBoxPos", "_finishedBox", "_currBox"];

_selectedBox = _this select 0;
_selectedBoxPos = _this select 1;

switch(_selectedBox) do {
	case "basicUS": { // Basic US 1 is mainly M16's and standard US Army weaponry
    	_currBox = createVehicle ["I44_WeaponBox_B", _selectedBoxPos,[], 30, "NONE"];

    };
    case "basicUS2": { // Basic US 2 is a few M4's and some combat shotguns
    	_currBox = createVehicle ["I44_WeaponBox_G_H", _selectedBoxPos,[], 30, "NONE"];

    };
    case "basicRU": { // Basic RU 1 is mainly AK's and better pistols, footsoldier weapons.
    	_currBox = createVehicle ["I44_WeaponBox_AB", _selectedBoxPos,[], 30, "NONE"];
        
    };
    case "basicRU2": { // More Ak's and some shotguns and other crap
    	_currBox = createVehicle ["I44_WeaponBox_A", _selectedBoxPos,[], 30, "NONE"];
        
    };
    case "basicGER": { // G36s everywhere...
    	_currBox = createVehicle ["I44_WeaponBox_FJ", _selectedBoxPos,[], 30, "NONE"];
        
    };
    case "basicPMC": { // Most OP weapons in the game, this will be a saught after crate.
    	_currBox = createVehicle ["I44_WeaponBox_B", _selectedBoxPos,[], 30, "NONE"];
        
    };
    case "basicSpecial": { // Silent weapons
    	_currBox = createVehicle ["I44_AmmoBox_G", _selectedBoxPos,[], 30, "NONE"];
        
    };
    case "basicSpecial2": { // BAF weapons
    	_currBox = createVehicle ["I44_WeaponBox_AB", _selectedBoxPos,[], 30, "NONE"];
        
    };
    case "basicSpecial3": { // Maggoty weapons, mostly shit
    	_currBox = createVehicle ["I44_WeaponBox_A", _selectedBoxPos,[], 30, "NONE"];
        
    };
    case "mission_Mid_BAF": { // Broad selection mid-high tier weapons 
    	_currBox = createVehicle ["I44_WeaponBox_B", _selectedBoxPos,[], 30, "NONE"];		
    };
};