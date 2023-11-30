

function dydt = NPZ6V(t,y)

global g2
%VARI�VEIS

NUT = y(1);
PICO = y(2);
NANOF = y(3);
NANOZOO = y(4);
BACT = y(5);
DET = y(6);

% PARAMETROS 
% Legenda :* Extraido de Lima et al. 2002; ** estimado

%I_0=abs(sin(pi*t))+230;
I_0 = 230;               % luminosidade  total na superficie - em W m-2 (*)
teta = 0.45;             % fra��o de I_0 disp. p/ fotoss. (*)

alfa_P0 = 0.05;          % Islope of small phytop P-I curve - em mmolN(mg Chl)-1 day-1m2 W-1 (*)
alfa_P1 = 0.05;          % Islope of large phytop P-I curve - em mmolN(mg Chl)-1 day-1m2 W-1 (*)
lambda_P = 0.035;        % coef. de atenua��o da luz - em m-1 (*)
z = 25;                  % Profundidade (**)
u0_max = 2.75;           % taxa de crescimento maxima PICO - em dia-1 (*)
u1_max = 2;              % taxa de crescimento maxima NANOF - em dia-1 (*)
k_P0 = 0.4;              % termo concentra��o de meia satura��o p/ PICO (* tabela 2)
k_P1 = 0.6;              % termo concentra��o de meia satura��o p/ NANOF (* tabela 2)
I_par = I_0  * teta * exp(-lambda_P * z) ; % intensidade de luz disp. para fotoss. na prof. z (*)

% RESPOSTAS FUNCIONAIS EM NUT (y(1) ) * - 'Tipo M.-Merten'
U_0 = ( u0_max * ( 1 - exp( - alfa_P0 * I_par ) ) ) * ( NUT / ( k_P0 + NUT )  ); %(*)
U_1 = ( u1_max * ( 1 - exp( - alfa_P1 * I_par ) ) ) * ( NUT / ( k_P1 + NUT )  ); %(*)


%PAR�METROS DE RESPOSTAS LINEARES (y(2) a y(6) )
    % 'Taxas de ataque' (Ex: NANOZ->PICO, 'taxa de ataque' do NANOZ sobre O PICO-'press�o de NANOZ em PICO' )
        % O que n�o � consumido � convertido em DET - termos (1-x) em y(6)

g0 = 0.65;           % NANOZ->PICO (* tabela 2, valor de Phip - No artigo, 'g' � uma fun��o do tipo M.Menten)
g1 = 1;             % NANOZ->BACT (**)
%g2 = 1;                % DET->BACT (**)
g3 = 0.35;               % NANOZ->NANOF (* tabela 2)

    %'Taxas de mortalidade'
db = 5;            % Mortalidade da BACT (vai p/ NUT)  (**)
dp0 = 0.02;            % Mortalidade da PICO (vai p/ DET)  (* tabela 2)
dp1 = 0.01;            % Mortalidade da NANOF (vai p/ DET) (* tabela 2)
dz1 = 1;             % Mortalidade da NANOZ (vai p/ DET) (* tabela 2)
dd = 0.01;            % decaimento da BACT (vai p/ DET)  (**)
     % 'Taxas de 'assimila��o'' (o artigo Lima et al. 2002 usa dois parametros para
     % 'convers�o': efici�ncia de assimila��o e efici�ncia metab�lica -
     % c=a*m. Aqui vamos tomar m=1)
     
c0 = 0.8*0.25;           % NANOZ - tx de convers�o do PICO em NANOZ (* tabela 1)
c1 = 0.2;            % NANOZ - tx de convers�o da BACT em NANOZ (**)
c2 = 1;             % BACT - tx de convers�o do detrito em BACT (**)
c3 = 0.8*0.25;              % NANOZ - tx de convers�o do NANOF em NANOZ (*** tabela 1)

% SISTEMA 'NPZD 6V'

   dydt(1,1) =  db * BACT  - U_0 * PICO - U_1 * NANOF; % NUT
   
   dydt(2,1)  =  U_0 * PICO - g0 * PICO * NANOZOO  - dp0 * PICO ; %PICO
  
   dydt(3,1)  = U_1 * NANOF -  g3 * NANOF * NANOZOO - dp1 * NANOF ; %NANOF
   
   dydt(4,1) =  c0 * g0 * PICO * NANOZOO + c1 * g1 * BACT * NANOZOO +  c3*  g3 * NANOF * NANOZOO - dz1 * NANOZOO ; %NANOZ

   dydt(5,1) = c2 * g2 * DET * BACT - g1 * BACT * NANOZOO  - db * BACT - dd * BACT; %BACT
   
   dydt(6,1) =  ( 1 - c0 ) * g0 * PICO * NANOZOO + ( 1 - c2 )   * g2   * DET  * BACT +( 1 - c1 ) *  g1 * BACT * NANOZOO +( 1 - c3 ) *  g3 * NANOF * NANOZOO   + dp0 * PICO + dz1 * NANOZOO + dp1 * NANOF + dd * BACT- g2 * DET * BACT; %DET                                                                            ;
   
  % dydt(7,1) = y(8);
   
  % dydt(8,1) = -17*y(7)+2000;
   
   %DET

    