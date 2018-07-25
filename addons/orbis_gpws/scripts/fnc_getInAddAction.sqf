params ["_unit", "_position", "_vehicle", "_turret"];

private _hasAction = _vehicle getVariable ["orbis_gpws_hasAction", false];
if (_hasAction || !(_vehicle isKindOf "Plane")) exitWith {};

_vehicle addAction ["Turn off GPWS", "(_this select 0) setVariable ['orbisGPWSmode', 'off', true]", nil, 1, false, true, "", "(isClass (configFile >> 'CfgPatches' >> 'orbis_gpws')) && ([nil, nil, 1] call orbis_awesome_fnc_isCrew) && (_target getVariable ['orbisGPWSenabled', false]) && (_target getVariable ['orbisGPWSmodeLocal', 'off'] != 'off')", 100];
_vehicle addAction ["Set to B747 GPWS", "(_this select 0) setVariable ['orbisGPWSmode', 'b747', true]", nil, 1, false, true, "", "(isClass (configFile >> 'CfgPatches' >> 'orbis_gpws')) && ([nil, nil, 1] call orbis_awesome_fnc_isCrew) && (_target getVariable ['orbisGPWSenabled', false]) && (_target getVariable ['orbisGPWSmodeLocal', 'off'] != 'b747')", 100];
_vehicle addAction ["Set to Betty (F-16)", "(_this select 0) setVariable ['orbisGPWSmode', 'f16', true]", nil, 1, false, true, "", "(isClass (configFile >> 'CfgPatches' >> 'orbis_gpws')) && ([nil, nil, 1] call orbis_awesome_fnc_isCrew) && (_target getVariable ['orbisGPWSenabled', false]) && (_target getVariable ['orbisGPWSmodeLocal', 'off'] != 'f16')", 100];
_vehicle addAction ["Set to Rita", "(_this select 0) setVariable ['orbisGPWSmode', 'rita', true]", nil, 1, false, true, "", "(isClass (configFile >> 'CfgPatches' >> 'orbis_gpws')) && ([nil, nil, 1] call orbis_awesome_fnc_isCrew) && (_target getVariable ['orbisGPWSenabled', false]) && (_target getVariable ['orbisGPWSmodeLocal', 'off'] != 'rita')", 100];
_vehicle addAction ["Test GPWS (B747)", "[_this select 0] spawn orbis_gpws_fnc_b747GPWStest", nil, 1, false, true, "", "(isClass (configFile >> 'CfgPatches' >> 'orbis_gpws')) && ([nil, nil, 1] call orbis_awesome_fnc_isCrew) && (_target getVariable ['orbisGPWSenabled', false]) && (_target getVariable ['orbisGPWSmodeLocal', 'off'] == 'b747') && (_target getVariable ['orbisGPWStestReady', true])", 100];
_vehicle addAction ["Test GPWS (Betty)", "[_this select 0] spawn orbis_gpws_fnc_f16GPWStest", nil, 1, false, true, "", "(isClass (configFile >> 'CfgPatches' >> 'orbis_gpws')) && ([nil, nil, 1] call orbis_awesome_fnc_isCrew) && (_target getVariable ['orbisGPWSenabled', false]) && (_target getVariable ['orbisGPWSmodeLocal', 'off'] == 'f16') && (_target getVariable ['orbisGPWStestReady', true])", 100];
_vehicle addAction ["Test GPWS (Rita)", "[_this select 0] spawn orbis_gpws_fnc_ritaGPWStest", nil, 1, false, true, "", "(isClass (configFile >> 'CfgPatches' >> 'orbis_gpws')) && ([nil, nil, 1] call orbis_awesome_fnc_isCrew) && (_target getVariable ['orbisGPWSenabled', false]) && (_target getVariable ['orbisGPWSmodeLocal', 'off'] == 'rita') && (_target getVariable ['orbisGPWStestReady', true])", 100];
_vehicle addAction ["Stop GPWS Test", "(_this select 0) setVariable ['orbisGPWStestStop', true, true]", nil, 1, false, true, "", "(isClass (configFile >> 'CfgPatches' >> 'orbis_gpws')) && ([nil, nil, 1] call orbis_awesome_fnc_isCrew) && (_target getVariable ['orbisGPWSenabled', false]) && (_target getVariable ['orbisGPWSmodeLocal', 'off'] != 'off') && !(_target getVariable ['orbisGPWStestReady', true]) && !(_target getVariable ['orbisGPWStestStop', false])", 100];
_vehicle addAction ["Lower Volume", "(_this select 0) setVariable ['orbisGPWSvolumeLow', true, true]", nil, 1, false, true, "", "(isClass (configFile >> 'CfgPatches' >> 'orbis_gpws')) && ([nil, nil, 1] call orbis_awesome_fnc_isCrew) && (_target getVariable ['orbisGPWSenabled', false]) && !(_target getVariable ['orbisGPWSvolumeLow', false])", 100];
_vehicle addAction ["Increase Volume", "(_this select 0) setVariable ['orbisGPWSvolumeLow', false, true]", nil, 1, false, true, "", "(isClass (configFile >> 'CfgPatches' >> 'orbis_gpws')) && ([nil, nil, 1] call orbis_awesome_fnc_isCrew) && (_target getVariable ['orbisGPWSenabled', false]) && (_target getVariable ['orbisGPWSvolumeLow', false])", 100];
_vehicle setVariable ["orbis_gpws_hasAction", true, true];
