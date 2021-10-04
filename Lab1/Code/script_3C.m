syms t;
xt=piecewise(-0.1<t<0.1, 1, -0.5<t<-0.1, 0, 0.1<t<0.5, 0);
%fplot(xt);
%For N=10 and T=1
ak=fourierCoeff_1a(10, 1, t, xt, -0.1, 0.1);
pfsum_Q2(ak, 1, t, 10);

hold on;

ak=fourierCoeff_1a(50, 1, t, xt, -0.1, 0.1);
pfsum_Q2(ak, 1, t, 50);
hold on;
ak=fourierCoeff_1a(100, 1, t, xt, -0.1, 0.1);
pfsum_Q2(ak, 1, t, 100);
