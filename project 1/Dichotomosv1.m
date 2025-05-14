function [A,B,calls] = Dichotomos(ap,bp,fun,l,e)
fun=matlabFunction(fun);
A=ap;
B=bp;
FX1=[];
FX2=[];
k=1;
calls=0;
while(B(end)-A(end)>l) 
    x1k=(A(end)+B(end))/2-e;
    x2k=(A(end)+B(end))/2+e;
    fx1=fun(x1k);
    fx2=fun(x2k);
    calls=calls+2;
    if (fx1<fx2)
        an=A(end);
        bn=x2k;
    else 
        an=x1k;
        bn=B(end);
    end
    k=k+1;
    A=[A,an];
    B=[B,bn];
    FX1=[FX1,fx1];
    FX2=[FX2,fx2];

end
end

% what happpens when f(an)=f(bn)? mallon tpt