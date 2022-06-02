disp('MÉTODO: secante');
x=input('Ingrese la funcion : ', 's'); 
f=inline(x); 
disp('Cree el intervalo en cual se va a aplicar el método [a,b]');
a=input('Ingrese (a): '); 
b=input('Ingrese (b): '); 
tol=input('Ingrese la tolerancia: '); 
n=input('Ingrese el número de iteraciones: '); 
fa = f(a);
fb = f(b);
contador=0;

if fa==0
    fprintf('El punto a es una raiz: %g \n',a); 
elseif fb==0
    fprintf('El punto b es una raiz: %g \n',b); 
elseif fa*fb >0
    fprintf('El intervalo dado no contiene una raiz, por favor ingrese otro intervalo \n'); 
else 
    xm=a-f(a)*(b-a)/(f(b)-f(a));
    fxm=f(xm); 
    error=tol+1;           
    while fxm~=0 && error>tol && contador<n 
        a=xm;
        x2=xm; 
        xm=a-f(a)*(b-a)/(f(b)-f(a)); 
        fxm=f(xm);
        error=abs(xm-x2); 
        contador=contador+1;
        table(k,1) = k;
        table(k,2) = xm;
        table(k,3) = fxm; 
        table(k,4) = error;
        k = k+1;
    end
    table
    if fxm==0 
        fprintf('La raiz en el intervalo es: %g \n',xm);
    elseif error<tol 
        fprintf( 'La raiz en el intervalo es: (%g), con un error de: %g \n',xm,error);
    else
        fprintf('Intente con otro el numero de iteraciones u otro intervalo\n');
    end
end