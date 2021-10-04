N = 500;
n1 = 51;
n2 = 75;
n3 = 101;

wn1 = ones(n1, 1);
wn2 = ones(n2, 1);
wn3 = ones(n3, 1);

Wk1 = fft(wn1, N);
Wk2 = fft(wn2, N);
Wk3 = fft(wn3, N);

% shifting fft
Wks1 = fftshift(Wk1);
Wks2 = fftshift(Wk2);
Wks3 = fftshift(Wk3);


% Normalizing
Wkn1 = normalize(Wks1);
Wkn2 = normalize(Wks2);
Wkn3 = normalize(Wks3);
 
figure();
%w[n]..................
subplot(3,3,1);
plot(0:n1-1, wn1);
xlabel("N");
ylabel("wn1");
title("Rectangle");

subplot(3,3,4);
plot(0:n2-1, wn2);
xlabel("N");
ylabel("wn2");

subplot(3,3,7);
plot(0:n3-1, wn3);
xlabel("N");
ylabel("wn3");


%Maginitude plot for different N.......
subplot(3,3,2);
plot(0:N-1, mag2db(abs(Wkn1)));
ylim([-100 10]);
xlabel("N");
ylabel("Wkn1 (dB)");


subplot(3,3,5);
plot(0:N-1, mag2db(abs(Wkn2)));
ylim([-100 10]);
xlabel("N");
ylabel("Wkn2 (dB)");


subplot(3,3,8);
plot(0:N-1, mag2db(abs(Wkn3)));
ylim([-100 10]);
xlabel("N");
ylabel("Wkn3 (dB)");

%Phase plot....................
 
subplot(3,3,3);
plot(0:N-1, angle(Wkn1));
xlabel("N");
ylabel("Phase");
 
 
subplot(3,3,6);
plot(0:N-1, angle(Wkn2));
xlabel("N");
ylabel("Phase");
 
 
subplot(3,3,9);
plot(0:N-1, angle(Wkn3));
xlabel("N");
ylabel("Phase");
 
%-------------------------------------------------------
% "hann"

N = 500;
n1 = 51;
n2 = 75;
n3 = 101;

wn1 = hann(n1);
wn2 = hann(n2);
wn3 = hann(n3);

Wk1 = fft(wn1, N);
Wk2 = fft(wn2, N);
Wk3 = fft(wn3, N);

% shifting fft
Wks1 = fftshift(Wk1);
Wks2 = fftshift(Wk2);
Wks3 = fftshift(Wk3);


% Normalizing
Wkn1 = normalize(Wks1);
Wkn2 = normalize(Wks2);
Wkn3 = normalize(Wks3);

figure();
%w[n]..................
subplot(3,3,1);
plot(0:n1-1, wn1);
xlabel("N");
ylabel("wn1");
title("Hann");

subplot(3,3,4);
plot(0:n2-1, wn2);
xlabel("N");
ylabel("wn2");

subplot(3,3,7);
plot(0:n3-1, wn3);
xlabel("N");
ylabel("wn3");


%Maginitude plot for different N.......
subplot(3,3,2);
plot(0:N-1, mag2db(abs(Wkn1)));
ylim([-100 10]);
xlabel("N");
ylabel("Wkn1 (dB)");


subplot(3,3,5);
plot(0:N-1, mag2db(abs(Wkn2)));
ylim([-100 10]);
xlabel("N");
ylabel("Wkn2 (dB)");


subplot(3,3,8);
plot(0:N-1, mag2db(abs(Wkn3)));
ylim([-100 10]);
xlabel("N");
ylabel("Wkn3 (dB)");

%Phase plot....................
 
subplot(3,3,3);
plot(0:N-1, angle(Wkn1));
xlabel("N");
ylabel("Phase");
 
 
subplot(3,3,6);
plot(0:N-1, angle(Wkn2));
xlabel("N");
ylabel("Phase");
 
 
subplot(3,3,9);
plot(0:N-1, angle(Wkn3));
xlabel("N");
ylabel("Phase");
 
%--------------------------------------------------------
%Hamming window
N = 500;
n1 = 51;
n2 = 75;
n3 = 101;

wn1 = hamming(n1);
wn2 = hamming(n2);
wn3 = hamming(n3);

Wk1 = fft(wn1, N);
Wk2 = fft(wn2, N);
Wk3 = fft(wn3, N);

% shifting fft
Wks1 = fftshift(Wk1);
Wks2 = fftshift(Wk2);
Wks3 = fftshift(Wk3);


% Normalizing
Wkn1 = normalize(Wks1);
Wkn2 = normalize(Wks2);
Wkn3 = normalize(Wks3);



figure();
%w[n]..................
subplot(3,3,1);
plot(0:n1-1, wn1);
xlabel("N");
ylabel("wn1");
title("Hamming");

subplot(3,3,4);
plot(0:n2-1, wn2);
xlabel("N");
ylabel("wn2");

