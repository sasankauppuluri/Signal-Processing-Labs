w=-10:0.001:10;


%Q1
N0=[0];
xn=[1];
figure();
X1=DTFT(xn, N0, w);
subplot(2, 2, 1);
plot(w, abs(X1));
title("Magnitude of X");
xlabel("w");
ylabel("Magnitude of X");
subplot(2, 2, 2);
plot(w, angle(X1));
title("Phase of X");
xlabel("w");
ylabel("Phase of X");
subplot(2, 2, 3);
plot(w, real(X1));
title("Real part of X");
xlabel("w");
ylabel("Real(X)");
subplot(2, 2, 4);
plot(w, imag(X1));

%---------------------
N0=zeros(11);
xn=zeros(11);
for(k=1: 11)
N0(k)=k-6;
end
xn(11)=1;


X2=DTFT(xn, N0, w);
figure();
subplot(2, 2, 1);
plot(w, abs(X2));
title("Magnitude of X");
xlabel("w");
ylabel("Magnitude of X");

subplot(2, 2, 2);
plot(w, angle(X2));
title("Phase of X");
xlabel("w");
ylabel("Phase of X");
subplot(2, 2, 3);
plot(w, real(X2));
title("Real part of X");
xlabel("w");
ylabel("Real(X)");
subplot(2, 2, 4);
plot(w, imag(X2));
title("Imaginary part of X");
xlabel("w");
ylabel("imaginary(X)");

%----------------------

N0=zeros(11);
xn=zeros(11);
for(k=1: 11)
N0(k)=k-6;
end
for(k=1:11)
xn(k)=1;
end

X3=DTFT(xn, N0, w);
figure();
subplot(2, 2, 1);
plot(w, abs(X3));
title("Magnitude of X");
xlabel("w");
ylabel("Magnitude of X");

subplot(2, 2, 2);
plot(w, angle(X3));
title("Phase of X");
xlabel("w");
ylabel("Phase of X");
subplot(2, 2, 3);
plot(w, real(X3));
title("Real part of X");
xlabel("w");
ylabel("Real(X)");
subplot(2, 2, 4);
plot(w, imag(X3));
title("Imaginary part of X");
xlabel("w");
ylabel("imaginary(X)");
%---------------------------

N0=zeros(11);
xn=zeros(11);
for(k=1: 11)
N0(k)=k-1;
end
for(k=1:11)
xn(k)=1;
end


X4=DTFT(xn, N0, w);
figure();
subplot(2, 2, 1);
plot(w, abs(X4));
title("Magnitude of X");
xlabel("w");
ylabel("Magnitude of X");

subplot(2, 2, 2);
plot(w, angle(X4));
title("Phase of X");
xlabel("w");
ylabel("Phase of X");
subplot(2, 2, 3);
plot(w, real(X4));
title("Real part of X");
xlabel("w");
ylabel("Real(X)");
subplot(2, 2, 4);
plot(w, imag(X4));
title("Imaginary part of X");
xlabel("w");
ylabel("imaginary(X)");

%------------------------
 N0=zeros(1001);
 xn=zeros(1001);
for(k=1:1001)
N0(k)=k-501;
xn(k)=sin(pi*(k-501)/3);
end

X5=DTFT(xn, N0, w);
figure();
subplot(2, 2, 1);
plot(w, abs(X5));
title("Magnitude of X");
xlabel("w");
ylabel("Magnitude of X");

subplot(2, 2, 2);
plot(w, angle(X5));
title("Phase of X");
xlabel("w");
ylabel("Phase of X");
subplot(2, 2, 3);
plot(w, real(X5));
title("Real part of X");
xlabel("w");
ylabel("Real(X)");
subplot(2, 2, 4);
plot(w, imag(X5));
title("Imaginary part of X");
xlabel("w");
ylabel("imaginary(X)");