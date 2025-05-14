function Varying_tolerance_plots(ap,bp,fun,name,e)
syms x 
f1(x) = (x-1)^3+cos(x)*(x-4)^2;
f2(x) =exp(-2*x)+(x-2)^2;
f3(x) =(x^2)*log(0.5*x)+(sin(0.2*x))^2;

L=linspace(0.0025,0.1,100);  
L(9)=0.01;              %have rounder l values  
L(49)=0.05;   
L(80)=0.08;

a1={};   %cells are the most optimal way to store lists of different size
b1={};
a2={};
b2={};
a3={};
b3={};
callsf1=[];

for i=1:length(L)
    [a1{i},b1{i},calls]=fun(ap,bp,f1,L(i),e);
    callsf1=[callsf1,calls];   
end
figure;
plot(L, callsf1);
title(append('f1(x): ',name,' Method'));
xlabel('l:Tolerance') 
ylabel("Number of function calls");
hold on


callsf2=[];

for i=1:length(L)
    [a2{i},b2{i},calls]=fun(ap,bp,f2,L(i),e);
    callsf2=[callsf2,calls];   
end
figure;
plot(L, callsf2);
title(append('f2(x): ',name,' Method'));
xlabel('l:Tolerance') 
ylabel("Number of function calls");
hold on

callsf3=[];

for i=1:length(L)
    [a3{i},b3{i},calls]=fun(ap,bp,f3,L(i),e);
    callsf3=[callsf3,calls];   
end
figure;
plot(L, callsf3);
title(append('f3(x): ',name,' Method'));
xlabel('l:Tolerance') 
ylabel("Number of function calls");
hold on
 

figure;
tiledlayout(2,2)
nexttile
plot(1:1:length(a1{1}), a1{1},'-o');
hold on
plot(1:1:length(b1{1}), b1{1},'-x');
str=num2str(L(1));
title(append('l=',str));
xlabel('k:Number of Steps') 
ylabel("[ak,bk]",'FontSize',12,'FontWeight','bold',"Rotation",0);
hold on
nexttile
plot(1:1:length(a1{9}), a1{9},'-o');
hold on
plot(1:1:length(b1{9}), b1{9},'-x');
str=num2str(L(9));
title(append('l=',str));
xlabel('k:Number of Steps') 
ylabel("[ak,bk]",'FontSize',12,'FontWeight','bold',"Rotation",0);
hold on
nexttile
plot(1:1:length(a1{49}), a1{49},'-o');
hold on
plot(1:1:length(b1{49}), b1{49},'-x');
str=num2str(L(49));
title(append('l=',str));
xlabel('k:Number of Steps') 
ylabel("[ak,bk]",'FontSize',12,'FontWeight','bold',"Rotation",0);
hold on
nexttile
plot(1:1:length(a1{80}), a1{75},'-o');
hold on
plot(1:1:length(b1{80}), b1{80},'-x');
str=num2str(L(80));
title(append('l=',str));
xlabel('k:Number of Steps') 
ylabel("[ak,bk]",'FontSize',12,'FontWeight','bold',"Rotation",0);
hold on
sgtitle(append('f1(x): ',name,' Method'))


figure;
tiledlayout(2,2)
nexttile
plot(1:1:length(a2{1}), a2{1},'-o');
hold on
plot(1:1:length(b2{1}), b2{1},'-x');
str=num2str(L(1));
title(append('l=',str));
xlabel('k:Number of Steps') 
ylabel("[ak,bk]",'FontSize',12,'FontWeight','bold',"Rotation",0);
hold on
nexttile
plot(1:1:length(a2{9}), a2{9},'-o');
hold on
plot(1:1:length(b2{9}), b2{9},'-x');
str=num2str(L(9));
title(append('l=',str));
xlabel('k:Number of Steps') 
ylabel("[ak,bk]",'FontSize',12,'FontWeight','bold',"Rotation",0);
hold on
nexttile
plot(1:1:length(a2{49}), a2{49},'-o');
hold on
plot(1:1:length(b2{49}), b2{49},'-x');
str=num2str(L(49));
title(append('l=',str));
xlabel('k:Number of Steps') 
ylabel("[ak,bk]",'FontSize',12,'FontWeight','bold',"Rotation",0);
hold on
nexttile
plot(1:1:length(a2{80}), a2{80},'-o');
hold on
plot(1:1:length(b2{80}), b2{80},'-x');
str=num2str(L(80));
title(append('l=',str));
xlabel('k:Number of Steps') 
ylabel("[ak,bk]",'FontSize',12,'FontWeight','bold',"Rotation",0);
hold on
sgtitle(append('f2(x): ',name,' Method'))




figure;
tiledlayout(2,2)
nexttile
plot(1:1:length(a3{1}), a3{1},'-o');
hold on
plot(1:1:length(b3{1}), b3{1},'-x');
str=num2str(L(1));
title(append('l=',str));
xlabel('k:Number of Steps') 
ylabel("[ak,bk]",'FontSize',12,'FontWeight','bold',"Rotation",0);
hold on
nexttile
plot(1:1:length(a3{9}), a3{9},'-o');
hold on
plot(1:1:length(b3{9}), b3{9},'-x');
str=num2str(L(9));
title(append('l=',str));
xlabel('k:Number of Steps') 
ylabel("[ak,bk]",'FontSize',12,'FontWeight','bold',"Rotation",0);
hold on
nexttile
plot(1:1:length(a3{49}), a3{49},'-o');
hold on
plot(1:1:length(b3{49}), b3{49},'-x');
str=num2str(L(49));
title(append('l=',str));
xlabel('k:Number of Steps') 
ylabel("[ak,bk]",'FontSize',12,'FontWeight','bold',"Rotation",0);
hold on
nexttile
plot(1:1:length(a3{80}), a3{80},'-o');
hold on
plot(1:1:length(b3{80}), b3{80},'-x');
str=num2str(L(80));
title(append('l=',str));
xlabel('k:Number of Steps') 
ylabel("[ak,bk]",'FontSize',12,'FontWeight','bold',"Rotation",0);
hold on
sgtitle(append('f3(x): ',name,' Method'))








end