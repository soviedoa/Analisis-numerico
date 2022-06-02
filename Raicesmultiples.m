disp('MÉTODO: raíces múltiples');
x=input('Ingrese la funcion:', 's'); 
f=inline(x); 
a=input('Ingrese la primera derivada: ', 's'); 
b=input('Ingrese la segunda derivada: ', 's'); 
d1=inline(a); 
d2=inline(b); 
x0=input('Ingrese la aproximacion Xo: '); 
tol=input('Ingrese la tolerancia: ');  
n=input('Ingrese el número de iteraciones: ');
y=f(x0); 
dy=d1(x0); 
d2y=d2(x0);
error=tol+1; 
contador=1;
while y ~= 0 && error > tol && contador < n && dy ~= 0 
    x1 = x0 - y*dy/(dy^2-y*d2y); 
    y=f(x1); 
    dy=d1(x1);
    d2y=d2(x1); 
    error=abs(x1-x0);
    table(contador,1) = contador;
    table(contador,2) = x1;
    table(contador,3) = y;
    table(contador,4) = errorabs;
    x0 = x1;
    contador = contador + 1 ;
end
table
if y == 0
    fprintf('La raiz es: %g \n',x0); 
elseif error < tol 
    fprintf('La raiz es: %g, con un error de %g\n',x0,error);
elseif dy == 0
    fprintf('Ingrese una aproximacion diferente');
else  
    fprintf('intente con otro numero de iteraciones u otro intervalo');
end