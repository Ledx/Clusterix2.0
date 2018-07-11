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
[REPETICIONES,ITERACIONES,L,N,A,ALFA,R,PASO,ROTACION,W]=CargaParametros();
colores = ['c*';'m*';'y*';'r*';'g*';'b*';'y+';'k*';'c+'];
%Simulacion
ci=1;
cr=1;

while cr<REPETICIONES
    robots= Inicializacion(N,L,R,A);
    figure(cr)
    axis([0 L 0 L]);
    grid
    while ci<ITERACIONES
        for i=1:N
            hold on
            plot(robots(i).posicion(1),robots(i).posicion(2),colores(i,:));
            drawnow;
        end
        robots=RotacionAvance(robots,ROTACION,N,W,ALFA,PASO);
        ci=ci+1;
    end
    %clf(figure(cr));
    hold off
    cr=cr+1;
    ci=1;
end
