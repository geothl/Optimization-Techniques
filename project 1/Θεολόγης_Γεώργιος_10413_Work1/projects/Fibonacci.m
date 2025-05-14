function [A,B,calls] = Fibonacci(ap,bp,fun,l,jk)
e=0.01*l;
fun=matlabFunction(fun);
A=ap;
B=bp;
F0=1;
F1=1;
n=1;
F=1;
pp=F0;
Farr=[F0,F1];
while(F<=(bp-ap)/l)
    n=n+1;
    temp=F;
    F=F+pp;
    pp=temp;
    Farr=[Farr,F];
end

calls=0;
x11=ap+(Farr(n-1)/Farr(n+1))*(bp-ap);
x21=ap+(Farr(n)/Farr(n+1))*(bp-ap);
X1=x11;
X2=x21;
FX1=fun(x11);
FX2=fun(x21);
calls=calls+2;

k=1;

for k=1:(n-3)
    if(FX1(k)>FX2(k))
        an=X1(k);
        bn=B(k);
        x1n=X2(k);
        x2n=an+(Farr(n-k)/Farr(n-k+1))*(bn-an);
        fx1n=FX2(k);
        fx2n=fun(x2n);
        calls=calls+1;

    else
        an=A(k);
        bn=X2(k);
        x1n=an+(Farr(n-k-1)/Farr(n-k+1))*(bn-an);
        x2n=X1(k);
        fx2n=FX1(k);
        fx1n=fun(x1n);      
        calls=calls+1;
    end    

    A=[A,an];
    B=[B,bn];
    FX1=[FX1,fx1n];
    FX2=[FX2,fx2n];
    X1=[X1,x1n];
    X2=[X2,x2n];

end
k=n-2;
if(FX1(k)>FX2(k))
    an=X1(k);
    bn=B(k);
    x1n=X2(k);
    x2n=an+(Farr(n-k)/Farr(n-k+1))*(bn-an);
    fx1n=FX2(k);
    fx2n=fx1n;
else
    an=A(k);
    bn=X2(k);
    x1n=an+(Farr(n-k-1)/Farr(n-k+1))*(bn-an);
    x2n=X1(k);
    fx2n=FX1(k);
    fx1n=fx2n;      

        
end    

A=[A,an];
B=[B,bn];
FX1=[FX1,fx1n];
FX2=[FX2,fx2n];
X1=[X1,x1n];
X2=[X2,x2n];





x1n=X1(end);
x2n=x1n+e;
X1=[X1,x1n];
X2=[X2,x2n];
FX1=[FX1,FX1(end)];
FX2=[FX2,fun(x2n)];
calls=calls+1;
    if(FX1(end)>FX2(end))
        an=X1(end);
        bn=B(end);
    else
        an=A(end);
        bn=X2(end);
    end   

A=[A,an];
B=[B,bn];


end
