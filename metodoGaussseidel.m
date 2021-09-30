#metodo Gauss seidel 
clc;
cantidadIteraciones = input("Ingrese las iteraciones:")

b1 = 1; b2 = -2; b3 = 5;

x=0; y=0; z=0 ;i=0;
function ea = erroraproximado(xa,xp)
  ea = abs(((xa-(xp))/(xa))*100);
end
fprintf("%s\t %s\t %s\t %s\t %s\t %s\t %s\t %s\n",'i','x','y','z','|Ex|','|Ey|','|Ex|');
fprintf("\n");
while(i< cantidadIteraciones)
xn=(2*(y)+3*(z)+1)/8;
x=xn;
yn=(4*(x)+6*(z)-2)/12;
y=yn;
zn=(7*(x)+8*(y)+5)/15;
z=zn;
fprintf('%.0f\t',i);
fprintf('%.4f\t',xn);
fprintf('%.4f\t',yn);
fprintf('%.4f\t',zn);
i++;
 if i>1
  fprintf('%.4f\t',erroraproximado(xn, xi));
fprintf('%.4f\t',erroraproximado(yn, yi));
fprintf('%.4f\t',erroraproximado(zn, zi));
 end
xi=xn;
yi=yn;
zi=zn;
fprintf("\n");
end
fprintf("\n");
fprintf("solucion para x = %.4f\t\n",x);
fprintf("solucion para y = %.4f\t\n",y);
fprintf("solucion para z = %.4f\t\n",z);
fprintf('b1 =%.2f\t\n',8*x + 2*y + 3*z);
fprintf('b2 =%.2f\t\n',4*x + 12*y + 6*z);
fprintf('b3 =%.2f\t\n',7*x + 8*y + 15*z);
fprintf("\n");