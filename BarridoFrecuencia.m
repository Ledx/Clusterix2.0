function thetha = BarridoFrecuencia(i,j,robots,DELTA_ROTACION,ALFA_POTENCIAL,N)
%Funcion que realiza la rotacion y el calculo de un angulo en una
%frecuencia

    giro=0;
    x=0;
    y=0;
    while giro<(2*pi)
        k = 1;
        eta = [];
        phi = [];
        for c=1:N
            if i ~= c && robots(c).clase >= j
                eta(k)= LobuloCos( (robots(i).thetha)+abs(robots(i).posicionPol.anguloPol-robots(c).posicionPol.anguloPol));
                %eta(k)= LobuloCos(abs((-robots(i).thetha+giro)+Zeta(robots(i),robots(c))));
                %a(k)= LobuloCos(abs((robots(i).thetha+giro)-robots(c).thetha));
                %a(k) = LobuloCos(abs(AnguloDosRectas(robots(i).posicionRect,robots(c).posicionRect)+robots(i).thetha+giro));
                phi(k) = Potencial(robots(i).posicionRect,robots(c).posicionRect,robots(c).constante_potencial,ALFA_POTENCIAL);
                k=k+1;
            end
        end
        potencialDireccional = dot(eta,phi);
        robots(i).thetha = robots(i).thetha + DELTA_ROTACION;
        robots(i).posicionPol.anguloPol = robots(i).thetha;
        x = potencialDireccional*cos(robots(i).thetha)+x;
        y = potencialDireccional*sin(robots(i).thetha)+y;
        giro = giro + DELTA_ROTACION;
        
    end
    thetha = atan2(y,x);
end

