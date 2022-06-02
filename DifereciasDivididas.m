disp('MÉTODO: diferencias divididas')
disp('Ingrese los puntos: ')
x = input('Nota: cada que ingrese un punto, digite un punto y coma y encierrelos en corchetes. ');
disp('Ingrese las imágenes de los puntos: ')
y = input('Nota: cada que ingrese un punto, digite un punto y coma  y encierrelos en corchetes. ');
xa=x;ya=y;
d=zeros(length(y));
d(:,1)=y';
for k=2:length(x)
    for j=1:length(x)+1-k
        d(j,k)=(d(j+1,k-1)-d(j,k-1))/(x(j+k-1)-x(j));
    end
end

for w=1:length(x)
    ds=num2str(abs(d(1,w)));
        %los valores numericos de la matriz “ds” en las coordenadas (1,w) se transforman en “string”, cuyos valores no serán modificados después, y serán mostrados al final en “presentación de resultados”
    if w>1
        if x(w-1)<0
            sg1='+';
        else
            sg1='-';

        end
    end
    if d(1,w)<0
        sg2='-';
    else
        sg2='+';
    end
    if w==1
        acum=num2str(d(1,1));
    elseif w==2
        polinact=['(x' sg1 num2str(abs(x(w-1))) ')' ];
        actual=[ds '*' polinact];
        acum=[acum sg2 actual];
    else
    polinact=[polinact '.*' '(x' sg1 num2str(abs(x(w-1))) ')' ];
    actual=[ds '*' polinact];
    acum=[acum sg2 actual];
    end
end

fprintf('los valores de X e Y son');
disp(xa);
disp(ya);
fprintf('El polinomio obtenido es: %s ',acum);
