syms t;

xt=piecewise(-0.25<t<0.25, 0.25-abs(t), 0.25<t<0.5, 0, -0.5<t<-0.25, 0);


%fplot(xt);
%axis([-0.25 0.5 -0.1 0.3]);

ak=fourierCoeff_1a(10, 1, t, xt, -0.5, 0.5);
pfsum_Q2(ak, 1, t, 10);

