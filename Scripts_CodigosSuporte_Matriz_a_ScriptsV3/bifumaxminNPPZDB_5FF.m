
function[] = bifumaxminNPPZDB_5FF()
clear all
y(:,1)=zeros (1000000,1);
y(:,2)=zeros (1000000,1);
y(:,3)=zeros (1000000,1);
y(:,4)=zeros (1000000,1);
y(:,5)=zeros (1000000,1);
y(:,6)=zeros (1000000,1);
y(:,7)=zeros (1000000,1);

global g4
Rel_Tol = 1e-8;
Abs_Tol = 1e-8; %11;
%options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol...
 % Abs_Tol Abs_Tol]);% Abs_Tol Abs_Tol Abs_Tol

tspan=[0 5000]; 
in=4.15
s1=1;s2=1;s3=1;s4=1;s5=1;s6=1;s7=1;



for g4=[9:-0.1:6]; 
   s1= length(y(:,1));
  s2= length(y(:,2));
 s3= length(y(:,3));
s4= length(y(:,4));
s5= length(y(:,5));
s6= length(y(:,6));
s7= length(y(:,7));
   
    ci= [y(s1,1) y(s2,2) y(s3,3) y(s4,4) y(s5,5) y(s6,6) y(s6,7)] 
    
    energ = y(s1,1) + y(s2,2) + y(s3,3) + y(s4,4) + y(s5,5)+ y(s6,6) + y(s6,7)
    
   g4
        [t,y]=ode45('LimaetAlcbactSexcre_2SM',tspan,ci);%,options);

y(:,5)

l=length(y(:,5));
l


pontos=round(l*.35); % PONTOS COLETADOS DA SERIE TEMPORAL


plot(g4,max(y(l-pontos:l,5)),'g.','MarkerSize',20)
%plot3(energ,e,maxy5,'g.','MarkerSize',20)

hold on

plot(g4,min(y(l-pontos:l,5)),'k.','MarkerSize',10);hold on;
%plot3(energ,g4,miny5,'y.','MarkerSize',10);hold on;




end
%clear y(:,1) 


%********** EQUACOES  ***********
