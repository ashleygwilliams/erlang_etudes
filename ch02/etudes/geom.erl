%% @author Ashley Williams <ashley@flatironschool.com> [http://heyashleyashley.com]
%% @doc function to calculate the area of a shape using height and width
%% @reference from <a href="http://chimera.labs.oreilly.com/books/1234000000726/ch02.html#CH02-ET01"> Etudes for Erlang </a>

-module(geom).
-export([area/2]).

%% @doc a function that takes height and width and multiplies them together to calculate and return an area

-spec(area(number(), number()) -> number()).
area(Height, Width) -> Height * Width.