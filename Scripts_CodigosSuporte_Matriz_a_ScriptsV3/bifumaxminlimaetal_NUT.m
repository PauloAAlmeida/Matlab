
function[] = bifumaxminlimaetal()
clear all

%global e
Rel_Tol = 1e-3;
Abs_Tol = 1e-4; %11;
options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol...
  Abs_Tol Abs_Tol]);% Abs_Tol Abs_Tol Abs_Tol

tspan=[0 5000]; 
%in=4
s1=1;s2=1;s3=1;s4=1;s5=1;s6=1;s7=1;


for in=4.5:-0.1:3.5
   in
 



 
   s1= length(y(:,1));
  s2= length(y(:,2));
 s3= length(y(:,3));
s4= length(y(:,4));
s5= length(y(:,5));
s6= length(y(:,6));

   
    ci= [y(s1,1) y(s2,2) y(s3,3) y(s4,4) y(s5,5) y(s6,6)] 
    
    energ = y(s1,1) + y(s2,2) + y(s3,3) + y(s4,4) + y(s5,5)+ y(s6,6) 
    
   
        [t,y]=ode113('LimaetAl',tspan,ci);%,options);


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
aa=y(i,5)
maximo
maxy5;

%grid on; hold on;
maxy5
%plot(e,maxy5,'b.','MarkerSize',20)
plot(energ,maxy5,'g.','MarkerSize',20)

hold on

for i=length(y(:,5))-pts:length(y(:,5))-2
      if y(i,5)>=y(i+1,5)&y(i+1,5)<=y(i+2,5)
               minimo=y(i+1,5);
                              miny5=[ miny5 minimo];
end
end
%plot(e,miny5,'r.','MarkerSize',10);hold on;
plot(energ,miny5,'y.','MarkerSize',10);hold on;


clear maxy5 miny5 maximo minimo

end
clear y(:,1) 
end

%********** EQUACOES  ***********
