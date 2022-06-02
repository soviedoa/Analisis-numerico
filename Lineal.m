disp('MÉTODO: trazadores lineales')
disp('Ingrese los puntos: ')
x = input('Nota: cada que ingrese un punto, digite un punto y coma y encierrelos en corchetes. ');
disp('Ingrese las imágenes de los puntos: ')
y = input('Nota: cada que ingrese un punto, digite un punto y coma  y encierrelos en corchetes. ');
polinomio=lineal(x,y)
function P=lineal(x,y)
    n=length(x);
    P=cell(1,n);
    P{1}=0;
    for i=2:n
        P{i}= P{i-1}+y(i-1)*(x(i)-n)/(x(i)-x(i-1))+y(i)*(n-x(i-1))/(x(i)-x(i-1));
    end
end
