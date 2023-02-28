-module(index).
-compile(export_all).

run() ->
    Pid = spawn(fun ping/0),
    Pid ! self(),
    receive
        pong -> ok
    end.


ping() ->
    receive
        From -> From ! pong
    end.