function a=LobuloCos(thetha)
%Funcion que calcula la atenuación con la que un robot percibe a otro
    if thetha<0
        thetha=thetha+(2*pi);
    end
    
    if thetha>=0 && thetha<=(70*pi/180)
        a=cos(thetha)^3;
    else
        a=cos(3*thetha)/3;
    end
 
end