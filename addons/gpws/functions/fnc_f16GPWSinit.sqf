#include "script_component.hpp"

private _vehicle = _this select 0;

_vehicle setVariable [QGVAR(nextGPWStime), -1];
_vehicle setVariable [QGVAR(nextBeepTime), -1];
