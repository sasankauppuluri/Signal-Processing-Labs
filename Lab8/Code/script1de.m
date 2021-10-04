%8.1 d)

% **IMPORTANT: BEFORE RUNNING THE CODE CLEAR THE COMMAND WINDOW EVERY TIME 
%              AS SAME VARIABLES ARE USED REPEATEDLY    ** 



% ws=2*pi/Ts;
% w1=ws/8;
% w2=3*ws/8;
N=1000;
n=0:N-1;
pn=cos(n*pi/4)+cos(n*3*pi/4);

L=20;
%wn=1 for 0<n<L-1 0 otherwise
%xn=pn*wn
n=0:L-1;
xn=cos(n*pi/4)+cos(3*pi/4*n);
Xk=fft(xn, N);
k=0:N-1;
figure();
subplot(3, 1, 1);
plot(k, abs(Xk)); 
title("N-DFT: N=1000; L=20");
xlabel("k");
ylabel("X[k]");

L=50;
n=0:L-1;
xn=cos(n*pi/4)+cos(3*pi/4*n);
Xk=fft(xn, N);
k=0:N-1;
subplot(3, 1, 2);
plot(k, abs(Xk)); 
title("N-DFT: N=1000; L=50");
xlabel("k");
ylabel("X[k]");



L=100;
n=0:L-1;
xn=cos(n*pi/4)+cos(3*pi/4*n);
Xk=fft(xn, N);
k=0:N-1;
subplot(3, 1, 3);
plot(k, abs(Xk)); 
title("N-DFT: N=1000; L=100");
xlabel("k");
ylabel("X[k]");
%----------------------------------

% Q8.2 e


n=0:N-1;
pn=cos(n*pi/4)+cos(n*3*pi/10);

L=20;
%wn=1 for 0<n<L-1 0 otherwise
%xn=pn*wn
n=0:L-1;
xn=cos(n*pi/4)+cos(3*pi/10*n);
Xk=fft(xn, N);
k=0:N-1;
figure();
subplot(3, 1, 1);
plot(k, abs(Xk)); 
title("N-DFT: N=1000; L=20");
xlabel("k");
ylabel("X[k]");

L=50;
n=0:L-1;
xn=cos(n*pi/4)+cos(3*pi/10*n);
Xk=fft(xn, N);
k=0:N-1;
subplot(3, 1, 2);
plot(k, abs(Xk)); 
title("N-DFT: N=1000; L=50");
xlabel("k");
ylabel("X[k]");



L=100;
n=0:L-1;
xn=cos(n*pi/4)+cos(3*pi/10*n);
Xk=fft(xn, N);
k=0:N-1;
subplot(3, 1, 3);
plot(k, abs(Xk)); 
title("N-DFT: N=1000; L=100");
xlabel("k");
ylabel("X[k]");
%---------------------------------------------