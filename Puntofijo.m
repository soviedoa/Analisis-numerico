disp('MÉTODO :  puntofijo');
x=input('Ingrese la funcion f(x): ', 's');
f=inline(x);
gx=input('Ingrese la funcion g(x): ', 's');
gx=inline(gx); 
x0=input ('Ingrese la aproximacion Xo: ');
tol=input('Ingrese la tolerancia : ');  
n=input('Ingrese el número de iteraciones: ');
y=f(x0); 
contador=0;                                                                                     
error=tol+1; 

while contador<n && y~=0 && error>tol 
    x1=gx(x0); 
    y=y(x1); 
    error=abs(x1-x0); 
    contador=contador+1; 
    x0=x1;
    table(k,1) = k;
    table(k,2) = x1;
    table(k,3) = y;
    table(k,4) = error;
    k=k+1
end 
table
if y==0 
    fprintf('x0=(%g) es una raiz\n',x0);
elseif error<tol 
    fprintf('x0=(%g) es raiz con un error de (%g)\n',x0,error); 
else
    fprintf('intente con otro numero de iteraciones u otro intervalo\n'); 
end 


