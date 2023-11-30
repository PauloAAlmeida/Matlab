clear all
global g4;

%ci=[5 5 5 5 5 5];
tspan=[0 800];

%h=0.01; %tam. de passo (passo de tempo)
%tf=8000; %tempo final (final do intervalo de integraçao)
%t=0:h:tf; %criaçao da matriz coluna com todos o intervalo
%ci=5; % condiçao inicial




pontos = 100;




 Rel_Tol = 1e-11;
Abs_Tol = 1e-11; %11;

% NUT_TOTAL =  QUANTIDADE TOTAL DE NUTRIENTE, que vai variar de 1 a 60
for NUT_TOTAL = 1:1:30
    NUT_TOTAL
    %[NUT_TOTAL_min: (NUT_TOTAL_max - NUT_TOTAL_min) / npts: NUT_TOTAL_max ]

n_var = 6;
        
cin = NUT_TOTAL / n_var ;

ci = [cin cin cin cin cin cin];





options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol...
   Abs_Tol   ]);


  [t,y] = ode45('LimaetAl', tspan, ci); 
    
  
NUT = y(:,1);
PICO = y(:,2);
NANOF = y(:,3);
NANOZOO = y(:,4);
MICROZ = y(:,5);
DET = y(:,6);


%axis([0 3 -1 5]);
c1=1.3*g4;
c2=1.4*g4;
l=length(y);
%plot(e,(y(l-100:l,2)),'.');hold on
plot(NUT_TOTAL,MICROZ(l-pontos:l),'.','Color','red','Markersize',10)

hold on
grid on


end
npts=40;


pontos = 70;



npts = 30; % PONTOS DO GRAFICO 


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
MESOZ= y(5,:);
DET = y(6,:);


NL = 6;
NC =1;
length(t);
point_size = 6;



 
 plot(NUT_TOTAL,MESOZ(length(t)-pontos:length(t)),'.','Color',[0,0,1],'Markersize',point_size)
hold on
grid on
ylabel('\bf{MESOZ}')
 

end

xlabel('\bf{NUT TOTAL}')