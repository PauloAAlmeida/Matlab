function [] = pltijulho7(pr14)


 clear all
for lop1=1:1000;
su = zeros([1, 36]);
su1 = zeros([1 60]);

  %sutot= zeros([1 lop1]);
  %su1tot= zeros([1 lop1]);
    
    
  n=300; 
  
  
  
  
k=0;%tamanho do passo predador 1&2&3
k1=2;%tamanho do passo presa 1
k2=1.5;%tamanho do passo presa 2
k3=1;%tamanho do passo presa 3


ni=[1];
mi=[1];

%axis ([-150 150 -150 150])
% ----------------------manchas para herb.
    % sorteio das coordenadas iniciais
    %% 1o quadrante
    
a1=75;
b1=75;


    % 2o quadrante
e1=-75;
f1=75;


    % 3o quadrante
i1=-75;
j1=-75;


    % 4o quadrante
m1=75;
n1=-75;
    %origem
o1=0;
p1=0;
   manc1 = [a1 b1];%mancha 1o quadrante
   manc2 = [e1 f1];%mancha 2o quadrante
   manc3 = [i1 j1];%mancha 3o quadrante
   manc4 = [m1 n1];%mancha 4o quadrante
   manc5 = [o1 p1];%mancha o quadrante
  % desenho
%mancha1

 % ang=0:0.01:2*pi; 
%xp=15*cos(ang);
%yp=15*sin(ang);
%plot(a1+xp,b1+yp,'g');grid on;hold on
    
%mancha2

    
%xt=15*cos(ang);
%yt=15*sin(ang);
%plot(e1+xt,f1+yt,'g');;hold on

%mancha3

    
%xp=15*cos(ang);
%yp=15*sin(ang);
%plot(i1+xp,j1+yp,'g');;hold on

%mancha4

   
%xp=15*cos(ang);
%yp=15*sin(ang);
%plot(m1+xp,n1+yp,'g');;hold on

%mancha5
   
%xp=15*cos(ang);
%yp=15*sin(ang);
%plot(o1+xp,p1+yp,'g');;hold on


%---------------------movimentos pred/presa
% sorteio das coordenadas iniciais
%Predador 1

se1=rand;
if se1<0.21
    p1x=50+(25--25)*rand;
    p1y=50+(25--25)*rand;
elseif se1<0.41;
    p1x=-50+(25--25)*rand;
    p1y=50+(25--25)*rand;
elseif se1<0.61;
    p1x=-50+(25--25)*rand;
    p1y=-50+(25--25)*rand;
elseif se1<0.81;
    p1x=50+(25--25)*rand;
    p1y=-50+(25--25)*rand;
elseif se1<1;
    p1x=-25+(25--25)*rand;
    p1y=-25+(25--25)*rand;
end
    
%Predador 2

se2=rand
if se2<0.21;
    p2x=50+(25--25)*rand;
    p2y=50+(25--25)*rand;
elseif se2<0.41;
    p2x=-50+(25--25)*rand;
    p2y=50+(25--25)*rand;
elseif se2<0.61;
    p2x=-50+(25--25)*rand;
    p2y=-50+(25--25)*rand;
elseif se2<0.81;
    p2x=50+(25--25)*rand;
    p2y=-50+(25--25)*rand;
elseif se2<1;
    p2x=-25+(25--25)*rand;
    p2y=-25+(25--25)*rand;
end
%Predador 3
se3=rand;
if se3<0.21
    p3x=50+(25--25)*rand;
    p3y=50+(25--25)*rand;
elseif se3<0.41;
    p3x=-50+(25--25)*rand;
    p3y=50+(25--25)*rand;
elseif se3<0.61;
    p3x=-50+(25--25)*rand;
    p3y=-50+(25--25)*rand;
elseif se3<0.81;
    p3x=50+(25--25)*rand;
    p3y=-50+(25--25)*rand;
elseif se3<1;
    p3x=-25+(25--25)*rand;
    p3y=-25+(25--25)*rand;
end

%Presa 1a



       P1ax=-100+(100--100)*rand;
       P1ay=-100+(100--100)*rand;

       
mpr1a=[P1ax P1ay];
P1aM1=[mpr1a;manc1];
P1aM2=[mpr1a;manc2];
P1aM3=[mpr1a;manc3];
P1aM4=[mpr1a;manc4];
P1aM5=[mpr1a;manc5];

D1am1=pdist(P1aM1);
D1am2=pdist(P1aM2);
D1am3=pdist(P1aM3);
D1am4=pdist(P1aM4);
D1am5=pdist(P1aM5);

if D1am1<16;
    P1ax=P1ax+25;
    P1ay=P1ay+25;
elseif D1am2<16;
    P1ax=P1ax+25;
    P1ay=P1ay+25;
elseif D1am3<16;
    P1ax=P1ax+25;
    P1ay=P1ay+25;
elseif D1am4<16;
    P1ax=P1ax+25;
    P1ay=P1ay+25;
elseif D1am5<16;
    P1ax=P1ax+25;
    P1ay=P1ay+25;
 
end
%Presa 1b

       P1bx=-100+(100--100)*rand;
       P1by=-100+(100--100)*rand;

mpr1b=[P1bx P1by];
P1bM1=[mpr1b;manc1];
P1bM2=[mpr1b;manc2];
P1bM3=[mpr1b;manc3];
P1bM4=[mpr1b;manc4];
P1bM5=[mpr1b;manc5];

D1bm1=pdist(P1bM1);
D1bm2=pdist(P1bM2);
D1bm3=pdist(P1bM3);
D1bm4=pdist(P1bM4);
D1bm5=pdist(P1bM5);

if D1bm1<16;
    P1bx=P1bx+25;
    P1by=P1by+25;
elseif D1bm2<16;
    P1bx=P1bx+25;
    P1by=P1by+25;
elseif D1bm3<16;
    P1bx=P1bx+25;
    P1by=P1by+25;
elseif D1bm4<16;
    P1bx=P1bx+25;
    P1by=P1by+25;
elseif D1bm5<16;
    P1bx=P1bx+25;
    P1by=P1by+25;
 
end
%Presa 1c

       P1cx=-100+(100--100)*rand;
       P1cy=-100+(100--100)*rand;

mpr1c=[P1cx P1cy];

P1cM1=[mpr1c;manc1];
P1cM2=[mpr1c;manc2];
P1cM3=[mpr1c;manc3];
P1cM4=[mpr1c;manc4];
P1cM5=[mpr1c;manc5];

D1cm1=pdist(P1cM1);
D1cm2=pdist(P1cM2);
D1cm3=pdist(P1cM3);
D1cm4=pdist(P1cM4);
D1cm5=pdist(P1cM5);

if D1cm1<16;
    P1cx=P1cx+25;
    P1cy=P1cy+25;
elseif D1cm2<16;
    P1cx=P1cx+25;
    P1cy=P1cy+25;
elseif D1cm3<16;
    P1cx=P1cx+25;
    P1cy=P1by+16;
elseif D1cm4<16;
    P1cx=P1cx+25;
    P1cy=P1cy+25;
elseif D1cm5<16;
    P1cx=P1cx+25;
    P1cy=P1cy+25;
 
end
P1cx;
P1cy;

%Presa 1d

       P1dx=-100+(100--100)*rand;
       P1dy=-100+(100--100)*rand;

mpr1d=[P1dx P1dy];
P1dM1=[mpr1d;manc1];
P1dM2=[mpr1d;manc2];
P1dM3=[mpr1d;manc3];
P1dM4=[mpr1d;manc4];
P1dM5=[mpr1d;manc5];

D1dm1=pdist(P1dM1);
D1dm2=pdist(P1dM2);
D1dm3=pdist(P1dM3);
D1dm4=pdist(P1dM4);
D1dm5=pdist(P1dM5);

if D1dm1<16;
    P1dx=P1dx+25;
    P1dy=P1dy+25;
elseif D1dm2<16;
    P1dx=P1dx+25;
    P1dy=P1dy+25;
elseif D1dm3<16;
    P1dx=P1dx+25;
    P1dy=P1dy+25;
elseif D1dm4<16;
    P1dx=P1dx+25;
    P1dy=P1dy+25;
elseif D1dm5<16;
    P1dx=P1dx+25;
    P1dy=P1dy+25;
 
end
%Presa 2a

       P2ax=-100+(100--100)*rand;
       P2ay=-100+(100--100)*rand;

P2ax=-50+(50--50)*rand;
P2ay=-50+(50--50)*rand;
mpr2a=[P2ax P2ay];

