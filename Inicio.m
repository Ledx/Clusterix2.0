%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Universidad Nacional Aut�noma de M�xico
%Instituto de Ciencias Nucleares
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Programa: COLMENA
%Director: Dr. Gustavo Adolfo Medina Tanco
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Simulador de formacion de clusters de elementos dispersos en un �rea 
%arbitraria
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Desarrollador: Ing. Led Eduardo Ruvalcaba Tam�s
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Actualizado 09/07/18 0036 hrs UTC-6
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
close all;

%Carga de parametros iniciales
[REPETICIONES,ITERACIONES,L,N,A,ALFA,R,PASO,ROTACION,W]=CargaParametros();

%Inicializacion
robots= Inicializacion(N,L,R,A);

%Simulacion
ci=1;
cr=1;

figure(1)
axis([0 L 0 L]);

while cr<REPETICIONES
    while ci<ITERACIONES
        for i=1:N
            hold on;
            plot(robots(i).posicion(1),robots(i).posicion(2),'*');
        end
        robots=RotacionAvance(robots,ROTACION,N,W,A,ALFA);
        ci=ci+1;
    end
    cr=cr+1;
end