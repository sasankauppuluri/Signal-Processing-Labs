%This code contains a rectangular function(function of our choice)
%The function is defined with period 0.5. The function is defined as 
%x(t)=0.5 for -0.25<t<0.25.
syms t;
xt=piecewise(-0.25<t<0.25, 0.5, -0.5<t<0.25, 0, 0.25<t<0.5, 0);
%fplot(xt);
F=fourierCoeff_1a(10, 1, t, xt, -0.25, 0.25);
ak=-10:10;
figure;
stem(ak,F);
xlabel("k");
ylabel("ak");
grid on;
