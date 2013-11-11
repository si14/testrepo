-module(foobar_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

-export([hello_world/0]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    foobar_sup:start_link().

stop(_State) ->
    ok.

hello_world() -> "hello world".
