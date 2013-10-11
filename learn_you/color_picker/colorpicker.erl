-module(colorpicker).
-export([hexstr_to_list/1, list_to_hexstr/1]).

%% Hex -> RGBA list
int(C) when $0 =< C, C =< $9 ->
    C - $0;
int(C) when $A =< C, C =< $F ->
    C - $A + 10;
int(C) when $a =< C, C =< $f ->
    C - $a + 10.

hexstr_to_list([X,Y|T]) ->
    [int(X)*16 + int(Y) | hexstr_to_list(T)];
hexstr_to_list([]) ->
    [].

%% RGBA list -> Hex
hex(N) when N < 10 ->
    $0+N;
hex(N) when N >= 10, N < 16 ->
    $a+(N-10).

to_hex(N) when N < 256 ->
    [hex(N div 16), hex(N rem 16)].
 
list_to_hexstr([]) -> 
    [];
list_to_hexstr([H|T]) ->
    to_hex(H) ++ list_to_hexstr(T).