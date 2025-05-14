function sel=Selection(MSE)
P=MSE/sum(MSE);
n=length(P);
sel=cell(n/2);
for k=1:n/2
   s1=Roulette_Wheel(P);
   s2=Roulette_Wheel(P);
   sel{k}=[s1 s2];
end
end