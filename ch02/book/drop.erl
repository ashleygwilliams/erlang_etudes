%% @doc a function that calculates the velocity of an object dropped in a vacuum. 
%% @reference from <a href="http://shop.oreilly.com/product/0636920025818.do"> Introducing Erlang </a>

-module(drop).
-export([fall_velocity/1]).

%% @doc a function that calculates the velocity of an object dropped in a vacuum. it takes on argument, distance is the height(in meters) the object is falling from, and returns the velocity in meters per second.

-spec(fall_velocity(number()) -> number()).

fall_velocity(Distance) -> math:sqrt(2 * 9.8 * Distance).