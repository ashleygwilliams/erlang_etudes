%% @author Ashley Williams <ashley@flatironschool.com> [http://heyashleyashley.com]
%% @doc function to calculate the area of a shape using height and width
%% @reference from <a href="http://chimera.labs.oreilly.com/books/1234000000726/ch02.html#CH02-ET01"> Etudes for Erlang </a>

-module(geom).
-export([area/1]).

area({Shape, X, Y}) -> area(Shape, X, Y).

%% @doc a helper function that takes height and width and multiplies them together to calculate and return an area
-spec(area(atom(), number(), number()) -> number()).
area(rectangle, Height, Width) when Height > 0, Width > 0 ->
  Height * Width;

area(triangle, Height, Width)  when Height > 0, Width > 0 -> 
  Height * Width * 0.5;

area(ellipse, RadiusA, RadiusB)  when RadiusA > 0, RadiusB > 0
  -> RadiusA * RadiusB * math:pi();

area(_, _, _) -> 0.