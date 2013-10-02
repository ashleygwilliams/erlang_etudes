%% @doc a convenience function that combines logic from drop and convert modules to take a distance and return the fall velocity of an object in mph
%% @reference from <a href="http://shop.oreilly.com/product/0636920025818.do"> Introducing Erlang </a>

-module(combined).
-export([height_to_mph/1]).
-import(drop, [fall_velocity/1]).
-import(convert, [mps_to_mph/1]).

%%% uses logic from drop and convert modules
-spec(height_to_mph(number()) -> number()).
height_to_mph(Meters) -> convert:mps_to_mph(drop:fall_velocity(Meters)).