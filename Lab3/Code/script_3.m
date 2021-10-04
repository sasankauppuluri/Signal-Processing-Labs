t_fine=-10:0.001:10
xt=1-abs(t_fine);
Ts=0.1;
t_sample=-1:Ts:1;
xn=1-abs(t_sample);
stem(t_sample, xn);
%Note that the graph is not printed in the final output as we are plotting
%a different graph next.
%-----------------------

t_sample1=-1:0.5:1;
xn1=1-abs(t_sample1);
xr1=sinc_interp(t_sample1, xn1, 0.5, t_fine);
subplot(2, 2, 1);
plot(t_fine, xr1); 
hold on;
stem(t_sample1, xn1);
hold off;
title("Ts=0.5");
xlabel("t");
ylabel("xr(t)");


t_sample2=-1:0.2:1;
xn2=1-abs(t_sample2);
xr2=sinc_interp(t_sample2, xn2, 0.2, t_fine);
subplot(2, 2, 2);
plot(t_fine, xr2);
hold on;
stem(t_sample2, xn2);
hold off;
title("Ts=0.2");
xlabel("t");
ylabel("xr(t)");

t_sample3=-1:0.1:1;
xn3=1-abs(t_sample3);
xr3=sinc_interp(t_sample3, xn3, 0.1, t_fine);
subplot(2, 2, 3);
plot(t_fine, xr3);
hold on;
stem(t_sample3, xn3);
hold off;
title("Ts=0.1");
xlabel("t");
ylabel("xr(t)");


t_sample4=-1:0.05:1;
xn4=1-abs(t_sample4);
xr4=sinc_interp(t_sample4, xn4, 0.05, t_fine);
subplot(2, 2, 4);
plot(t_fine, xr4);
hold on;
stem(t_sample4, xn4);
hold off;

title("Ts=0.05");
xlabel("t");
ylabel("xr(t)");

