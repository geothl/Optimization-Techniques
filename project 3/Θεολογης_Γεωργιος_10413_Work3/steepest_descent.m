function [xk,k,xs,status]=steepest_descent(fun,x0,gk_fun,gk)
syms x1 x2;
grad_fun(x1,x2)=jacobian(fun(x1,x2),[x1,x2]);
e=0.001;
xk=x0;
k=1;
xs={x0};
gd=grad_fun(xk(1),xk(2));
while(norm(gd)>=e)
    dk=-gd;
    gk=gk_fun(gk,xk,dk);
    xk=double(xk+gk*dk);
    xs={xs{1:end},xk};
    k=k+1;
    gd=grad_fun(xk(1),xk(2));
end
if(norm(xk)<0.2)
    status='Success';
else
    status='Fail';
end  

end