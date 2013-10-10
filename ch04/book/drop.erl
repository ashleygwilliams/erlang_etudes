-module(drop).
-export([fall_velocity/1]).

fall_velocity({Planemo, Distance}) -> fall_velocity(Planemo, Distance).

fall_velocity(Planemo, Distance) when Distance > 0 ->
  Gravity = case Planemo of
    earth -> 9.8;
    moon -> 1.6;
    mars -> 3.71 
  end, % COMMA

  math:sqrt(2 * Gravity * Distance).
