function thetha=AnguloDosRectas(x1,x2)
%Funcion que calcula el angulo entre dos rectas con direcciones x1 y x2
%respectivaamente

    thetha = acos(dot(x1,x2)/(norm(x1)*norm(x2)));

end