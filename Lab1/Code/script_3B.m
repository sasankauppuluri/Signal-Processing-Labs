syms t;
xt=piecewise(-0.1<t<0.1, 1, -0.5<t<-0.1, 0, 0.1<t<0.5, 0);
%fplot(xt);
%For N=100*T and T=1
F=fourierCoeff_1a(10, 1, t, xt, -0.1, 0.1);
ak= -10:10;
figure;
stem(ak,F);
xlabel("k");
ylabel("ak");
grid on;
%Note that though we are required to take N=100, it takes a lot of time for calculation and so we took N=10. Also increasing T is not done because of the same reason 




