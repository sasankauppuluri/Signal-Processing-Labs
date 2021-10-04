%part e) 


b=[1, -2];
a=[1, -0.5];

figure();
zplane(b, a);
title("Pole-zero plot for p=0.5");
n=1001;
figure();
freqz(b, a, n);
title("Magnitude response plot for p=0.5");
figure();
impz(b, a);
title("Impulse response plot for p=0.5");
