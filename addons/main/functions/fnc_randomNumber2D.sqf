#include "script_component.hpp"

params ["_rangeArray", ["_seedArray", [0, 0]]];

if (_rangeArray isEqualType 0) then {_rangeArray = [0, _rangeArray]};
if (_seedArray isEqualType 0) then {_seedArray = [_seedArray, 0]};

_rangeArray params ["_rangeMin", "_rangeMax"];
_seedArray params ["_seed1", "_seed2"];

private _newSeed1 = floor ([16777216, _seed1, [2147483647, 48271, 0, 4]] call FUNC(randomLCG)); // MINSTD 4runs
private _newSeed2 = floor ([16777216, _seed2, [2147483647, 48271, 0, 5]] call FUNC(randomLCG)); // MINSTD 5runs

linearConversion [0, 1, [1, [_newSeed1, _newSeed2] call BIS_fnc_bitwiseXOR] call FUNC(randomLCG), _rangeMin, _rangeMax];
