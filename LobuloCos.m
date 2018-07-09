function a=LobuloCos(thetha)
%Funcion que calcula la atenuaci�n con la que un robot percibe a otro
    if thetha<0
        thetha=thetha+360;
    end
    
    if thetha>=0 && thetha<=70
        a=cos(thetha)^3;
    else
        a=cos(3*thetha)/3;
    end
 
end