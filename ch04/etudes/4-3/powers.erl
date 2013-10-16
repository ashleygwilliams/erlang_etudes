-module(powers).
-export([raise/2]).

-spec(raise(number(), number()) -> number()).

raise(_, 0) -> 1;
raise(Base, 1) -> Base;
raise(Base, Exponent) when Exponent > 0 -> Base * raise(Base, Exponent-1);
raise(Base, Exponent) when Exponent < 0 -> 1 / raise(Base, -Exponent).