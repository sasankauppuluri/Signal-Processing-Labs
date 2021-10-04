%Note that we plotted only from 0 to pi in freqz()
% To plot from 0 to 2pi, we can use freqz(b, a, 'whole');

b=[1];
a=[1, 0.8];
figure();
zplane(b, a);
title("Pole-zero plot for p=0.8");

%------------------------
n=1001;
figure();
freqz(b, a, n);
title("Magnitude response plot for p=0.8");
%----------------------------

figure();
impz(b, a);
title("Impulse response plot for p=0.8");

%-------------------------
%Part d) -0.8

b=[1];
a=[1, -0.8];

figure();
zplane(b, a);
title("Pole-zero plot for p=-0.8");

n=1001;
figure();
freqz(b, a, n);
title("Magnitude response plot for p=-0.8");

figure();
impz(b, a);
title("Impulse response plot for p=-0.8");


%part d) 0.1

b=[1];
a=[1, 0.1];

figure();
zplane(b, a);
title("Pole-zero plot for p=0.1");

n=1001;
figure();
freqz(b, a, n);
title("Magnitude response plot for p=0.1");

figure();
impz(b, a);
title("Impulse response plot for p=0.1");


%-------------------------



