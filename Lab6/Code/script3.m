w=-10:0.01:10;

%For part a), we get h[n]=delta[n]-delta[n-2];

N0=zeros(5);
xn=zeros(5);
for(k=1: 5)
N0(k)=k-3;
end
xn(3)=1;
xn(5)=-1;
X=DTFT(xn, N0, w);
figure();
subplot(2, 1, 1);
plot(w, abs(X));
title("Magnitude of X");
xlabel("w");
ylabel("Magnitude of X");

subplot(2, 1, 2);
plot(w, angle(X));
title("Phase of X");
xlabel("w");
ylabel("Phase of X");

%--------------------------------------
%For first part in b), we get h[n]=1/3(delta[n+1]+delta[n]+delta[n-1])
N0=zeros(5);
xn=zeros(5);
for(k=1: 5)
N0(k)=k-3;
end
xn(2)=1/3;
xn(3)=1/3;
xn(4)=1/3;
X=DTFT(xn, N0, w);

figure();
subplot(2, 1, 1);
plot(w, abs(X));
title("Magnitude of X");
xlabel("w");
ylabel("Magnitude of X");

subplot(2, 1, 2);
plot(w, angle(X));
title("Phase of X");
xlabel("w");
ylabel("Phase of X");

%--------------------------------------
%For second part in b), we get h[n]=1/4(2*delta[n]-delta[n+1]-delta[n-1]);


N0=zeros(5);
xn=zeros(5);
for(k=1: 5)
N0(k)=k-3;
end
xn(2)=-1/4;
xn(3)=1/2;
xn(4)=-1/4;
X=DTFT(xn, N0, w);

figure();
subplot(2, 1, 1);
plot(w, abs(X));
title("Magnitude of X");
xlabel("w");
ylabel("Magnitude of X");

subplot(2, 1, 2);
plot(w, angle(X));
title("Phase of X");
xlabel("w");
ylabel("Phase of X");