P2aM1=[mpr2a;manc1];
P2aM2=[mpr2a;manc2];
P2aM3=[mpr2a;manc3];
P2aM4=[mpr2a;manc4];
P2aM5=[mpr2a;manc5];

D2am1=pdist(P2aM1);
D2am2=pdist(P2aM2);
D2am3=pdist(P2aM3);
D2am4=pdist(P2aM4);
D2am5=pdist(P2aM5);

if D2am1<16;
    P2ax=P2ax+25;
    P2ay=P2ay+25;
elseif D2am2<16;
    P2ax=P2ax+25;
    P2ay=P2ay+25;
elseif D2am3<16;
    P2ax=P2ax+25;
    P2ay=P2ay+25;
elseif D2am4<16;
    P2ax=P2ax+25;
    P2ay=P2ay+25;
elseif D2am5<16;
    P2ax=P2ax+25;
    P2ay=P2ay+25;
 
end

%Presa 2b

       P2bx=-100+(100--100)*rand;
       P2by=-100+(100--100)*rand;

mpr2b=[P2bx P2by];
P2bM1=[mpr2b;manc1];
P2bM2=[mpr2b;manc2];
P2bM3=[mpr2b;manc3];
P2bM4=[mpr2b;manc4];
P2bM5=[mpr2b;manc5];

D2bm1=pdist(P2bM1);
D2bm2=pdist(P2bM2);
D2bm3=pdist(P2bM3);
D2bm4=pdist(P2bM4);
D2bm5=pdist(P2bM5);

if D2bm1<16;
    P2bx=P2bx+25;
    P2by=P2by+25;
elseif D2bm2<16;
    P2bx=P2bx+25;
    P2by=P2by+25;
elseif D1bm3<16;
    P2bx=P2bx+25;
    P2by=P2by+25;
elseif D2bm4<16;
    P2bx=P2bx+25;
    P2by=P2by+25;
elseif D2bm5<16;
    P2bx=P2bx+25;
    P2by=P2by+25;
 
end
%Presa 2c

       P2cx=-100+(100--100)*rand;
       P2cy=-100+(100--100)*rand;

mpr2c=[P2cx P2cy];
P2cM1=[mpr2c;manc1];
P2cM2=[mpr2c;manc2];
P2cM3=[mpr2c;manc3];
P2cM4=[mpr2c;manc4];
P2cM5=[mpr2c;manc5];

D2cm1=pdist(P2cM1);
D2cm2=pdist(P2cM2);
D2cm3=pdist(P2cM3);
D2cm4=pdist(P2cM4);
D2cm5=pdist(P2cM5);

if D2cm1<16
    P2cx=P2cx+25;
    P2cy=P2cy+25;
elseif D2cm2<16;
    P2cx=P2cx+25;
    P2cy=P2cy+25;
elseif D2cm3<16;
    P2cx=P2cx+25;
    P2cy=P2by+25;
elseif D2cm4<16;
    P2cx=P2cx+25;
    P2cy=P2cy+25;
elseif D2cm5<16;
    P2cx=P2cx+25;
    P2cy=P2cy+25;
 
end

%Presa 2d

       P2dx=-100+(100--100)*rand;
       P2dy=-100+(100--100)*rand;
       
mpr2d=[P2dx P2dy];

P2dM1=[mpr2d;manc1];
P2dM2=[mpr2d;manc2];
P2dM3=[mpr2d;manc3];
P2dM4=[mpr2d;manc4];
P2dM5=[mpr2d;manc5];

D2dm1=pdist(P2dM1);
D2dm2=pdist(P2dM2);
D2dm3=pdist(P2dM3);
D2dm4=pdist(P2dM4);
D2dm5=pdist(P2dM5);

if D2dm1<16;
    P2dx=P2dx+25;
    P2dy=P2dy+25;
elseif D2dm2<16;
    P2dx=P2dx+25;
    P2dy=P2dy+25;
elseif D2dm3<16;
    P2dx=P2dx+25;
    P2dy=P2dy+25;
elseif D2dm4<16;
    P2dx=P2dx+25;
    P2dy=P2dy+25;
elseif D2dm5<16;
    P2dx=P2dx+25;
    P2dy=P2dy+25;
 
end

%Presa 3a

       P3ax=-100+(100--100)*rand;
       P3ay=-100+(100--100)*rand;

       
mpr3a=[P3ax P3ay];

P3aM1=[mpr3a;manc1];
P3aM2=[mpr3a;manc2];
P3aM3=[mpr3a;manc3];
P3aM4=[mpr3a;manc4];
P3aM5=[mpr3a;manc5];

D3am1=pdist(P3aM1);
D3am2=pdist(P3aM2);
D3am3=pdist(P3aM3);
D3am4=pdist(P3aM4);
D3am5=pdist(P3aM5);

if D3am1<16;
    P3ax=P3ax+25;
    P3ay=P3ay+25;
elseif D3am2<16;
    P3ax=P3ax+25;
    P3ay=P3ay+25;
elseif D3am3<16;
    P3ax=P3ax+25;
    P3ay=P3ay+15;
elseif D3am4<16;
    P3ax=P3ax+25;
    P3ay=P3ay+25;
elseif D3am5<16;
    P3ax=P3ax+25;
    P3ay=P3ay+25;

end


%Presa 3b

       P3bx=-100+(100--100)*rand;
       P3by=-100+(100--100)*rand;

mpr3b=[P3bx P3by];

P3bM1=[mpr3b;manc1];
P3bM2=[mpr3b;manc2];
P3bM3=[mpr3b;manc3];
P3bM4=[mpr3b;manc4];
P3bM5=[mpr3b;manc5];

D3bm1=pdist(P3bM1);
D3bm2=pdist(P3bM2);
D3bm3=pdist(P3bM3);
D3bm4=pdist(P3bM4);
D3bm5=pdist(P3bM5);

if D3bm1<16
    P3bx=P3bx+25;
    P3by=P3by+25;
elseif D3bm2<16;
    P3bx=P3bx+25;
    P3by=P3by+25;
elseif D3bm3<16;
    P3bx=P3bx+25;
    P3by=P3by+25;
elseif D3bm4<16;
    P3bx=P3bx+25;
    P3by=P3by+25;
elseif D3bm5<16;
    P3bx=P3bx+25;
    P3by=P3by+25;
 
end
%Presa 3c

       P3cx=-100+(100--100)*rand;
       P3cy=-100+(100--100)*rand;

mpr3c=[P3cx P3cy];

P3cM1=[mpr3c;manc1];
P3cM2=[mpr3c;manc2];
P3cM3=[mpr3c;manc3];
P3cM4=[mpr3c;manc4];
P3cM5=[mpr3c;manc5];

D3cm1=pdist(P3cM1);
D3cm2=pdist(P3cM2);
D3cm3=pdist(P3cM3);
D3cm4=pdist(P3cM4);
D3cm5=pdist(P3cM5);

if D3cm1<16;
    P3cx=P3cx+25;
    P3cy=P3cy+25;
elseif D3cm2<16;
    P3cx=P3cx+25;
    P3cy=P3cy+25;
elseif D3cm3<16;
    P3cx=P3cx+25;
    P3cy=P3cy+25;
elseif D3cm4<16;
    P3cx=P3cx+25;
    P3cy=P3cy+25;
elseif D3cm5<16;
    P3cx=P3cx+25;
    P3cy=P3cy+25;
 
end


%Presa 3d

       P3dx=-100+(100--100)*rand;
       P3dy=-100+(100--100)*rand;

mpr3d=[P3dx P3dy];

P3dM1=[mpr3d;manc1];
P3dM2=[mpr3d;manc2];
P3dM3=[mpr3d;manc3];
P3dM4=[mpr3d;manc4];
P3dM5=[mpr3d;manc5];

D3dm1=pdist(P3dM1);
D3dm2=pdist(P3dM2);
D3dm3=pdist(P3dM3);
D3dm4=pdist(P3dM4);
D3dm5=pdist(P3dM5);

if D3dm1<16;
    P3dx=P3dx+25;
    P3dy=P3dy+25;
elseif D3dm2<16;
    P3dx=P3dx+25;
    P3dy=P3dy+25;
elseif D3dm3<16;
    P3dx=P3dx+25;
    P3dy=P3dy+25;
elseif D3dm4<16;
    P3dx=P3dx+25;
    P3dy=P3dy+25;
elseif D3dm5<16;
    P3dx=P3dx+25;
    P3dy=P3dy+25;
 
