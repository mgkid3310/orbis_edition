private _vehicle = _this select 0;
private _player = param [1, driver _vehicle];

private _aeroConfigs = [_vehicle] call orbis_aerodynamics_fnc_getAeroConfig;
[_vehicle, _player, time, _aeroConfigs] spawn orbis_aerodynamics_fnc_fixedWingLoop;
