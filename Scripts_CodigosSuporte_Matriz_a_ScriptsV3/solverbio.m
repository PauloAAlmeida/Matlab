
function solverbio()
clear all
%global e
%for e=1:0.05:1.2

ci=[1 1];
tspan=[0 100];


 Rel_Tol = 1e-3;
Abs_Tol = 1e-3; %11;




options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol ]);%Abs_Tol Abs_Tol Abs_Tol Abs_Tol


[t,y] = ode45('mathbioeq', tspan, ci)%,options); 
      
% l=length(y);
 %y(l,5)
%y(l-350:l,4)
%max(y(l-50:l,4))
%min(y(l-50:l,4))
plot(y(:,1),y(:,2));hold on
      
      %plot(y(1,:),y(2,:))