end
%definicao das coordenadas iniciais
pr1xi(1,:)=[p1x];pr1yi(1,:)=[p1y]; %coordenadas iniciais predador 1
pr2xi(1,:)=[p2x];pr2yi(1,:)=[p2y]; %coordenadas iniciais predador 2
pr3xi(1,:)=[p3x];pr3yi(1,:)=[p3y]; %coordenadas iniciais predador 3

p1axi(1,:)=[P1ax];p1ayi(1,:)=[P1ay];% coordanadas iniciais presa 1a
p1bxi(1,:)=[P1bx];p1byi(1,:)=[P1by];% coordanadas iniciais presa 1b
p1cxi(1,:)=[P1cx];p1cyi(1,:)=[P1cy];% coordanadas iniciais presa 1c
p1dxi(1,:)=[P1dx];p1dyi(1,:)=[P1dy];% coordanadas iniciais presa 1b

p2axi(1,:)=[P2ax];p2ayi(1,:)=[P2ay];% coordanadas iniciais presa 2a
p2bxi(1,:)=[P2bx];p2byi(1,:)=[P2by];% coordanadas iniciais presa 2b
p2cxi(1,:)=[P2cx];p2cyi(1,:)=[P2cy];% coordanadas iniciais presa 2c
p2dxi(1,:)=[P2dx];p2dyi(1,:)=[P2dy];% coordanadas iniciais presa 2d


p3axi(1,:)=[P3ax];p3ayi(1,:)=[P3ay];% coordanadas iniciais presa 3a
p3bxi(1,:)=[P3bx];p3byi(1,:)=[P3by];% coordanadas iniciais presa 3b
p3cxi(1,:)=[P3cx];p3cyi(1,:)=[P3cy];% coordanadas iniciais presa 3c
p3dxi(1,:)=[P3dx];p3dyi(1,:)=[P3dy];% coordanadas iniciais presa 3d

%iteração para movimentos 

azimute=360;
thp1i(1,:)=-azimute + (azimute--azimute)*rand ; %predador 1
thp2i(1,:)=-azimute + (azimute--azimute)*rand ; %predador 2
thp3i(1,:)=-azimute + (azimute--azimute)*rand ; %predador 2

thP1ai(1,:)=-azimute + (azimute--azimute)*rand ;%sorteio angulo presa 1a
thP1bi(1,:)=-azimute + (azimute--azimute)*rand ;%sorteio angulo presa 1b
thP1ci(1,:)=-azimute + (azimute--azimute)*rand ;%sorteio angulo presa 1c
thP1di(1,:)=-azimute + (azimute--azimute)*rand ;%sorteio angulo presa 1d


thP2ai(1,:)=-azimute + (azimute--azimute)*rand ;%sorteio angulo presa 2a
thP2bi(1,:)=-azimute + (azimute--azimute)*rand ;%sorteio angulo presa 2b
thP2ci(1,:)=-azimute + (azimute--azimute)*rand ;%sorteio angulo presa 2c
thP2di(1,:)=-azimute + (azimute--azimute)*rand ;%sorteio angulo presa 2d


thP3ai(1,:)=-azimute + (azimute--azimute)*rand ;%sorteio angulo presa 3a
thP3bi(1,:)=-azimute + (azimute--azimute)*rand ;%sorteio angulo presa 3b
thP3ci(1,:)=-azimute + (azimute--azimute)*rand ;%sorteio angulo presa 3c
thP3di(1,:)=-azimute + (azimute--azimute)*rand ;%sorteio angulo presa 3d



for i=2:n+1
   
   phi=15; % variação do angulo de mudança de direção
   phi1=180;
 

   
   thp1i(i:i,1)=thp1i(i-1,1)+((-1+(1--1)*rand)*phi1);    %sorteio angulo predador 1
   thp2i(i:i,1)=thp2i(i-1,1)+((-1+(1--1)*rand)*phi1);    %sorteio angulo predador 2
   thp3i(i:i,1)=thp3i(i-1,1)+((-1+(1--1)*rand)*phi1);    %sorteio angulo predador 3
   
   
   thP1ai(i:i,1)=thP1ai(i-1,1)+((-1+(1--1)*rand)*phi); %sorteio angulo presa 1a
   thP1bi(i:i,1)=thP1bi(i-1,1)+((-1+(1--1)*rand)*phi); %sorteio angulo presa 1b
   thP1ci(i:i,1)=thP1ci(i-1,1)+((-1+(1--1)*rand)*phi); %sorteio angulo presa 1c
   thP1di(i:i,1)=thP1di(i-1,1)+((-1+(1--1)*rand)*phi); %sorteio angulo presa 1d
   
   
   thP2ai(i:i,1)=thP2ai(i-1,1)+((-1+(1--1)*rand)*phi); %sorteio angulo presa 2a
   thP2bi(i:i,1)=thP2bi(i-1,1)+((-1+(1--1)*rand)*phi); %sorteio angulo presa 2b
   thP2ci(i:i,1)=thP2ci(i-1,1)+((-1+(1--1)*rand)*phi); %sorteio angulo presa 2c
   thP2di(i:i,1)=thP2di(i-1,1)+((-1+(1--1)*rand)*phi); %sorteio angulo presa 2d  
   
   thP3ai(i:i,1)=thP3ai(i-1,1)+((-1+(1--1)*rand)*phi); %sorteio angulo presa 3a
   thP3bi(i:i,1)=thP3bi(i-1,1)+((-1+(1--1)*rand)*phi); %sorteio angulo presa 3b
   thP3ci(i:i,1)=thP3ci(i-1,1)+((-1+(1--1)*rand)*phi); %sorteio angulo presa 3c
   thP3di(i:i,1)=thP3di(i-1,1)+((-1+(1--1)*rand)*phi); %sorteio angulo presa 3d
  
  
   %predador 1 
   pr1xi(i:i,1)=pr1xi(i-1,1);
   pr1yi(i:i,1)=pr1yi(i-1,1);
       %predador 2 
   pr2xi(i:i,1)=pr2xi(i-1,1);
   pr2yi(i:i,1)=pr2yi(i-1,1);
   %predador 3
   pr3xi(i:i,1)=pr3xi(i-1,1);
   pr3yi(i:i,1)=pr3yi(i-1,1);
   
       %presa 1a 
   p1axi(i:i,1)=p1axi(i-1,1)+(k1*cos((thP1ai(i-1,1))*pi/180));
   p1ayi(i:i,1)=p1ayi(i-1,1)+(k1*sin((thP1ai(i-1,1))*pi/180));
   
   %presa 1b 
   p1bxi(i:i,1)=p1bxi(i-1,1)+(k1*cos((thP1bi(i-1,1))*pi/180));
   p1byi(i:i,1)=p1byi(i-1,1)+(k1*sin((thP1bi(i-1,1))*pi/180));
   
   %presa 1c
   p1cxi(i:i,1)=p1cxi(i-1,1)+(k1*cos((thP1ci(i-1,1))*pi/180));
   p1cyi(i:i,1)=p1cyi(i-1,1)+(k1*sin((thP1ci(i-1,1))*pi/180));
   
   %presa 1d
   p1dxi(i:i,1)=p1dxi(i-1,1)+(k1*cos((thP1di(i-1,1))*pi/180));
   p1dyi(i:i,1)=p1dyi(i-1,1)+(k1*sin((thP1di(i-1,1))*pi/180));
   
     
   %presa 2a
   p2axi(i:i,1)=p2axi(i-1,1)+(k2*cos((thP2ai(i-1,1))*pi/180));
   p2ayi(i:i,1)=p2ayi(i-1,1)+(k2*sin((thP2ai(i-1,1))*pi/180));
   %presa 2b
   p2bxi(i:i,1)=p2bxi(i-1,1)+(k2*cos((thP2bi(i-1,1))*pi/180));
   p2byi(i:i,1)=p2byi(i-1,1)+(k2*sin((thP2bi(i-1,1))*pi/180));
   
    %presa 2c
   p2cxi(i:i,1)=p2cxi(i-1,1)+(k2*cos((thP2ci(i-1,1))*pi/180));
   p2cyi(i:i,1)=p2cyi(i-1,1)+(k2*sin((thP2ci(i-1,1))*pi/180));
   
    %presa 2d
   p2dxi(i:i,1)=p2dxi(i-1,1)+(k2*cos((thP2di(i-1,1))*pi/180));
   p2dyi(i:i,1)=p2dyi(i-1,1)+(k2*sin((thP2di(i-1,1))*pi/180));
   
   
   %presa 3a
   p3axi(i:i,1)=p3axi(i-1,1)+(k3*cos((thP3ai(i-1,1))*pi/180));
   p3ayi(i:i,1)= p3ayi(i-1,1)+(k3*sin((thP3ai(i-1,1))*pi/180));
   
   %presa 3b
   p3bxi(i:i,1)= p3bxi(i-1,1)+(k3*cos((thP3bi(i-1,1))*pi/180));
   p3byi(i:i,1)= p3byi(i-1,1)+(k3*sin((thP3bi(i-1,1))*pi/180));
   
   %presa 3c
   p3cxi(i:i,1)= p3cxi(i-1,1)+(k3*cos((thP3ci(i-1,1))*pi/180));
   p3cyi(i:i,1)= p3cyi(i-1,1)+(k3*sin((thP3ci(i-1,1))*pi/180));
   
   %presa 3d
   p3dxi(i:i,1)= p3dxi(i-1,1)+(k3*cos((thP3di(i-1,1))*pi/180));
   p3dyi(i:i,1)= p3dyi(i-1,1)+(k3*sin((thP3di(i-1,1))*pi/180));
   
   
