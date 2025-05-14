function [xk,k,xs,status]=steepest_descent(fun,x0,gk_fun)
syms x y;
grad_fun(x,y)=jacobian(fun(x,y),[x,y]);
grad_fun=matlabFunction(grad_fun);
fun=matlabFunction(fun);
e=0.001;
xk=x0;
k=1;
xs={x0};
gk=1;
gd=grad_fun(xk(1),xk(2));
while(norm(gd)>=e)
    dk=-gd;
    gk=gk_fun(gk,xk,dk);
    xk=xk+gk*dk;
    gk*dk;
    xs={xs{1:end},xk};
    k=k+1;
    gd=grad_fun(xk(1),xk(2));
end
if(norm(xk-[-sqrt(1.5) 0])<0.4)
    status='Success';
else
    status='Fail';
end  

end