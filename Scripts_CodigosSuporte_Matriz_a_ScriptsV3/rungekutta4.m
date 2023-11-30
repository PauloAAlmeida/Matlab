function rungekutta4()


clear all



h=0.01; %tam. de passo (passo de tempo)
tf=600; %tempo final (final do intervalo de integra�ao)
t=0:h:tf; %cria�ao da matriz coluna com todos o intervalo
ci=5; % condi�ao inicial




y=[ci zeros(1,length(t)-1); ci zeros(1,length(t)-1); ...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1);ci zeros(1,length(t)-1)];...
   % ci zeros(1,length(t)-1); 0 zeros(1,length(t)-1)]; % cria a matriz com os que v�o receber os valores de y para cada tempo (cada linha dessa matriz � uma dimensao do problema edo)

for i=1:length(t)-1 
	k1=h*novo(t(i) , y(:,i));
	k2=h*novo(t(i)+(h/2) , y(:,i)+(k1/2));
	k3=h*novo(t(i)+(h/2) , y(:,i)+(k2/2));
	k4=h*novo(t(i+1) , y(:,i)+k3);
	y(:,i+1)=y(:,i)+(1/6)*(k1+2*k2+2*k3+k4);
  

end

NUT = y(1,:);
MICROF = y(2,:);
MICROZ = y(3,:);
MESOZ = y(4,:);
DET = y(5,:);
BACT = y(6,:);
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

plot(t,MICROF'.','Color',[0.54, 0.2 ,0.143],'Markersize',point_size);hold on
grid on

ylabel('\bf{MICROF }') ;hold on
set(get(gca,'YLabel'),'Color',[0.776, 0.424 ,0.25]) ;hold on

  subplot(NL,NC,3)
plot(t,MICROZ,'.','Color',[0, 0.502 ,0],'Markersize',point_size)
 hold on
 grid on

 ylabel('\bf{MICROZ}')
 set(get(gca,'YLabel'),'Color',[0, 0.502 ,0])

 subplot(NL,NC,4)  
plot(t,MESOZ,'b.','Markersize',point_size)
hold on
grid on
 ylabel('\bf{MESOZ}')
 set(get(gca,'YLabel'),'Color','b')

 subplot(NL,NC,5)  
plot(t,DET,'r.','Markersize',point_size)
hold on
grid on
 ylabel('\bf{DET}')
 set(get(gca,'YLabel'),'Color','r')

subplot(NL,NC,6)  
plot(t,BACT,'k.','Markersize',point_size)
hold on
grid on
ylabel('\bf{BACT}')


subplot(NL,NC,7)  
plot(t,NUTtot,'k.','Markersize',point_size)
hold on
grid on
ylabel('\bf{NUTtot}')

xlabel('\bf{TEMPO}')
