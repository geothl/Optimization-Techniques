
clear; % i had an error with x on the workspace
syms x 
f1(x) = (x-1)^3+cos(x)*(x-4)^2;
f2(x) =exp(-2*x)+(x-2)^2;
f3(x) =(x^2)*log(0.5*x)+(sin(0.2*x))^2;
callsf1A1=[];
callsf2A1=[];
callsf3A1=[];


E=linspace(0.0001,0.0049,100);
for i=1:length(E)
    [a1,b1,calls]=Dichotomos(0,3,f1,0.01,E(i));
    callsf1A1=[callsf1A1,calls];   
end
figure;
plot(E, callsf1A1);
xlabel('e: Distance from Midpoint')
ylabel("Number of function calls");
title('f1(x)')
hold on
for i=1:length(E)
    [a1,b1,calls]=Dichotomos(0,3,f2,0.01,E(i));
    callsf2A1=[callsf2A1,calls];   
end
figure;
plot(E, callsf2A1);
xlabel('e: Distance from Midpoint')
ylabel("Number of function calls");
title('f2(x)')
hold on
for i=1:length(E)
    [a1,b1,calls]=Dichotomos(0,3,f3,0.01,E(i));
    callsf3A1=[callsf3A1,calls];   
end
figure;
plot(E, callsf3A1);
xlabel('e: Distance from Midpoint')
ylabel("Number of function calls");
title('f(x)')
hold on

Varying_tolerance_plots(0,3,@Dichotomos,'Bisection',0.001)
Varying_tolerance_plots(0,3,@GoldenRatio,'Golden Ratio',0)
Varying_tolerance_plots(0,3,@Fibonacci,'Fibonacci',0)
Varying_tolerance_plots(0,3,@DichotomosDerivative,'Bisection with Derivative',0)