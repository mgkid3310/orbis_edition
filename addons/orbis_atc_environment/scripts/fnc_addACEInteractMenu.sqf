private _actionATISmain = [
	"actionATIS",
	"ATIS",
	"",
	{},
	{_player isEqualTo driver _target},
	{},
	[],
	[0, 0, 0],
	10
] call ace_interact_menu_fnc_createAction;
private _actionATISlisten = [
	"removeFlag",
	"Listen to ATIS",
	"",
	{[] call orbis_atc_fnc_listenATISbroadcast},
	{(_player isEqualTo driver _target) && (_target getVariable ['orbisATISready', true])},
	{},
	[],
	[0, 0, 0],
	10
] call ace_interact_menu_fnc_createAction;

// planes
[
	"Plane",
	1,
	["ACE_SelfActions"],
	_actionATISmain,
    true
] call ace_interact_menu_fnc_addActionToClass;
[
	"Plane",
	1,
	["ACE_SelfActions", "actionATIS"],
	_actionATISlisten,
    true
] call ace_interact_menu_fnc_addActionToClass;

// helicopters
[
	"Helicopter",
	1,
	["ACE_SelfActions"],
	_actionATISmain,
    true
] call ace_interact_menu_fnc_addActionToClass;
[
	"Helicopter",
	1,
	["ACE_SelfActions", "actionATIS"],
	_actionATISlisten,
    true
] call ace_interact_menu_fnc_addActionToClass;