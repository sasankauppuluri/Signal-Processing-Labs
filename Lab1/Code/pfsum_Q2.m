function y=pfsum_Q2(A, T, t, N)
w0=2*pi/T;
y=zeros(size(t));
for k=-N:N
y=y+A(1, 1+k+10)*exp(i*k*w0*t);
end

fplot(y);
xlabel("time");
ylabel("x(t)");
axis([-2, 2, -0.1, 0.3]);
end
