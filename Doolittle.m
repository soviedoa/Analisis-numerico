disp('MÉTODO: Doolittle');
disp('Ingrese la matriz A: ')
disp('Nota: tenga en cuenta que si digita un espacio es el valor siguiente ')
A = input('en esa fila e digitar un punto y coma es ingresar una nueva fila. ');
disp('Ingrese el vector b')
b = input('Nota: tenga encuenta que para cambiar de fila en el vector debe digitar un punto y coma. ');

if n~=m
    fprintf('\n\n La matriz no es cuadrada \n\n');
elseif det(A)==0
    disp('El sistema no tiene solucion porque su determinante es 0')
else
    n=length(b);
    for j = 1:n
        U(1,j) = A(1,j);
    end
    for i = 1:n
        L(i,1) = A(i,1)/U(1,1);
    end
    for k=2:n
        for  j = k:n
            suma = 0;
        for p = 1:k-1
            suma = suma + L(k,p)*U(p,j);
        end
        U(k,j) = (A(k,j)-suma);
    end
    for i=k:n
        suma = 0;
        for p = 1:k-1
            suma = suma + L(i,p)*U(p,k)
        end
        L(i,k) = (A(i,k)-suma)/U(k,k)
    end
end

disp('Matriz L = ');
disp(L);
disp(' ')
disp('Matriz U = ');
disp(U);
disp(' ')

    for i=1:n
        suma = 0;
        for p = 1:i-1
            suma=suma+L(i,p)*Z(p,1);
        end
        Z(i,1)=(b(i,1)-suma)/L(i,i)
    end

    disp('Matriz Z = ');
    disp(Z);
    disp(' ')

    for i=n:-1:1
        suma=0;
        for p=i+1:n
            suma=suma+U(i,p)*X(p,1);
        end
        X(i,1)=(Z(i,1)-suma)/U(i,i)
    end

    disp(' ')
    disp('El vector solución es = ')
    disp(X)
    disp(' ')
end