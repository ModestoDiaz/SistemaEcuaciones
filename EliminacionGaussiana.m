% ELIMINACION GAUSSIANA 
clc %permite borrar el área de trabajo
clear %permite borrar las variables almacenadas
format long %permite utilizar la maxima capacidad de la maquina
fprintf('ELIMINACION GAUSSIANA\n\n\n');
%fprintf me permite ingresar comentarios de manera textual que pueden
%orientar al usuario en el uso del programa
%input es un comando de solicitud de entrada de datos del usuario.
fprintf('Las matrices A y b deben ser ingresadas entre corchetes separando las \n');
fprintf('columnas mediante coma y las filas mediante punto y coma\n\n');
A=input('Ingrese la matriz A =');
b=input('Ingrese el vector b=');
%permite obtener el tamaño de la matriz A
[n,m]=size(A);
C=[A,b];
% la matriz C, representa la forma de la matriz aumentada [Ab]
fprintf('\nLa Matriz C, que corresponte a la matriz aumentada [Ab] es = \n');
disp(C); % la funcion disp nos permite imprimir una variable en el espacio de trabajo
if n==m
for k=1:(n-1)%instruccion iterativa que permite repetir pasos un
%numero determinado de veces
fprintf('\nETAPA %g=\n\n',k)
fprintf('\nLa matriz correspondiente antes del proceso:\n')
disp(C)
fprintf('\nLos Multiplicadores en esta etapa son:\n')
for i=(k+1):n
m(i,k)=C(i,k)/C(k,k); %formula para hallar los multiplicadores
fprintf('\nm(%g,%g)=',i,k)
disp(m(i,k));
for j=k:(n+1)
C(i,j)= C(i,j) - m(i,k)*C(k,j); %formula de la nueva fila
end
end
fprintf('\nLa matriz correspondiente despues del proceso:\n\n')
disp(C)
end
for i=n:-1:1
suma=0;
for p=(i+1):n
suma = suma + C(i,p)*X(p);
end
X(i)=(C(i,n+1)-suma)/C(i,i);
%formula de la susticion regresiva y solucion de las variables
end
else %funcion asignada del if, en caso de que este sea falso
fprintf('\nERROR: La matriz NO es cuadrada\n');
end
fprintf('\nSOLUCIÓN:\n');

fprintf('\nLa matriz Ab final:\n');
disp(C)
fprintf('\nLa solucion de X1 hasta Xn es:\n');
%a continuacion de utiliza una instruccion for, para mostrar el usuario,
%los resultados de una manera más ordenada
for i=1:n
Xi=X(1,i);
fprintf('\nX%g=',i)
disp(Xi);
end