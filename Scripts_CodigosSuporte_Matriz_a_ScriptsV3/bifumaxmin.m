
function[] = bifumaxmin()
clear all

global g4
Rel_Tol = 1e-3;
Abs_Tol = 1e-4; %11;
options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol...
  Abs_Tol Abs_Tol]);% Abs_Tol Abs_Tol Abs_Tol

tspan=[0 14000]; 
in=5;
ci=[in in in in in in in]'; 



for g4=[0.38:-0.01:0]; 
   s1= length(y(:,1))-1;
  s2= length(y(:,2))-1;
 s3= length(y(:,3))-1;
s4= length(y(:,4))-1;
s5= length(y(:,5))-1;
s6= length(y(:,6))-1;
s7= length(y(:,7))-1;
   
    %
    
    energ = y(s1,1) + y(s2,2) + y(s3,3) + y(s4,4) + y(s5,5)+ y(s6,6) + y(s7,7)
    
   g4
        [t,y]=ode45('LimaetAlcbactSexcre_2SM',tspan,ci);%,options);


z=length(y(:,5));
z;


pts=round(z*.35); % PONTOS COLETADOS DA SERIE TEMPORAL
maxy5=[]; miny5=[]; maximo=[]; minimo=[];

for i=length(y(:,5))-pts:length(y(:,5))-2
if y(i,5)<=y(i+1,5)&y(i+1,5)>=y(i+2,5)
    maximo=y(i+1,5);
        maxy5=[ maxy5 maximo];
        
end
        
end
maximo;
maxy5;
plot(g4,maxy5,'b.','MarkerSize',20)

hold on

for i=length(y(:,5))-pts:length(y(:,5))-2
      if y(i,5)>=y(i+1,5)&y(i+1,5)<=y(i+2,5)
               minimo=y(i+1,5);
                              miny5=[ miny5 minimo];
end
end

plot(g4,miny5,'r.','MarkerSize',10);hold on;


clear maxy5 miny5 maximo minimo

end

xlabel('\bf{e}}')
ylabel('\bf{Z2}')
title('\bf{}')


%********** EQUACOES  ***********
