-module(combined).
-export([height_to_mph/1]).
-import(drop, [fall_velocity/1]).
-import(convert, [mps_to_mph/1]).

%% uses logic from drop and convert modules
height_to_mph(Meters) -> convert:mps_to_mph(drop:fall_velocity(Meters)).