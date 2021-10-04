b=[1];
a=[1, -0.5, 0.2, -0.1, 0.007, 0.14, 0.15];
figure();
freqz(b, a, 'whole');
title("Magnitude response of the given function");

figure();
zplane(b, a);
title("Pole-zero plot of the given function");
