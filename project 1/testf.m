clear; % i had an error with x on the workspace
syms x 
f1(x) = (x-1)^3+cos(x)*(x-4)^2;
f2(x) =exp(-2*x)+(x-2)^2;
f3(x) =(x^2)*log(0.5*x)+(sin(0.2*x))^2;
f4(x)=x+cos(x);

[az,bz,d]=DichotomosDerivative(0,3,f1,0.01,0.001);



%thema 1
a1=[];
b1=[];
c1=[];
d1=[];
callsf1A1=[];
callsf1A2=[];
callsf2A1=[];
callsf2A2=[];
callsf3A1=[];
callsf3A2=[];
L=linspace(0.0025,0.1,100);
E=linspace(0.0001,0.0049,100);
for i=1:length(E)
    [a1,b1,calls]=Dichotomosv1(0,3,f1,0.01,E(i));
    callsf1A1=[callsf1A1,calls];   
end
figure;
plot(E, callsf1A1);
hold on
for i=1:length(E)
    [a1,b1,calls]=Dichotomosv1(0,3,f2,0.01,E(i));
    callsf2A1=[callsf2A1,calls];   
end
figure;
plot(E, callsf2A1);
hold on
for i=1:length(E)
    [a1,b1,calls]=Dichotomosv1(0,3,f3,0.01,E(i));
    callsf3A1=[callsf3A1,calls];   
end
figure;
plot(E, callsf3A1);
hold on



for i=1:length(L)
    [a1,b1,calls]=Dichotomosv1(0,3,f1,L(i),0.001);
    callsf1A2=[callsf1A2,calls];   
end
figure;
plot(L, callsf1A2);
hold on
for i=1:length(L)
    [a1,b1,calls]=Dichotomosv1(0,3,f2,L(i),0.001);
    callsf2A2=[callsf2A2,calls];   
end
figure;
plot(L, callsf2A2);
hold on
for i=1:length(L)
    [a1,b1,calls]=Dichotomosv1(0,3,f3,L(i),0.001);
    callsf3A2=[callsf3A2,calls];   
end
figure;
plot(L, callsf3A2);
hold on





%


