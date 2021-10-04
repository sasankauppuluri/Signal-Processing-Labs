%Note -100 to 100 is not calculated as it takes a lot of time

wc=pi/8;

X=1;
syms w;
 n=-30:30;
xn=int(X*exp(i*w*n), w, -wc, wc)/(2*pi)
figure();
plot(n, xn);
title("wc=pi/8");
xlabel("n");
ylabel("x[n]");

%------------------
 wc=pi;
 
 X=1;
 syms w;
 n=-30:30;
 xn=int(X*exp(i*w*n), w, -wc, wc)/(2*pi)
 figure();
 plot(n, xn);
 title("wc=pi");
 xlabel("n");
 ylabel("x[n]");
 
 %-----------------
 
 w1=pi/8;
 w2=pi/4;

X=1;
syms w;
 n=-30:30;
xn=(int(X*exp(i*w*n), w, -w2, -w1)+int(X*exp(i*w*n), w, w1, w2))/(2*pi)
figure();
plot(n, xn);
title("w1=pi/8 w2=pi/4");
xlabel("n");
ylabel("x[n]");