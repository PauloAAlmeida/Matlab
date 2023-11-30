

function dydt = mathbioeq(t,y)

%global e
%global d_b
%global k_B
%global e

PRESA = y(1);

PRED = y(2);


%VARIÁVEIS
alpha = 4.2 ;
beta = 2 ; 
gama = 2.8 ;
sigma = 2.5;


% SISTEMA 'NPZD LimaetAl'

   dydt(1,1) = (PRESA* (1- (PRESA/gama))) - (( PRESA*PRED)/ ((((PRESA^2)/alpha)) +PRESA + 1)) ;
   
   dydt(2,1) = (( beta*sigma*PRESA*PRED)/ ((((PRESA^2)/alpha)) + PRESA + 1)) - sigma*PRED ;