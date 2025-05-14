clear; % i had an error with x on the workspace
syms x 
f1(x) = (x-1)^3+cos(x)*(x-4)^2;
f2(x) =exp(-2*x)+(x-2)^2;
f3(x) =(x^2)*log(0.5*x)+(sin(0.2*x))^2;
f4(x)=x+cos(x);

l=0.01;
L=linspace(0.001,0.1,100);

% [a,b,c,d]=Dichotomosv1(0,3,f1,0.01,0.001);
% [a1,b1,c1,xk]=DichotomosDerivative(0,3,f1,0.01);
[a14,b14,c14,d14,calls,X1,X2]=Fibonacci(0,3,f1,l,0.1*l);

callsf1=[];

for i=1:length(L)
    [a1,b1,c1,d1,calls]=Fibonacci(0,3,f1,L(i),00.1*L(i));
    callsf1=[callsf1,calls];   
end
figure;
plot(L, callsf1);
hold on