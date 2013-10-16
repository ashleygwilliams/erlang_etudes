-module(powers).
-export([raise/2]).

-spec(raise(number(), number()) -> number()).
raise(_, 0) -> 1;
raise(Base, 1) -> Base;
raise(Base, Exponent) when Exponent > 0 -> raise(Base, Exponent, 1);
raise(Base, Exponent) when Exponent < 0 -> 1.0 / raise(Base, -Exponent).

raise(_, 1, Accumulator) -> Accumulator;
raise(Base, Exponent, Accumulator) -> raise(Base, Exponent - 1, Accumulator*Base).
