clear all
global g4;

ci=[5 5 5 5 5 5 5];
tspan=[0 8000];

h=0.01; %tam. de passo (passo de tempo)
tf=8000; %tempo final (final do intervalo de integraçao)
t=0:h:tf; %criaçao da matriz coluna com todos o intervalo
%ci=5; % condiçao inicial




pontos = 200;




 Rel_Tol = 1e-6;
Abs_Tol = 1e-6; %11;


%1.72:0.003:1.735-----60%
for g4=1.11:0.05:2
g4
%y=[ci zeros(1,length(t)-1); ci zeros(1,length(t)-1); ...
 %   ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
  %  ci zeros(1,length(t)-1);ci zeros(1,length(t)-1)];
   
%for i=1:length(t)-1 
%	k1=h*novo(t(i) , y(:,i));
%	k2=h*novo(t(i)+(h/2) , y(:,i)+(k1/2));
%	k3=h*novo(t(i)+(h/2) , y(:,i)+(k2/2));
%	k4=h*novo(t(i+1) , y(:,i)+k3);
%	y(:,i+1)=y(:,i)+(1/6)*(k1+2*k2+2*k3+k4);
  

%end

%NUT = y(1,:);
%MICROF = y(2,:);
%MICROZ = y(3,:);
%MESOZ = y(4,:);
%DET = y(5,:);
%BACT = y(6,:);



options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol...
   Abs_Tol  Abs_Tol ]);


  [t,y] = ode45('LimaetAlcbactSexcre', tspan, ci,options); 
    
  
   
%axis([0 2 0 1.4]);

l=length(y)
a=l*0.25;
%if l<1000
 %   a=150
%y(:,4);
%plot(e,(y(l-100:l,2)),'.');hold on
%max(y(l-1000:l,4))
%y(l-1000:l,4)
%y(a:l,4)
%max(y((a):l,4))
%min(y((a):l,4))
max(y(l-50:l,4))
min(y(l-50:l,4))

%end
plot(g4,((max(y(l-a:l,5)))),'.','Color','green','Markersize',5);hold on
plot(g4,((min(y(l-a:l,5)))),'.','Color','green','Markersize',5);hold on

% 50 & options & 1e-6


%plot(e,((max(NUT(length(t)-pontos:length(t))))),'.');hold on
%plot(e,((min(NUT(length(t)-pontos:length(t))))),'.');hold on

end



