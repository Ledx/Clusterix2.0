function zeta=Zeta(ri,rc)
%Funcion que calcula la orientacion del robot lejano con respecto del eje
%principal del lobulo de la antena de medicion del robot actual

    zeta = atan2(rc.posicion(2)-ri.posicion(2),rc.posicion(1)-ri.posicion(1));
    
   
end