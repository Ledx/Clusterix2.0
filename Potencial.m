function pot=Potencial(x1,x2,A,ALPHA)
%Funcion que calcula la distancia de un vector a otro
    
    d=norm(x1-x2);
    pot=A/(d^ALPHA);

end