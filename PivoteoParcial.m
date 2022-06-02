disp('MÉTODO: eliminación Gauss con pivoteo parcial');
disp('Nota: tenga en cuenta que si digita un espacio es el valor siguiente ')
A = input('en esa fila e digitar un punto y coma es ingresar una nueva fila y encierrelos en corchetes. ');
disp('Ingrese el vector b')
b = input('Nota: tenga encuenta que para cambiar de fila en el vector debe digitar un punto y coma y encierrelos en corchetes. ');
AB=[A,b]; 
[n,m]=size(A);

if det(A)==0
    disp('El sistema no tiene solucion porque su determinante es 0');
elseif n~=m
    disp('La matriz no es cuadrada')
elseif n==m && det(a)~=0
    for k=1:n
        mayor=abs(AB(k,k));
        fila=k;
        for s=k+1:n
            if abs(AB(s,k))>mayor
                mayor=AB(s,k);
                fila=s;
            end
        end
        if fila~=k
            aux=AB(k,:);
            AB(k,:)=AB(fila,:);
            AB(fila,:)=aux;
        end 
    disp('');
    disp('La matriz AB en esta etapa es: ');
    disp(AB); 
    disp('');

    for t=1:n-1
        for i=(t+1):n
            mult(i,t)=AB(i,t)/AB(t,t);
            for j=t:n+1
                AB(i,j)=AB(i,j)-mult(i,t)*AB(t,j);
            end
        end 
    end
end

X(n)=AB(n,n+1)/AB(n,n);

for i=n-1:-1:1
    suma=0;
    for p=i+1:n
        suma = suma + AB(i,p)*X(p);
    end
    X(1,i)=(AB(i,n+1)-suma)/(AB(i,i));
end

disp(' ')
disp('El vector solucigón es: ')
disp(X)
disp(' ');