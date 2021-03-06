function [REPETICIONES,ITERACIONES,L,N,A_POTENCIAL,ALFA_POTENCIAL,R,DELTA_AVANCE,DELTA_ROTACION,W,SIGMA_ROTACION,R_COLISION,ACTIVAR_GRAFICOS,TAM_IDENTIFICADOR]= CargaParametros()
%Carga de los parametros iniciales de entrada
    
  REPETICIONES= 40;              %Numero de experimentos a realizar
  ITERACIONES = 400;           %Numero de iteraciones por experimento
  L = 300;                      %Longitud del area de lanzamiento de medidas L x L
  N = 9;                        %Numero de robots
  A_POTENCIAL = [0.9990,1.0010];%Constante de potencial
  ALFA_POTENCIAL = 2;           %Exponente alfa de potencial
  R = 2;                        %Radio de activacion
  DELTA_AVANCE = R/2;           %Delta de avance
  DELTA_ROTACION = pi/6;        %Delta de rotacion
  W=[1 3 5 9 12 15 17 19 21];        %Pesos de las distintas frecuencias
  SIGMA_ROTACION = 0;           %Sigma para incertezas de rotacion
  R_COLISION = R/2;             %Radio de colision
  ACTIVAR_GRAFICOS = 0;         %Bandera para indicar si se desean desplegar los graficos en tiempo real
  TAM_IDENTIFICADOR = 6;        %Establece la longitud del identificador de los archivos de salida
  
%   save('Parametros.mat','REPETICIONES','ITERACIONES','L','N','A_POTENCIAL','ALFA_POTENCIAL','R','DELTA_AVANCE','DELTA_ROTACION','W','SIGMA_ROTACION','R_COLISION');
%   load('Parametros','-mat','REPETICIONES','ITERACIONES','L','N','A_POTENCIAL','ALFA_POTENCIAL','R','DELTA_AVANCE','DELTA_ROTACION','W','SIGMA_ROTACION','R_COLISION');
  
end