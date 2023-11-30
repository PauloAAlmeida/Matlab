

clear all


% intervalo de integração
tspan = [0 200]; 




% Config opções ode solver (45-RK4 ou 113-A.B.Moulton)
%Rel_Tol = 1e-11;
%Abs_Tol = 1e-11; 
%options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol...
 %   Abs_Tol  ]);

pontos = 120;



% NUT_TOTAL =  QUANTIDADE TOTAL DE NUTRIENTE, que vai variar de 1 a 60

NUT_TOTAL_min = 25; 
NUT_TOTAL_max = 40; 

npts = 100; % PONTOS DO GRAFICO 


%for f=1:30
    
 %   NUT_TOTAL=1+((29/30)*f)
for NUT_TOTAL = [NUT_TOTAL_min: 0.1: NUT_TOTAL_max ]

n_var = 6;
       
ci = [NUT_TOTAL / n_var ];
 
NUT_TOTAL

%Solver
h=0.01; %tam. de passo (passo de tempo)
tf=400; %tempo final (final do intervalo de integraçao)
t=0:h:tf; %criaçao da matriz coluna com todos o intervalo
%ci=1; % condiçao inicial




%y=[ci zeros(1,length(t)-1); ci zeros(1,length(t)-1); ...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1);ci zeros(1,length(t)-1)]; % cria a matriz com os que vão receber os valores de y para cada tempo (cada linha dessa matriz é uma dimensao do problema edo)

%for i=1:length(t)-1 ;
%	k1=h*novo(t(i) , y(:,i));
%	k2=h*novo(t(i)+(h/2) , y(:,i)+(k1/2));
%	k3=h*novo(t(i)+(h/2) , y(:,i)+(k2/2));
%	k4=h*novo(t(i+1) , y(:,i)+k3);
%	y(:,i+1)=y(:,i)+(1/6)*(k1+2*k2+2*k3+k4);
%end


%NUT = y(1,:);
%MICROF = y(2,:);
%MICROZ = y(3,:);
%MESOZ = y(4,:);
%DET= y(5,:);
%BACT = y(6,:);

NL = 6;
NC = 1;
length(t);
point_size = 3;

 subplot(NL,NC,1) % NUTRIENTE X TIME
plot(NUT_TOTAL,NUT(length(t)-pontos:length(t)),'.','Color',[0.54, 0.2 ,0.143],'Markersize',point_size)

hold on
grid on

ylabel('\bf{NUT}')
set(get(gca,'YLabel'),'Color',[0.54, 0.2 ,0.143])

subplot(NL,NC,2)  % PICOFITO X TIME
plot(NUT_TOTAL,MICROF(length(t)-pontos:length(t)),'.','Color',[0.776, 0.424 ,0.11],'Markersize',point_size)
hold on
grid on
ylabel('\bf{MICROF}')
set(get(gca,'YLabel'),'Color',[0.776, 0.424 ,0.11]) %)

  subplot(NL,NC,3) % NANOFITO X TIME
plot(NUT_TOTAL,MICROZ(length(t)-pontos:length(t)),'.','Color',[0, 0.502 ,0],'Markersize',point_size)
 hold on
 grid on

 ylabel('\bf{MICROZ}')
 set(get(gca,'YLabel'),'Color',[0, 0.502 ,0])

 subplot(NL,NC,4)  % NANOZOO X TIME
plot(NUT_TOTAL,MESOZ(length(t)-pontos:length(t)),'b.','Markersize',point_size)
hold on
grid on
 ylabel('\bf{MESOZ}')
 set(get(gca,'YLabel'),'Color','b')

 subplot(NL,NC,5)  % BACT X TIME
plot(NUT_TOTAL,DET(length(t)-pontos:length(t)),'r.','Markersize',point_size)
hold on
grid on
 ylabel('\bf{DET }')
 set(get(gca,'YLabel'),'Color','r')

subplot(NL,NC,6)  % DET X TIME
plot(NUT_TOTAL,BACT(length(t)-pontos:length(t)),'k.','Markersize',point_size)
hold on
grid on
ylabel('\bf{BACT}')


end

xlabel('\bf{NUT TOTAL}')
