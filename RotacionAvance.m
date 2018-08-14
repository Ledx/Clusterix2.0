function robots = RotacionAvance(robots,DELTA_ROTACION,N,W,ALFA_POTENCIAL,DELTA_AVANCE,SIGMA_ROTACION)
%Funcion que realiza una iteracion del simulador para todos los robots

    format long
    for robot_actual=1:N
        tic
        
        thetha = [];
        thethaProm = 0;
        
        for frecuencia=1:N
            thetha(frecuencia) = BarridoFrecuencia(robot_actual,frecuencia,robots,DELTA_ROTACION,ALFA_POTENCIAL,N,SIGMA_ROTACION);
        end
        thethaProm=dot(W,thetha)/N;
        %thethaT = gaussiana(thethaProm,sigmaThetha);
        %for giro=1:round(thethaProm)
            %robots(robot_actual).thetha = robots(robot_actual).thetha + normrnd((pi/180),SIGMA_ROTACION);
            robots(robot_actual).thetha = normrnd(thethaProm,SIGMA_ROTACION);
            robots(robot_actual).thethaG = robots(robot_actual).thetha*(180/pi);
        %end
        if robots(robot_actual).clustered == 0
            robots(robot_actual).posicionRect.x = robots(robot_actual).posicionRect.x+DELTA_AVANCE * cos(robots(robot_actual).thetha);
            robots(robot_actual).posicionRect.y = robots(robot_actual).posicionRect.y+DELTA_AVANCE * sin(robots(robot_actual).thetha);
            robots(robot_actual).pasos = robots(robot_actual).pasos+1;
        end
        robots(robot_actual).tiempo = robots(robot_actual).tiempo + toc;
    end
end

