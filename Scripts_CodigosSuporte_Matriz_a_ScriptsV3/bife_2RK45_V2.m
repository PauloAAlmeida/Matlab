%

clear all
global e
 
y(:,1)=zeros (1000000,1);
y(:,2)=zeros (1000000,1);
y(:,3)=zeros (1000000,1);
y(:,4)=zeros (1000000,1);
y(:,5)=zeros (1000000,1);
y(:,6)=zeros (1000000,1);
y(:,7)=zeros (1000000,1);

for e = 0:0.1:2 ;
     
    
    e
    
     %clear y(:,:); clear l
   
    
    
    
    tspan=[0 2000];
    
    
   
    
  
    
    for NUT_TOTAL = 1:2:30
        
        NUT_TOTAL
        
    in=NUT_TOTAL/7;


        
ci = [in in in in in in in] ;



%cbactSexcreV1

   [t,y] = ode113('LimaetAlcbactSexcreV1', tspan, ci); 
    

l=length(y(:,5))
pontos= 300
%round(l*0.30)
%plot(e,(y(l-100:l,2)),'.');hold on

%c1=0.9*g4^2;
%c2=0.9*g4^2;


grid on
plot3(e,NUT_TOTAL,max(y(l-pontos:l,5)),'.','Color','k','Markersize',16);hold on
plot3(e,NUT_TOTAL,min(y(l-pontos:l,5)),'.','Color','r','Markersize',16)
y(l,5)
hold on;

ylabel('\bf{N}')
xlabel('\bf{e}')
zlabel('\bf{m MolN m-3}')

    end
end


    
    
    