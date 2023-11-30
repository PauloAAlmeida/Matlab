
function[] = bifumaxminNPPZDB_5()
clear all
y(:,1)=zeros (2000000,1);
y(:,2)=zeros (2000000,1);
y(:,3)=zeros (2000000,1);
y(:,4)=zeros (2000000,1);
y(:,5)=zeros (2000000,1);
y(:,6)=zeros (2000000,1);
y(:,7)=zeros (2000000,1);
bb=33
global g4
Rel_Tol = 1e-8;
Abs_Tol = 1e-8; %11;
options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol...
  Abs_Tol Abs_Tol]);% Abs_Tol Abs_Tol Abs_Tol

tspan=[0 35000]; 
in=4.15
s1=1;s2=1;s3=1;s4=1;s5=1;s6=1;s7=1;




for g4=[7:0.1:8]; 
   s1= length(y(:,1));
  s2= length(y(:,2));
 s3= length(y(:,3));
s4= length(y(:,4));
s5= length(y(:,5));
s6= length(y(:,6));
s7= length(y(:,7));
   
    ci= [y(s1,1) y(s2,2) y(s3,3) y(s4,4) y(s5,5) y(s6,6) y(s6,7)] 
    
    energ = y(s1,1) + y(s2,2) + y(s3,3) + y(s4,4) + y(s5,5)+ y(s6,6) + y(s6,7)
    
   g4
        [t,y]=ode113('LimaetAlcbactSexcre_2SM',tspan,ci,options);


z=length(y(:,5));
z


pts=500;%;round(z*.35); % PONTOS COLETADOS DA SERIE TEMPORAL
maxy5=[]; miny5=[]; maximo=[]; minimo=[];

for i=length(y(:,5))-pts:length(y(:,5))-2
if y(i,5)<=y(i+1,5)&y(i+1,5)>=y(i+2,5)
    maximo=y(i+1,5);
        maxy5=[ maxy5 maximo];
        
end
        
end
maximo
maxy5

%grid on; hold on;

plot(g4,maxy5,'b.','MarkerSize',20)
%plot3(energ,e,maxy5,'g.','MarkerSize',20)

hold on

for i=length(y(:,5))-pts:length(y(:,5))-2
      if y(i,5)>=y(i+1,5)&y(i+1,5)<=y(i+2,5)
               minimo=y(i+1,5);
                              miny5=[ miny5 minimo];
end
end
plot(g4,miny5,'r.','MarkerSize',10);hold on;
%plot3(energ,g4,miny5,'y.','MarkerSize',10);hold on;


clear maxy5 miny5 maximo minimo

end
%clear y(:,1) 


%********** EQUACOES  ***********
