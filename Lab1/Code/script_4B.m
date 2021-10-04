%we are unable to plot this in matlab because we are getting complx fourier
%coefficients
syms t;

xt=piecewise(-0.25<t<0.25, t, 0.25<t<0.5, 0, -0.5<t<-0.25, 0);
%fplot(xt);
F=fourierCoeff_1a(10, 1, t, xt, -0.25, 0.25);

%ak= -10:10;
%figure;
%stem(ak,F);
%grid on;
