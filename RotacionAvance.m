function robots = RotacionAvance(robots,DELTA_ROTACION,N,W,ALFA,PASO)
%Funcion que realiza una iteracion del simulador para todos los robots

    for i=1:N
        for j=1:N
            thetha(j)=BarridoFrecuencia(i,j,robots,DELTA_ROTACION,ALFA,N);
        end
        thethaProm=dot(W,thetha)/N;
        %thethaT = gaussiana(thethaProm,sigmaThetha);
        robots(i).thetha=robots(i).thetha+thethaProm;
        if robots(i).clustered == 0
            robots(i).posicionRect(1) = robots(i).posicionRect(1)+PASO * cos(robots(i).thetha);
            robots(i).posicionRect(2) = robots(i).posicionRect(2)+PASO * sin(robots(i).thetha);
            robots(i).posicionPol.radioPol = sqrt( (robots(i).posicionRect(1)^2)+(robots(i).posicionRect(2)^2) );
            robots(i).posicionPol.anguloPol = atan2(robots(i).posicionRect(2),robots(i).posicionRect(1)); 
        end
    end
end

