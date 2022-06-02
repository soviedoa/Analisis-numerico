disp('MÉTODO: Gauss-Seidel');
disp('Ingrese la matriz A: ')
disp('Nota: tenga en cuenta que si digita un espacio es el valor siguiente ')
A = input('en esa fila e digitar un punto y coma es ingresar una nueva fila. ');
disp('Ingrese el vector b')
b = input('Nota: tenga encuenta que para cambiar de fila en el vector debe digitar un punto y coma. ');
x=input('Ingrese el valor inicial: '); 
tol=input('Tolerancia: ');
[n,m]=size(A);

if n~=m
    fprintf('\n\n La matriz no es cuadrada \n\n');
elseif det(a)==0
    fprintf('\n\n El sistema no tiene solucion porque su determinante es 0 \n\n');
elseif n==m && det(a)~=0
    d=diag(diag(a));
    disp(d);
    l=d-tril(a)
    u=d-triu(a)
    T=inv(d-l)*u;
    respectral=max(abs(eig(T)));
    disp('La Matriz T Es: ')
    disp(T)
    disp(' ')
    disp('Con Un Radio Espectral de')
    disp(respectral)
    disp(' ')
    C=inv(d-l)*b;
    i=0;
    error=tol+1;
    while error>tol && respectral<1
        xi=T*x+C;
        i=i+1; 
        error=norm(xi-x);
        x=xi;
    end
    if respectral>=1
        fprintf('\n\n El sistema diverge porque el radio espectral es mayor a 1 \n\n');
    else
    disp(' ')
    disp('El vector solución es: ') 
    disp(xi')
    disp(' ')
    disp('El número de iteraciones: ')
    disp(i)
    disp(' ')
    disp('Con un error de: ')
    disp(error)
    disp(' ')
    end
end