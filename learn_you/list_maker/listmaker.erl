-module(listmaker).
-export([add_to_head/2, add_to_tail/2]).

-spec(add_to_head(any(), list()) -> list()).
add_to_head(Item, List) -> [Item | List].

-spec(add_to_head(any(), list()) -> list()).
add_to_tail(Item, List) -> lists:reverse([ Item | lists:reverse(List) ]).