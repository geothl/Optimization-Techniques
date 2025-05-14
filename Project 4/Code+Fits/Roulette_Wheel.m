function sel = Roulette_Wheel(Propability_fit)
rand_val=rand;
prev=0;
sel=0;
for i=1:length(Propability_fit)
    if(rand_val<prev+Propability_fit(i))
        sel=i;  
        break;
    end    
    prev=prev+Propability_fit(i);
end
end