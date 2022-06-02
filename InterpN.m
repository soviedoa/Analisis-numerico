disp('MÉTODO: Newton')
disp('Ingrese los puntos: ')
x=[];
y=[];
x = input('Nota: cada que ingrese un punto, digite un punto y coma y encierrelos en corchetes. ');
disp('Ingrese las imágenes de los puntos: ')
y = input('Nota: cada que ingrese un punto, digite un punto y coma y encierrelos en corchetes. ');
polinomio = InterpN(x,y)
function c = InterpN(x,y)
    n = length(x); c = zeros(n,1); c(1) = y(1);
    if n > 1
        c(2:n) = InterpN(x(2:n),(y(2:n)-y(1))./(x(2:n)-x(1)));
end
