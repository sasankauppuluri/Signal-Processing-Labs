function y=partialfouriersum(A, T, t, N)
w0=2*pi/T;
y=zeros(size(t));
for k=-N:N
y=y+A(1, 1+k+N)*exp(i*k*w0*t);

end

disp(y);
end
