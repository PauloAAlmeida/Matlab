
function[] = Envelope()
clear all
y(:,1)=zeros (1000000,1);
y(:,2)=zeros (1000000,1);
y(:,3)=zeros (1000000,1);
y(:,4)=zeros (1000000,1);
y(:,5)=zeros (1000000,1);
y(:,6)=zeros (1000000,1);
y(:,7)=zeros (1000000,1);
h(:,1)=zeros (1000000,1);


global e
%Rel_Tol = 1e-8;
%Abs_Tol = 1e-8; %11;
%options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol...
 % Abs_Tol Abs_Tol]);% Abs_Tol Abs_Tol Abs_Tol

tspan=[0 4000]; 
in=1/7;

ci = [ in in in in in in in];

for e=[0.:0.001:0.5]; 
   
   
   
    
    
   e
        [t,y]=ode45('SistNPPZZDB1',tspan,ci);%,options);

%y(:,5)

l=length(y(:,5));


pontos=round(l*.35); % PONTOS COLETADOS DA SERIE TEMPORAL
%Dif = max(y(l-pontos:l,5)) - min(y(l-pontos:l,5));

%Toler= 1e-5;

%if Dif > Toler;
    
 %     e
    
%end

   

%preto4
plot(e,max(y(l-pontos:l,5)),'r.','MarkerSize',15)
%plot3(energ,e,maxy5,'g.','MarkerSize',20)

hold on

plot(e,min(y(l-pontos:l,5)),'b.','MarkerSize',10);hold on;
%plot3(energ,g4,miny5,'y.','MarkerSize',10);hold on;




end
%clear y(:,1) 


%********** EQUACOES  ***********
