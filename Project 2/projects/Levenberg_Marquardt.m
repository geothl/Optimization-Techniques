function [xk,k,xs,status]=Levenberg_Marquardt(fun,x0,gk_fun)
syms x y;
grad_fun(x,y)=jacobian(fun(x,y),[x,y]);
hess_fun(x,y)=hessian(fun(x,y),[x,y]);
e=0.001;
xk=x0;
k=1;
xs={x0};
gd=double(grad_fun(xk(1),xk(2)));
hess=double(hess_fun(xk(1),xk(2)));
gk=1;
while(norm(gd)>=e)
    eigv=eig(hess);
    mukbar=max(abs(eigv(1)),abs(eigv(2)));
    muk=mukbar+0.5;
    hess=hess+[muk 0;0 muk];
    dk=-hess^(-1)*transpose(gd);
    dk=transpose(dk);
    gk=gk_fun(gk,xk,dk);
    xk=xk+gk*dk;
    xs={xs{1:end},xk};
    k=k+1;
    %gd=grad_fun(xk(1),xk(2));
    gd=double(subs(grad_fun,{x,y},{xk(1),xk(2)}));  %subs is probably the same with grad_fun(xk(1),xk(2)) i just need the double so gd stops being symbolic.
    %hess=hess_fun(xk(1),xk(2));
    hess=double(subs(hess_fun,{x,y},{xk(1),xk(2)}));
end
if(norm(xk-[-sqrt(1.5) 0])<0.4)
    status='Success';
else
    status='Fail';
end  

end