subplot(3,3,7);
plot(0:n3-1, wn3);
xlabel("N");
ylabel("wn3");


%Maginitude plot for different N.......
subplot(3,3,2);
plot(0:N-1, mag2db(abs(Wkn1)));
ylim([-100 10]);
xlabel("N");
ylabel("Wkn1 (dB)");


subplot(3,3,5);
plot(0:N-1, mag2db(abs(Wkn2)));
ylim([-100 10]);
xlabel("N");
ylabel("Wkn2 (dB)");


subplot(3,3,8);
plot(0:N-1, mag2db(abs(Wkn3)));
ylim([-100 10]);
xlabel("N");
ylabel("Wkn3 (dB)");

%Phase plot....................
 
subplot(3,3,3);
plot(0:N-1, angle(Wkn1));
xlabel("N");
ylabel("Phase");
 
 
subplot(3,3,6);
plot(0:N-1, angle(Wkn2));
xlabel("N");
ylabel("Phase");
 
 
subplot(3,3,9);
plot(0:N-1, angle(Wkn3));
xlabel("N");
ylabel("Phase");
 
%----------------------------------------

%Blackman Window

wn1 = blackman(n1);
wn2 = blackman(n2);
wn3 = blackman(n3);

Wk1 = fft(wn1, N);
Wk2 = fft(wn2, N);
Wk3 = fft(wn3, N);

% shifting fft
Wks1 = fftshift(Wk1);
Wks2 = fftshift(Wk2);
Wks3 = fftshift(Wk3);


% Normalizing
Wkn1 = normalize(Wks1);
Wkn2 = normalize(Wks2);
Wkn3 = normalize(Wks3);



figure();
%w[n]..................
subplot(3,3,1);
plot(0:n1-1, wn1);
xlabel("N");
ylabel("wn1");
title("Blackman");

subplot(3,3,4);
plot(0:n2-1, wn2);
xlabel("N");
ylabel("wn2");

subplot(3,3,7);
plot(0:n3-1, wn3);
xlabel("N");
ylabel("wn3");


%Maginitude plot for different N.......
subplot(3,3,2);
plot(0:N-1, mag2db(abs(Wkn1)));
ylim([-100 10]);
xlabel("N");
ylabel("Wkn1 (dB)");


subplot(3,3,5);
plot(0:N-1, mag2db(abs(Wkn2)));
ylim([-100 10]);
xlabel("N");
ylabel("Wkn2 (dB)");


subplot(3,3,8);
plot(0:N-1, mag2db(abs(Wkn3)));
ylim([-100 10]);
xlabel("N");
ylabel("Wkn3 (dB)");

%Phase plot....................
 
subplot(3,3,3);
plot(0:N-1, angle(Wkn1));
xlabel("N");
ylabel("Phase");
 
 
subplot(3,3,6);
plot(0:N-1, angle(Wkn2));
xlabel("N");
ylabel("Phase");
 
 
subplot(3,3,9);
plot(0:N-1, angle(Wkn3));
xlabel("N");
ylabel("Phase");

%------------------------------------------------
%Bartlett


wn1 = bartlett(n1);
wn2 = bartlett(n2);
wn3 = bartlett(n3);

Wk1 = fft(wn1, N);
Wk2 = fft(wn2, N);
Wk3 = fft(wn3, N);

% shifting fft
Wks1 = fftshift(Wk1);
Wks2 = fftshift(Wk2);
Wks3 = fftshift(Wk3);


% Normalizing
Wkn1 = normalize(Wks1);
Wkn2 = normalize(Wks2);
Wkn3 = normalize(Wks3);



figure();
%w[n]..................
subplot(3,3,1);
plot(0:n1-1, wn1);
xlabel("N");
ylabel("wn1");
title("Bartlett");

subplot(3,3,4);
plot(0:n2-1, wn2);
xlabel("N");
ylabel("wn2");

subplot(3,3,7);
plot(0:n3-1, wn3);
xlabel("N");
ylabel("wn3");


%Maginitude plot for different N.......
subplot(3,3,2);
plot(0:N-1, mag2db(abs(Wkn1)));
ylim([-100 10]);
xlabel("N");
ylabel("Wkn1 (dB)");


subplot(3,3,5);
plot(0:N-1, mag2db(abs(Wkn2)));
ylim([-100 10]);
xlabel("N");
ylabel("Wkn2 (dB)");


subplot(3,3,8);
plot(0:N-1, mag2db(abs(Wkn3)));
ylim([-100 10]);
xlabel("N");
ylabel("Wkn3 (dB)");

%Phase plot....................
 
subplot(3,3,3);
plot(0:N-1, angle(Wkn1));
xlabel("N");
ylabel("Phase");
 
 
subplot(3,3,6);
plot(0:N-1, angle(Wkn2));
xlabel("N");
ylabel("Phase");
 
 
subplot(3,3,9);
plot(0:N-1, angle(Wkn3));
xlabel("N");
ylabel("Phase");
 

