function rungekuttaI0()


clear all


global In
global ftau



h=0.001; %tam. de passo (passo de tempo)
tf=10; %tempo final (final do itervalo de integraçao)
t=0:h:tf %criaçao da matriz coluna com todos o intervalo
n=7;
nutttotal=15;
ci=nutttotal/n ; % condiçao inicial

In=460

y=[ci zeros(1,length(t)-1); ci zeros(1,length(t)-1); ...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1)]; % cri

for i=1:length(t)-1 
    In=460;
    ftau=abs(sin(i/318));
    
   % plot(i,I,'k.','Markersize',2);hold on
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



plot(t,PICO,'r')

hold on
grid on

ylabel('\bf{PICO}')


xlabel('\bf{TEMPO}')

ftau=0;
y=[ci zeros(1,length(t)-1); ci zeros(1,length(t)-1); ...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1)]; % cri

for i=1:length(t)-1 
    In=230;
    ftau=1;
    %In=abs(sin(i/32))
   % plot(i,I,'k.','Markersize',2);hold on
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



plot(t,PICO,'k')

hold on
grid on


