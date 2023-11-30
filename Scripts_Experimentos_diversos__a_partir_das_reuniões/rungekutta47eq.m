function rungekutta47eq()


clear all

%global t
global I_0

global i


h=0.01; %tam. de passo (passo de tempo)
tf=30; %tempo final (final do itervalo de integraçao)
t=0:h:tf %criaçao da matriz coluna com todos o intervalo
n=7;
nutttotal=15;
ci=nutttotal/n ; % condiçao inicial

length(t)

y=[ci zeros(1,length(t)-1); ci zeros(1,length(t)-1); ...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1)]; % cria a matriz vai receber os valores de y para cada tempo  em cada dimensão

for i=1:length(t)-1 
    
    	k1=h*LimaetAlcbactSexcre(t(i) , y(:,i));
	k2=h*LimaetAlcbactSexcre(t(i)+(h/2) , y(:,i)+(k1/2));
	k3=h*LimaetAlcbactSexcre(t(i)+(h/2) , y(:,i)+(k2/2));
	k4=h*LimaetAlcbactSexcre(t(i+1) , y(:,i)+k3);
	y(:,i+1)=y(:,i)+(1/6)*(k1+2*k2+2*k3+k4);

   

end

NUT = y(1,:);
PICO = y(2,:);
NANO = y(3,:);
NANOZOO = y(4,:);
MICROZ = y(5,:);
DET = y(6,:);
BACT = y(7,:);
NUTtot= y(1,:)+y(2,:)+y(3,:)+y(4,:)+y(5,:)+y(6,:)+y(7,:);



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

subplot(NL,NC,2) 

plot(t,PICO'.','Color',[0.54, 0.2 ,0.143],'Markersize',point_size);hold on
grid on

ylabel('\bf{PICO }') ;hold on
set(get(gca,'YLabel'),'Color',[0.776, 0.424 ,0.25]) ;hold on

  subplot(NL,NC,3)
plot(t,NANO,'.','Color',[0, 0.502 ,0],'Markersize',point_size)
 hold on
 grid on

 ylabel('\bf{NANOF}')
 set(get(gca,'YLabel'),'Color',[0, 0.502 ,0])

 subplot(NL,NC,4)  
plot(t,NANOZOO,'b.','Markersize',point_size)
hold on
grid on
 ylabel('\bf{NANOZOO}')
 set(get(gca,'YLabel'),'Color','b')

 subplot(NL,NC,5)  
plot(t,BACT,'r.','Markersize',point_size)
hold on
grid on
 ylabel('\bf{BACT}')
 set(get(gca,'YLabel'),'Color','r')

subplot(NL,NC,6)  
plot(t,DET,'k.','Markersize',point_size)
hold on
grid on
ylabel('\bf{DET}')

subplot(NL,NC,7)  
plot(t,I_0,'k.','Markersize',point_size)
hold on
grid on
ylabel('\bf{MICROZ}')

subplot(NL,NC,8)  
plot(t,NUTtot,'k.','Markersize',point_size)
hold on
grid on
ylabel('\bf{NUTTotal}')


xlabel('\bf{TEMPO}')
