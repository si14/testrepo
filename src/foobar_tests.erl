-module(foobar_tests).
-include_lib("proper/include/proper.hrl").
-include_lib("eunit/include/eunit.hrl").

prop_delete() ->
    ?FORALL({X,L}, {integer(),list(integer())},
            not lists:member(X, lists:delete(X, L))).

proper_test() ->
  ?assertEqual(
    [],
    proper:module(?MODULE, [{to_file, user},
                            {numtests, 1000}])
    ).
