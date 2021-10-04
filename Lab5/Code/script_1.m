A=[0.5, 0.5];
F=[350, 440];
P=[0, 0];
Fs=10000;
td=4;
t=0:1/Fs : td;

xt=SumOfSines(A, F, P,td, Fs);
subplot(3, 1, 1);
plot(t, xt);
axis([0, 0.05, -1, 1]);
title("X1[n]");
%sound(xt, Fs);
%---------------

F=[480, 600];
td=0.5;
b1=SumOfSines(A, F, P,td, Fs);
t=0:1/Fs : td;
subplot(3, 1, 2);
plot(t, b1);
axis([0, 0.05, -1, 1]);
title("b1");
%sound(b1, Fs);

A=[0, 0];
td=0.5;
z1=SumOfSines(A, F, P,td, Fs);
%sound(z1, Fs);

x2=[b1, z1, b1, z1, b1, z1, b1, z1];
%sound(x2, Fs);

%---------------
A=[0.5, 0.5];
F=[440, 480];
td=2;
b2=SumOfSines(A, F, P,td, Fs);
t=0:1/Fs : td;
subplot(3, 1, 3);
plot(t, b2);
axis([0, 0.05, -1, 1]);
title("b2");

%sound(b2, Fs);
A=[0, 0];
z2=SumOfSines(A, F, P,td, Fs);
x3=[b2, z2, b2, z2, b2, z2, b2, z2];
%sound(x3, Fs);
