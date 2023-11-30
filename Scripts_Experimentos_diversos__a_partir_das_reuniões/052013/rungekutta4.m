function rungekutta4()


clear all



h=0.001; %tam. de passo (passo de tempo)
tf=100; %tempo final (final do intervalo de integraçao)
t=0:h:tf; %criaçao da matriz coluna com todos o intervalo
ci=1; % condiçao inicial




y=[ci zeros(1,length(t)-1); ci zeros(1,length(t)-1); ...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1);ci zeros(1,length(t)-1)];...
   % ci zeros(1,length(t)-1); 0 zeros(1,length(t)-1)]; % cria a matriz com os que vão receber os valores de y para cada tempo (cada linha dessa matriz é uma dimensao do problema edo)

for i=1:length(t)-1 
	k1=h*novo(t(i) , y(:,i));
	k2=h*novo(t(i)+(h/2) , y(:,i)+(k1/2));
	k3=h*novo(t(i)+(h/2) , y(:,i)+(k2/2));
	k4=h*novo(t(i+1) , y(:,i)+k3);
	y(:,i+1)=y(:,i)+(1/6)*(k1+2*k2+2*k3+k4);
  

end

NUT = y(1,:);
PICO = y(2,:);
NANO = y(3,:);
NANOZOO = y(4,:);
BACT = y(5,:);
DET = y(6,:);
NUTtot= y(1,:)+y(2,:)+y(3,:)+y(4,:)+y(5,:)+y(6,:);

NL = 7; 
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
set(gca,'XTICK',0:1:2:3:4:5); hold on
plot(t,SEN,'k.','Markersize',point_size)
hold on
grid on
ylabel('\bf{I_0}')

subplot(NL,NC,8)  
plot(t,NUTtot,'k.','Markersize',point_size)
hold on
grid on
ylabel('\bf{NUTtot}')

xlabel('\bf{TEMPO}')
