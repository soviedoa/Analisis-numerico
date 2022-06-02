disp('MÉTODO: eliminación Gauss con pivoteo total');
disp('Nota: tenga en cuenta que si digita un espacio es el valor siguiente ')
A = input('en esa fila e digitar un punto y coma es ingresar una nueva fila y encierrelos en corchetes. ');
disp('Ingrese el vector b')
b = input('Nota: tenga encuenta que para cambiar de fila en el vector debe digitar un punto y coma y encierrelos en corchetes. ');
disp(' ')

function [ret] = pivoteo_total(A,b)

[m n]=size(A);
matriz=[A b]

if det(A)==0
    disp('El sistema no tiene solucion porque su determinante es 0');
elseif n~=m
    disp('La matriz no es cuadrada')
elseif n==m && det(a)~=0
    for i=1:n
        marcas(i,1)=i;
    end
    for c=1:n-1
        mayor=abs(matriz(c,c)); 
        fm=c;
        cm=c;
        for f=c:n
            for j=c:n
                if abs(matriz(f,j))>mayor 
                    mayor=abs(matriz(f,j));
                    fm=f; 
                    cm=j; 
                end
            end
        end
        if fm~=c
            aux=matriz(fm,:); 
            matriz(fm,:)=matriz(c,:);
            matriz(c,:)=aux;
        end
        if cm~=c
            aux=matriz(:,cm);
            matriz(:,cm)=matriz(:,c);
            matriz(:,c)=aux;
            aux=marcas(cm,1);
            marcas(cm,1)=marcas(c,1); 
            marcas(c,1)=aux;
        end
        for f=c+1:n
            multiplicador=matriz(f,c)/matriz(c,c);
            for i=1:n+1
                matriz(f,i)=matriz(f,i)-multiplicador*matriz(c,i);
            end
        end
    end
            
    disp('Matriz triangular superior:')
    disp(matriz)
    for i=n:-1:1
        suma=0;
        for s=i+1:n
            suma=suma+matriz(i,s)*x(s,1);
        end
        x(i,1)=(matriz(i,n+1)-suma)/matriz(i,i); 
    end

    disp('Soluciones para la matriz: ')
    disp(x)
    disp('orden de las varaiables Xn')
    disp(marcas)
end
end