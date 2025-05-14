clear;
syms x y
f(x,y)=x^3*exp(-x^2-y^4);
figure;
fsurf(f,[-5 5 -5 5])
hold on
saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Τεχνικές Βελτιστοποιήσης\project 2\figures', 'test'), 'eps');
