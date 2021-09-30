#metodo matricial
clc;
#matriz a resolver
fprintf("Matriz a resolver");
fprintf("\n");
matriz=[1 1 3 -2;2 -4 7 2;3 -2 9 -1;1 3 -1 -1]
fprintf("incognitas de la mtriz");
fprintf("\n");
#incognitas de las matrices
b=[3;-1;6;0]
fprintf("Resultado");
fprintf("\n");
inv(matriz)*b