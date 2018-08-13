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
clc;
close all;

format long

%Carga de parametros iniciales
[REPETICIONES,ITERACIONES,L,N,A_POTENCIAL,ALFA_POTENCIAL,R,DELTA_AVANCE,DELTA_ROTACION,W,SIGMA_ROTACION,R_COLISION]=CargaParametros();
colores = ['c*';'m*';'y*';'m+';'g*';'b*';'y+';'r*';'c+'];
%Simulacion
ci=1;
cr=1;
tic
while cr<REPETICIONES + 1
    robots= Inicializacion(N,L,R,A_POTENCIAL);
    figure(cr)
    axis([-L 2*L -L 2*L]);
    grid
    while ci<ITERACIONES + 1
        %Revision de colisiones entre robots
        for h=1:N
            for l=1:N
                if h ~= l && Clustered([robots(h).posicionRect.x,robots(h).posicionRect.y],[robots(l).posicionRect.x,robots(l).posicionRect.y],R_COLISION) > 0
                    robots(h).clustered = 1;
                    robots(h).clase = robots(h).clase + 1;
                    robots(l).clustered = 1;
                    robots(l).clase = robots(l).clase + 1;
                    [x,y]=GeneradorCircunferencia([robots(h).posicionRect.x,robots(h).posicionRect.y],[robots(l).posicionRect.x,robots(l).posicionRect.y]);
                    hold on
                    plot(x,y,'k');
                    drawnow;
                end
            end
        end
        if ci > 1
            for i=1:N
                hold on
                plot(robots(i).posicionRect.x,robots(i).posicionRect.y,colores(i,:));
                drawnow;
            end
        else
            for i=1:N
                hold on
                plot(robots(i).posicionRect.x,robots(i).posicionRect.y,'ko');
                drawnow;
            end
        end
        robots=RotacionAvance(robots,DELTA_ROTACION,N,W,ALFA_POTENCIAL,DELTA_AVANCE,SIGMA_ROTACION);
        ci=ci+1;
    end
    for i=1:N
        hold on
        plot(robots(i).posicionRect.x,robots(i).posicionRect.y,'k*');
        drawnow;
    end
    hold off
    cr=cr+1;
    ci=1;
end
toc
