disp('MÉTODO: regla falsa');
y=input('Ingrese La Funcion : ', 's'); 
f=inline(y); 
disp('Cree el intervalo en el cual se va a aplicar el método [a,b]');
a=input('Ingrese el punto (a): '); 
b=input('Ingrese el punto (b): '); 
tol = input ('Ingrese la tolerancia: '); 
n = input ('Ingrese el numero de iteraciones: '); 
fa=f(a); 
fb=f(b);

if fa==0
    fprintf('El punto a es una raiz  : %g \n',a); 
elseif fb==0 
    fprintf('La Raiz Dentro Del Intervalo Ingresado Es  : %g \n',b); 
elseif fa*fb >0
    fprintf('el intervalo dado no contiene una raiz, Por favor Ingrese Otro Intervalo'); 
else 
    xm=a-f(a)*(b-a)/(f(b)-f(a)); 
    fxm=f(xm); 
    error=tol+1; 
    k=1;            
    while fxm~=0 && error>tol && k<n
        if fa*fxm<0 
            b=xm;
            fb=fxm;
        else 
            a=xm;
            fa=fxm;
        end
    x2=xm; 
    xm= a-f(a)*(b-a)/(f(b)-f(a));
    fxm=f(xm);
    error=abs(xm-x2); 
    table(k,1) = k
    table(k,2) = xm;
    table(k,3) = fxm;
    table(k,4)=error;
    k=k+1;
    end
    table
    if fxm==0 
        fprintf('La raiz en el intervalo dado es: %g \n',xm);
    elseif error<tol
        fprintf('La raiz en el intervalo [a,b] es: (%g) con un error de:%g \n',xm,error);
    else
        fprintf('intente con otro numero de iteraciones u otro intervalo \n');
    end
end