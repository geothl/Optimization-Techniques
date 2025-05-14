function [projection_x] = Projection(x)
projection_x=[0 0];

if(x(1)<=-10)
projection_x(1)=-10;
elseif((x(1)>=5))
projection_x(1)=5;
else
projection_x(1)=x(1);
end

if(x(2)<=-8)
projection_x(2)=-8;
elseif((x(2)>=12))
projection_x(2)=12;
else
projection_x(2)=x(2);
end

end