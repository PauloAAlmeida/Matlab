

clear all



npts=40;%


pontos = 40;



% NUT_TOTAL =  QUANTIDADE TOTAL DE NUTRIENTE, que vai variar de 1 a 60

NUT_TOTAL_min = 1; 
NUT_TOTAL_max = 30; 

npts = 30; % PONTOS DO GRAFICO 


%for f=1:30
    
 %   NUT_TOTAL=1+((29/30)*f)
for NUT_TOTAL = [NUT_TOTAL_min: (NUT_TOTAL_max - NUT_TOTAL_min) / npts: NUT_TOTAL_max ];

n_var = 7;
        
ci = [(NUT_TOTAL )/ n_var ];
ci2 =[NUT_TOTAL / n_var ];

 
NUT_TOTAL 

%Solver
h=0.01; %tam. de passo (passo de tempo)
tf=200; %tempo final (final do intervalo de integra�ao)
t=0:h:tf; %cria�ao da matriz coluna com todos o intervalo
%ci=1; % condi�ao inicial




y=[ci zeros(1,length(t)-1); ci zeros(1,length(t)-1); ...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1)]; % cria a matriz com os que v�o receber os valores de y para cada tempo (cada linha dessa matriz � uma dimensao do problema edo)

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
MICROZ= y(5,:);
DET = y(6,:);
BACT = y(7,:);

NL = 7;
NC = 1;
length(t);
point_size = 13;

 subplot(NL,NC,1) % NUTRIENTE X TIME
plot(NUT_TOTAL,NUT(length(t)-pontos:length(t)),'x','Color',[0.54, 0.2 ,0.143],'Markersize',point_size)

hold on
grid on

ylabel('\bf{N}')
set(get(gca,'YLabel'),'Color',[0.54, 0.2 ,0.143])

subplot(NL,NC,2)  % PICOFITO X TIME
plot(NUT_TOTAL,PICO(length(t)-pontos:length(t)),'x','Color',[0.776, 0.424 ,0.11],'Markersize',point_size)
hold on
grid on
ylabel('\bf{PICO}')
set(get(gca,'YLabel'),'Color',[0.776, 0.424 ,0.11]) %)

  subplot(NL,NC,3) % NANOFITO X TIME
plot(NUT_TOTAL,NANO(length(t)-pontos:length(t)),'x','Color',[0, 0.502 ,0],'Markersize',point_size)
 hold on
 grid on

 ylabel('\bf{NANOF}')
 set(get(gca,'YLabel'),'Color',[0, 0.502 ,0])

 subplot(NL,NC,4)  % NANOZOO X TIME
plot(NUT_TOTAL,NANOZOO(length(t)-pontos:length(t)),'x','Color',[0, 0.502 ,0],'Markersize',point_size)
hold on
grid on
 ylabel('\bf{NANOZ}')
 set(get(gca,'YLabel'),'Color','b')

 subplot(NL,NC,5)  % BACT X TIME
plot(NUT_TOTAL,BACT(length(t)-pontos:length(t)),'x','Color',[0, 0.502 ,0],'Markersize',point_size)
hold on
grid on
 ylabel('\bf{BACT }')
 set(get(gca,'YLabel'),'Color','r')

subplot(NL,NC,6)  % DET X TIME
plot(NUT_TOTAL,DET(length(t)-pontos:length(t)),'x','Color',[0, 0.502 ,0],'Markersize',point_size)
hold on
grid on
ylabel('\bf{DET}')

subplot(NL,NC,7)  % DET X TIME
plot(NUT_TOTAL,MICROZ(length(t)-pontos:length(t)),'x','Color',[0, 0.502 ,0],'Markersize',point_size)
hold on
grid on
ylabel('\bf{MICRO}')



end

xlabel('\bf{NUT TOTAL}')