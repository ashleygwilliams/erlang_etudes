-module(drop).
-export([fall_velocity/1]).

fall_velocity({Planemo, Distance}) -> fall_velocity(Planemo, Distance).

fall_velocity(Planemo, Distance) when Distance > 0 ->
  case Planemo of
    earth -> math:sqrt(2 * 9.8 * Distance);
    moon -> math:sqrt(2 * 1.6 * Distance);
    mars -> math:sqrt(2 * 3.71 * Distance) %no closing period! wattt
  end.
