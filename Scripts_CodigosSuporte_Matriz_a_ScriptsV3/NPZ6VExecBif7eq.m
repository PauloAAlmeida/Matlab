

clear all


npts=40;


pontos = 2000;



% NUT_TOTAL =  QUANTIDADE TOTAL DE NUTRIENTE, que vai variar de 1 a 60

NUT_TOTAL_min = 1; 
NUT_TOTAL_max = 30; 

npts = 30; % PONTOS DO GRAFICO 


for NUT_TOTAL = 30:1:50
    
    %[NUT_TOTAL_min: (NUT_TOTAL_max - NUT_TOTAL_min) / npts: NUT_TOTAL_max ]

n_var = 7;
        
ci = [(NUT_TOTAL )/ n_var ];


 
NUT_TOTAL 

%Solver
h=0.01; %tam. de passo (passo de tempo)
tf=800; %tempo final (final do intervalo de integraçao)
t=0:h:tf; %criaçao da matriz coluna com todos o intervalo
%ci=1; % condiçao inicial




y=[ci zeros(1,length(t)-1); ci zeros(1,length(t)-1); ...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);
    ci zeros(1,length(t)-1)]; % cria a matriz com os que vão receber os valores de y para cada tempo (cada linha dessa matriz é uma dimensao do problema edo)

for i=1:length(t)-1 
	k1=h*LimaetAlcbactSexcre_2SM(t(i) , y(:,i));
	k2=h*LimaetAlcbactSexcre_2SM(t(i)+(h/2) , y(:,i)+(k1/2));
	k3=h*LimaetAlcbactSexcre_2SM(t(i)+(h/2) , y(:,i)+(k2/2));
	k4=h*LimaetAlcbactSexcre_2SM(t(i+1) , y(:,i)+k3);
	y(:,i+1)=y(:,i)+(1/6)*(k1+2*k2+2*k3+k4);
end

%LimaetAlcbactSexcre
NUT = y(1,:);
NANOF = y(2,:);
MICROF = y(3,:);
MICROZ = y(4,:);
MESOZ= y(5,:);
DET = y(6,:);
BACT = y(7,:);

NL = 7;
NC =1;
length(t);
point_size = 10;

 subplot(NL,NC,1) % NUTRIENTE X TIME
plot(NUT_TOTAL,NUT(length(t)-pontos:length(t)),'.','Color',[0,0,1],'Markersize',point_size)

hold on
grid on

ylabel('\bf{NUT}')


subplot(NL,NC,2)  % PICOFITO X TIME
plot(NUT_TOTAL,NANOF(length(t)-pontos:length(t)),'.','Color',[0,0,1],'Markersize',point_size)
hold on
grid on
ylabel('\bf{NANOF}')

  subplot(NL,NC,3) % NANOFITO X TIME
plot(NUT_TOTAL,MICROF(length(t)-pontos:length(t)),'.','Color',[0,0,1],'Markersize',point_size)
 hold on
 grid on

 ylabel('\bf{MICROF}')

 subplot(NL,NC,4)  % NANOZOO X TIME
plot(NUT_TOTAL,MICROZ(length(t)-pontos:length(t)),'.','Color',[0,0,1],'Markersize',point_size)
hold on
grid on
 ylabel('\bf{MICROZ}')


 subplot(NL,NC,5)  % BACT X TIME
 plot(NUT_TOTAL,MESOZ(length(t)-pontos:length(t)),'.','Color',[0,0,1],'Markersize',point_size)
hold on
grid on
ylabel('\bf{MESOZ}')
 
subplot(NL,NC,6)  % DET X TIME
plot(NUT_TOTAL,DET(length(t)-pontos:length(t)),'.','Color',[0,0,1],'Markersize',point_size)
hold on
grid on
ylabel('\bf{DET}')

subplot(NL,NC,7)  % DET X TIME
plot(NUT_TOTAL,BACT(length(t)-pontos:length(t)),'.','Color',[0, 0 ,1],'Markersize',point_size)
hold on
grid on
ylabel('\bf{BACT }')


 %[0, 0, 10] - verde
 %[1, 0, 10] - azul
 %[1, 1, 0] - 



end

xlabel('\bf{NUT TOTAL}')