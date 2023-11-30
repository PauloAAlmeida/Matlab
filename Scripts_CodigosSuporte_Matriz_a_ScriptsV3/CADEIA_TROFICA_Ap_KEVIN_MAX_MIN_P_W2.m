% CADEIA_TROFICA_Ap_KEVIN_MAX_MIN_P_W2
% y(1)=R
% y(2)=C
% y(3)=P 
function[] = CADEIA_TROFICA_Ap_KEVIN_MAX_MIN_P_W2()
clear all
y(:,1)=zeros (1000000,1);
y(:,2)=zeros (1000000,1);
y(:,3)=zeros (1000000,1);
y(:,4)=zeros (1000000,1);
y(:,5)=zeros (1000000,1);
y(:,6)=zeros (1000000,1);
y(:,7)=zeros (1000000,1);
global g4

tspan=[0 7000]; %5000];; % ********* TEMPO DE SIMULACAO **************
in=4.15;
ci=[in in in in in in in]'; %[0.5 0.02 0.01]'; % *********** CONDICOES INICIAIS ********


figure ('Position',[0 0 1100 700]) % ************* AUMENTAR A FIGURA **********************
for g4=[7.2:0.1:7.5]; %[0.15 :0.1: 1 ] ;  %  *** PREFERENCIA W2  *******
   g4  %  Wp
        [t,y]=ode45('LimaetAlcbactSexcre_2SM',tspan,ci);

% ***** SIMULACAO DO MODELO ******

% ***** SIMULACAO DO MODELO **********
% ****** MONTAGEM ****** 

y5=y(:,5)

y5

% *** FIGURAS *****

z=length(y(:,5));
z

pts=500; % PONTOS COLETADOS DA SERIE TEMPORAL
maxy5=[]; miny5=[]; maximo=[]; minimo=[];

for i=length(y(:,5))-pts:length(y(:,5))-3
ttttt=2
if y(i+1,5)<=y(i+2,5)&y(i+2,5)>=y(i+3,5)
    maximo=y(i+2,5)
        maxy5=[ maxy5 maximo];
%        else
maximo
tttt=4
%                maxy1=maxy1;
end
        tt=3
end
maxy5
plot(g4,maxy5,'b.','MarkerSize',20)

hold on

for i=length(y(:,5))-pts:length(y(:,5))-2
      if y(i,5)>=y(i+1,5)&y(i+1,5)<=y(i+2,5)
               minimo=y(i+1,5);
                              miny5=[ miny5 minimo];
                          end
end

plot(g4,miny5,'r.','MarkerSize',10)


clear maxy5 miny5 maximo minimo

end

xlabel('\bf{w_{2}}')
ylabel('\bf{P}')
title('\bf{KEVIN ALLOCHTONOUS A_{p}}')


%********** EQUACOES  ***********
