

function dydt = novo(t,y)

%global g4
%global z
%global d_b
%global k_B
global e



%VARIÁVEIS

NUT = y(1);
MICROF = y(2);
MICROZ= y(3);
MESOZ = y(4);
DET = y(5);
BACT = y(6);



% PARAMETROS 
% Legenda :* Extraido de Lima et al. 2002; ** estimad
%I_0=abs(sin(pi*t))+230;
I_0 = 230;               % luminosidade  total na superficie - em W m-2 (*)
teta = 0.45;             % fração de I_0 disp. p/ fotoss. (*)

alfa_P0 = 0.05;          % Islope of small phytop P-I curve - em mmolN(mg Chl)-1 day-1m2 W-1 (*)
alfa_P1 = 0.025;          % Islope of large phytop P-I curve - em mmolN(mg Chl)-1 day-1m2 W-1 (*)
lambda_P = 0.035;        % coef. de atenuação da luz - em m-1 (*)
z =25;                  % Profundidade (**)
u0_max = 2.75;           % taxa de crescimento maxima PICO - em dia-1 (*)
u1_max = 2;              % taxa de crescimento maxima NANOF - em dia-1 (*)
k_P0 = 0.4;              % termo concentração de meia saturação p/ PICO (* tabela 2)
k_P1 = 0.6;              % termo concentração de meia saturação p/ NANOF (* tabela 2)
I_par = I_0  * teta * exp(-lambda_P * z) ; % intensidade de luz disp. para fotoss. na prof. z (*)


g1=1.6;
g2=1;
d_p0=0.02;
d_p1=0.01;
d_z1=0.1;
d_z2=0.1;
d_b = 0.1;
e=0.25;%%0.25 %Fasham
a_z1=0.85;
a_z2=0.75;
m_z1=0.3;
m_z2=0.2;
K_z1=0.75;
K_z2=1;

%Pref.NANOZ
phi_p0=0.1;
phi_p11= 0.5;
phi_d1=0.1;
phi_b=0.5;

%Pref Microz
phi_p1=0.5;
phi_z1=0.5;
phi_d2=0;



% RESPOSTAS FUNCIONAIS EM NUT (y(1) ) * - 'Tipo M.-Merten'
U_0 = ( u0_max * ( 1 - exp( - alfa_P0 * I_par ) ) ) * ( NUT / ( k_P0 + NUT )  )
U_1 = ( u1_max * ( 1 - exp( - alfa_P1 * I_par ) ) ) * ( NUT / ( k_P1 + NUT )  ); %(*)

% RESPOSTAS FUNCIONAIS ZOO - pref. variável

%Microz
G_2p1 = (phi_p1*MICROF^2)/(K_z2*(phi_p1*MICROF+phi_z1*MICROZ)+(phi_p1*MICROF^2+phi_z1*MICROZ^2));
G_2z1 = (phi_z1*MICROZ^2)/(K_z2*(phi_p1*MICROF+phi_z1*MICROZ)+(phi_p1*MICROF^2+phi_z1*MICROZ^2));

%Microz = G_2 = G_2p1 + G_2z1 + G_2d
G_2 = (phi_p1*MICROF^2+phi_z1*MICROZ^2)/(K_z2*(phi_p1*MICROF+phi_z1*MICROZ)+(phi_p1*MICROF^2+phi_z1*MICROZ^2));

%RESPOSTA FUNCBACT TIPO I ou II
c2=1;
g4=0.6;% 
k_B=0.5;%0.1
G_B = (DET)/(k_B+DET);


% SISTEMA 'NPZD LimaetAl'



   dydt(1,1) = e*BACT - (U_1*MICROF) ;% NUT
   
   dydt(2,1)  = U_1*MICROF - g2*G_2p1*MESOZ - d_p1*MICROF ;%MICROF
  
   dydt(3,1)  = a_z1*m_z1*g1*BACT*MICROZ - g2*G_2z1*MESOZ  - d_z1*MICROZ^2      ;                  %MICROZ
   
   dydt(4,1) =  a_z2*m_z2*g2*G_2*MESOZ - d_z2*MESOZ^2; %MESOZ
   
   dydt(5,1) = (a_z1*(1-m_z1)*g1*BACT*MICROZ)+ (a_z2*(1-m_z2)*g2*G_2*MESOZ) + (1-a_z1)*BACT*g1*MICROZ + (1-a_z2)*g2*G_2*MESOZ+...
       d_p1*MICROF + d_z1*MICROZ^2 + d_z2*MESOZ^2 + d_b*BACT - c2 * g4 *G_B* BACT; %DET ;
   
   dydt(6,1) = c2 * G_B * g4 *  BACT  - e * BACT  - g1*BACT*MICROZ- d_b * BACT; %BACT
   
   
  
   
