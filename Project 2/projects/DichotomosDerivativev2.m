function [gf] = DichotomosDerivativev2(ap,bp,fun,l)
syms g;
fun(g)=diff(fun,g);
fun=matlabFunction(fun);
A=ap;
B=bp;
DF=[];
n=0;
calls=0;
while((1/2)^n>l/(bp-ap))
    n=n+1;
end

k=1;

for i=1:n    
    gk=(A(end)+B(end))/2;
    df=fun(gk);
    calls=calls+1;
    if (df==0)
        an=gk;
        bn=gk;
        break;
    elseif(df>0) 
        an=A(end);
        bn=gk;
    else
        an=gk;
        bn=B(end);
    end
    A=[A,an];
    B=[B,bn];
end
gf=(A(end)+B(end))/2;
end