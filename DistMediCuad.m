function d=DistMediCuad(x1,x2)
%Funcion que calcula la distancia de un vector a otro
    dim=length(x1);
    x=0;
    for i=1:dim
        x=(x1(i)-x2(i))^2+x;
    end
    d=sqrt(x);

end