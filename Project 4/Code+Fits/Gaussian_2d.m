function out = Gaussian_2d(u1,u2,c1,c2,s1,s2)
out=exp(-(((u1-c1).^2)./(2*s1.^2)+((u2-c2).^2)./(2*s2.^2)));
end