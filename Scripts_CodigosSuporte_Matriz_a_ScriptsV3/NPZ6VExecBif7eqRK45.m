

clear all
y(:,1)=zeros (1000000,1);
y(:,2)=zeros (1000000,1);
y(:,3)=zeros (1000000,1);
y(:,4)=zeros (1000000,1);
y(:,5)=zeros (1000000,1);
y(:,6)=zeros (1000000,1);
y(:,7)=zeros (1000000,1);


npts=2;


pontos = 1000;

 tspan=[0 6000];
    
    
   
     Rel_Tol = 1e-3;
Abs_Tol = 1e-3; %11;


  
    
    for NUT_TOTAL = 29:1:30
        
        NUT_TOTAL
        
    in=NUT_TOTAL/7;


        
ci = [in in in in in in in] ;


%options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol]); 


   [t,y] = ode113('LimaetAlcbactSexcre_2SM', tspan, ci);%,options); ;
    

l=length(y(:,5))
pontos= 1000;
axis ([ 0 30 0 5]);hold on

y(l,5)

NL = 7;
NC =1;
length(t);
point_size = 14;
c=1;
 subplot(NL,NC,1) % NUTRIENTE X TIME
plot(NUT_TOTAL,y(l-pontos:l,1),'.','Color',[0,0,c],'Markersize',point_size)

title(['{\fontsize{16}','Dynamical changes on density due eutrophication process']);hold on
hold on
grid on

ylabel('\bf{NUT}')


subplot(NL,NC,2)  % PICOFITO X TIME
plot(NUT_TOTAL,y(l-pontos:l,2),'.','Color',[0,0,c],'Markersize',point_size)
hold on
grid on
ylabel('\bf{NANOF}')

  subplot(NL,NC,3) % NANOFITO X TIME
plot(NUT_TOTAL,y(l-pontos:l,3),'.','Color',[0,0,c],'Markersize',point_size)
 hold on
 grid on

 ylabel('\bf{MICROF}')

 subplot(NL,NC,4)  % NANOZOO X TIME
plot(NUT_TOTAL,y(l-pontos:l,4),'.','Color',[0,0,c],'Markersize',point_size)
hold on
grid on
 ylabel('\bf{MICROZ}')


 subplot(NL,NC,5)  % BACT X TIME
 plot(NUT_TOTAL,y(l-pontos:l,5),'.','Color',[0,0,c],'Markersize',point_size)
hold on
grid on
ylabel('\bf{MESOZ}')
 
subplot(NL,NC,6)  % DET X TIME
plot(NUT_TOTAL,y(l-pontos:l,6),'.','Color',[0,0,c],'Markersize',point_size)
hold on
grid on
ylabel('\bf{DET}')

subplot(NL,NC,7)  % DET X TIME
plot(NUT_TOTAL,y(l-pontos:l,7),'.','Color',[0, 0 ,c],'Markersize',point_size)
hold on
grid on
ylabel('\bf{BACT }')


 %[0, 0, 10] - verde
 %[1, 0, 10] - azul
 %[1, 1, 0] - 



end

xlabel('\bf{N}')