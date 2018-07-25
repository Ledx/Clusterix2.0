%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Universidad Nacional Autónoma de México
%Instituto de Ciencias Nucleares
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Programa: COLMENA
%Director: Dr. Gustavo Adolfo Medina Tanco
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Simulador de formacion de clusters de elementos dispersos en un área 
%arbitraria
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Desarrollador: Ing. Led Eduardo Ruvalcaba Tamés
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Actualizado 09/07/18 0036 hrs UTC-6
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
close all;

%Carga de parametros iniciales
[REPETICIONES,ITERACIONES,L,N,A,ALFA,R,PASO,ROTACION,W,SIGMATHETHA,R_COLISION]=CargaParametros();
colores = ['c*';'m*';'y*';'m+';'g*';'b*';'y+';'r*';'c+'];
%Simulacion
ci=1;
cr=1;

while cr<REPETICIONES
    robots= Inicializacion(N,L,R,A);
    figure(cr)
    axis([0 L 0 L]);
    grid
    while ci<ITERACIONES
        %Revision de colisiones entre robots
        for h=1:N
            for l=1:N
                if h ~= l && Clustered(robots(h).posicionRect,robots(l).posicionRect,R_COLISION) > 0
                    robots(h).clustered = 1;
                    robots(l).clustered = 1;
                    [x,y]=GeneradorCircunferencia(robots(h).posicionRect,robots(l).posicionRect);
                    hold on
                    plot(x,y,'k');
                    drawnow;
                end
            end
        end
        if ci > 1
            for i=1:N
                hold on
                plot(robots(i).posicionRect(1),robots(i).posicionRect(2),colores(i,:));
                drawnow;
            end
        else
            for i=1:N
                hold on
                plot(robots(i).posicionRect(1),robots(i).posicionRect(2),'ko');
                drawnow;
            end
        end
        
        robots=RotacionAvance(robots,ROTACION,N,W,ALFA,PASO);
        ci=ci+1;
    end
    for i=1:N
        hold on
        plot(robots(i).posicionRect(1),robots(i).posicionRect(2),'k*');
        drawnow;
    end
    hold off
    cr=cr+1;
    ci=1;
end
