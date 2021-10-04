t_fine=0:0.001:2;
xt=sin(5*pi*t_fine)+cos(10*pi*t_fine);
subplot(2, 1, 1);
plot(t_fine, xt);
title("Plot of x(t)")
xlabel("t_fine");
ylabel("x(t)");


Ts=0.1;
t_sample=0:Ts:2;
xt=sin(5*pi*t_sample)+cos(10*pi*t_sample);
subplot(2,1,2); 
stem(t_sample, xt);
title("Plot of x[n](defined as x(nTs))")

xlabel("t");
ylabel("x[n]");