%montagem das matrizes para regras de detecção
   
   manc1 = [a1 b1];%mancha 1o quadrante
   manc2 = [e1 f1];%mancha 2o quadrante
   manc3 = [i1 j1];%mancha 3o quadrante
   manc4 = [m1 n1];%mancha 4o quadrante
   manc5 = [o1 p1];%mancha o quadrante
   
   Pred1 = [pr1xi(i,:)  pr1yi(i,:)];%Predador 1
   Pred2 = [pr2xi(i,:)  pr2yi(i,:)];%Predador 2
   Pred3 = [pr3xi(i,:)  pr3yi(i,:)];%Predador 3
   
   Pres1a= [p1axi(i,:)  p1ayi(i,:)];%presa 1a
   Pres1b= [p1bxi(i,:)  p1byi(i,:)];%presa 1b
   Pres1c= [p1cxi(i,:)  p1cyi(i,:)];%presa 1c
   Pres1d= [p1dxi(i,:)  p1dyi(i,:)];%presa 1d
   
   Pres2a= [p2axi(i,:)  p2ayi(i,:)];%presa 2a
   Pres2b= [p2bxi(i,:)  p2byi(i,:)];%presa 2b
   Pres2c= [p2cxi(i,:)  p2cyi(i,:)];%presa 2c
   Pres2d= [p2dxi(i,:)  p2dyi(i,:)];%presa 2d
   
   Pres3a= [p3axi(i,:)  p3ayi(i,:)];%presa 3a
   Pres3b= [p3bxi(i,:)  p3byi(i,:)];%presa 3b
   Pres3c= [p3cxi(i,:)  p3cyi(i,:)];%presa 3c
   Pres3d= [p3dxi(i,:)  p3dyi(i,:)];%presa 3d
   
    
    %montagem das matrizes para fazer pdistancia entre Predador 1 e presas
    Pr1P1a = [Pred1; Pres1a]; %presa 1a
    Pr1P1b = [Pred1; Pres1b]; %presa 1b
    Pr1P1c = [Pred1; Pres1c]; %presa 1c
    Pr1P1d = [Pred1; Pres1d]; %presa 1d
    
    Pr1P2a = [Pred1; Pres2a]; %presa 2a
    Pr1P2b = [Pred1; Pres2b]; %presa 2b
    Pr1P2c = [Pred1; Pres2c]; %presa 2c
    Pr1P2d = [Pred1; Pres2d]; %presa 2d
    
    Pr1P3a = [Pred1; Pres3a]; %presa 3a
    Pr1P3b = [Pred1; Pres3b]; %presa 3b
    Pr1P3c = [Pred1; Pres3c]; %presa 3c
    Pr1P3d = [Pred1; Pres3d]; %presa 3d
    
    %%montagem das matrizes para fazer distancia entre Predador 2 e presas
    Pr2P1a = [Pred2; Pres1a]; %presa 1a
    Pr2P1b = [Pred2; Pres1b]; %presa 1b
    Pr2P1c = [Pred2; Pres1c]; %presa 1c
    Pr2P1d = [Pred2; Pres1d]; %presa 1d
    
    Pr2P2a = [Pred2; Pres2a]; %presa 2a
    Pr2P2b = [Pred2; Pres2b]; %presa 2b
    Pr2P2c = [Pred2; Pres2c]; %presa 2c
    Pr2P2d = [Pred2; Pres2d]; %presa 2d
    
    Pr2P3a = [Pred2; Pres3a]; %presa 3a
    Pr2P3b = [Pred2; Pres3b]; %presa 3b
    Pr2P3c = [Pred2; Pres3c]; %presa 3c
    Pr2P3d = [Pred2; Pres3d]; %presa 3d
    
    %%montagem das matrizes para fazer pdistancia entre Predador 3 e presas
    Pr3P1a = [Pred3; Pres1a]; %presa 1a
    Pr3P1b = [Pred3; Pres1b]; %presa 1b
    Pr3P1c = [Pred3; Pres1c]; %presa 1c
    Pr3P1d = [Pred3; Pres1d]; %presa 1d
    
    Pr3P2a = [Pred3; Pres2a]; %presa 2a
    Pr3P2b = [Pred3; Pres2b]; %presa 2b
    Pr3P2c = [Pred3; Pres2c]; %presa 2c
    Pr3P2d = [Pred3; Pres2d]; %presa 2d
    
    Pr3P3a = [Pred3; Pres3a]; %presa 3a
    Pr3P3b = [Pred3; Pres3b]; %presa 3b
    Pr3P3c = [Pred3; Pres3c]; %presa 3c
    Pr3P3d = [Pred3; Pres3d]; %presa 3d
    
     %montagem das matrizes para fazer pdistancia entre Mancha1 e presas 
    manc1P1a = [manc1; Pres1a]; %presa 1a
    manc1P1b = [manc1; Pres1b]; %presa 1b
    manc1P1c = [manc1; Pres1c]; %presa 1c
    manc1P1d = [manc1; Pres1d]; %presa 1d
    
    manc1P2a = [manc1; Pres2a]; %presa 2a
    manc1P2b = [manc1; Pres2b]; %presa 2b
    manc1P2c = [manc1; Pres2c]; %presa 2c
    manc1P2d = [manc1; Pres2d]; %presa 2d
    
    manc1P3a = [manc1; Pres3a]; %presa 3a
    manc1P3b = [manc1; Pres3b]; %presa 3b
    manc1P3c = [manc1; Pres3c]; %presa 3c
    manc1P3d = [manc1; Pres3d]; %presa 3d
    
    
     %montagem das matrizes para fazer pdistancia entre Mancha2 e presas 
    manc2P1a = [manc2; Pres1a]; %presa 1a
    manc2P1b = [manc2; Pres1b]; %presa 1b
    manc2P1c = [manc2; Pres1c]; %presa 1c
    manc2P1d = [manc2; Pres1d]; %presa 1d
    
    manc2P2a = [manc2; Pres2a]; %presa 2a
    manc2P2b = [manc2; Pres2b]; %presa 2b
    manc2P2c = [manc2; Pres2c]; %presa 2c
    manc2P2d = [manc2; Pres2d]; %presa 2d
    
    manc2P3a = [manc2; Pres3a]; %presa 3a
    manc2P3b = [manc2; Pres3b]; %presa 3b
    manc2P3c = [manc2; Pres3c]; %presa 3c
    manc2P3d = [manc2; Pres3d]; %presa 3d
    
     %montagem das matrizes para fazer pdistancia entre Mancha3 e presas 
    manc3P1a = [manc3; Pres1a]; %presa 1a
    manc3P1b = [manc3; Pres1b]; %presa 1b
    manc3P1c = [manc3; Pres1c]; %presa 1c
    manc3P1d = [manc3; Pres1d]; %presa 1d
    
    manc3P2a = [manc3; Pres2a]; %presa 2a
    manc3P2b = [manc3; Pres2b]; %presa 2b
    manc3P2c = [manc3; Pres2c]; %presa 2c
    manc3P2d = [manc3; Pres2d]; %presa 2d
    
    manc3P3a = [manc3; Pres3a]; %presa 3a
    manc3P3b = [manc3; Pres3b]; %presa 3b
    manc3P3c = [manc3; Pres3c]; %presa 3c
    manc3P3d = [manc3; Pres3d]; %presa 3d
    
    %montagem das matrizes para fazer pdistancia entre Mancha4 e presas 
    manc4P1a = [manc4; Pres1a]; %presa 1a
    manc4P1b = [manc4; Pres1b]; %presa 1b
    manc4P1c = [manc4; Pres1c]; %presa 1c
    manc4P1d = [manc4; Pres1d]; %presa 1d
    
    manc4P2a = [manc4; Pres2a]; %presa 2a
    manc4P2b = [manc4; Pres2b]; %presa 2b
    manc4P2c = [manc4; Pres2c]; %presa 2c
    manc4P2d = [manc4; Pres2d]; %presa 2d
    
    manc4P3a = [manc4; Pres3a]; %presa 3a
    manc4P3b = [manc4; Pres3b]; %presa 3b
    manc4P3c = [manc4; Pres3c]; %presa 3c
    manc4P3d = [manc4; Pres3d]; %presa 3d
    
    %montagem das matrizes para fazer pdistancia entre Mancha5 e presas 
    manc5P1a = [manc5; Pres1a]; %presa 1a
    manc5P1b = [manc5; Pres1b]; %presa 1b
    manc5P1c = [manc5; Pres1c]; %presa 1c
    manc5P1d = [manc5; Pres1d]; %presa 1d
    
    manc5P2a = [manc5; Pres2a]; %presa 2a
    manc5P2b = [manc5; Pres2b]; %presa 2b
    manc5P2c = [manc5; Pres2c]; %presa 2c
    manc5P2d = [manc5; Pres2d]; %presa 2d
    
    manc5P3a = [manc5; Pres3a]; %presa 3a
    manc5P3b = [manc5; Pres3b]; %presa 3b
    manc5P3c = [manc5; Pres3c]; %presa 3c
    manc5P3d = [manc5; Pres3d]; %presa 3d
   
    
    %calculo das pdistancia entre manc1 e presas
    
     euclmanc1P1a=pdist(manc1P1a); %presa 1a
     euclmanc1P1b=pdist(manc1P1b); %presa 1a
     euclmanc1P1c=pdist(manc1P1c); %presa 1a
     euclmanc1P1d=pdist(manc1P1d); %presa 1a
    
     euclmanc1P2a=pdist(manc1P2a); %presa 1a
     euclmanc1P2b=pdist(manc1P2b); %presa 1a
     euclmanc1P2c=pdist(manc1P2c); %presa 1a
     euclmanc1P2d=pdist(manc1P2d); %presa 1a
    
     euclmanc1P3a=pdist(manc1P3a); %presa 1a
     euclmanc1P3b=pdist(manc1P3b); %presa 1a
     euclmanc1P3c=pdist(manc1P3c); %presa 1a
     euclmanc1P3d=pdist(manc1P3d); %presa 1a
     
     
     %calculo das pdistancia entre manc2 e presas
    
     euclmanc2P1a=pdist(manc2P1a); %presa 1a
     euclmanc2P1b=pdist(manc2P1b); %presa 1b
     euclmanc2P1c=pdist(manc2P1c); %presa 1c
     euclmanc2P1d=pdist(manc2P1d); %presa 1d
    
     euclmanc2P2a=pdist(manc2P2a); %presa 1a
     euclmanc2P2b=pdist(manc2P2b); %presa 1b
     euclmanc2P2c=pdist(manc2P2c); %presa 1c
     euclmanc2P2d=pdist(manc2P2d); %presa 1d
    
     euclmanc2P3a=pdist(manc2P3a); %presa 1a
     euclmanc2P3b=pdist(manc2P3b); %presa 1b
     euclmanc2P3c=pdist(manc2P3c); %presa 1c
     euclmanc2P3d=pdist(manc2P3d); %presa 1d
     
     
     %calculo das pdistancia entre manc2 e presas
    
     euclmanc3P1a=pdist(manc3P1a); %presa 1a
     euclmanc3P1b=pdist(manc3P1b); %presa 1b
     euclmanc3P1c=pdist(manc3P1c); %presa 1c
     euclmanc3P1d=pdist(manc3P1d); %presa 1d
    
     euclmanc3P2a=pdist(manc3P2a); %presa 1a
     euclmanc3P2b=pdist(manc3P2b); %presa 1b
     euclmanc3P2c=pdist(manc3P2c); %presa 1c
     euclmanc3P2d=pdist(manc3P2d); %presa 1d
   
     euclmanc3P3a=pdist(manc3P3a); %presa 1a
     euclmanc3P3b=pdist(manc3P3b); %presa 1b
     euclmanc3P3c=pdist(manc3P3c); %presa 1c
     euclmanc3P3d=pdist(manc3P3d); %presa 1d
     
        %calculo das pdistancia entre manc4 e presas
    
     euclmanc4P1a=pdist(manc4P1a); %presa 1a
     euclmanc4P1b=pdist(manc4P1b); %presa 1b
     euclmanc4P1c=pdist(manc4P1c); %presa 1c
     euclmanc4P1d=pdist(manc4P1d); %presa 1d
    
     euclmanc4P2a=pdist(manc4P2a); %presa 1a
     euclmanc4P2b=pdist(manc4P2b); %presa 1b
     euclmanc4P2c=pdist(manc4P2c); %presa 1c
     euclmanc4P2d=pdist(manc4P2d); %presa 1d
   
     euclmanc4P3a=pdist(manc4P3a); %presa 1a
     euclmanc4P3b=pdist(manc4P3b); %presa 1b
     euclmanc4P3c=pdist(manc4P3c); %presa 1c
     euclmanc4P3d=pdist(manc4P3d); %presa 1d
     
     %calculo das pdistancia entre manc5 e presas
    
     euclmanc5P1a=pdist(manc5P1a); %presa 1a
     euclmanc5P1b=pdist(manc5P1b); %presa 1b
     euclmanc5P1c=pdist(manc5P1c); %presa 1c
     euclmanc5P1d=pdist(manc5P1d); %presa 1d
   
     euclmanc5P2a=pdist(manc5P2a); %presa 1a
     euclmanc5P2b=pdist(manc5P2b); %presa 1b
     euclmanc5P2c=pdist(manc5P2c); %presa 1c
     euclmanc5P2d=pdist(manc5P2d); %presa 1d
   
     euclmanc5P3a=pdist(manc5P3a); %presa 1a
     euclmanc5P3b=pdist(manc5P3b); %presa 1b
     euclmanc5P3c=pdist(manc5P3c); %presa 1c
     euclmanc5P3d=pdist(manc5P3d); %presa 1d
     
    %calculo das pdistancia entre predador 1 e presas
    
     euclPr1P1a=pdist(Pr1P1a); %presa 1a
     euclPr1P1b=pdist(Pr1P1b); %presa 1b
     euclPr1P1c=pdist(Pr1P1c); %presa 1c
     euclPr1P1d=pdist(Pr1P1d); %presa 1d
    
     euclPr1P2a=pdist(Pr1P2a); %presa 1a
     euclPr1P2b=pdist(Pr1P2b); %presa 1b
     euclPr1P2c=pdist(Pr1P2c); %presa 1c
     euclPr1P2d=pdist(Pr1P2d); %presa 1d
    
     euclPr1P3a=pdist(Pr1P3a); %presa 1a
     euclPr1P3b=pdist(Pr1P3b); %presa 1b
     euclPr1P3c=pdist(Pr1P3c); %presa 1c
     euclPr1P3d=pdist(Pr1P3d); %presa 1d
    
    
    %calculo das pdistancia entre predador 2 e presas
    
     euclPr2P1a=pdist(Pr2P1a); %presa 1a
     euclPr2P1b=pdist(Pr2P1b); %presa 1a
     euclPr2P1c=pdist(Pr2P1c); %presa 1a
     euclPr2P1d=pdist(Pr2P1d); %presa 1a
    
     euclPr2P2a=pdist(Pr2P2a); %presa 1a
     euclPr2P2b=pdist(Pr2P2b); %presa 1a
     euclPr2P2c=pdist(Pr2P2c); %presa 1a
     euclPr2P2d=pdist(Pr2P2d); %presa 1a
    
     euclPr2P3a=pdist(Pr2P3a); %presa 1a
     euclPr2P3b=pdist(Pr2P3b); %presa 1a
     euclPr2P3c=pdist(Pr2P3c); %presa 1a
     euclPr2P3d=pdist(Pr2P3d); %presa 1a
     
     %calculo das pdistancia entre predador 3 e presas
    
     euclPr3P1a=pdist(Pr3P1a); %presa 1a
     euclPr3P1b=pdist(Pr3P1b); %presa 1a
     euclPr3P1c=pdist(Pr3P1c); %presa 1a
     euclPr3P1d=pdist(Pr3P1d); %presa 1a
    
     euclPr3P2a=pdist(Pr3P2a); %presa 1a
     euclPr3P2b=pdist(Pr3P2b); %presa 1a
     euclPr3P2c=pdist(Pr3P2c); %presa 1a
     euclPr3P2d=pdist(Pr3P2d); %presa 1a
    
     euclPr3P3a=pdist(Pr3P3a); %presa 1a
     euclPr3P3b=pdist(Pr3P3b); %presa 1a
     euclPr3P3c=pdist(Pr3P3c); %presa 1a
     euclPr3P3d=pdist(Pr3P3d); %presa 1a
  
     
     %Captura predador 1
     
   Rper= 10; %"raio perceptual"
   
    %Presa 1a
   if euclPr1P1a < Rper
      ppr11=1;
     su(1,1)=ppr11;
     p1axi(i,:)=[1000];p1ayi(i,:)=[1000];
     
   end  
  
   %Presa 1b
   if euclPr1P1b < Rper
      ppr12=1;
     su(1,2)=ppr12;
     p1bxi(i,:)=[1000];p1byi(i,:)=[1000];
     
   end  
   
   %Presa 1c
   if euclPr1P1c < Rper
      ppr13=1;
     su(1,3)=ppr13;
     p1cxi(i,:)=[1000];p1cyi(i,:)=[1000];
     
   end  
   
   %Presa 1d
   if euclPr1P1d < Rper
      ppr14=1;
     su(1,4)=ppr14;
     p1dxi(i,:)=[1000];p1dyi(i,:)=[1000];
     
   end  
   
   %Presa 2a
   if euclPr1P2a < Rper
      ppr15=1;
     su(1,5)=ppr15;
     p2axi(i,:)=[1000];p2ayi(i,:)=[1000];
     
   end  
   
   %Presa 2b
   if euclPr1P2b < Rper
      ppr16=1;
     su(1,6)=ppr16;
     p2bxi(i,:)=[1000];p2byi(i,:)=[1000];
     
   end  
   
   %Presa 2c
   if euclPr1P2c < Rper
      ppr17=1;
     su(1,7)=ppr17;
     p2cxi(i,:)=[1000];p2cyi(i,:)=[1000];
     
   end  
   
   %Presa 2d
   if euclPr1P2d < Rper
      ppr18=1;
     su(1,8)=ppr18;
     p2dxi(i,:)=[1000];p2dyi(i,:)=[1000];
     
   end  
   
   %Presa 3a
   if euclPr1P3a < Rper
      ppr19=1;
     su(1,9)=ppr19;
     p3axi(i,:)=[1000];p3ayi(i,:)=[1000];
     
   end  
   
   %Presa 3b
   if euclPr1P3b < Rper
      ppr110=1;
     su(1,10)=ppr110;
     p3bxi(i,:)=[1000];p3byi(i,:)=[1000];
     
   end  
   
   %Presa 3c
   if euclPr1P3c < Rper
      ppr111=1;
     su(1,11)=ppr111;
     p3cxi(i,:)=[1000];p3cyi(i,:)=[1000];
     
   end     
   
   %Presa 3d
   if euclPr1P3d < Rper
      ppr112=1;
    su(1,12)=ppr112;
     p3dxi(i,:)=[1000];p3dyi(i,:)=[1000];
     
   end  
   
   %Captura predador 2
     
   Rper= 10; %"raio perceptual"
   
    %Presa 1a
   if euclPr2P1a < Rper
      ppr21=1;
     su(1,13)=ppr21;
     p1axi(i,:)=[1000];p1ayi(i,:)=[1000];
     
   end  
  
   %Presa 1b
   if euclPr2P1b < Rper
      ppr22=1;
     su(1,14)=ppr22;
     p1bxi(i,:)=[1000];p1byi(i,:)=[1000];
     
   end  
   
   %Presa 1c
   if euclPr2P1c < Rper
      ppr23=1;
     su(1,15)=ppr23;
     p1cxi(i,:)=[1000];p1cyi(i,:)=[1000];
     
   end  
   
   %Presa 1d
   if euclPr2P1d < Rper
      ppr24=1;
     su(1,16)=ppr24;
     p1dxi(i,:)=[1000];p1dyi(i,:)=[1000];
     
   end  
   
   %Presa 2a
   if euclPr2P2a < Rper
      ppr25=1;
     su(1,17)=ppr25;
     p2axi(i,:)=[1000];p2ayi(i,:)=[1000];
     
   end  
   
   %Presa 2b
   if euclPr2P2b < Rper
      ppr26=1;
     su(1,18)=ppr26;
     p2bxi(i,:)=[1000];p2byi(i,:)=[1000];
     
   end  
   
   %Presa 2c
   if euclPr2P2c < Rper
      ppr27=1;
     su(1,19)=ppr27;
     p2cxi(i,:)=[1000];p2cyi(i,:)=[1000];
     
   end  
   
   %Presa 2d
   if euclPr2P2d < Rper
      ppr28=1;
     su(1,20)=ppr28;
     p2dxi(i,:)=[1000];p2dyi(i,:)=[1000];
     
   end  
   
   %Presa 3a
   if euclPr2P3a < Rper
      ppr29=1;
     su(1,21)=ppr29;
     p3axi(i,:)=[1000];p3ayi(i,:)=[1000];
     
   end  
   
   %Presa 3b
   if euclPr2P3b < Rper
      ppr210=1;
     su(1,22)=ppr210;
     p3bxi(i,:)=[1000];p3byi(i,:)=[1000];
     
   end  
   
   %Presa 3c
   if euclPr2P3c < Rper
      ppr211=1;
     su(1,23)=ppr211;
     p3cxi(i,:)=[1000];p3cyi(i,:)=[1000];
     
   end     
   
   %Presa 3d
   if euclPr2P3d < Rper
      ppr212=1;
    su(1,24)=ppr212;
     p3dxi(i,:)=[1000];p3dyi(i,:)=[1000];
     
   end  
   
   %Captura predador 3
     
   Rper= 10; %"raio perceptual"
   
    %Presa 1a
   if euclPr3P1a < Rper
      ppr16=1;
     su(1,25)=ppr16;
     p1axi(i,:)=[1000];p1ayi(i,:)=[1000];
     
   end  
  
   %Presa 1b
   if euclPr3P1b < Rper
      ppr32=1;
     su(1,26)=ppr32;
     p1bxi(i,:)=[1000];p1byi(i,:)=[1000];
     
   end  
   
   %Presa 1c
   if euclPr3P1c < Rper
      ppr33=1;
     su(1,27)=ppr33;
     p1cxi(i,:)=[1000];p1cyi(i,:)=[1000];
     
   end  
   
   %Presa 1d
   if euclPr3P1d < Rper
      ppr34=1;
     su(1,28)=ppr34;
     p1dxi(i,:)=[1000];p1dyi(i,:)=[1000];
     
   end  
   
   %Presa 2a
   if euclPr3P2a < Rper
      ppr35=1;
     su(1,29)=ppr35;
     p2axi(i,:)=[1000];p2ayi(i,:)=[1000];
     
   end  
   
   %Presa 2b
   if euclPr3P2b < Rper
      ppr36=1;
     su(1,16)=ppr36;
     p2bxi(i,:)=[1000];p2byi(i,:)=[1000];
     
   end  
   
   %Presa 2c
   if euclPr3P2c < Rper
      ppr37=1;
     su(1,16)=ppr37;
     p2cxi(i,:)=[1000];p2cyi(i,:)=[1000];
     
   end  
   
   %Presa 2d
   if euclPr3P2d < Rper
      ppr38=1;
     su(1,32)=ppr38;
     p2dxi(i,:)=[1000];p2dyi(i,:)=[1000];
     
   end  
   
   %Presa 3a
   if euclPr3P3a < Rper
      ppr39=1;
     su(1,33)=ppr39;
     p3axi(i,:)=[1000];p3ayi(i,:)=[1000];
     
   end  
   
   %Presa 3b
   if euclPr3P3b < Rper
      ppr160=1;
     su(1,34)=ppr160;
     p3bxi(i,:)=[1000];p3byi(i,:)=[1000];
     
   end  
   
   %Presa 3c
   if euclPr3P3c < Rper
      ppr161=1;
     su(1,35)=ppr161;
     p3cxi(i,:)=[1000];p3cyi(i,:)=[1000];
     
   end     
   
   %Presa 3d
   if euclPr3P3d < Rper
      ppr162=1;
    su(1,36)=ppr162;
     p3dxi(i,:)=[1000];p3dyi(i,:)=[1000];
     
   end  
   
   
   %Captura manc1
     
   Rper1= 20; %"raio perceptual" presa 1
   Rper2= 20; %"raio perceptual" presa 2
   Rper3= 20; %"raio perceptual" presa 3
   
    %Presa 1a
   if euclmanc1P1a < Rper1
      ppr11=1;
     su1(1,1)=ppr11;
     p1axi(i,:)=[1000];p1ayi(i,:)=[-1000];
     
   end  
  
   %Presa 1b
   if euclmanc1P1b < Rper1
      ppr12=1;
     su1(1,2)=ppr12;
     p1bxi(i,:)=[1000];p1byi(i,:)=[-1000];
     
   end  
   
   %Presa 1c
   if euclmanc1P1c < Rper1
      ppr13=1;
     su1(1,3)=ppr13;
     p1cxi(i,:)=[1000];p1cyi(i,:)=[-1000];
     
   end  
   
   %Presa 1d
   if euclmanc1P1d < Rper1
      ppr14=1;
     su1(1,4)=ppr14;
     p1dxi(i,:)=[1000];p1dyi(i,:)=[-1000];
     
   end  
   
   %Presa 2a
   if euclmanc1P2a < Rper2
      ppr15=1;
     su1(1,5)=ppr15;
     p2axi(i,:)=[1000];p2ayi(i,:)=[-1000];
     
   end  
   
   %Presa 2b
   if euclmanc1P2b < Rper2
      ppr16=1;
     su1(1,6)=ppr16;
     p2bxi(i,:)=[1000];p2byi(i,:)=[-1000];
     
   end  
   
   %Presa 2c
   if euclmanc1P2c < Rper2
      ppr17=1;
     su1(1,7)=ppr17;
     p2cxi(i,:)=[1000];p2cyi(i,:)=[-1000];
     
   end  
   
   %Presa 2d
   if euclmanc1P2d < Rper2
      ppr18=1;
     su1(1,8)=ppr18;
     p2dxi(i,:)=[1000];p2dyi(i,:)=[-1000];
     
   end  
   
   %Presa 3a
   if euclmanc1P3a < Rper3
      pr19=1;
     su1(1,9)=pr19;
     p3axi(i,:)=[1000];p3ayi(i,:)=[-1000];
     
   end  
   
   %Presa 3b
   if euclmanc1P3b < Rper3
      pr110=1;
     su1(1,10)=pr110;
     p3bxi(i,:)=[1000];p3byi(i,:)=[-1000];
     
   end  
   
   %Presa 3c
   if euclmanc1P3c < Rper3
      pr111=1;
     su1(1,11)=pr111;
     p3cxi(i,:)=[1000];p3cyi(i,:)=[-1000];
     
   end     
   
   %Presa 3d
   if euclmanc1P3d < Rper3
      pr112=1;
    su1(1,12)=pr112;
     p3dxi(i,:)=[1000];p3dyi(i,:)=[-1000];
     
   end  
   
   %Captura manc2
     
   
   
    %Presa 1a
   if euclmanc2P1a < Rper1
      pr11=1;
     su1(1,13)=pr11;
     p1axi(i,:)=[1000];p1ayi(i,:)=[-1000];
     
   end  
  
   %Presa 1b
   if euclmanc2P1b < Rper1
      pr12=1;
     su1(1,14)=pr12;
     p1bxi(i,:)=[1000];p1byi(i,:)=[-1000];
     
   end  
   
   %Presa 1c
   if euclmanc2P1c < Rper1
      pr13=1;
     su1(1,15)=pr13;
     p1cxi(i,:)=[1000];p1cyi(i,:)=[-1000];
     
   end  
   
   %Presa 1d
   if euclmanc2P1d < Rper1
      pr14=1;
     su1(1,16)=pr14;
     p1dxi(i,:)=[1000];p1dyi(i,:)=[-1000];
     
   end  
   
   %Presa 2a
   if euclmanc2P2a < Rper2
      pr15=1;
     su1(1,17)=pr15;
     p2axi(i,:)=[1000];p2ayi(i,:)=[-1000];
     
   end  
   
   %Presa 2b
   if euclmanc2P2b < Rper2
      pr16=1;
     su1(1,18)=pr16;
     p2bxi(i,:)=[1000];p2byi(i,:)=[-1000];
     
   end  
   
   %Presa 2c
   if euclmanc2P2c < Rper2
      pr17=1;
     su1(1,19)=pr17;
     p2cxi(i,:)=[1000];p2cyi(i,:)=[-1000];
     
   end  
   
   %Presa 2d
   if euclmanc2P2d < Rper2
      pr18=1;
     su1(1,20)=pr18;
     p2dxi(i,:)=[1000];p2dyi(i,:)=[-1000];
     
   end  
   
   %Presa 3a
   if euclmanc2P3a < Rper3
      pr19=1;
     su1(1,21)=pr19;
     p3axi(i,:)=[1000];p3ayi(i,:)=[-1000];
     
   end  
   
   %Presa 3b
   if euclmanc2P3b < Rper3
      pr110=1;
     su1(1,22)=pr110;
     p3bxi(i,:)=[1000];p3byi(i,:)=[-1000];
     
   end  
   
   %Presa 3c
   if euclmanc2P3c < Rper3
      pr111=1;
     su1(1,23)=pr111;
     p3cxi(i,:)=[1000];p3cyi(i,:)=[-1000];
     
   end     
   
   %Presa 3d
   if euclmanc2P3d < Rper3
      pr112=1;
    su1(1,24)=pr112;
     p3dxi(i,:)=[1000];p3dyi(i,:)=[-1000];
     
   end  
   
   %Captura manc3
     
   
   
    %Presa 1a
   if euclmanc3P1a < Rper1
      pr11=1;
     su1(1,25)=pr11;
     p1axi(i,:)=[1000];p1ayi(i,:)=[-1000];
     
   end  
  
   %Presa 1b
   if euclmanc3P1b < Rper1
      pr12=1;
     su1(1,26)=pr12;
     p1bxi(i,:)=[1000];p1byi(i,:)=[-1000];
     
   end  
   
   %Presa 1c
   if euclmanc3P1c < Rper1
      pr13=1;
     su1(1,27)=pr13;
     p1cxi(i,:)=[1000];p1cyi(i,:)=[-1000];
     
   end  
   
   %Presa 1d
   if euclmanc3P1d < Rper1
      pr14=1;
     su1(1,28)=pr14;
     p1dxi(i,:)=[1000];p1dyi(i,:)=[-1000];
     
   end  
   
   %Presa 2a
   if euclmanc3P2a < Rper2
      pr15=1;
     su1(1,29)=pr15;
     p2axi(i,:)=[1000];p2ayi(i,:)=[-1000];
     
   end  
   
   %Presa 2b
   if euclmanc3P2b < Rper2
      pr16=1;
     su1(1,16)=pr16;
     p2bxi(i,:)=[1000];p2byi(i,:)=[-1000];
     
   end  
   
   %Presa 2c
   if euclmanc3P2c < Rper2
      pr17=1;
     su1(1,16)=pr17;
     p2cxi(i,:)=[1000];p2cyi(i,:)=[-1000];
     
   end  
   
   %Presa 2d
   if euclmanc3P2d < Rper2
      pr18=1;
     su1(1,32)=pr18;
     p2dxi(i,:)=[1000];p2dyi(i,:)=[-1000];
     
   end  
   
   %Presa 3a
   if euclmanc3P3a < Rper3
      pr19=1;
     su1(1,33)=pr19;
     p3axi(i,:)=[1000];p3ayi(i,:)=[-1000];
     
   end  
   
   %Presa 3b
   if euclmanc3P3b < Rper3
      pr110=1;
     su1(1,34)=pr110;
     p3bxi(i,:)=[1000];p3byi(i,:)=[-1000];
     
   end  
   
   %Presa 3c
   if euclmanc3P3c < Rper3
      pr111=1;
     su1(1,35)=pr111;
     p3cxi(i,:)=[1000];p3cyi(i,:)=[-1000];
     
   end     
   
   %Presa 3d
   if euclmanc3P3d < Rper3
      pr112=1;
    su1(1,36)=pr112;
     p3dxi(i,:)=[1000];p3dyi(i,:)=[-1000];
     
   end  
   
   %Captura manc4
     
  
   
    %Presa 1a
   if euclmanc4P1a < Rper1
      pr11=1;
     su1(1,37)=pr11;
     p1axi(i,:)=[1000];p1ayi(i,:)=[-1000];
     
   end  
  
   %Presa 1b
   if euclmanc4P1b < Rper1
      pr12=1;
     su1(1,38)=pr12;
     p1bxi(i,:)=[1000];p1byi(i,:)=[-1000];
     
   end  
   
   %Presa 1c
   if euclmanc4P1c < Rper1
      pr13=1;
     su1(1,39)=pr13;
     p1cxi(i,:)=[1000];p1cyi(i,:)=[-1000];
     
   end  
   
   %Presa 1d
   if euclmanc4P1d < Rper1
      pr14=1;
     su1(1,25)=pr14;
     p1dxi(i,:)=[1000];p1dyi(i,:)=[-1000];
     
   end  
   
   %Presa 2a
   if euclmanc4P2a < Rper2
      pr15=1;
     su1(1,41)=pr15;
     p2axi(i,:)=[1000];p2ayi(i,:)=[-1000];
     
   end  
   
   %Presa 2b
   if euclmanc4P2b < Rper2;
      pr16=1;
     su1(1,42)=pr16;
     p2bxi(i,:)=[1000];p2byi(i,:)=[-1000];
     
   end  
   
   %Presa 2c
   if euclmanc4P2c < Rper2;
      pr17=1;
     su1(1,43)=pr17;
     p2cxi(i,:)=[1000];p2cyi(i,:)=[-1000];
     
   end  
   
   %Presa 2d
   if euclmanc4P2d < Rper2;
      pr18=1;
     su1(1,44)=pr18;
     p2dxi(i,:)=[1000];p2dyi(i,:)=[-1000];
     
   end  
   
   %Presa 3a
   if euclmanc4P3a < Rper3
      pr19=1;
     su1(1,45)=pr19;
     p3axi(i,:)=[1000];p3ayi(i,:)=[-1000];
     
   end  
   
   %Presa 3b
   if euclmanc4P3b < Rper3
      pr110=1;
     su1(1,46)=pr110;
     p3bxi(i,:)=[1000];p3byi(i,:)=[-1000];
     
   end  
   
   %Presa 3c
   if euclmanc4P3c < Rper3
      pr111=1;
     su1(1,47)=pr111;
     p3cxi(i,:)=[1000];p3cyi(i,:)=[-1000];
     
   end     
   
   %Presa 3d;
   if euclmanc4P3d < Rper3;
      pr112=1;
    su(1,48)=pr112;
     p3dxi(i,:)=[1000];p3dyi(i,:)=[-1000];
     
   end  
   
   
   %Captura manc5
     
  
   
    %Presa 1a
   if euclmanc5P1a < Rper1;
      pr11=1;
     su1(1,49)=pr11;
     p1axi(i,:)=[1000];p1ayi(i,:)=[-1000];
     
   end  
  
   %Presa 1b
   if euclmanc5P1b < Rper1;
      pr12=1;
     su1(1,50)=pr12;
     p1bxi(i,:)=[1000];p1byi(i,:)=[-1000];
     
   end  
   
   %Presa 1c
   if euclmanc5P1c < Rper1;
      pr13=1;
     su1(1,51)=pr13;
     p1cxi(i,:)=[1000];p1cyi(i,:)=[-1000];
     
   end  
   
   %Presa 1d
   if euclmanc5P1d < Rper1;
      pr14=1;
     su1(1,52)=pr14;
     p1dxi(i,:)=[1000];p1dyi(i,:)=[-1000];
     
   end  
   
   %Presa 2a
   if euclmanc5P2a < Rper2
      pr15=1;
     su1(1,53)=pr15;
     p2axi(i,:)=[1000];p2ayi(i,:)=[-1000];
     
   end  
   
   %Presa 2b
   if euclmanc5P2b < Rper2
      pr16=1;
     su1(1,54)=pr16;
     p2bxi(i,:)=[1000];p2byi(i,:)=[-1000];
     
   end  
   
   %Presa 2c
   if euclmanc5P2c < Rper2
      pr17=1;
     su1(1,55)=pr17;
     p2cxi(i,:)=[1000];p2cyi(i,:)=[-1000];
     
   end  
   
   %Presa 2d
   if euclmanc5P2d < Rper2
      pr18=1;
     su1(1,56)=pr18;
     p2dxi(i,:)=[1000];p2dyi(i,:)=[-1000];
     
   end  
   
   %Presa 3a
   if euclmanc5P3a < Rper3
      pr19=1;
     su1(1,57)=pr19;
     p3axi(i,:)=[1000];p3ayi(i,:)=[-1000];
     
   end  
   
   %Presa 3b
   if euclmanc5P3b < Rper3
      pr110=1;
     su1(1,58)=pr110;
     p3bxi(i,:)=[1000];p3byi(i,:)=[-1000];
     
   end  
   
   %Presa 3c
   if euclmanc5P3c < Rper3
      pr111=1;
     su1(1,59)=pr111;
     p3cxi(i,:)=[1000];p3cyi(i,:)=[-1000];
     
   end     
   
   %Presa 3d
   if euclmanc5P3d < Rper3
      pr112=1;
    su1(1,60)=pr112;
     p3dxi(i,:)=[1000];p3dyi(i,:)=[-1000];
     
   end  
     
   % exclusão 
    %Presa 1a
   if euclmanc5P1a > 150;
      
     p1axi(i,:)=[-1000];p1ayi(i,:)=[-1000];
     
   end  
  
   %Presa 1b
   if euclmanc5P1b > 150;
     p1bxi(i,:)=[-1000];p1byi(i,:)=[-1000];
     
   end  
   
   %Presa 1c
   if euclmanc5P1c > 150;
      
     p1cxi(i,:)=[-1000];p1cyi(i,:)=[-1000];
     
   end  
   
   %Presa 1d
   if euclmanc5P1d > 150;
      
     p1dxi(i,:)=[-1000];p1dyi(i,:)=[-1000];
     
   end  
   
   %Presa 2a
   if euclmanc5P2a > 150
      
     p2axi(i,:)=[-1000];p2ayi(i,:)=[-1000];
     
   end  
   
   %Presa 2b
   if euclmanc5P2b > 150
      
     p2bxi(i,:)=[-1000];p2byi(i,:)=[-1000];
     
   end  
   
   %Presa 2c
   if euclmanc5P2c > 150
      
     p2cxi(i,:)=[-1000];p2cyi(i,:)=[-1000];
     
   end  
   
   %Presa 2d
   if euclmanc5P2d > 150
      
     p2dxi(i,:)=[-1000];p2dyi(i,:)=[-1000];
     
   end  
   
   %Presa 3a
   if euclmanc5P3a > 150
      
     p3axi(i,:)=[-1000];p3ayi(i,:)=[-1000];
     
   end  
   
   %Presa 3b
   if euclmanc5P3b > 150
      
     p3bxi(i,:)=[-1000];p3byi(i,:)=[-1000];
     
   end  
   
   %Presa 3c
   if euclmanc5P3c > 150
     p3cxi(i,:)=[-1000];p3cyi(i,:)=[-1000];
     
   end     
   
   %Presa 3d
   if euclmanc5P3d > 150
      
     p3dxi(i,:)=[-1000];p3dyi(i,:)=[-1000];
     
   end  


   
   su;
   su1;
   
