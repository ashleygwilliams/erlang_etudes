-module(listmaker).
-export([add_to_head/2, add_to_tail/2]).

add_to_head(Item, List) -> [Item | List].
add_to_tail(Item, List) -> lists:reverse([ Item | lists:reverse(List) ]).