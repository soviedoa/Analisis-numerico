disp('MÉTODO: eliminación Gauss simple');
disp('Nota: tenga en cuenta que si digita un espacio es el valor siguiente ')
A = input('en esa fila e digitar un punto y coma es ingresar una nueva fila y encierrelos en corchetes. ');
disp('Ingrese el vector b')
b = input('Nota: tenga encuenta que para cambiar de fila en el vector debe digitar un punto y coma y encierrelos en corchetes. ');
AB=[A,b];
[n,m]=size(A);
disp('')

if det(A)==0
    disp('El sistema no tiene solucion porque su determinante es 0');
elseif n~=m
    disp('La matriz no es cuadrada')
elseif n==m && det(A)~=0
    for k=1:n-1
        for i=(k+1):n
            mult(i,k)=AB(i,k)/AB(k,k);
                for j=k:n+1
                    AB(i,j)=AB(i,j)-mult(i,k)*AB(k,j)
                end
        end
    end
end
AB;

X(n)=AB(n,n+1)/AB(n,n);

for i=n-1:-1:1
    suma=0;
    for p=i+1:n
        suma = suma + AB(i,p)*X(p);
    end
    X(1,i)=(AB(i,n+1)-suma)/(AB(i,i))
end

disp(' ')
disp('El vector solución es: ');
disp(X)
disp(' ')