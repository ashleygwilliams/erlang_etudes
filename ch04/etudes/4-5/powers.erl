-module(powers).
-export([raise/2, nth_root/2]).

-spec(nth_root(number(), number()) -> number()).
nth_root(Rad, Root) -> 
  Approx = Rad/2.0,
  nth_root(Rad, Root, Approx).

nth_root(Rad, Root, Approx) ->
  io:format("* ~p~n", [Approx]),
  F = raise(Approx, Root) - Rad,
  Fprime = Root * raise(Approx, Root - 1),
  Next = Approx - F / Fprime,
  Change = abs(Next - Approx),

  case Change < 1.0e-8 of 
    true -> io:format("-> ~p~n", [Next]);
    false -> nth_root(Rad, Root, Next)
  end.



-spec(raise(number(), number()) -> number()).
raise(_, 0) -> 1;
raise(Base, 1) -> Base;
raise(Base, Exp) when Exp > 0 -> raise(Base, Exp, 1);
raise(Base, Exp) when Exp < 0 -> 1.0 / raise(Base, -Exp).

raise(_, 1, Acc) -> Acc;
raise(Base, Exp, Acc) -> raise(Base, Exp - 1, Acc*Base).
