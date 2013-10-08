-module(listfilter).
-export([filter_evens/1, filter_odds/1, filter_factor/2]).

-spec(filter_evens(list()) -> list()).
filter_evens(List) -> [ N || N <- List, N rem 2=:=0].

-spec(filter_odds(list()) -> list()).
filter_odds(List) -> [ N || N <- List, N rem 2=/=0].

-spec(filter_odds(list(), number()) -> list()).
filter_factor(List, Factor) -> [ N || N <- List, N rem Factor=:=0].