disp('MÉTODO: Vandermonde')
disp('Ingrese los puntos: ')
x = input('Nota: cada que ingrese un punto, digite un punto y coma y encierrelos en corchetes. ');
disp('Ingrese las imágenes de los puntos: ')
y = input('Nota: cada que ingrese un punto, digite un punto y coma  y encierrelos en corchetes. ');
polinomio = InterpV(x,y)
function a = InterpV(x,y)
    n = length(x);
    V = ones(n,n);
    for j=2:n
        V(:,j) = x.*V(:,j-1);
    end
    a = V\y
end