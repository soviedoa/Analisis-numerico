disp('MÉTODO: newton');
x=input('Ingrese la funcion: ', 's'); 
f=inline(x); 
d=input('Ingrese la derivada: ', 's');
derivada = inline(d);
x0=input('Ingrese la aproximacion Xo: '); 
tol=input('Ingrese la tolerancia : ');  
n=input('Ingrese el numero de iteraciones: ');
y=f(x0); 
dy=derivada(x0); 
error=tol+1; 
contador = 0; 
while y ~= 0 && error > tol && contador < n && dy ~= 0 
    x1 = x0 - (y/dy); 
    y = f(x1); 
    dy = derivada(x1); 
    error = abs(x1-x0); 
    x0 = x1;
    contador = contador + 1;
    convergencia=((error)/(error)^2);
    table(k,1) = k;
    table(k,2) = x1;
    table(k,3) = y;
    table(k,4) = errorabs;
    table(k,5) =convergencia;
    k=k+1
end
table
if y==0
    fprintf('La Raiz Encontrada Fue : %f \n',x0);
end
if error < tol 
    fprintf('La raiz rncontrada: %g posee un error de %g\n',x0,error); 
elseif dy == 0 
    fprintf('posiblemente tiene una raiz multiple, se recomienda el uso del metodo de raices multiples para este caso\n');
else
    fprintf('intente con otro numero de iteraciones u otro intervalo');
end