
function[] = bifumaxminNPPZDB_5FF()
clear all
y(:,1)=zeros (1000000,1);
y(:,2)=zeros (1000000,1);
y(:,3)=zeros (1000000,1);
y(:,4)=zeros (1000000,1);
y(:,5)=zeros (1000000,1);
y(:,6)=zeros (1000000,1);
y(:,7)=zeros (1000000,1);

global e
%Rel_Tol = 1e-8;
%Abs_Tol = 1e-8; %11;
%options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol...
 % Abs_Tol Abs_Tol]);% Abs_Tol Abs_Tol Abs_Tol

tspan=[0 5000]; %
in=2/7

ci = [ in in in in in in in]

for e=[0:0.1:1]; 
   
   
   
    
    
   e
        [t,y]=ode45('LimaetAlcbactSexcre_2SM',tspan,ci);%,options);

y(:,5)

l=length(y(:,5));
l


pontos=round(l*.35); % PONTOS COLETADOS DA SERIE TEMPORAL
%vermelho=1
%berde=2
%yellow=3

%preto4
plot(e,max(y(l-pontos:l,5)),'g.','MarkerSize',15)
%plot3(energ,e,maxy5,'g.','MarkerSize',20)

hold on

plot(e,min(y(l-pontos:l,5)),'g.','MarkerSize',15);hold on;
%plot3(energ,g4,miny5,'y.','MarkerSize',10);hold on;




end
%clear y(:,1) 


%********** EQUACOES  ***********
