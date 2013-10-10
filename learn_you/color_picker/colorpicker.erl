-module(colorpicker).
-export([hex_to_rgba/1]).
-import(hex, [bin_to_hexstr/1,hexstr_to_bin/1]).

%%-spec(hex_to_rgba(string()) -> list())
hex_to_rgba(Hex) -> hex_to_rgba(list_to_binary(string:concat("16#",Hex)), 0).

hex_to_rgba(Hex, 0) -> <<Hex:24>>.