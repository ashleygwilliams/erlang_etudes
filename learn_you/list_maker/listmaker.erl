-module(listmaker).
-export([add_to_head/2, add_to_tail/2, add_to_tail_recursive/2]).
-import(flatten, [flatten/1]).

%% add a non-list item to the beginning of a list
-spec(add_to_head(any(), list()) -> list()).
add_to_head(Item, List) -> [Item | List].

%% add a non-list item to the end of a list
-spec(add_to_tail(any(), list()) -> list()).
add_to_tail(Item, List) -> lists:reverse([ Item | lists:reverse(List) ]).

%% add a non-list item to the end of a list, recursively
-spec(add_to_tail_recursive(any(), list()) -> list()).
add_to_tail_recursive(Item, List) -> add_to_tail_recursive(Item, lists:reverse(List), poop).

%% helper to first revese the string received
add_to_tail_recursive(Item, [], poop) -> lists:reverse(Item);
%% then build the list with the item to add, backwards
add_to_tail_recursive(Item, [H|T], poop) -> add_to_tail_recursive( flatten([Item |  [ H | [] ]]), T, poop).


