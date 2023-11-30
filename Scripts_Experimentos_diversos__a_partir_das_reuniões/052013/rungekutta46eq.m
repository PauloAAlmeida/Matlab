function rungekutta46eq()


clear all




h=0.01; %tam. de passo (passo de tempo)
tf=500; %tempo final (final do intervalo de integraçao)
t=0:h:tf; %criaçao da matriz coluna com todos o intervalo
n=6;
nutttotal=2;
ci=nutttotal/n ; % condiçao inicial

y=[0.2 zeros(1,length(t)-1); 0.7 zeros(1,length(t)-1);    0.2 zeros(1,length(t)-1); 0.2 zeros(1,length(t)-1);    0.2 zeros(1,length(t)-1); 0.5 zeros(1,length(t)-1)]


%y=[ci zeros(1,length(t)-1); ci zeros(1,length(t)-1); ...
    %ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    %ci zeros(1,length(t)-1); ci zeros(1,length(t)-1)]; % cria a matriz vai receber os valores de y para cada tempo  em cada dimensão

for i=1:length(t)-1 
	k1=h*LimaetAl(t(i) , y(:,i));
	k2=h*LimaetAl(t(i)+(h/2) , y(:,i)+(k1/2));
	k3=h*LimaetAl(t(i)+(h/2) , y(:,i)+(k2/2));
	k4=h*LimaetAl(t(i+1) , y(:,i)+k3);
	y(:,i+1)=y(:,i)+(1/6)*(k1+2*k2+2*k3+k4);
  
   

end

NUT = y(1,:);
PICO = y(2,:);
NANO = y(3,:);
NANOZOO = y(4,:);
MICROZ = y(5,:);
DET = y(6,:);
NUTtot= y(1,:)+y(2,:)+y(3,:)+y(4,:)+y(5,:)+y(6,:);



NL = 7; 
NC = 1;

plot(t,NUT,'k'); hold on
plot(t,PICO,'k--'); hold on
plot(t,NANO,'b--'); hold on
plot(t,NANOZOO,'k:'); hold on
plot(t,MICROZ,'b:'); hold on
plot(t,DET, 'k-.'); hold on
%plot(t,NUTtot,'y')
xlabel('\bf{TEMPO}')
