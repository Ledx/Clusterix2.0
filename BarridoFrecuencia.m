function thetha = BarridoFrecuencia(i,frecuencia,robots,DELTA_ROTACION,ALFA_POTENCIAL,N)
%Funcion que realiza la rotacion y el calculo de un angulo en una
%frecuencia

    giro=0;
    compx=0;
    compy=0;
    while giro<=(2*pi)
        k = 1;
        eta = [];
        phi = [];
        for c=1:N
            if i ~= c && robots(c).clase >= frecuencia
                alfa= atan2(robots(c).posicionRect.y-robots(i).posicionRect.y,robots(c).posicionRect.x-robots(i).posicionRect.x);
                eta(k)= LobuloCos( robots(i).thetha-alfa);
                phi(k) = Potencial([robots(i).posicionRect.x,robots(i).posicionRect.y],[robots(c).posicionRect.x,robots(c).posicionRect.y],robots(c).constante_potencial,ALFA_POTENCIAL);
                k=k+1;
            end
        end
        potencialDireccional = dot(eta,phi);
        robots(i).thetha = robots(i).thetha + DELTA_ROTACION;
        compx = potencialDireccional*cos(robots(i).thetha)+compx;
        compy = potencialDireccional*sin(robots(i).thetha)+compy;
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

