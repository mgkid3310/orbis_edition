// towbar actions
private _deployTowBar = [
	"deployTowBar",
	"Deploy Towbar",
	"",
	{},
	{[_target] call orbis_ground_fnc_deployTowBar},
	{(_player isEqualTo driver _target) && !(_target getVariable ['orbis_hasTowBarDeployed', false]) && (speed _target < 1)},
	[],
	[0, 0, 0],
	10
] call ace_interact_menu_fnc_createAction;
private _removeTowBar = [
	"removeTowBar",
	"Remove Towbar",
	"",
	{[_target] call orbis_ground_fnc_removeTowBar},
	{(_player isEqualTo driver _target) && (_target getVariable ['orbis_hasTowBarDeployed', true]) && (speed _target < 1)},
	{},
	[],
	[0, 0, 0],
	10
] call ace_interact_menu_fnc_createAction;

[
	"Offroad_01_repair_base_F",
	1.1,
	["ACE_SelfActions"],
	_deployTowBar,
    true
] call ace_interact_menu_fnc_addActionToClass;
[
	"Offroad_01_repair_base_F",
	1.1,
	["ACE_SelfActions"],
	_removeTowBar,
    true
] call ace_interact_menu_fnc_addActionToClass;

// parking brake interactions
private _parkingBrakeSet = [
	"parkingBrakeSet",
	"Set Parking Brake",
	"",
	{},
	{[_target] call orbis_ground_fnc_parkingBrakeSet},
	{(_player isEqualTo driver _target) && !(_target getVariable ['orbis_parkingBrakeSet', false]) && (speed _target < 1)},
	[],
	[0, 0, 0],
	10
] call ace_interact_menu_fnc_createAction;
private _parkingBrakeRelease = [
	"parkingBrakeRelease",
	"Release Parking Brake",
	"",
	{[_target] call orbis_ground_fnc_parkingBrakeRelease},
	{(_player isEqualTo driver _target) && (_target getVariable ['orbis_parkingBrakeSet', true])},
	{},
	[],
	[0, 0, 0],
	10
] call ace_interact_menu_fnc_createAction;

[
	"Plane_Base_F",
	1.1,
	["ACE_SelfActions"],
	_parkingBrakeSet,
    true
] call ace_interact_menu_fnc_addActionToClass;
[
	"Plane_Base_F",
	1.1,
	["ACE_SelfActions"],
	_parkingBrakeRelease,
    true
] call ace_interact_menu_fnc_addActionToClass;