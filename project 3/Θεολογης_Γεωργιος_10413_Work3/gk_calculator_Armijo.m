function [gk] = gk_calculator_Armijo(iunk,x0,dk)
syms x y g
f(x,y)=x^3*exp(-x^2-y^4);
grad_fun(x,y)=jacobian(f(x,y),[x,y]);
dk=double(dk);
a=1e-3;
b=0.3;
s=3; %6 is best for steepest_descent 3 is best for Levenberg    
mk=0;
gd=double(subs(grad_fun,{x,y},{x0(1),x0(2)}));
xkn=x0+s*dk;
gk=s;
val=double(subs(f,{x,y},{x0(1),x0(2)}))-double(subs(f,{x,y},{xkn(1),xkn(2)}))+a*gk*dk*transpose(gd);

while(val<0)
    mk=mk+1;
    gk=s*b^mk;
    xkn=x0+gk*dk;
    val=subs(f,{x,y},{x0(1),x0(2)})-subs(f,{x,y},{xkn(1),xkn(2)})+a*gk*dk*transpose(gd);
end    
% third_criterio=dk*transpose(double(subs(grad_fun,{x,y},{xkn(1),xkn(2)})))-b*dk*transpose(gd)
% in case we need to check if 3ο κριτηριο καλης λειτουργιας is met.
end