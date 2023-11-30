
function[] = bifumaxminHist()
clear all

global g4
Rel_Tol = 1e-6;
Abs_Tol = 1e-6; %11;
options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol...
  Abs_Tol Abs_Tol]);% Abs_Tol Abs_Tol Abs_Tol

tspan=[0 2000]; 
in=0;

y(:,1)=[1 1]
%for ci=0:0.001:0.3
for g4=[0.1:0.01:0.3]; 
   %
        [t,y]=ode45('histeresis',tspan,ci);


z=length(y(:,1))
z


pts=round(z*.35); % PONTOS COLETADOS DA SERIE TEMPORAL
maxy5=[]; miny5=[]; maximo=[]; minimo=[];

for i=length(y(:,1))-pts:length(y(:,1))-2
if y(i,1)<=y(i+1,1)&y(i+1,1)>=y(i+2,1)
    maximo=y(i+1,1);
        maxy5=[ maxy5 maximo];
        
end
        
end

plot(g4,maxy5,'b.','MarkerSize',20)

hold on

for i=length(y(:,1))-pts:length(y(:,1))-2
      if y(i,1)>=y(i+1,1)&y(i+1,1)<=y(i+2,1)
               minimo=y(i+1,1);
                              miny5=[ miny5 minimo];
end
end

plot(g4,miny5,'r.','MarkerSize',10);hold on;


clear maxy5 miny5 maximo minimo

end
%end
xlabel('\bf{g4}}')
ylabel('\bf{Z2}')
title('\bf{}')


%********** EQUACOES  ***********
