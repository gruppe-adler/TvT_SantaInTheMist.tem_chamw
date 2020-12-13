#include "component.hpp"

[{!isNull (_this select 0)}, {
    [{
        params ["_object",["_marker",""]];
        if (damage _object > 0) then {
            deleteVehicle _object;
            if (_marker != "") then {_marker setMarkerColor "COLORRED"};
        };
    }, _this, 5] call CBA_fnc_waitAndExecute;
}, _this] call CBA_fnc_waitUntilAndExecute;
