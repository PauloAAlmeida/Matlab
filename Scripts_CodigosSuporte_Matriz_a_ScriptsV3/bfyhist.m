clear all;%
global r;
%ci=[-1 ];
tspan=[0 600];
Rel_Tol = 1e-7;
Abs_Tol = 1e-7; %11;




options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol]);%Abs_Tol Abs_Tol Abs_Tol Abs_Tol

for ci=-3:0.1:10;
    
for r=-3:0.1:2
    r
    [t,y] = ode113('histeresis', tspan, ci,options); 
l=length(y);
a=l*0.45;
plot(r,((max(y(l-a:l,1)))),'.','Color','green','Markersize',11);hold on;
plot(r,((min(y(l-a:l,1)))),'.','Color','green','Markersize',11);hold on;
end


end








%clear all
%global r;
%h=0.01; %tam. de passo (passo de tempo)
%tf=600; %tempo final (final do intervalo de integra�ao)
%t=0:h:tf; %cria�ao da matriz coluna com todos o intervalo


%pontos=300;



%for r=-1:0.1:1.1
%r
%y=[100];


%for i=1:length(t)-1 
%	k1=h*histeresis(t(i) , y(:,i));
%	k2=h*histeresis(t(i)+(h/2) , y(:,i)+(k1/2));
%	k3=h*histeresis(t(i)+(h/2) , y(:,i)+(k2/2));
%	k4=h*histeresis(t(i+1) , y(:,i)+k3);
%	y(:,i+1)=y(:,i)+(1/6)*(k1+2*k2+2*k3+k4);
  

%end

%NUT = y(1,:);


  %[t,y] = ode113('histeresis', tspan, ci); 
    
 % length(t)
   
%l=length(y)
%axis=([-2 2 -2 2]);hold on

%plot(r,NUT(length(t)-pontos:length(t)),'.','Color','blue','Markersize',9);hold on


%a=l*0.25;

%plot(r,(((y(l-50:l,1)))),'.','Color','red','Markersize',11);hold on
%plot(r,((max(y(l-a:l,1)))),'.','Color','blue','Markersize',6);hold on
%plot(r,((min(y(l-a:l,1)))),'.','Color','blue','Markersize',6);hold on



%end



