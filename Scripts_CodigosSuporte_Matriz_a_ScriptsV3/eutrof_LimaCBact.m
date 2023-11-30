

clear all
y(:,1)=zeros (1000000,1);
y(:,2)=zeros (1000000,1);
y(:,3)=zeros (1000000,1);
y(:,4)=zeros (1000000,1);
y(:,5)=zeros (1000000,1);
y(:,6)=zeros (1000000,1);
y(:,7)=zeros (1000000,1);


clear all

 tspan=[0 2000];

    for NUT_TOTAL = 1:1:30
        
    in=NUT_TOTAL/7;
NUT_TOTAL

        
ci = [in in in in in in in] ;





   [t,y] = ode45('LimaetAlcbactSexcreV1', tspan, ci); 
    

l=length(y(:,5))
pontos=500
%round(l*0.30)
%plot(e,(y(l-100:l,2)),'.');hold on

%verde=0.1
%azul=0.5
%amarelo=0.9
%preto=1.3
 

plot(NUT_TOTAL,max(y(l-pontos:l,5)),'.','Color','k','Markersize',15);hold on
plot(NUT_TOTAL,min(y(l-pontos:l,5)),'.','Color','k','Markersize',15);hold on


%c1=0.9*e;
%c2=0.2*e;

hold on;


    end



    
    
    