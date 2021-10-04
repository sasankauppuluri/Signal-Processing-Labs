N=5;
f0=50;
td=1;
Fs=10000;
for(k=1:N)
A(k)=1/k;
P(k)=0;
end
xt=harmonics(A, f0, P, td, Fs);
t=0:1/Fs:td;
subplot(4, 1, 1)
plot(t, xt);
title("N=5 Ak=1/k F0=50");
%soundsc(xt, Fs);
%-------------------

N=5;
f0=50;
td=1;
Fs=10000;
for(k=1:N)
A(k)=1/(k*k);
P(k)=0;
end
xt=harmonics(A, f0, P, td, Fs);
t=0:1/Fs:td;
subplot(4, 1, 2);
plot(t, xt);
axis([0, 0.05, -4, 4]);
title(' N=5 Ak=1/k*k F0=50 ');
%soundsc(xt, Fs);
%------------------------
N=15;
f0=150;
td=1;
Fs=10000;
for(k=1:N)
A(k)=1/(k*k);
P(k)=0;
end
xt=harmonics(A, f0, P, td, Fs);
t=0:1/Fs:td;
subplot(4, 1, 3);
plot(t, xt);
axis([0, 0.05, -4, 4]);
title('N=15 Ak=1/k F0=150');
%soundsc(xt, Fs);
%-----------------------
N=5;
f0=50;
td=1;
Fs=10000;
for(k=1:N)
A(k)=sin(pi*k/N);
P(k)=0;
end
xt=harmonics(A, f0, P, td, Fs);
t=0:1/Fs:td;
subplot(4, 1, 4);
plot(t, xt);
axis([0, 0.05, -4, 4]);
title('Ak=sin(pi*k/N) N=5, f0=50');
%soundsc(xt, Fs);
%--------------------------

N=5;
f0=50;
td=1;
Fs=10000;

for(k=1:N)
A(k)=1/k;
P(k)=(1+k^2)/2;
end
xt=harmonics(A, f0, P, td, Fs);
%soundsc(xt, Fs);
