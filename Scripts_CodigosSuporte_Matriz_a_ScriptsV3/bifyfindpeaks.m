
function bifyfindpeaks()
clear all
global e
ci=[1 1 1 1 1 1 1];
tspan=[0 7600];

Rel_Tol = 1e-3;
Abs_Tol = 1e-3; %11;




options = odeset('RelTol',Rel_Tol,'AbsTol',[Abs_Tol Abs_Tol Abs_Tol Abs_Tol Abs_Tol...
  Abs_Tol ]);%Abs_Tol Abs_Tol Abs_Tol Abs_Tol

for e=1.4:0.1:2
    e
 

[t,y] = ode45('LimaetAlcbactSexcre_2SM', tspan, ci); 

l=length(y)
a=round(l*0.25)
      
 %l=length(y);
 %y(:,5);
%y(l-350:l,4)
%max(y(l-50:l,4))
%min(y(l-50:l,4))
%p(l-a:l,1)=zeros;
%length(p(:,1))
y(l-a:l,5)
%plot(y(l-a:l,5))
ll=length(findpeaks(y(l-a:l,5)));
ld=length(findpeaks(-y(l-a:l,5)));
p(1:ll,1)=findpeaks(y(l-a:l,5));
d(1:ld,1)=findpeaks(-y(l-a:l,5));


f(1:ld,1)=zeros;
f(:,1)=-d(:,1);
length(p(:,1));
length(d(:,1));

plot(e,p(:,1),'.','Color','blue','Markersize',11);hold on;
plot(e,f(:,1),'.','Color','red','Markersize',11);hold on;





     %plot(t,y(:,5),'color','blue');hold on
end

