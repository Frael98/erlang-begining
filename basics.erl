-module(basics). % nombre del modulo - OBLIGATION indica a la maquina virtual que este es un modulo a compilar -> beam
-compile(export_all).
% Variables with first capital letter - OBLIGATION

% Strings
Atom = 'esta es un atom'. % atom con mas palabras
Atom1 =  flavio. % atom

Word = "Esto es un string".
% OPERADORES
Numero = 12. % asignacion
% comparacion igual
Numero =:= 12. % true
Numero == 12. % true
% no es igual
Numero =/= 12. % false
Numero /= 12. % false

Numero > 13. % false
Numero < 13. % true

% Division
Numero / 3. % 4.0
Numero div 3. % 4
% Residuo o modulo
Numero rem 3. % 0

% TUPLAS
Tupla = { adam, 24, 2.4, { joe, 25}}.
Tupla2 = { jose, mario, ariana}.
% metodos de tuplas, obtener elemento
element(1, Tupla). % trae el primer elemento de la tupla
element(4, Tupla). % {joe, 25}

% setear elemento
% params 1:  indice de elemento a setear
% params 2:  Tupla de referencia
% params 3:  nuevo valor
Nuevatupla = setelement(1, Tupla, juanito). % { juanito, 24, 2.4, { joe, 25}}


tuple_size(Tupla). % tamaño de la tupla 4
tuple_size(Tupla2). % 3

% LISTAS
Listas = [lunes, martes, miercoles, jueves, viernes].
ListaEntero = [1, 5, 3, 4].
Listadelista = [12, [45, 2], 56].

% Destructuracion de la lista
[First, Rest] = Listas. 
First. % lunes
Rest. % {martes, miercoles, jueves, viernes}

% Concatenar listas
ListaEntero ++ Listas.

% longitud
length(ListaEntero). % 4
length(Listadelista). % 3

% Las variables enlazadas son todas aquellas que han sido asignados un valor
% muestra las variables enlazadas
b(). 
% resetea las variables enlazadas
f().

% metodos de la libreria lists:
 % retorna el valor maximo
lists:max(ListaEntero).% 5
% Invierte el orden la lista
lists:inverse(ListaEntero). % [4, 3, 5, 1]
% ordena la lista
lists:sort(ListaEntero). % [1, 3, 4, 5]
% suma todos los elementos
lists:sum(ListaEntero). % 13
% Obtener un elemento
% param 1: indice
% param 2: lista
lists:nth(2, ListaEntero) % 3

% eliminar elemento de lista
% param 1: elemento a eliminar
% param 2: la lista
lists:delete(5, ListaEntero). % [1, 3 , 4]
lists:delete(lunes, Listas). % [martes, miercoles, jueves, viernes]

% Atom
A = 'my name is'.
string:to_upper(A)
B = 'YOUR NAME IS'.
string:to_lower(B).
C = "Este es otro string".
string:to_upper(C).
% separar string
string:split(C, " "). % ["Este","es otro string"]
string:split(C, " ", all). % ["Este","es","otro","string"]
% reverse
string:reverse(C). % "gnirts orto se etsE"


Language = "Javascript".
% Imprime string en unicode
io:format("~w~n", [Language]). % [74,97,118,97,115,99,114,105,112,116]

% Obtener unicode de string
$J. % 74
$A. % 65
$a. % 97
$3. % 51
