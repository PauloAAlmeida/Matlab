function rungekutta4()


clear all



h=0.01; %tam. de passo (passo de tempo)
tf=2400; %tempo final (final do intervalo de integraçao)
t=0:h:tf; %criaçao da matriz coluna com todos o intervalo
ci=5; % condiçao inicial




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
MICROF = y(2,:);
MICROZ = y(3,:);
MESOZ = y(4,:);
DET = y(5,:);
BACT = y(6,:);
NUTtot= y(1,:)+y(2,:)+y(3,:)+y(4,:)+y(5,:)+y(6,:);

%max(y(l-50:l,4))
%min(y(l-50:l,4))
pontos=100
max(MESOZ(length(t)-pontos:length(t)))

plot(t,MESOZ,'b');hold on