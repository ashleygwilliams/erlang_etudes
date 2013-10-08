-module(listmaker).
-export([add_to_head/2, add_to_tail/2, add_to_tail_recursive/2]).
-import(flatten, [flatten/1]).

-spec(add_to_head(any(), list()) -> list()).
add_to_head(Item, List) -> [Item | List].

-spec(add_to_tail(any(), list()) -> list()).
add_to_tail(Item, List) -> lists:reverse([ Item | lists:reverse(List) ]).

-spec(add_to_tail_recursive(any(), list()) -> list()).

add_to_tail_recursive(Item, []) -> lists:reverse(Item);

add_to_tail_recursive(Item, List) -> add_to_tail_recursive( flatten([Item |  [ hd(List) | [] ]]), tl(List)).


