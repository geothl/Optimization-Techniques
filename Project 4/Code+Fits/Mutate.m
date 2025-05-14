function Mutated_Chromosome = Mutate(Chromosome)
    A=Chromosome{1};%list of constants multiplied with Gaussian
    C1=Chromosome{2};
    C2=Chromosome{3};
    S1=Chromosome{4};
    S2=Chromosome{5};
    
    pros=rand;
    if (pros<0.5)
        pros=1;
    else
        pros=-1;
    end

    A =A+normrnd(pros,2,[1,length(A)]);
    C1 =C1+normrnd(pros,2,[1,length(C1)]);
    C2 =C2+normrnd(pros,2,[1,length(C2)]);
    S1 =abs(S1+normrnd(pros,1,[1,length(S1)]));
    S2 =abs(S2+normrnd(pros,1,[1,length(S2)]));    

    Mutated_Chromosome={A,C1,C2,S1,S2};
end