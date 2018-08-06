function robots = RotacionAvance(robots,DELTA_ROTACION,N,W,ALFA_POTENCIAL,DELTA_AVANCE)
%Funcion que realiza una iteracion del simulador para todos los robots

    for robot_actual=1:N
        tic
        for frecuencia=1:N
            thetha(frecuencia)=BarridoFrecuencia(robot_actual,frecuencia,robots,DELTA_ROTACION,ALFA_POTENCIAL,N);
        end
        thethaProm=dot(W,thetha)/N;
        %thethaT = gaussiana(thethaProm,sigmaThetha);
        robots(robot_actual).thetha=robots(robot_actual).thetha+thethaProm;
        if robots(robot_actual).clustered == 0
            robots(robot_actual).posicionRect.x = robots(robot_actual).posicionRect.x+DELTA_AVANCE * cos(robots(robot_actual).thetha);
            robots(robot_actual).posicionRect.y = robots(robot_actual).posicionRect.y+DELTA_AVANCE * sin(robots(robot_actual).thetha);
            robots(robot_actual).posicionPol.radioPol = sqrt( (robots(robot_actual).posicionRect.x^2)+(robots(robot_actual).posicionRect.y^2) );
            robots(robot_actual).posicionPol.anguloPol = atan2(robots(robot_actual).posicionRect.y,robots(robot_actual).posicionRect.x); 
            robots(robot_actual).pasos = robots(robot_actual).pasos+1;
        end
        robots(robot_actual).tiempo = robots(robot_actual).tiempo + toc;
    end
end

