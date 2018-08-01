function pot=Potencial(x1,x2,A_POTENCIAL,ALFA_POTENCIAL)
%Funcion que calcula la distancia de un vector a otro
    
    d=norm(x1-x2);
    pot=A_POTENCIAL/(d^ALFA_POTENCIAL);

end