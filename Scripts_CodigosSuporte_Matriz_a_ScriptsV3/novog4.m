

clear all%

global e
% intervalo de integração
%tspan = [0 200]; 

%Solver
h=0.005; %tam. de passo (passo de tempo)
tf=2000; %tempo final (final do intervalo de integraçao)
t=0:h:tf; %criaçao da matriz coluna com todos o intervalo
%ci=1; % condiçao inicial




pontos =500;



% g2 =  QUANTIDADE TOTAL DE NUTRIENTE, que vai variar de 1 a 60


npts = 30; % PONTOS DO GRAFICO 
ci = 5;
%for f=1:30
    
 %   e=1+((29/30)*f)
for e =1.1:0.05:1.3;

e








y=[ci zeros(1,length(t)-1); ci zeros(1,length(t)-1); ...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1);ci zeros(1,length(t)-1)];...
   % ci zeros(1,length(t)-1)]; % cria a matriz com os que vão receber os valores de y para cada tempo (cada linha dessa matriz é uma dimensao do problema edo)

for i=1:length(t)-1 
	k1=h* novo(t(i) , y(:,i));
	k2=h* novo(t(i)+(h/2) , y(:,i)+(k1/2));
	k3=h* novo(t(i)+(h/2) , y(:,i)+(k2/2));
	k4=h* novo(t(i+1) , y(:,i)+k3);
	y(:,i+1)=y(:,i)+(1/6)*(k1+2*k2+2*k3+k4);
end

NUT = y(1,:);
MICROF = y(2,:);
MICROZ = y(3,:);
MESOZ = y(4,:);
DET= y(5,:);
BACT = y(6,:);


NL = 6;
NC = 1;
length(t);
point_size = 2;

 %subplot(NL,NC,1) % NUTRIENTE X TIME
%plot(e,NUT(length(t)-pontos:length(t)))
%hold on

plot(e,((max(MESOZ(length(t)-pontos:length(t))))),'.','Color',[0.776, 0.424 ,0.11],'Markersize',10);hold on
plot(e,((min(MESOZ(length(t)-pontos:length(t))))),'.','Color',[0.776, 0.424 ,0.11],'Markersize',10);hold on

end

%xlabel('\bf{e}')
