-module(process).
-export([start/0, loop/0, procesoExec/3]).

%% Inicia hilo
start() -> 
    spawn(process, loop, []).

%% Bucle para que el proceso sigua escuchando
loop() ->
    receive
        {Client, {Msg, uppercase}} ->
            Client ! {self(), string:to_upper(Msg)};
        {Client, {Msg, lowercase}} ->
            Client ! {self(), string:to_lower(Msg)};
        {_X, {_Y, _}} -> 
            _X ! io:format("Indefinodo")
    end,
    loop().


%% Proceso que recibe un String y lo transforma al comando deseado
procesoExec(Server, String, Comando) -> 
    Server ! { self(), {String, Comando}},
    receive
        {Server, ResultString} -> ResultString
    end.
