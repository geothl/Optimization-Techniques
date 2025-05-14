function crossed_Pop = Crossover(sel,Population)
crossed_Pop=cell(length(Population));
sel_count=0;
for i=1:2:length(Population)
rand_p=rand;
sel_count=sel_count+1;
s=sel{sel_count};
s1=s(1);
s2=s(2);
if(rand_p<0.7)
    Chromosome_1=Population{s1};
    Chromosome_2=Population{s2};

    A_1=Chromosome_1{1};%list of constants multiplied with Gaussian
    C1_1=Chromosome_1{2};
    C2_1=Chromosome_1{3};
    S1_1=Chromosome_1{4};
    S2_1=Chromosome_1{5};
    A_2=Chromosome_2{1};%list of constants multiplied with Gaussian
    C1_2=Chromosome_2{2};
    C2_2=Chromosome_2{3};
    S1_2=Chromosome_2{4};
    S2_2=Chromosome_2{5};
    
    An1=Cross(A_1,A_2);
    C1n1=Cross(C1_1,C1_2);
    C2n1=Cross(C2_1,C2_2);
    S1n1=abs(Cross(S1_1,S1_2));
    S2n1=abs(Cross(S2_1,S2_2));
    crossed_Pop{i}={An1,C1n1,C2n1,S1n1,S2n1};
    An2=Cross(A_1,A_2);
    C1n2=Cross(C1_1,C1_2);
    C2n2=Cross(C2_1,C2_2);
    S1n2=abs(Cross(S1_1,S1_2));
    S2n2=abs(Cross(S2_1,S2_2));
    crossed_Pop{i+1}={An2,C1n2,C2n2,S1n2,S2n2};

else
crossed_Pop{i}=Population{s1};
crossed_Pop{i+1}=Population{s2};
end
end
end