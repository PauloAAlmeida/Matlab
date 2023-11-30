

clear all




pontos = 70;


for NUT_TOTAL = 1:1:30
    
    %[NUT_TOTAL_min: (NUT_TOTAL_max - NUT_TOTAL_min) / npts: NUT_TOTAL_max ]

n_var = 6;
        
ci = [(NUT_TOTAL )/ n_var ];


 
NUT_TOTAL 

%Solver
h=0.01; %tam. de passo (passo de tempo)
tf=300; %tempo final (final do intervalo de integraçao)
t=0:h:tf; %criaçao da matriz coluna com todos o intervalo
%ci=1; % condiçao inicial




y=[ci zeros(1,length(t)-1); ci zeros(1,length(t)-1); ...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1)];
    %ci zeros(1,length(t)-1)]; % cria a matriz com os que vão receber os valores de y para cada tempo (cada linha dessa matriz é uma dimensao do problema edo)

for i=1:length(t)-1 
	k1=h*LimaetAl(t(i) , y(:,i));
	k2=h*LimaetAl(t(i)+(h/2) , y(:,i)+(k1/2));
	k3=h*LimaetAl(t(i)+(h/2) , y(:,i)+(k2/2));
	k4=h*LimaetAl(t(i+1) , y(:,i)+k3);
	y(:,i+1)=y(:,i)+(1/6)*(k1+2*k2+2*k3+k4);
end

%LimaetAlcbactSexcre
NUT = y(1,:);
NANOF = y(2,:);
MICROF = y(3,:);
MICROZ = y(4,:);
MESOZ= y(5,:)
DET = y(6,:);
%BACT = y(7,:);


length(t);
point_size = 15;

 
plot3(0,NUT_TOTAL,MESOZ(length(t)-pontos:length(t)),'.','Color','red','Markersize',point_size)

hold on
grid on

ylabel('\bf{NUT}')
zlabel('\bf{mmol m-3}')
xlabel('\bf{g4}')
end

clear all
global g4

pontos=70;
for g4 = 0.1:0.05:1;
    
    g4
    
    
    for NUT_TOTAL = 1:1:30
        
    NUT_TOTAL
n_var = 7;
        
ci = [(NUT_TOTAL )/ n_var ];

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
MESOZ= y(5,:)
DET = y(6,:);
%BACT = y(7,:);

c1=0.9*g4;
c2=0.2*g4;

plot3(g4,NUT_TOTAL,MESOZ(length(t)-pontos:length(t)),'.','Color',[c1,c2,1],'Markersize',15)

    end
end


    
    
    