-module(dijkstra).
-export([gcd/2]).

-spec(gcd(number(), number()) -> number()).
gcd(Multiple, Number) when Multiple == Number -> Multiple;

gcd(Multiple, Number) when Multiple > Number -> gcd(Multiple - Number, Number);

gcd(Multiple, Number) -> gcd(Multiple, Number - Multiple).


