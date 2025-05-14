%%%%%%%% PRESS ENTER IN COMMAND WINDOW FOR EVERY THEMA

clear;
syms x y g
f(x,y)=x^3*exp(-x^2-y^4);
ft=matlabFunction(f);

%Thema 1
figure;
fsurf(f,[-5 5 -5 5])
hold on
saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Τεχνικές Βελτιστοποιήσης\project 2\figures', 'plot'), 'epsc');



%Thema 2
disp('Press Enter for Thema 2');
pause();
close all

%constant gk
[z,iterations,xs,status]=steepest_descent(f,[0 0],@gk_calculator_constant);
plot_opt_2(xs,'Steepest Descent: (0,0) for constant gk=1',iterations,'sd_0_0_const',status);

[z,iterations,xs,status]=steepest_descent(f,[-1 -1],@gk_calculator_constant);
plot_opt_2(xs,'Steepest Descent: (-1,-1) for constant gk=1',iterations,'sd_-1_-1_const',status);

[z,iterations,xs,status]=steepest_descent(f,[1 1],@gk_calculator_constant);
plot_opt_2(xs,'Steepest Descent: (1,1) for constant gk=1',iterations,'sd_1_1_const',status);

%gk that minimizes f(xk+1)

[z,iterations,xs,status]=steepest_descent(f,[0 0],@gk_calculator_vertical);
plot_opt_2(xs,'Steepest Descent: (0,0) for gk that minimizes f(xk+1)',iterations,'sd_0_0_vertical',status);

[z,iterations,xs,status]=steepest_descent(f,[-1 -1],@gk_calculator_vertical);
plot_opt_2(xs,'Steepest Descent: (-1,-1) for gk that minimizes f(xk+1)',iterations,'sd_-1_-1_vertical',status);

[z,iterations,xs,status]=steepest_descent(f,[1 1],@gk_calculator_vertical);
plot_opt_2(xs,'Steepest Descent: (1,1) for gk that minimizes f(xk+1)',iterations,'sd_1_1_vertical',status);

%gk Armijo

[z,iterations,xs,status]=steepest_descent(f,[0 0],@gk_calculator_Armijo);
plot_opt_2(xs,'Steepest Descent: (0,0) with Armijo rule',iterations,'sd_0_0_Armijo',status);

[z,iterations,xs,status]=steepest_descent(f,[-1 -1],@gk_calculator_Armijo);
plot_opt_2(xs,'Steepest Descent: (-1,-1) with Armijo rule',iterations,'sd_-1_-1_Armijo',status);

[z,iterations,xs,status]=steepest_descent(f,[1 1],@gk_calculator_Armijo);
plot_opt_2(xs,'Steepest Descent: (1,1) with Armijo rule',iterations,'sd_1_1_Armijo',status);




%Thema 3
disp('Press Enter for Thema 3');
pause();
close all
%constant gk
[z,iterations,xs,status]=Newton_method(f,[0 0],@gk_calculator_constant);
plot_opt_2(xs,'Newton method: (0,0) for constant gk=1',iterations,'N_0_0_const',status);

[z,iterations,xs,status]=Newton_method(f,[-1 -1],@gk_calculator_constant);
plot_opt_2(xs,'Newton method: (-1,-1) for constant gk=1',iterations,'N_-1_-1_const',status);

[z,iterations,xs,status]=Newton_method(f,[1 1],@gk_calculator_constant);
plot_opt_2(xs,'Newton method: (1,1) for constant gk=1',iterations,'N_1_1_const',status);

%gk that minimizes f(xk+1)

[z,iterations,xs,status]=Newton_method(f,[0 0],@gk_calculator_vertical);
plot_opt_2(xs,'Newton method: (0,0) for gk that minimizes f(xk+1)',iterations,'N_0_0_vertical',status);

[z,iterations,xs,status]=Newton_method(f,[-1 -1],@gk_calculator_vertical);
plot_opt_2(xs,'Newton method: (-1,-1) for gk that minimizes f(xk+1)',iterations,'N_-1_-1_vertical',status);

[z,iterations,xs,status]=Newton_method(f,[1 1],@gk_calculator_vertical);
plot_opt_2(xs,'Newton method: (1,1) for gk that minimizes f(xk+1)',iterations,'N_1_1_vertical',status);

%gk Armijo

[z,iterations,xs,status]=Newton_method(f,[0 0],@gk_calculator_Armijo);
plot_opt_2(xs,'Newton method: (0,0) with Armijo rule',iterations,'N_0_0_Armijo',status);

[z,iterations,xs,status]=Newton_method(f,[-1 -1],@gk_calculator_Armijo);
plot_opt_2(xs,'Newton method: (-1,-1) with Armijo rule',iterations,'N_-1_-1_Armijo',status);

[z,iterations,xs,status]=Newton_method(f,[1 1],@gk_calculator_Armijo);
plot_opt_2(xs,'Newton method: (1,1) with Armijo rule',iterations,'N_1_1_Armijo',status);


%Thema 4
disp('Press Enter for Thema 4');
pause();
close all
%constant gk
[z,iterations,xs,status]=Levenberg_Marquardt(f,[0 0],@gk_calculator_constant);
plot_opt_2(xs,'Levenberg Marquardt: (0,0) for constant gk=1',iterations,'L_0_0_const',status);

[z,iterations,xs,status]=Levenberg_Marquardt(f,[-1 -1],@gk_calculator_constant);
plot_opt_2(xs,'Levenberg Marquardt: (-1,-1) for constant gk=1',iterations,'L_-1_-1_const',status);

[z,iterations,xs,status]=Levenberg_Marquardt(f,[1 1],@gk_calculator_constant);
plot_opt_2(xs,'Levenberg Marquardt: (1,1) for constant gk=1',iterations,'L_1_1_const',status);

%gk that minimizes f(xk+1)

[z,iterations,xs,status]=Levenberg_Marquardt(f,[0 0],@gk_calculator_vertical);
plot_opt_2(xs,'Levenberg Marquardt: (0,0) for gk that minimizes f(xk+1)',iterations,'L_0_0_vertical',status);

[z,iterations,xs,status]=Levenberg_Marquardt(f,[-1 -1],@gk_calculator_vertical);
plot_opt_2(xs,'Levenberg Marquardt: (-1,-1) for gk that minimizes f(xk+1)',iterations,'L_-1_-1_vertical',status);

[z,iterations,xs,status]=Levenberg_Marquardt(f,[1 1],@gk_calculator_vertical);
plot_opt_2(xs,'Levenberg Marquardt: (1,1) for gk that minimizes f(xk+1)',iterations,'L_1_1_vertical',status);

%gk Armijo

[z,iterations,xs,status]=Levenberg_Marquardt(f,[0 0],@gk_calculator_Armijo);
plot_opt_2(xs,'Levenberg Marquardt: (0,0) with Armijo rule',iterations,'L_0_0_Armijo',status);

[z,iterations,xs,status]=Levenberg_Marquardt(f,[-1 -1],@gk_calculator_Armijo);
plot_opt_2(xs,'Levenberg Marquardt: (-1,-1) with Armijo rule',iterations,'L_-1_-1_Armijo',status);

[z,iterations,xs,status]=Levenberg_Marquardt(f,[1 1],@gk_calculator_Armijo);
plot_opt_2(xs,'Levenberg Marquardt: (1,1) with Armijo rule',iterations,'L_1_1_Armijo',status);


