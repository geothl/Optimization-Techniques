function list_out = Cross(list_1,list_2)
d=0.5;
for j=1:length(list_1)
rand_num=-d+(1+2*d)*rand;
list_out(j)=list_1(j)*rand_num+list_2(j)*(1-rand_num);
end
end



