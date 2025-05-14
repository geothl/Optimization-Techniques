function [A,B,calls] = GoldenRatio(ap,bp,fun,l,e)
fun=matlabFunction(fun);
g=(sqrt(5)-1)/2;
    x11=ap+(1-g)*(bp-ap);
    x21=ap+g*(bp-ap);
    calls=0;
    fX11=fun(x11);
    fX21=fun(x21);
    calls=calls+2;
    k=1;
    A=ap;
    B=bp;
    FX1=fX11;
    FX2=fX21;
    X1=x11;
    X2=x21;
while (B(k)-A(k)>=l) 
    if (FX1(k)<FX2(k))
        an=A(k);
        bn=X2(k);
        x1n=an+(1-g)*(bn-an);
        x2n=X1(k);
        fx1n=fun(x1n);
        fx2n=FX1(k);
        calls=calls+1;
    else 
        an=X1(k);
        bn=B(k);
        x1n=X2(k);
        x2n=an+g*(bn-an);
        fx1n=FX2(k);
        fx2n=fun(x2n);
        calls=calls+1;
    end
    k=k+1;
    A=[A,an];
    B=[B,bn];
    FX1=[FX1,fx1n];
    FX2=[FX2,fx2n];
    X1=[X1,x1n];
    X2=[X2,x2n];
end

end
