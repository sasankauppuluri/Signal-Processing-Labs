syms t;

xt(t)=piecewise(-0.25<=t<=0.25, 0.25-abs(t), 0.25<t<0.5, 0, -0.5<t<-0.25, 0);



%Note that we are calculating only upto 20
for N=1:20
ak=fourierCoeff_1a(N, 1, t, xt, -0.25, 0.5);
y(t)=pfsum_Q2(ak, 1, t, N);
arr(N)=abs(y(0)-xt(0));
end
plot(arr);
xlabel("N");
ylabel("Max absolute error");







