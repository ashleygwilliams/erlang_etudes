-module(bodega).
-export([total/1]).

%calculates total based on items in a list and their price (with tax added by eper function)
total(Items) -> total(tax(Items), 0).
total([H|T], Sum) -> total(T, Sum+H);
total([], Sum) -> Sum.

%% helper function that adds tax
tax(Items) -> [Price*1.07 || {_, Price} <- Items].