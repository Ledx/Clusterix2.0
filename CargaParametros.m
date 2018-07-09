function [REPETICIONES,ITERACIONES,L,N,A,ALFA,R,PASO,ROTACION,W]= CargaParametros()
%Carga de los parametros iniciales de entrada
    
    load('Parametros','-mat','REPETICIONES','ITERACIONES','L','N','A','ALFA','R','PASO','ROTACION','W');
    
    %Para escribir el archivo de parametros,descomentar el siguiente codigo
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   REPETICIONES= 1000;
%   ITERACIONES = 5000;
%   L = 300;
%   N = 9;
%   A = ones(1,9);
%   ALFA = 2;
%   R = 3;
%   PASO = 0.4;
%   ROTACION = 30;
%   W=ones(1,9);
%   save('Parametros.mat','REPETICIONES','ITERACIONES','L','N','A','ALFA','R','PASO','ROTACION','W');
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end