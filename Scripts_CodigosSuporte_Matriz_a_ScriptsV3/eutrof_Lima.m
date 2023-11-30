

clear all
y(:,1)=zeros (1000000,1);
y(:,2)=zeros (1000000,1);
y(:,3)=zeros (1000000,1);
y(:,4)=zeros (1000000,1);
y(:,5)=zeros (1000000,1);
y(:,6)=zeros (1000000,1);


tspan=[0 4000];
    



for NUT_TOTAL = 1:1:30
    
    in=NUT_TOTAL/6;


        
ci = [in in in in in in] ;


 
NUT_TOTAL 





[t,y] = ode45('LimaetAl',tspan, ci); 
    
  



l=length(y(:,5))
pontos=50

%round(l*0.30)
%plot(e,(y(l-100:l,2)),'.');hold on


 

plot(NUT_TOTAL,y(l-pontos:l,5),'.','Color','r','Markersize',18)

hold on
grid on

ylabel('\bf{m Mol m-3}')

xlabel('\bf{N}')
end





    
    
    