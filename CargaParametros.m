function [REPETICIONES,ITERACIONES,L,N,A,ALFA,R,PASO,DELTA_ROTACION,W,SIGMAROTACION,R_COLISION]= CargaParametros()
%Carga de los parametros iniciales de entrada
    
     load('Parametros','-mat','REPETICIONES','ITERACIONES','L','N','A','ALFA','R','PASO','DELTA_ROTACION','W','SIGMAROTACION','R_COLISION');
    
    %Para escribir el archivo de parametros,descomentar el siguiente codigo
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   REPETICIONES= 10;
%   ITERACIONES = 100;
%   L = 300;
%   N = 9;
%   A = [0.9990,1.0010];
%   ALFA = 2;
%   R = 3;
%   PASO = R/2;
%   DELTA_ROTACION = pi/6;
%   W=[1 0 0 0 0 0 0 0 0];
%   SIGMAROTACION = 0;
%   R_COLISION = R/2;
%   save('Parametros.mat','REPETICIONES','ITERACIONES','L','N','A','ALFA','R','PASO','DELTA_ROTACION','W','SIGMAROTACION','R_COLISION');
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end