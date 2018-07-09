function thetha = BarridoFrecuencia(i,j,robots,ROTACION,A,ALFA,N)
%Funcion que realiza la rotacion y el calculo de un angulo en una
%frecuencia

    giro=0;
    dir = 1;
    k = 1;
    a = [];
    phi = [];
    x=0;
    y=0;
    while giro<360
        for c=1:N
            if i ~= c && robots(c).clase >= j
                a(k)= LobuloCos(abs((robots(i).thetha+giro)-robots(c).thetha));
                phi(k) = Potencial(robots(i).posicion,robots(c).posicion,robots(c).A,ALFA);
                k=k+1;
            end
        end
        intensidadDireccional = dot(a,phi);
        x = intensidadDireccional*cos(robots(i).thetha+giro)+x;
        y = intensidadDireccional*sin(robots(i).thetha+giro)+y;
        giro = giro + ROTACION;
    end
    
    thetha = atan(y/x);
end

