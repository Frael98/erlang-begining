-module(patternYguard).
-export([factorial/1, convertidor/2, facto/1, 
    greet/1, comparacion/1, comparacion2/1]).

%
factorial(0) -> 1;
% Si la condicional esta mal hecha tons lanza error, no hay clausula cuando Number sea 1
factorial(Number) when (Number > 1) -> Number * (factorial(Number - 1)).
% exception error: no function clause matching 
%                    functions:factorial(1) (functions.erl, line 4)
%     in function  functions:factorial/1 (functions.erl, line 5)

% Guarda bien hecha
facto(0) -> 1;
facto(Number) when (Number >= 1) -> Number * (factorial(Number - 1)).

% Primera Clausula
convertidor({fahrenheit, Temp}, toCelsius) ->
    {toCelsius, 5 * (Temp - 32) / 9};
% Segunda Clausula
convertidor({celsius, Temp}, toFahrenheit) ->
    {toFahrenheit, 32 + Temp * 9 / 5};
% Tercera Clausula
convertidor({reaumur, Temp}, toCelsius) ->
    {toCelsius, 10 * Temp / 8};
% Cuarta Clausula
convertidor({X, _}, Y) ->
    {cant, convert, X, to ,Y}.



%% similitud a bucle for
greet (0) -> ok;
greet (N) ->
    io:format("Hello world ~w \n", [N]),
    greet(N-1).

%% Sentencia if
comparacion(Numero) -> 
    % comparacion igual
    if Numero =:= 12 -> 
        {Numero =:= 12};
     true -> 
        {"Falso"} end. % true

%% The when in Erlang is a guard on a clause
comparacion2(Numero) when Numero == 0 -> Numero == 12; % asignacion
comparacion2(Numero) when Numero >= 12 -> {"Hello wolrd"}; % true
comparacion2(Numero) when Numero rem 2 =:= 0 -> {"Numero es par"}. % true

