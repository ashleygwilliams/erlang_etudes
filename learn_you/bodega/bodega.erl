-module(bodega).
-export([total/1]).

%calculates total based on items in a list and their price (with tax added by eper function)
-spec(total(list() -> number()).
total(Items) -> total(tax(Items), 0).
%helper that uses tail recursion to sum the prices
total([H|T], Sum) -> total(T, Sum+H);
%helper returns the sum when all the items have been added
total([], Sum) -> Sum.

%% helper function that adds tax
tax(Items) -> [Price*1.07 || {_, Price} <- Items].