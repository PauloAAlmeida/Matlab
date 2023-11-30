function EXECTempo()


clear all%

global g4
global z
global d_b
global k_B
global e


h=0.01; %tam. de passo (passo de tempo)
tf=400; %tempo final (final do itervalo de integraçao)
t=0:h:tf; %criaçao da matriz coluna com todos o intervalo
n=7;
nutttotal=20;
ci=nutttotal/n ; % condiçao inicial
pt=tf/h;


y=[ci zeros(1,length(t)-1); ci zeros(1,length(t)-1); ...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1); ci zeros(1,length(t)-1);...
    ci zeros(1,length(t)-1)]; % cria a matriz vai receber os valores de y para cada tempo  em cada dimensão

for i=1:length(t)-1 
	k1=h*LimaetAlcbactSexcre_2SM(t(i) , y(:,i));
	k2=h*LimaetAlcbactSexcre_2SM(t(i)+(h/2) , y(:,i)+(k1/2));
	k3=h*LimaetAlcbactSexcre_2SM(t(i)+(h/2) , y(:,i)+(k2/2));
	k4=h*LimaetAlcbactSexcre_2SM(t(i+1) , y(:,i)+k3);
	y(:,i+1)=y(:,i)+(1/6)*(k1+2*k2+2*k3+k4);
  
   

end

NUT = y(1,:);
PICO = y(2,:);
NANO = y(3,:);
NANOZOO = y(4,:);
MICROZ = y(5,:);
DET = y(6,:);
BACT = y(7,:);
NUTtot= y(1,:)+y(2,:)+y(3,:)+y(4,:)+y(5,:)+y(6,:)+y(7,:);



plot(t,NUT,'k'); hold on
plot(t,PICO,'k--'); hold on
plot(t,NANO,'b--'); hold on
plot(t,NANOZOO,'k:'); hold on
plot(t,MICROZ,'b:'); hold on
plot(t,DET, 'k-.'); hold on
plot(t,BACT, 'r'); hold on
plot(t,NUTtot,'g')
title(['NutTotal=' num2str(nutttotal), '; profundidade=',num2str(z),';  g4=',num2str(g4),';  d_b=',num2str(d_b),...
    ';  e=',num2str(e),';  k_B=',num2str(k_B),'{;  Variáveis}''; Nuteq=',num2str(y(1,pt)),'   ;Picoeq=',num2str(y(2,pt)), '  ;Nanoeq=',num2str(y(3,pt)), '  ;NanoZ=',num2str(y(4,pt)), '  ;Microeq=',num2str(y(5,pt)), '  ;Deteq=',num2str(y(6,pt)), '  ;Bacteq=',num2str(y(7,pt))])

hleg=legend('Nut','PICOF','NANOF','NANOZ','MICROZ','DET','BACT');hold on

legend('boxoff')
set(hleg,'FontAngle','italic','location','NorthEast'); hold on

%ileg=legend('; Nuteq=',num2str(y(1,pt))); hold on
%set(ileg,'FontAngle','italic','location','NorthEastOutside')

ylabel('\bf{mMolNm^-3}')
xlabel('\bf{TEMPO}')