-module(zoo).
-export([find_mammals/1, find_birds/1, find_by_type/2, find_by_habitat/2]).

%% example data structure:
%% [{elephant, mammal, jungle}, {penguin, bird, antarctic}, {orca, mammal, antarctic},{lion, mammal,jungle}, {parrot,bird,jungle}, {'sea lion', mammal, antarctic}]

-spec(find_mammals(list()) -> list()).
find_mammals(List) -> [Animal || {Animal, mammal, _} <- List].

-spec(find_birds(list()) -> list()).
find_birds(List) -> [Animal || {Animal, bird, _} <- List].

-spec(find_by_type(list(), atom()) -> list()).
find_by_type(List, MyType) -> [Animal || {Animal, Type, _} <- List, Type =:= MyType].

-spec(find_by_habitat(list(), atom()) -> list()).
find_by_habitat(List, MyHabitat) -> [Animal || {Animal, _, Habitat} <- List, Habitat =:= MyHabitat].