somasu=sum(su);
somasu1=sum(su1);


   
end

sutot(1,lop1)=somasu
su1tot(1,lop1)=somasu1

end

finalpred=sum(sutot)
finalprey=sum(su1tot)




% PLOT 
%axis ([-150 150 -150 150])
%plot(pr1xi,pr1yi,'r-');hold on %Predador 1
%plot(pr2xi,pr2yi,'r-');hold on %Predador 2
%plot(pr3xi,pr3yi,'r-');hold on %Predador 3
%axis ([-150 150 -150 150])
%plot(p1axi,p1ayi,'r');hold on  %Presa 1a
%plot(p1bxi,p1byi,'g');hold on  %Presa 1b
%plot(p1cxi,p1cyi,'b');hold on  %Presa 1c
%plot(p1dxi,p1dyi,'c');hold on  %Presa 1d
%axis ([-150 150 -150 150])

%plot(p2axi,p2ayi,'m');hold on  %Presa 2a
%plot(p2bxi,p2byi,'y');hold on  %Presa 2b
%plot(p2cxi,p2cyi,'k');hold on  %Presa 2c
%plot(p2dxi,p2dyi,'g');hold on  %Presa 2d
%axis ([-150 150 -150 150])

%plot(p3axi,p3ayi,'--r');hold on  %Presa 3a
%plot(p3bxi,p3byi,'--g');hold on  %Presa 3b
%plot(p3cxi,p3cyi,'--b');hold on  %Presa 3c
%plot(p3dxi,p3dyi,'--c');hold on  %Presa 3d



%x=0:52
%y=0:34