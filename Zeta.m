function zeta=Zeta(ri,rc)
%Funcion que calcula la orientacion del robot lejano con respecto del eje
%principal del lobulo de la antena de medicion del robot actual

    zeta = atan2(rc.posicionRect(2)-ri.posicionRect(2),rc.posicionRect(1)-ri.posicionRect(1));
    
   
end