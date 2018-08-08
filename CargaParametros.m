function [REPETICIONES,ITERACIONES,L,N,A_POTENCIAL,ALFA_POTENCIAL,R,DELTA_AVANCE,DELTA_ROTACION,W,SIGMA_ROTACION,R_COLISION]= CargaParametros()
%Carga de los parametros iniciales de entrada
    
    load('Parametros','-mat','REPETICIONES','ITERACIONES','L','N','A_POTENCIAL','ALFA_POTENCIAL','R','DELTA_AVANCE','DELTA_ROTACION','W','SIGMA_ROTACION','R_COLISION');
    
    %Para escribir el archivo de parametros,comentar la linea de arriba y descomentar el siguiente
    %codigo.
    %Posterior a la escritura de los parametros, vuelva a comentar el
    %codigo siguiente y descomente el de arriba.
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   REPETICIONES= 1;
%   ITERACIONES = 1000;
%   L = 300;
%   N = 3;
%   A_POTENCIAL = [0.9990,1.0010];
%   ALFA_POTENCIAL = 2;
%   R = 3;
%   DELTA_AVANCE = R/2;
%   DELTA_ROTACION = pi/6;
%   W=[1 0 0];
%   SIGMA_ROTACION = 0;
%   R_COLISION = R/2;
%   save('Parametros.mat','REPETICIONES','ITERACIONES','L','N','A_POTENCIAL','ALFA_POTENCIAL','R','DELTA_AVANCE','DELTA_ROTACION','W','SIGMA_ROTACION','R_COLISION');
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end