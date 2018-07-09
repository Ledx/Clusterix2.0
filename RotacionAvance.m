function robots = RotacionAvance(robots,ROTACION,N,W,A,ALFA)
%Funcion que realiza una iteracion del simulador para todos los robots

    for i=1:N
        for j=1:N
            thetha(j)=BarridoFrecuencia(i,j,robots,ROTACION,A,ALFA,N);
        end
        thethaProm=dot(W,thetha)/N;
        %thethaT = gaussiana(thethaProm,sigmaThetha);
        robots(i).thetha=thethaProm;
    end
end

