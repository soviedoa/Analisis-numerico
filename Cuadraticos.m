disp('MÉTODO: Vandermonde')
disp('Ingrese los puntos: ')
x = input('Nota: cada que ingrese un punto, digite un punto y coma y encierrelos en corchetes. ');
disp('Ingrese las imágenes de los puntos: ')
y = input('Nota: cada que ingrese un punto, digite un punto y coma  y encierrelos en corchetes. ');
polinomio=cuadratico(x,y)
function P = cuadratico(x,y)
    k = length(x); 
    n = 3*(k-1);  
    A = zeros(n);
    b = zeros(n,1);
    for i = 1:2*(k-1)
        if mod(i,2)==1
            b(i) = y((i+1)/2);  
        else
            b(i) = y(i/2+1); 
        end
    end
    for i=1:k-1
        A(2*i-1,3*(i-1)+1) = 1;      
        A(2*i-1,3*(i-1)+2) = x(i);    
        A(2*i-1,3*(i-1)+3) = x(i)^2;

        A(2*i, 3*(i-1)+1) = 1;      
        A(2*i,3*(i-1)+2) = x(i+1);    
        A(2*i,3*(i-1)+3) = x(i+1)^2;     
    end
    for i=1:k-2
        A(2*(k-1)+i,3*(i-1)+1+1) = 1;      
        A(2*(k-1)+i,3*(i-1)+1+4) = -1;         
        A(2*(k-1)+i,3*(i-1)+1+2) = 2*x(i+1);   
        A(2*(k-1)+i,3*(i-1)+1+5) = -2*x(i+1);   
    end
    A(n,3)=2;

    P = A\b;
end
