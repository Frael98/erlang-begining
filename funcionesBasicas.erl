-module(funcionesBasicas).
-export([start/0]). %%


start() -> 
    Nombre = io:get_line("Funciones en Erlang, por favor digite su nombre: "),
    loop(Nombre).
    
loop(Nombre) ->
    io:format("\n Bienvenido  ~s \n",[Nombre]),
    io:format("Selecciones una accion a realizar \n",[]),
    io:format("1. multiplicar \n",[]),
    io:format("2. dividir  \n",[]),
    io:format("3. residuo \n",[]),
    io:format("4. invertir cadena  \n",[]),
    io:format("5. cadena a mayusculas \n",[]),
    io:format("6. cadena a minusculas \n",[]),
    io:format("7. Potencia: \n",[]),
    io:format("8. sucesion de fibonacci O(n) \n",[]),
    io:format("9. sucesion de fibonacci O(2^n) \n",[]),
    io:format("10. factorial \n",[]),
    {ok, Opt } = io:read("Opcion: "),
    case Opt of
            1 -> 
                io:format("Multiplicacion : \n",[]),
                {ok, N1} = io:read("Numero 1: "),
                {ok, N2} = io:read("Numero 2: "),
                io:format("Resultado: ~w \n",[multiplicar(N1, N2)]),
                loop(Nombre);
            2 ->
                io:format("Division : \n",[]),
                {ok, N1} = io:read("Numero 1: "),
                {ok, N2} = io:read("Numero 2: "),
                io:format("Resultado: ~w \n",[dividir(N1, N2)]),
                loop(Nombre);
            3 ->
                io:format("Residuo : \n",[]),
                {ok, N1} = io:read("Numero 1: "),
                {ok, N2} = io:read("Numero 2: "),
                io:format("Resultado: ~w \n",[residuo(N1, N2)]),
                loop(Nombre);
            4 -> 
                io:format("Invertir cadena : \n",[]),
                String = io:get_line("Texto: "),
                io:format("Resultado: ~s \n",[invertirString(String)]),
                loop(Nombre);
            5 -> 
                io:format("Cadena a Minusculas : \n",[]),
                String = io:get_line("Texto: "),
                io:format("Resultado: ~s \n",[aMinusculas(String)]),
                loop(Nombre);
            6 -> 
                io:format("Cadena a Mayusculas : \n",[]),
                String = io:get_line("Texto: "),
                io:format("Resultado: ~w \n",[aMayusculas(String)]),
                loop(Nombre);
            7 ->
                io:format("Potencia : \n",[]),
                {ok, N1} = io:read("Numero: "),
                io:format("Resultado: ~w \n",[potencia(N1)]),
                loop(Nombre);
            8 ->
                io:format("Fibonacci Veloz: \n",[]),
                {ok, N1} = io:read("Posicion: "),
                io:format("Resultado: ~w \n",[fibo(N1)]),
                loop(Nombre);
            9 ->
                io:format("Fibonacci no tan veloz: \n",[]),
                {ok, N1} = io:read("Posicion: "),
                io:format("Resultado: ~w \n",[fib(N1)]),
                loop(Nombre);
            10 ->
                io:format("Factorial : \n",[]),
                {ok, N1} = io:read("Numero: "),
                io:format("Resultado: ~w \n",[facto(N1)]),
                loop(Nombre);
            _->
                io:format("Fin de la transmision \n")end.

multiplicar(N1, N2) -> N1 * N2.
dividir(N1, N2) -> N1 div N2.
residuo(N1, N2) -> N1 rem N2.
invertirString(String) -> string:reverse(String).
aMinusculas(String) -> string:to_lower(String).
aMayusculas(String) -> string:to_upper(String).
potencia(N) -> math:erf(N).

%% Fibonacci O(n)
fibo(0)->0;
fibo(N)->fibo(N,0,1,1).

fibo(N,_Fi1,Fi,N)->Fi;
fibo(N,Fi1,Fi,I)->fibo(N,Fi,Fi1+Fi,I+1).

% Guarda bien hecha
facto(0) -> 1;
facto(Number) when (Number >= 1) -> Number * (facto(Number - 1)).

%% Fibonacci O(2^n)
fib(0)->0;
fib(1)->1;
fib(N)->fib(N-1)+fib(N-2).

