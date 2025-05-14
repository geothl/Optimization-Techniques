function [A,B,xk] = DichotomosDerivative(ap,bp,fun,l,e)
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
    xk=(A(end)+B(end))/2;
    df=fun(xk);
    calls=calls+1;
    if (df==0)
        an=xk;
        bn=xk;
        break;
    elseif(df>0) 
        an=A(end);
        bn=xk;
    else
        an=xk;
        bn=B(end);
    end
    A=[A,an];
    B=[B,bn];
    DF=[DF,df];
    xf=xk;
end



end