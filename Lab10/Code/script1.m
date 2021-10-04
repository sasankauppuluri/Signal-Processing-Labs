fc=2000;
fs=10000;
figure();
[a1, b1]=butter(6, fc/(fs/2));
[h1, w1]=freqz(a1, b1, 2001, 'whole');
subplot(2, 2, 1);
plot(w1/pi,20*log10(abs(h1)));
xlabel("w normalized");
ylabel("|H| in decibels");
ylim([-350 0]);
title("Magnitude of Butterworth");

[a2, b2]=cheby1(6, 1, fc/(fs/2));
[h2, w2]=freqz(a2, b2, 2001, 'whole');
subplot(2, 2, 2);
plot(w2/pi,20*log10(abs(h2)));
xlabel("w normalized");
ylabel("|H| in decibels");
ylim([-350 0]);
title(" Magnitude of Chebyshev1");

[a3, b3]=cheby2(6, 40, fc/(fs/2));
[h3, w3]=freqz(a3, b3, 2001, 'whole');
subplot(2, 2, 3);
plot(w3/pi,20*log10(abs(h3)));
xlabel("w normalized");
ylabel("|H| in decibels");
ylim([-350 0]);
title("Magnitude of Chebyshev2");

[a4, b4] = ellip(6, 1, 40, fc/(fs/2));
[h4, w4]=freqz(a4, b4, 2001, 'whole');
subplot(2, 2, 4);
plot(w4/pi,20*log10(abs(h4)));
xlabel("w normalized");
ylabel("|H| in decibels");
ylim([-350 0]);
title("Magnitude of Elliptical");

figure();
subplot(2, 2, 1);
plot(w1, angle(h1));
title("Phase of Butterwoth");
xlabel("w");
ylabel("Phase of H");

subplot(2, 2, 2);
plot(w2, angle(h2));
title("Phase of Chebyshev type1");
xlabel("w");
ylabel("Phase of H");

subplot(2, 2, 3);
plot(w3, angle(h3));
title("Phase of Chebyshev type2");
xlabel("w");
ylabel("Phase of H");

subplot(2, 2, 4);
plot(w4, angle(h4));
title("Phase of Elliptical");
xlabel("w");
ylabel("Phase of H");

%------------------------------------------
%Q1c)
fc=2000;
fs=10000;
figure();
[a5, b5]=butter(12, fc/(fs/2));
[h5, w5]=freqz(a5, b5, 2001, 'whole');
subplot(2, 2, 1);
plot(w5/pi,20*log10(abs(h5)));
xlabel("w normalized");
ylabel("|H| in decibels");
ylim([-450 0]);
title("Magnitude of Butterworth n=12");

[a6, b6]=cheby1(12, 1, fc/(fs/2));
[h6, w6]=freqz(a6, b6, 2001, 'whole');
subplot(2, 2, 2);
plot(w6/pi,20*log10(abs(h6)));
xlabel("w normalized");
ylabel("|H| in decibels");
ylim([-450 0]);
title(" Magnitude of Chebyshev1 n=12");

[a7, b7]=cheby2(12, 40, fc/(fs/2));
[h7, w7]=freqz(a7, b7, 2001, 'whole');
subplot(2, 2, 3);
plot(w7/pi,20*log10(abs(h7)));
xlabel("w normalized");
ylabel("|H| in decibels");
ylim([-450 0]);
title("Magnitude of Chebyshev2 n=12");

[a8, b8] = ellip(12, 1, 40, fc/(fs/2));
[h8, w8]=freqz(a8, b8, 2001, 'whole');
subplot(2, 2, 4);
plot(w8/pi,20*log10(abs(h8)));
xlabel("w normalized");
ylabel("|H| in decibels");
ylim([-450 0]);
title("Magnitude of Elliptical n=12");

figure();
subplot(2, 2, 1);
plot(w5, angle(h5));
title("Phase of Butterwoth n=12");
xlabel("w");
ylabel("Phase of H");

subplot(2, 2, 2);
plot(w6, angle(h6));
title("Phase of Chebyshev type1 n=12");
xlabel("w");
ylabel("Phase of H");

subplot(2, 2, 3);
plot(w7, angle(h7));
title("Phase of Chebyshev type2 n=12");
xlabel("w");
ylabel("Phase of H");

subplot(2, 2, 4);
plot(w8, angle(h8));
title("Phase of Elliptical n=12");
xlabel("w");
ylabel("Phase of H");

%------------------------
%Qd)
figure();
subplot(2,2, 1);
impz(a1, b1);
title("Impulse response of Butterworth");

subplot(2,2, 2);
impz(a2, b2);
title("Impulse response of Chebyshev1");


subplot(2,2, 3);
impz(a3, b3);
title("Impulse response of Chebyshev2");

subplot(2,2, 4);
impz(a4, b4);
title("Impulse response of Elliptical");
%-----------------------------------

%Qf)

fs=10000;
fc=2000;


f1=500;
f2=3000;

Ts=1/fs;
n=0:100;

xn=sin(2*pi*f1*n*Ts)+sin(2*pi*f2*n*Ts);

y1=filter(a1,b1,xn);
y2=filter(a2,b2,xn);
y3=filter(a3,b3,xn);
y4=filter(a4,b4,xn);
figure();
subplot(4, 2, 1);
plot(n, xn);
title("Given input");
xlabel("Samples");
ylabel("x[n]");

subplot(4, 2, 3);
plot(n, xn);
title("Given input");
xlabel("Samples");
ylabel("x[n]");

subplot(4, 2, 5);
plot(n, xn);
title("Given input");
xlabel("Samples");
ylabel("x[n]");

subplot(4, 2, 7);
plot(n, xn);
title("Given input");
xlabel("Samples");
ylabel("x[n]");


subplot(4, 2, 2);
plot(n, y1);
title("Butterworth filter");
xlabel("Samples");
ylabel("Filtered signal");


subplot(4, 2, 4);
plot(n, y2);
title("Chebyshev1 filter");
xlabel("Samples");
ylabel("Filtered signal");

subplot(4, 2, 6);
plot(n, y3);
title("Chebyshev2 filter");
xlabel("Samples");
ylabel("Filtered signal");

subplot(4, 2, 8);
plot(n, y4);
title("Elliptical filter");
xlabel("Samples");
ylabel("Filtered signal");
