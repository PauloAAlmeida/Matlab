

clear all

global e
% intervalo de integração
%tspan = [0 200]; 






pontos = 170;



% g2 =  QUANTIDADE TOTAL DE NUTRIENTE, que vai variar de 1 a 60


npts = 30; % PONTOS DO GRAFICO 
ci = 25/7

%for f=1:30
    
 %   NUT_TOTAL=1+((29/30)*f)
for e =0.01:0.2:1.5

e



%Solver
h=0.01; %tam. de passo (passo de tempo)
tf=300; %tempo final (final do intervalo de integraçao)
t=0:h:tf; %criaçao da matriz coluna com todos o intervalo
%ci=1; % condiçao inicial




y=[ci zeros(1,length(t)-1); ci zeros(1,length(t)-1); ...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1);ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1)]; % cria a matriz com os que vão receber os valores de y para cada tempo (cada linha dessa matriz é uma dimensao do problema edo)

for i=1:length(t)-1 
	k1=h* LimaetAlcbactSexcre(t(i) , y(:,i));
	k2=h* LimaetAlcbactSexcre(t(i)+(h/2) , y(:,i)+(k1/2));
	k3=h* LimaetAlcbactSexcre(t(i)+(h/2) , y(:,i)+(k2/2));
	k4=h* LimaetAlcbactSexcre(t(i+1) , y(:,i)+k3);
	y(:,i+1)=y(:,i)+(1/6)*(k1+2*k2+2*k3+k4);
end

NUT = y(1,:);
PICO = y(2,:);
NANO = y(3,:);
NANOZOO = y(4,:);
MICROZ= y(5,:);
DET = y(6,:);
BACT = y(7,:);

NL = 7;
NC = 1;
length(t);
point_size = 15;

 subplot(NL,NC,1) % NUTRIENTE X TIME
plot(e,NUT(length(t)-pontos:length(t)),'.','Color',[0.54, 0.2 ,0.143],'Markersize',point_size)

hold on
grid on

ylabel('\bf{N}')
set(get(gca,'YLabel'),'Color',[0.54, 0.2 ,0.143])

subplot(NL,NC,2)  % PICOFITO X TIME
plot(e,PICO(length(t)),'.','Color',[0.776, 0.424 ,0.11],'Markersize',point_size)
hold on
grid on
ylabel('\bf{PICO}')
set(get(gca,'YLabel'),'Color',[0.776, 0.424 ,0.11]) %)

  subplot(NL,NC,3) % NANOFITO X TIME
plot(e,NANO(length(t)-pontos:length(t)),'.','Color',[0, 0.502 ,0],'Markersize',point_size)
 hold on
 grid on

 ylabel('\bf{NANOF}')
 set(get(gca,'YLabel'),'Color',[0, 0.502 ,0])

 subplot(NL,NC,4)  % NANOZOO X TIME
plot(e,NANOZOO(length(t)-pontos:length(t)),'b.','Markersize',point_size)
hold on
grid on
 ylabel('\bf{NANOZ}')
 set(get(gca,'YLabel'),'Color','b')

 subplot(NL,NC,5)  % BACT X TIME
plot(e,BACT(length(t)-pontos:length(t)),'r.','Markersize',point_size)
hold on
grid on
ylabel('\bf{BACT }')
 set(get(gca,'YLabel'),'Color','r')

subplot(NL,NC,6)  % DET X TIME
plot(e,DET(length(t)-pontos:length(t)),'k.','Markersize',point_size)
hold on
grid on
ylabel('\bf{DET}')

subplot(NL,NC,7)  % DET X TIME
plot(e,MICROZ(length(t)-pontos:length(t)),'k.','Markersize',point_size)
hold on
grid on
ylabel('\bf{MICROZ}')



end

xlabel('\bf{e}')
