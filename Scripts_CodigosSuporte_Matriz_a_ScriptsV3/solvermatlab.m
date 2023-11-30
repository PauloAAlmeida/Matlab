
function solvermatlab()%
clear all
%global e%
%for e=1:0.05:1.2
in= 4.15
ci=[in in in in in in in];
tspan=[0 5000];


Rel_Tol = 1e-8;
Abs_Tol = 1e-8; %11;




%options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol...
 % Abs_Tol Abs_Tol]);% Abs_Tol Abs_Tol Abs_Tol


[t,y] = ode45('LimaetAlcbactSexcre_2SM', tspan, ci);%,options); 
%l=length(y)
%a=round(l*0.25)
      
 l=length(y(:,5))
 %y(:,5);
%y(l-350:l,4)
%max(y(l-50:l,4))
%min(y(l-50:l,4))
%p(l-a:l,1)=zeros;
%length(p(:,1))
%y(l-a:l,5)
%plot(t(l-a:l),y(l-a:l,5))
%ll=length(findpeaks(y(l-a:l,5)));
%ld=length(findpeaks(-y(l-a:l,5)));
%p(1:ll,1)=findpeaks(y(l-a:l,5));
%d(1:ld,1)=findpeaks(-y(l-a:l,5));

      pontos=l
   %plot(t,y(:,5),'color','red');hold on
   
  plot(7.1,max(y(l-pontos:l,15)),'b.','MarkerSize',10);hold on;
  plot(7.1,min(y(l-pontos:l,15)),'r.','MarkerSize',10);hold on;


