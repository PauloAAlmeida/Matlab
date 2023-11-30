

function dydt = histeresis(t,y)


global g4
alpha=0.1;
NUT=y(1);

%r=-0.2;

 %dydt(1,1) = r*y(1)+y(1)^3;
%dydt(1,1) = g4*y(1)+y(1)^3-y(1)^5;

dydt(1,1) = y(1)*(1-y(1)) - ((g4*(y(1)^2)/((alpha^2)+(y(1)^2))));


   
   
   