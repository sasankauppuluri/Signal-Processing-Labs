%8.1f) for part d)

% **IMPORTANT: BEFORE RUNNING THE CODE CLEAR THE COMMAND WINDOW EVERY TIME 
%              AS SAME VARIABLES ARE USED REPEATEDLY    ** 


N=1000;
n=0:N-1;
pn=cos(n*pi/4)+cos(n*3*pi/4);

L=20;

wn=hann(L);

for(m=0:L-1)
xn(m+1)=pn(m+1)*wn(m+1);
end


Xk=fft(xn, N);
k=0:N-1;
figure();
subplot(3, 1, 1);
plot(k, abs(Xk)); 
title("N-DFT using hann: N=1000; L=20");
xlabel("k");
ylabel("X[k]");


n=0:N-1;
pn=cos(n*pi/4)+cos(n*3*pi/4);

L=50;

wn=hann(L);

for(m=0:L-1)
xn(m+1)=pn(m+1)*wn(m+1);
end
% m=0:L-1;
% plot(m, xn);

Xk=fft(xn, N);
k=0:N-1;
subplot(3, 1, 2);
plot(k, abs(Xk)); 
title("N-DFT using hann: N=1000; L=50");
xlabel("k");
ylabel("X[k]");


n=0:N-1;
pn=cos(n*pi/4)+cos(n*3*pi/4);

L=100;

wn=hann(L);

for(m=0:L-1)
xn(m+1)=pn(m+1)*wn(m+1);
end
% m=0:L-1;
% plot(m, xn);

Xk=fft(xn, N);
k=0:N-1;
subplot(3, 1, 3);
plot(k, abs(Xk)); 
title("N-DFT using hann: N=1000; L=50");
xlabel("k");
ylabel("X[k]");

