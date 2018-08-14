function thetha = BarridoFrecuencia(robot_referencia,frecuencia,robots,DELTA_ROTACION,ALFA_POTENCIAL,N,SIGMA_ROTACION)
%Funcion que realiza la rotacion y el calculo de un angulo en una
%frecuencia
    
    format long

    giro=0;
    compx=0;
    compy=0;
    while giro<=(2*pi)
        k = 1;
        eta = [];
        phi = [];
        
        for robot_lejano=1:N
            alfa = 0;
            alfa1 = 0;
            if robot_referencia ~= robot_lejano && robots(robot_lejano).clase >= frecuencia
                
                alfa= atan2(robots(robot_lejano).posicionRect.y-robots(robot_referencia).posicionRect.y,robots(robot_lejano).posicionRect.x-robots(robot_referencia).posicionRect.x);
                if alfa < 0
                    alfa = alfa + (2*pi);
                end
                alfa1 = abs(robots(robot_referencia).thetha-alfa);
                eta(k)= LobuloCos(alfa1);
                phi(k) = Potencial([robots(robot_referencia).posicionRect.x,robots(robot_referencia).posicionRect.y],[robots(robot_lejano).posicionRect.x,robots(robot_lejano).posicionRect.y],robots(robot_lejano).constante_potencial,ALFA_POTENCIAL);
                k=k+1;
            end
        end
        
        potencialDireccional = dot(eta,phi);
        robots(robot_referencia).thetha = robots(robot_referencia).thetha + normrnd(DELTA_ROTACION,SIGMA_ROTACION);
        if robots(robot_referencia).thetha > (2*pi)
            while robots(robot_referencia).thetha > (2*pi)
                robots(robot_referencia).thetha = robots(robot_referencia).thetha-(2*pi);
            end
        end
        robots(robot_referencia).thethaG = robots(robot_referencia).thetha * (180/pi);
        compx = ( potencialDireccional*cos(robots(robot_referencia).thetha) )+compx;
        compy = ( potencialDireccional*sin(robots(robot_referencia).thetha) )+compy;
        giro = giro + DELTA_ROTACION;
        
    end
    
    thetha = atan2(compy,compx);
    if thetha < 0
        while thetha < 0
            thetha=thetha+(2*pi);
        end
    end
    if thetha > (2*pi)
        while thetha > (2*pi)
            thetha=thetha-(2*pi);
        end
    end
    
end

