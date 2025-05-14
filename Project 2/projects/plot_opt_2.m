function  plot_opt_2(xs,x0,iterations,filename,status)
syms x y
f(x,y)=x^3*exp(-x^2-y^4);
for i=1:length(xs)
    xval(i)=double(xs{i}(1)); 
    yval(i)=double(xs{i}(2));    
    fval(i)=subs(f,{x,y},{xval(i),yval(i)});
end
x1 = linspace(-4,4,1000);
y1 = linspace(-4,4,1000);
[X,Y] = meshgrid(x1,y1);
Z = X.^3.*exp(-X.^2-Y.^4);
figure;
contour(X,Y,Z,20)
hold on
plot(xval,yval,'r-*'); 
str=num2str(iterations);
txt = append('Iterations needed:',str);
title({x0,txt,status});
xlabel('x','FontSize',12,'FontWeight','bold') 
ylabel('y','FontSize',12,'FontWeight','bold',"Rotation",0);
hold on
plot(-sqrt(1.5),0,'ko');
% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Τεχνικές Βελτιστοποιήσης\project 2\figures', filename), 'epsc');
% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Τεχνικές Βελτιστοποιήσης\project 2\figures\png', filename), 'png');
%axis equal
figure;
plot(1:length(xs),fval,'-*');
title({'f(xk) in every iteration k',x0,txt});
xlabel('k: Iteration','FontSize',12,'FontWeight','bold') 
ylabel('f(xk)','FontSize',12,'FontWeight','bold',"Rotation",0);
% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Τεχνικές Βελτιστοποιήσης\project 2\figures', append(filename,'_f')), 'epsc');

end