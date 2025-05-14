clear; % i had an error with x on the workspace
syms x 
f1(x) = (x-1)^3+cos(x)*(x-4)^2;
f2(x) =exp(-2*x)+(x-2)^2;
f3(x) =(x^2)*log(0.5*x)+(sin(0.2*x))^2;
f4(x)=x+cos(x);

[a,b,c,d]=Dichotomosv1(0,3,f1,0.01,0.001);
[a1,b1,c1,xk]=DichotomosDerivative(0,3,f1,0.01);



%thema 1
a1=[];
b1=[];
c1=[];
d1=[];
L=linspace(0.0025,0.1,100);
E=linspace(0.0001,0.0049,100);


callsf1B=[];
callsf2B=[];
callsf3B=[];
for i=1:length(L)
    [a1,b1,c1,d1,calls]=GoldenRatiov1(0,3,f1,L(i));
    callsf1B=[callsf1B,calls];   
end
figure;
plot(L, callsf1B);
hold on
for i=1:length(L)
    [a1,b1,c1,d1,calls]=GoldenRatiov1(0,3,f2,L(i));
    callsf2B=[callsf2B,calls];   
end
figure;
plot(L, callsf2B);
hold on
for i=1:length(L)
    [a1,b1,c1,d1,calls]=GoldenRatiov1(0,3,f3,L(i));
    callsf3B=[callsf3B,calls];   
end
figure;
plot(L, callsf3B);
hold on




[a11,b11,c1,d1,calls]=GoldenRatiov1(0,3,f1,0.001);
k11=1:1:length(a11);
[a12,b12,c1,d1,calls]=GoldenRatiov1(0,3,f1,0.01);
k12=1:1:length(a12);
[a13,b13,c1,d1,calls]=GoldenRatiov1(0,3,f1,0.1);
k13=1:1:length(a13);
[a14,b14,c1,d1,calls]=GoldenRatiov1(0,3,f1,1);
k14=1:1:length(a14);

figure;
plot(k11, a11);
hold on
plot(k12, a12);
hold on
plot(k13,a13, '-o');
hold on
plot(k14, a14,'-x');



