disp('MÉTODO: Jacobi');
disp('Ingrese la matriz A: ')
disp('Nota: tenga en cuenta que si digita un espacio es el valor siguiente ')
A = input('en esa fila e digitar un punto y coma es ingresar una nueva fila y encierrelos en corchetes. ');
disp('Ingrese el vector b')
b = input('Nota: tenga encuenta que para cambiar de fila en el vector debe digitar un punto y coma y encierrelos en corchetes. ');
x=input('Ingrese el valor inicial: '); 
tol=input('Tolerancia: ');
[n,m]=size(A);

if n~=m
    fprintf('\n\n La matriz no es cuadrada \n\n');
elseif det(A)==0
    fprintf('\n\n El sistema no tiene solucion porque su determinante es 0 \n\n');
elseif n==m && det(A)~=0
    disp(' ')
    d=diag(diag(A))
    l=d-tril(A)
    u=d-triu(A)
    T=d^-1*(l+u);
    respectral=max(abs(eig(T)));
    disp(' ')
    disp('La matriz T es: ')
    disp(T)
    disp(' ')
    disp('Con un radio espectral de: ')
    disp(respectral)
    disp(' ')
    C=d^-1*b;
    i=0;
    error=tol+1;
    while error>tol && respectral<1
        xi=T*x+C;
        i=i+1; 
        error=norm(xi-x);
        x=xi;
    end
end
if respectral>=1
    fprintf('\n\n El sistema diverge porque el radio espectral es mayor a 1 \n\n');
else
    disp(' ')
    disp('El vector solución al sistema es: ') 
    disp(xi)
    disp(' ')
    disp('El número de iteraciones: ')
    disp(i)
    disp(' ')
    disp('Con un error de: ')
    disp(error)
    disp(' ')
end
