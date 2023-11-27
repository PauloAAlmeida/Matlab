function serieTemporal_NPPZZDB1()


clear all


y(:,1)=zeros (1000000,1);
y(:,2)=zeros (1000000,1);
y(:,3)=zeros (1000000,1);
y(:,4)=zeros (1000000,1);
y(:,5)=zeros (1000000,1);
y(:,6)=zeros (1000000,1);
y(:,7)=zeros (1000000,1);

in=4/7;
 tspan=[0 500];
ci = [in in in in in in in] ;



%cbactSexcreV1

   [t,y] = ode45('SistNPPZZDB1', tspan, ci); 
    





NUT = y(:,1);
PICO = y(:,2);
NANO = y(:,3);
NANOZOO = y(:,4);
MICROZ = y(:,5);
DET = y(:,6);
BACT = y(:,7);
NUTtot= y(:,1)+y(:,2)+y(:,3)+y(:,4)+y(:,5)+y(:,6)+y(:,7);

ll=length(t);

N = y(ll,1)
P = y(ll,2)
Nn = y(ll,3)
NNZ = y(ll,4)
MZ = y(ll,5)
DT = y(ll,6)
BcT = y(ll,7)
TesteEnvelope = y(ll,5)-y(ll-5,5)
plot(t,NUT,'k'); hold on
plot(t,PICO,'k--'); hold on
plot(t,NANO,'b--'); hold on
plot(t,NANOZOO,'k:'); hold on
plot(t,MICROZ,'b:'); hold on
plot(t,DET, 'k-.'); hold on
plot(t,BACT, 'r'); hold on
%plot(t,NUTtot,'g')
%title(['NutTotal=' num2str(NUTtot), ;  'g4=',num2str(g4);...
    %';  e=',num2str(e),;  '{;  Variáveis}''; Nuteq=',num2str(y(ll,1)),'   ;Picoeq=',num2str(y(2,pt)), '  ;Nanoeq=',num2str(y(3,pt)), '  ;NanoZ=',num2str(y(4,pt)), '  ;Microeq=',num2str(y(5,pt)), '  ;Deteq=',num2str(y(6,pt)), '  ;Bacteq=',num2str(y(7,pt))])

hleg=legend('N','PICOF','NANOF','NANOZ','MICROZ','DET','BACT');hold on

legend('boxoff')
set(hleg,'FontAngle','italic','location','NorthEast'); hold on

%ileg=legend('; Nuteq=',num2str(y(1,pt))); hold on
%set(ileg,'FontAngle','italic','location','NorthEastOutside')

ylabel('\bf{mMolNm^-3}')
xlabel('\bf{Time}')