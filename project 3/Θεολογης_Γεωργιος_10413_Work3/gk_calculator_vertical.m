function [gk] = gk_calculator_vertical(junk,xk,dk)
syms x y g
f(x,y)=x^3*exp(-x^2-y^4);
g_f(g)=f(xk(1)+g*dk(1) , xk(2)+g*dk(2));
%dg_f(g)=diff(g_f,g); solve==0 was a failure
%gk=Dichotomosv2(0,20,g_f,0.1,0.01); %same
gk=DichotomosDerivativev2(0,10,g_f,0.1); %had to make it [0,10] for Levenberg_Marquardt because otherwise i included kai koila tmhmta oxi mono kyrta. this happens because dk is already big in Levneberg method sofor high enough g i go to non convex area,in contrast to other methods with smaller dk

end