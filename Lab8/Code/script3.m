%8.3 b)

L=5;
N=5;
n=0:N-1;
x=[ones(L,1); zeros(N-L,1)];
X=directdft(x);
figure();
subplot(3,1,1);
plot(n, x);
title("Original signal");
xlabel("n");
ylabel("x[n]");

subplot(3,1,2);
plot(n, abs(X));
title("Magnitude of X[k]");
xlabel("k");
ylabel("|X[k]|");

subplot(3,1,3);
plot(n, angle(X));
title("Phase of X[k]");
xlabel("k");
ylabel("angle of X[k]");

%--------------------

w0 = 3*pi/10;
N = (0:19)';
x = sin(w0*N);

X = directdft(x);
figure();
subplot(3,1,1);
plot(N, x);
title("Original signal sin");
xlabel("n");
ylabel("x[n]");

subplot(3,1,2);
plot(N, abs(X));
title("Magnitude of X[k]");
xlabel("k");
ylabel("|X[k]|");
subplot(3,1,3);
plot(N,angle(X));
title("Phase plot of X");
xlabel("k");
ylabel("angle of X[k]");


%--------------------------
w0 = 3*pi/10;
N = (0:19)';
x = sin(w0*(N-1));
xk = directdft(x);
figure();
subplot(3,1,1);
plot(N,x);
title("Signal is shifted sin");
xlabel("n");
ylabel("x[n]");

subplot(3,1,2);
plot(N,abs(xk));
title("Magnitude of X");
xlabel("k");
ylabel("|X[k]|");
subplot(3,1,3);

plot(N,angle(xk));
title("Phase plot of X");
xlabel("k");
ylabel("angle of X[k]");

%------------
N=10;
x = [1;zeros(N-1,1)];
xk = directdft(x);

figure();
subplot(3,1,1);
plot(0:N-1,x);
title("Signal x[n]");
xlabel('n');
ylabel('xn');

subplot(3,1,2);
plot(0:N-1,abs(xk));
title("Magnitude of X");
xlabel('k');
ylabel('|X[k]|');

subplot(3,1,3);
plot(0:N-1,angle(xk));
title("Phase plot of X");
xlabel('k');
ylabel('angle of X[k]');

%------------------- 
N = (0:19)';
x = (0.9).^(N);
xk = directdft(x);

figure();
subplot(3,1,1);
plot(N,x);
title("Exponential x[n]");
xlabel('n');
ylabel('xn');

subplot(3,1,2);
plot(N,abs(xk));
title("Magnitude of X");
xlabel('k');
ylabel('|X[k]|');

subplot(3,1,3);
plot(N,angle(xk));
title("Phase plot of X");
xlabel('k');
ylabel('angle of X[k]');











