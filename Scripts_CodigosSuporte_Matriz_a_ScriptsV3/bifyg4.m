clear all
%global g4;

%ci=[5 5 5 5 5 5];
tspan=[0 2000];

%h=0.01; %tam. de passo (passo de tempo)
%tf=8000; %tempo final (final do intervalo de integraçao)
%t=0:h:tf; %criaçao da matriz coluna com todos o intervalo
%ci=5; % condiçao inicial









 Rel_Tol = 1e-11;
Abs_Tol = 1e-11; %11;

% NUT_TOTAL =  QUANTIDADE TOTAL DE NUTRIENTE, que vai variar de 1 a 60
for NUT_TOTAL = 1:1:30
    NUT_TOTAL
    %[NUT_TOTAL_min: (NUT_TOTAL_max - NUT_TOTAL_min) / npts: NUT_TOTAL_max ]

n_var = 7;
        
cin = NUT_TOTAL / n_var ;

ci = [cin cin cin cin cin cin cin];





%options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol...
   %Abs_Tol   ]);


  [t,y] = ode113('LimaetAlcbactSexcre', tspan, ci); 
    
  
NUT = y(:,1);
PICO = y(:,2);
NANOF = y(:,3);
NANOZOO = y(:,4);
MICROZ = y(:,5);
DET = y(:,6);


%axis([0 3 -1 5]);
%c1=1.3*g4;
%c2=1.4*g4;
l=length(y(:,5))
pontos=round(l*0.30)
%plot(e,(y(l-100:l,2)),'.');hold on
plot(NUT_TOTAL,MICROZ(l-pontos:l),'.','Color','red','Markersize',10)

hold on
grid on


end
