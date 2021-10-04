w=-10:0.001:10;

b=0.3;
a=b;
N0=zeros(501);
xn1=zeros(501);
for(k=1:501)
N0(k)=k-1;
xn1(k)=a^(k-1);
end

X1=DTFT(xn1, N0, w);

a=-b;
N0=zeros(501);
xn2=zeros(501);
for(k=1:501)
N0(k)=k-1;
xn2(k)=a^(k-1);
end

X2=DTFT(xn2, N0, w);
n=0:1:500;
figure();
subplot(2, 2, 1);
plot(n, xn1);
title("a=0.3");
xlabel("n");
ylabel("a^n");
subplot(2, 2, 2);
plot(n, xn2);
title("a=-0.3");
xlabel("n");
ylabel("a^n");
subplot(2, 2, 3);
plot(w, abs(X1));
title("Magnitude of DTFT of 0.3^n");
xlabel("w");
ylabel("Magnitude of X1");
subplot(2, 2, 4);
plot(w, abs(X2));
title("Magnitude of DTFT of -0.3^n");
xlabel("w");
ylabel("Magnitude of X2");


%----------------
b=0.8;
a=b;
N0=zeros(501);
xn1=zeros(501);
for(k=1:501)
N0(k)=k-1;
xn1(k)=a^(k-1);
end

X1=DTFT(xn1, N0, w);

a=-b;
N0=zeros(501);
xn2=zeros(501);
for(k=1:501)
N0(k)=k-1;
xn2(k)=a^(k-1);
end

X2=DTFT(xn2, N0, w);
n=0:1:500;
figure();
subplot(2, 2, 1);
plot(n, xn1);
title("a=0.8");
xlabel("n");
ylabel("a^n");
subplot(2, 2, 2);
plot(n, xn2);
title("a=-0.8");
xlabel("n");
ylabel("a^n");
subplot(2, 2, 3);
plot(w, abs(X1));
title("Magnitude of DTFT of 0.8^n");
xlabel("w");
ylabel("Magnitude of X1");
subplot(2, 2, 4);
plot(w, abs(X2));
title("Magnitude of DTFT of -0.8^n");
xlabel("w");
ylabel("Magnitude of X2");
