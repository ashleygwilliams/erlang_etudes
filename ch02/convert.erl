%% @doc functions that convert mps to mph and kph
%% @reference from <a href="http://shop.oreilly.com/product/0636920025818.do"> Introducing Erlang </a>

-module(convert).
-export([mps_to_mph/1, mps_to_kph/1]).

-spec(mps_to_mph(number()) -> number()).
mps_to_mph(Mps) -> 2.23693629 * Mps.

-spec(mps_to_kph(number()) -> number()).
mps_to_kph(Mps) -> 3.6 * Mps.