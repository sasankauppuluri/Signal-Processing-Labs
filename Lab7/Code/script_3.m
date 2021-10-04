r=0.1;
theta=pi/4;
b=[1, -2*cos(theta), 1];
a=[1, -2*r*cos(theta), r*r];
figure();
zplane(b, a);
title("Pole-zero plot for r=0.1, theta=pi/4");

r=0.5;
theta=pi/6;
b=[1, -2*cos(theta), 1];
a=[1, -2*r*cos(theta), r*r];
figure();
zplane(b, a);
title("Pole-zero plot for r=0.5, theta=pi/6");

%------------------------

r=0.95;
for(k=0:4)
    
theta=k*pi/4;
b=[1, -2*cos(theta), 1];
a=[1, -2*r*cos(theta), r*r];
figure();
freqz(b, a, 1001);
title("Magnitude response plot for r=0.95 and variable theta");
end

%----------------------
theta=pi/3;
r=0.3;
for(k=1:5)
    r=r +0.1;

b=[1, -2*cos(theta), 1];
a=[1, -2*r*cos(theta), r*r];
figure();
freqz(b, a, 1001);
axis([0, 1, -60, 20]);
title("Magnitude response plot for variable r and theta=pi/3");
end
