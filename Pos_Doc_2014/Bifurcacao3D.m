    
% Bifurca��o 3D - Param�tros "e"(ou g4) e NUT (condi��o inicial)
% por: Almeida, P.; Faria, L.; Valentin, F.


clear all
global e % "libera" parametro para outro script
 
% Cria bloco mem�ria para vari�veis
y(:,1)=zeros (1000000,1);
y(:,2)=zeros (1000000,1);
y(:,3)=zeros (1000000,1);
y(:,4)=zeros (1000000,1);
y(:,5)=zeros (1000000,1);
y(:,6)=zeros (1000000,1);
y(:,7)=zeros (1000000,1);

% Loop parametro e(ou g4)
for e = 0:0.1:2 ;
     
   
    e %mostra valor na tela de comando (para acompanhamento da simula��o.)
    
     %clear y(:,:); clear l % caso c�digo lento (geralmente n�o aplicavel
     %nesse script)
   
    
    
    
    tspan=[0 2000]; % tempo simula��o
    
   
    
  % Loop Cond. Inicial (somat�rio yizero)
    
    for NUT_TOTAL = 1:2:30
        
        NUT_TOTAL
        
    in=NUT_TOTAL/7; % par


        
ci = [in in in in in in in] ; % particionamento por yi




   [t,y] = ode113('LimaetAlcbactSexcreV1', tspan, ci); %m�todo Adams-Basforth
    

l=length(y(:,5)) %tamanho do vetor; y5=predador de topo
pontos= 300 % pontos coletados do final da s�rie
%round(l*0.30)
%plot(e,(y(l-100:l,2)),'.');hold on

%c1=0.9*g4^2;
%c2=0.9*g4^2;

%plot
grid on
plot3(e,NUT_TOTAL,max(y(l-pontos:l,5)),'.','Color','k','Markersize',16);hold on
plot3(e,NUT_TOTAL,min(y(l-pontos:l,5)),'.','Color','r','Markersize',16)
y(l,5)
hold on;

ylabel('\bf{N}')
xlabel('\bf{e}')
zlabel('\bf{m MolN m-3}')

    end
end


    
    
    