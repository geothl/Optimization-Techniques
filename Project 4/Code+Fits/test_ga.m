clear;
pop_size=100;
Initial_Pop=cell(pop_size);
num_Gaussian=15;

for i=1:pop_size
A=rand(1,num_Gaussian);
C1=zeros(1,num_Gaussian);
C2=zeros(1,num_Gaussian);
S1=0.5*ones(1,num_Gaussian);
S2=0.5*ones(1,num_Gaussian);
Initial_Pop{i}={A,C1,C2,S1,S2};
end

Pop=Initial_Pop;
Generations=1000;

for j=1:Generations
    j
    MSE=evaluate_fitness(Pop);
    minMSE(j)=min((1000./MSE-0.0001).^(2/3));
    sel=Selection(MSE);
    crossed_Pop=Crossover(sel,Pop);
    mutated_Pop=mutate_Pop(crossed_Pop);
    Pop=mutated_Pop;
end    
MSE=evaluate_fitness(Pop);
[max_val,index] = max(MSE(:));
Best=Pop{index};
A=Best{1};
C1=Best{2};
C2=Best{3};
S1=Best{4};
S2=Best{5};

figure;
[U1,U2] = meshgrid(linspace(-1,2,100),linspace(-2,1,100));
plot_est=fun_est(U1,U2,A,C1,C2,S1,S2);
surf(U1,U2,plot_est);
title('Plot of estimated model');
xlabel('u1');
ylabel('u2');
zlabel('fmodel')
figure;
Z=sin(U1+U2).*sin(U2.^2);
surf(U1,U2,Z);
title('Plot of system input-output measurements');
xlabel('u1');
ylabel('u2');
zlabel('f(u1,u2)')

figure;
plot(minMSE);
title('Plot of Sum of Square Errors');
xlabel('Generations');
ylabel('Sum of Square Errors');


norm_position=find((A(:)<10)&(A(:)>-10));
figure;
A_est=A(norm_position);
C1_est=C1(norm_position);
C2_est=C2(norm_position);
S1_est=S1(norm_position);
S2_est=S2(norm_position);
plot_est=fun_est(U1,U2,A_est,C1_est,C2_est,S1_est,S2_est);
surf(U1,U2,plot_est);
title('Plot of estimated model (Minimal Implementation)');
xlabel('u1');
ylabel('u2');
zlabel('fmodel(u1,u2)')

sum_square_error=sum(sum((plot_est-sin(U1+U2).*sin(U2.^2)).^2));
mean_square_error=sum_square_error*0.03^2;
