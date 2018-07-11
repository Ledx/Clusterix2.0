function [REPETICIONES,ITERACIONES,L,N,A,ALFA,R,PASO,ROTACION,W,SIGMATHETHA]= CargaParametros()
%Carga de los parametros iniciales de entrada
    
    load('Parametros','-mat','REPETICIONES','ITERACIONES','L','N','A','ALFA','R','PASO','ROTACION','W','SIGMATHETHA');
    
    %Para escribir el archivo de parametros,descomentar el siguiente codigo
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   REPETICIONES= 10;
%   ITERACIONES = 100;
%   L = 300;
%   N = 9;
%   A = ones(1,9);
%   ALFA = 2;
%   R = 3;
%   PASO = R/2;
%   ROTACION = pi/6;
%   W=ones(1,9);
%   SIGMATHETHA = 0;
%   save('Parametros.mat','REPETICIONES','ITERACIONES','L','N','A','ALFA','R','PASO','ROTACION','W','SIGMATHETHA');
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end