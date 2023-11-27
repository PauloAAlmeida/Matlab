

function dydt = SistNPPZZDB1(t,y)

global e
%global z
%global d_b
%global k_B
%global e



%VARIÁVEIS

NUT = y(1);
PICO = y(2);
NANOF = y(3);
NANOZOO = y(4);
MICROZ = y(5);
DET = y(6);
BACT = y(7);


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
phi_p0=0.7;
phi_p11= 0;
phi_d1=0.25;
phi_b=0.05;

%Pref Microz
phi_p1=0.45;
phi_z1=0.45;
phi_d2=0.1;



% RESPOSTAS FUNCIONAIS EM NUT (y(1) ) * - 'Tipo M.-Merten'
U_0 = ( u0_max * ( 1 - exp( - alfa_P0 * I_par ) ) ) * ( NUT / ( k_P0 + NUT )  ); %(*)
U_1 = ( u1_max * ( 1 - exp( - alfa_P1 * I_par ) ) ) * ( NUT / ( k_P1 + NUT )  ); %(*)

% RESPOSTAS FUNCIONAIS ZOO - pref. variável

% NanoZ
G_1p0 = (phi_p0*PICO^2)/(K_z1*(phi_p0*PICO+phi_d1*DET+phi_b*BACT+phi_p11*NANOF)+(phi_p0*PICO^2+phi_d1*DET^2+phi_b*BACT^2+phi_p11*NANOF^2));
G_1p1 = (phi_p11*NANOF^2)/(K_z1*(phi_p0*PICO+phi_d1*DET+phi_b*BACT+phi_p11*NANOF)+(phi_p0*PICO^2+phi_d1*DET^2+phi_b*BACT^2+phi_p11*NANOF^2));
G_1d = (phi_d1*DET^2)/(K_z1*(phi_p0*PICO+phi_d1*DET+phi_b*BACT+phi_p11*NANOF)+(phi_p0*PICO^2+phi_d1*DET^2+phi_b*BACT^2+phi_p11*NANOF^2));
G_1b = (phi_b*BACT^2)/(K_z1*(phi_p0*PICO+phi_d1*DET+phi_b*BACT+phi_p11*NANOF)+(phi_p0*PICO^2+phi_d1*DET^2+phi_b*BACT^2+phi_p11*NANOF^2));

%Microz
G_2p1 = (phi_p1*NANOF^2)/(K_z2*(phi_p1*NANOF+phi_z1*NANOZOO+phi_d2*DET)+(phi_p1*NANOF^2+phi_z1*NANOZOO^2+phi_d2*DET^2));
G_2z1 = (phi_z1*NANOZOO^2)/(K_z2*(phi_p1*NANOF+phi_z1*NANOZOO+phi_d2*DET)+(phi_p1*NANOF^2+phi_z1*NANOZOO^2+phi_d2*DET^2));
G_2d = (phi_d2*DET^2)/(K_z2*(phi_p1*NANOF+phi_z1*NANOZOO+phi_d2*DET)+(phi_p1*NANOF^2+phi_z1*NANOZOO^2+phi_d2*DET^2));


%Nanoz = G_1 = G_1p0 + G_1d
G_1 = (phi_p0*PICO^2+phi_d1*DET^2+phi_b*BACT^2+phi_p11*NANOF^2)/(K_z1*(phi_p0*PICO+phi_d1*DET+phi_b*BACT+phi_p11*NANOF)+(phi_p0*PICO^2+phi_d1*DET^2+phi_b*BACT^2+phi_p11*NANOF^2));
%Microz = G_2 = G_2p1 + G_2z1 + G_2d
G_2 = (phi_p1*NANOF^2+phi_z1*NANOZOO^2+phi_d2*DET^2)/(K_z2*(phi_p1*NANOF+phi_z1*NANOZOO+phi_d2*DET)+(phi_p1*NANOF^2+phi_z1*NANOZOO^2+phi_d2*DET^2));

%RESPOSA FUNCBACT TIPO I ou II
c2=1;
g4=0.45;% 0.450
k_B=0.5;%0.1
G_B = (DET)/(k_B+DET);


% SISTEMA 'NPZD LimaetAl'

   dydt(1,1) = (a_z1*(1-m_z1)*g1*G_1*NANOZOO)+ (a_z2*(1-m_z2)*g2*G_2*MICROZ) + e*BACT - (U_0*PICO) - (U_1*NANOF) ;% NUT
   
   dydt(2,1)  = U_0*PICO - g1*G_1p0*NANOZOO - d_p0*PICO ; %PICO
  
   dydt(3,1)  = U_1*NANOF - g1*G_1p1*NANOZOO - g2*G_2p1*MICROZ - d_p1*NANOF ; %NANOF
   
   dydt(4,1) =  a_z1*m_z1*g1*G_1*NANOZOO - g2*G_2z1*MICROZ - d_z1*NANOZOO^2; %NANOZ
   
   dydt(5,1) = a_z2*m_z2*g2*G_2*MICROZ - d_z2*MICROZ^2; %MICROZ

   dydt(6,1) =  ((1-a_z1)*g1*G_1*NANOZOO + (1-a_z2)*g2*G_2*MICROZ - g1*G_1d*NANOZOO ...
       - g2*G_2d*MICROZ + d_p0*PICO + d_p1*NANOF + d_z1*NANOZOO^2 +d_z2*MICROZ^2) + d_b*BACT - c2 * g4 *G_B* BACT; %DET ;
   
   dydt(7,1) = c2 * G_B * g4 *  BACT - g1 * G_1b  * NANOZOO  - e * BACT - d_b * BACT; %BACT
   
   
  
   
