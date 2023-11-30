
%
clear all
y(:,1)=zeros (1000000,1);
y(:,2)=zeros (1000000,1);
y(:,3)=zeros (1000000,1);
y(:,4)=zeros (1000000,1);
y(:,5)=zeros (1000000,1);
y(:,6)=zeros (1000000,1);
y(:,7)=zeros (1000000,1);


tspan=[0 6000];
    



for NUT_TOTAL = 1:1:30
    
    in=NUT_TOTAL/6;


        
ci = [in in in in in in] ;


 
NUT_TOTAL 





[t,y] = ode45('LimaetAl',tspan, ci); 
    
  



l=length(y(:,5))
pontos=500

%round(l*0.30)
%plot(e,(y(l-100:l,2)),'.');hold on


 g4 = 0;

plot3(g4,NUT_TOTAL,y(l-pontos:l,5),'.','Color','r','Markersize',15)

hold on
grid on

ylabel('\bf{NUT}')
zlabel('\bf{mmol m-3}')
xlabel('\bf{g4}')
end

clear all
global g4
 tspan=[0 12000];

for g4 = 0.1:0.2:6;
     
    g4
    %clear y(:,:); clear l
    
    for NUT_TOTAL = 1:1:30
        
    in=NUT_TOTAL/7;
NUT_TOTAL

        
ci = [in in in in in in in] ;





   [t,y] = ode45('LimaetAlcbactSexcreV1', tspan, ci); 
    

l=length(y(:,5))
pontos=2500
%round(l*0.30)
%plot(e,(y(l-100:l,2)),'.');hold on


 

plot3(g4,NUT_TOTAL,y(l-pontos:l,5),'.','Color','green','Markersize',10)

%c1=0.9*e;
%c2=0.2*e;

hold on;


    end
end


    
    
    