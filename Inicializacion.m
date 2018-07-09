function robots = Inicializacion(N,L,R,A)
%Carga de los parametros iniciales de entrada

    for i=1:N
        
        robot.thetha = 0 + (360-0)*rand(1,1);
        robot.radio = R;
        robot.A = A(i);
        robot.posicion = 0 + (L-0)*rand(1,2);
        robot.pasos = 0;
        robot.clustered = 0;
        robot.vecindad = [];
        robot.clase = 1;
        robot.tiempo = 0;
        robot.distancia = 0;
        
        robots(i)=robot;
    end
end

