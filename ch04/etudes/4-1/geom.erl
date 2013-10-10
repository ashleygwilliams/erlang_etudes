%% @author Ashley Williams <ashley@flatironschool.com> [http://heyashleyashley.com]
%% @doc function to calculate the area of a shape using height and width
%% @reference from <a href="http://chimera.labs.oreilly.com/books/1234000000726/ch02.html#CH02-ET01"> Etudes for Erlang </a>

-module(geom).
-export([area/1]).

area({Shape, X, Y}) -> area(Shape, X, Y).

%% @doc a helper function that takes height and width and multiplies them together to calculate and return an area
-spec(area(atom(), number(), number()) -> number()).
area(Shape, Measure1, Measure2) when Measure1 > 0, Measure2 > 0 ->
  case Shape of
    rectangle -> Measure1 * Measure2;
    triangle -> Measure1 * Measure2 * 0.5;
    ellipse -> Measure1 * Measure2 * math:pi()
  end.

%% area(_, _, _) -> 0.