

function dydt = NPZ7VRF2(t,y)

%global dz2



%VARIÁVEIS

NUT = y(1);
PICO = y(2);
NANOF = y(3);
NANOZOO = y(4);
BACT = y(5);
DET = y(6);
MICROZ = y(7);

% PARAMETROS 
% Legenda :* Extraido de Lima et al. 2002; ** estimado

%I_0=abs(sin(pi*t))+230;
I_0 = 230;               % luminosidade  total na superficie - em W m-2 (*)
teta = 0.45;             % fração de I_0 disp. p/ fotoss. (*)

alfa_P0 = 0.05;          % Islope of small phytop P-I curve - em mmolN(mg Chl)-1 day-1m2 W-1 (*)
alfa_P1 = 0.05;          % Islope of large phytop P-I curve - em mmolN(mg Chl)-1 day-1m2 W-1 (*)
lambda_P = 0.035;        % coef. de atenuação da luz - em m-1 (*)
z = 25;                  % Profundidade (**)
u0_max = 2.75;           % taxa de crescimento maxima PICO - em dia-1 (*)
u1_max = 2;              % taxa de crescimento maxima NANOF - em dia-1 (*)
k_P0 = 0.4;              % termo concentração de meia saturação p/ PICO (* tabela 2)
k_P1 = 0.6;              % termo concentração de meia saturação p/ NANOF (* tabela 2)
I_par = I_0  * teta * exp(-lambda_P * z) ; % intensidade de luz disp. para fotoss. na prof. z (*)

% RESPOSTAS FUNCIONAIS EM NUT (y(1) ) * - 'Tipo M.-Merten'
U_0 = ( u0_max * ( 1 - exp( - alfa_P0 * I_par ) ) ) * ( NUT / ( k_P0 + NUT )  ); %(*)
U_1 = ( u1_max * ( 1 - exp( - alfa_P1 * I_par ) ) ) * ( NUT / ( k_P1 + NUT )  ); %(*)


%PARÂMETROS DE RESPOSTAS LINEARES (y(2) a y(6) )
    % 'Taxas de ataque' (Ex: NANOZ->PICO, 'taxa de ataque' do NANOZ sobre O PICO-'pressão de NANOZ em PICO' )
        % O que não é consumido é convertido em DET - termos (1-x) em y(6)
        % assumindo crescimento (g em lima et al.) do zoo=1
Kp= 0.4;  Kb=  1; Kd=0; Kn=0.6; Knz= 0.75; Kn=0.6;  % constantes de saturação

g0 = (Kp*2*0.7) /(Kp+PICO);          % NANOZ->PICO (* tabela 2, valor de Phip - No artigo, 'g' é uma função do tipo M.Menten)=0.7*1;
g1 = (Kb*2* 1)/(Kb+BACT) ;          % NANOZ->BACT (**)1*1;
g2 =  (Kd*2*5)/(Kd+DET) ;              % BACT->DET (**)3
g3 = (Kn*2*0.35)/(Kn+NANOF) ;               % NANOZ->NANOF (* tabela 2);0.35*1
g4 =  (Knz*2*0.9)/(Knz+NANOZOO) ;          % MICROZ-NANOZ (*tabela 2)0.9*1
g5 = 0/(Kn+NANOF) ;          % MICROZ-NANOF (*tabela 2) 0 *1;
%'Taxas de mortalidade'
db = 8;            % Mortalidade da BACT (vai p/ NUT)  (**)
dp0 = 0.02;            % Mortalidade da PICO (vai p/ DET)  (* tabela 3)
dp1 = 0.01;            % Mortalidade da NANOF (vai p/ DET) (* tabela 3)
dz1 = 0.1;             % Mortalidade da NANOZ (vai p/ DET) (* tabela 3)
dd = 0.001;            % decaimento da BACT (vai p/ DET)  (**)
dz2= 0.1;            % Mortalidade da MICROZ (vai p/ DET) (* tabela 3)


     % 'Taxas de 'assimilação'' (o artigo Lima et al. 2002 usa dois parametros para
     % 'conversão': eficiência de assimilação e eficiência metabólica -
     % c=a*m. Aqui vamos tomar m=1)
     
c0 = 0.85*0.3;           % NANOZ - tx de conversão do PICO em NANOZ (* tabela 3)
c1 = 0.2;            % NANOZ - tx de conversão da BACT em NANOZ (**)
c2 = 1;             % BACT - tx de conversão do detrito em BACT (**)
c3 = 0.85*0.3;              % NANOZ - tx de conversão do NANOF em NANOZ (* tabela 3)
c4 = 0.75*0.2;               % MICROZ - tx de conversão do NANOZ em MICROZ (* tabela 3)
c5 =  0.75*0.2;   % MICROZ - tx de conversão do NANOF em MICROZ (* tabela 3)

% SISTEMA 'NPZD 7V'

   dydt(1,1) =  db * BACT  - U_0 * PICO - U_1 * NANOF; % NUT
   
   dydt(2,1)  =  U_0 * PICO - g0 * PICO * NANOZOO   - dp0 * PICO ; %PICO
  
   dydt(3,1)  = U_1 * NANOF -  g3 * NANOF * NANOZOO -  g5 * NANOF * MICROZ - dp1 * NANOF ; %NANOF
   
   dydt(4,1) =  c0 * g0 * PICO * NANOZOO + c1 * g1 * BACT * NANOZOO +  c3*  g3 * NANOF * NANOZOO - dz1 * NANOZOO - g4 * NANOZOO * MICROZ ; %NANOZ

   dydt(5,1) = c2 * g2 * DET * BACT - g1 * BACT * NANOZOO  - db * BACT - dd * BACT; %BACT
   
   dydt(6,1) =  ( 1 - c0 ) * g0 * PICO * NANOZOO + ( 1 - c2 )   * g2   * DET  * BACT +( 1 - c1 ) *  g1 * BACT * NANOZOO +( 1 - c3 ) *  g3 * NANOF * NANOZOO   + ( 1 - c4 ) *  g4 * NANOZOO * MICROZ + ( 1 - c5 ) *  g5 * NANOF * MICROZ + dp0 * PICO + dz1 * NANOZOO +  dz2 * MICROZ + dp1 * NANOF + dd * BACT - g2 * DET * BACT; %DET                                                                            ;
   
   dydt(7,1) = c4 * g4 * NANOZOO * MICROZ + c5 * g5 * NANOF * MICROZ - dz2 * MICROZ ; %MICROZ
   
