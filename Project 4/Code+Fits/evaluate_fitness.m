function MSE = evaluate_fitness(Population)

MSE=[];
for i=1:length(Population)
    Chromosome=Population{i};
    A=Chromosome{1};%list of constants multiplied with Gaussian
    C1=Chromosome{2};
    C2=Chromosome{3};
    S1=Chromosome{4};
    S2=Chromosome{5};
    mse=0;
    for u1=linspace(-1,2,15)
        for u2=linspace(-2,1,15)
            mse=mse+(sin(u1+u2)*sin(u2^2)-fun_est(u1,u2,A,C1,C2,S1,S2))^2;
        end
    end
    mse=(1000/(mse^1.5+0.0001))^1;
    MSE=[MSE mse];
end
end