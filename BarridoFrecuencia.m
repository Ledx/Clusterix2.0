function thetha = BarridoFrecuencia(i,j,robots,ROTACION,ALFA,N)
%Funcion que realiza la rotacion y el calculo de un angulo en una
%frecuencia

    giro=0;
    k = 1;
    a = [];
    phi = [];
    x=0;
    y=0;
    while giro<(2*pi)
        for c=1:N
            if i ~= c && robots(c).clase >= j
                %a(k)= LobuloCos(abs((robots(i).thetha+giro)-robots(c).thetha));
                a(k) = LobuloCos(abs(AnguloDosRectas(robots(i).posicion,robots(c).posicion)+robots(i).thetha+giro));
                phi(k) = Potencial(robots(i).posicion,robots(c).posicion,robots(c).A,ALFA);
                k=k+1;
            end
        end
        potencialDireccional = dot(a,phi);
        x = potencialDireccional*cos(robots(i).thetha+giro)+x;
        y = potencialDireccional*sin(robots(i).thetha+giro)+y;
        giro = giro + ROTACION;
    end
    thetha = atan2(y,x);
end

