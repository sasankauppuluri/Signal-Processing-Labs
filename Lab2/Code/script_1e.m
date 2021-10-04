syms t;
T=1;


xt=1-abs(t);
w=-5:0.1:5;
ans=continuousFT(xt, t, -T, T, w);

subplot(2, 2, 1);
plot(w, real(ans));
xlabel("w");
ylabel("X(w)");

subplot(2, 2, 2);
plot(w, imag(ans));
xlabel("w");
ylabel("X(w)");


subplot(2, 2, 3);
plot(w, abs(ans));
xlabel("w");
ylabel("X(w)");


subplot(2, 2, 4);
fplot(angle(ans));
xlabel("w");
ylabel("X(w)");