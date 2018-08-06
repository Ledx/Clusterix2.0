function robots = Inicializacion(N,L,R,A_POTENCIAL)
%Carga de los parametros iniciales de entrada

    for i=1:N
        
        robot.thetha = 0 + ((2*pi)-0)*rand(1,1);
        robot.radio = R;
        robot.constante_potencial = A_POTENCIAL(1) + (A_POTENCIAL(2)-A_POTENCIAL(1))*rand(1,1);
        robot.posicionRect.x = 0 + (L-0)*rand(1,1);
        robot.posicionRect.y = 0 + (L-0)*rand(1,1);
        robot.posicionPol.radioPol = sqrt( (robot.posicionRect.x^2)+(robot.posicionRect.y^2) );
        robot.posicionPol.anguloPol = atan2(robot.posicionRect.y,robot.posicionRect.x); 
        robot.pasos = 0;
        robot.clustered = 0;
        robot.vecindad = [];
        robot.clase = 1;
        robot.tiempo = 0;
        robot.distancia_recorrida = 0;
        
        robots(i)=robot;
    end
end

