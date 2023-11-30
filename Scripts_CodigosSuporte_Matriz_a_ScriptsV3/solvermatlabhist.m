
function solvermatlab()
clear all
global e
%for e=1:0.05:1.2

ci=[35.100000000 ];
tspan=[0 1600];


 Rel_Tol = 1e-7;
Abs_Tol = 1e-7; %11;




options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol]);%Abs_Tol Abs_Tol Abs_Tol Abs_Tol


[t,y] = ode45('histeresis', tspan, ci); 
      c1=0.5*e;
      c2=0.2*e;
      
 l=length(y)
 y(l,1)
%y(l-350:l,4)
%max(y(l-50:l,4))
%min(y(l-50:l,4))
      
      plot(t,y(:,1),'color','green');hold on
%end

