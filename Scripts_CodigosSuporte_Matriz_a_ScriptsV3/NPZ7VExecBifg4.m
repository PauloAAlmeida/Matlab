%

clear all

global g4
% intervalo de integração
%tspan = [0 200]; 






pontos = 70;



% g2 =  QUANTIDADE TOTAL DE NUTRIENTE, que vai variar de 1 a 60


npts = 30; % PONTOS DO GRAFICO 
ci = 25/7

%for f=1:30
    
 %   g4=1+((29/30)*f)
for g4 = 0.1:0.05:2

g4



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
NANOF = y(2,:);
MICROF = y(3,:);
MICROZ = y(4,:);
MESOZ= y(5,:);
DET = y(6,:);
BACT = y(7,:);


NL = 7;
NC = 1;
length(t);
point_size = 11;

subplot(NL,NC,1) % NUTRIENTE X TIME
plot(g4,NUT(length(t)-pontos:length(t)),'.','Color',[0, 1,0],'Markersize',point_size)

hold on
grid on

ylabel('\bf{NUT}')

subplot(NL,NC,2)  % PICOFITO X TIME
plot(g4,NANOF(length(t)-pontos:length(t)),'.','Color',[0, 1 ,0],'Markersize',point_size)
hold on
grid on
ylabel('\bf{NANOF}')

  subplot(NL,NC,3) % NANOFITO X TIME
plot(g4,MICROF(length(t)-pontos:length(t)),'.','Color',[0, 1 ,0],'Markersize',point_size)
 hold on
 grid on

 ylabel('\bf{MICROF}')

 subplot(NL,NC,4)  % NANOZOO X TIME
plot(g4,MICROZ(length(t)-pontos:length(t)),'.','Color',[0, 1 ,0],'Markersize',point_size)
hold on
grid on
 ylabel('\bf{MICROZ}')


 subplot(NL,NC,5)  % BACT X TIME
 plot(g4,MESOZ(length(t)-pontos:length(t)),'.','Color',[0, 1,0],'Markersize',point_size)
hold on
grid on
ylabel('\bf{MESOZ}')
 
subplot(NL,NC,6)  % DET X TIME
plot(g4,DET(length(t)-pontos:length(t)),'.','Color',[0, 1 ,0],'Markersize',point_size)
hold on
grid on
ylabel('\bf{DET}')

subplot(NL,NC,7)  % DET X TIME
plot(g4,BACT(length(t)-pontos:length(t)),'.','Color',[0, 0 ,1],'Markersize',point_size)
hold on
grid on
ylabel('\bf{BACT }')



end

xlabel('\bf{g4}')
