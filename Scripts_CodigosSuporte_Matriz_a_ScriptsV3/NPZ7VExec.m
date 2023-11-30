

clear all


% intervalo de integração/tempo de simulação
tspan = [0 200]; 
in=15/7;
% condições iniciais
ci=[in in in in in in in ]



% Config opções ode solver (45-RK4 ou 113-ADMoulton)
Rel_Tol = 1e-11;
Abs_Tol = 1e-11; 
options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol...
    Abs_Tol Abs_Tol ]);

%Solver
[t,y]=ode113('LimaetAlcbactSexcreV1',tspan, ci)
%,options); 


%P/ PLOTS
NUT = y(:,1);
PICO = y(:,2);
NANO = y(:,3);
NANOZOO = y(:,4);
MICROZ = y(:,5);
DET = y(:,6);
BACT = y(:,7);
NUTtot= y(:,1)+y(:,2)+y(:,3)+y(:,4)+y(:,5)+y(:,6)++y(:,7);

NL = 8; 
NC = 1;

 figure ('Position',[0 0 1100 700]) 
point_size = 2; 

 subplot(NL,NC,1) 
plot(t,NUT,'.','Color',[0.54, 0.2 ,0.143],'Markersize',point_size)

hold on
grid on

ylabel('\bf{N}')
set(get(gca,'YLabel'),'Color',[0.54, 0.2 ,0.143])

subplot(NL,NC,2)  % PICOFITO X TIME
plot(t,PICO,'.','Color',[0.776, 0.424 ,0.11],'Markersize',point_size)
hold on
grid on
ylabel('\bf{PICOF}')
set(get(gca,'YLabel'),'Color',[0.776, 0.424 ,0.11]) %)

  subplot(NL,NC,3) % NANOFITO X TIME
plot(t,NANO,'.','Color',[0, 0.502 ,0],'Markersize',point_size)
 hold on
 grid on

 ylabel('\bf{NANOF}')
 set(get(gca,'YLabel'),'Color',[0, 0.502 ,0])

 subplot(NL,NC,4)  % NANOZOO X TIME
plot(t,NANOZOO,'b.','Markersize',point_size)
hold on
grid on
 ylabel('\bf{NANOZ}')
 set(get(gca,'YLabel'),'Color','b')

 subplot(NL,NC,5)  % BACT X TIME
plot(t,MICROZ,'r.','Markersize',point_size)
hold on
grid on
 ylabel('\bf{MICROZ }')
 set(get(gca,'YLabel'),'Color','r')

 subplot(NL,NC,6)
 plot(t,DET,'r.','Markersize',point_size)
hold on
grid on
 ylabel('\bf{DET }')
 set(get(gca,'YLabel'),'Color','r')
 
 subplot(NL,NC,7)
plot(t,BACT,'r.','Markersize',point_size)
hold on
grid on
 ylabel('\bf{BACT }')
 set(get(gca,'YLabel'),'Color','r')
 
subplot(NL,NC,8)  % DET X TIME
plot(t,NUTtot,'k.','Markersize',point_size)
hold on
grid on
ylabel('\bf{NUTtot}')



xlabel('\bf{TEMPO}')