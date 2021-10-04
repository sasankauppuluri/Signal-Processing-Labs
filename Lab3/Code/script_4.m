t_fine=0:0.001:2;
xt=sin(5*pi*t_fine);


t_sample1=0:0.1:2;
xn=sin(5*pi*t_sample1);

xr=sinc_interp(t_sample1,xn,0.1,t_fine);
subplot(2,2,1);
plot(t_fine,xr);
title("T=0.1");
xlabel("t");
ylabel("xr(t)");
hold on;

stem(t_sample1,xn);
hold off;

t_sample2=0:0.2:2;
xn=sin(5*pi*t_sample2);

xr=sinc_interp(t_sample2,xn,0.2,t_fine);

subplot(2,2,2);
plot(t_fine,xr);
title("T=0.2");
xlabel("t");
ylabel("xr(t)");
hold on;
stem(t_sample2,xn);
hold off;


t_sample3=0:0.3:2;
xn=sin(5*pi*t_sample3);


xr=sinc_interp(t_sample3,xn,0.3,t_fine);

subplot(2,2,3);
plot(t_fine,xr);
title("T=0.3");
xlabel("t");
ylabel("xr(t)");
hold on;
stem(t_sample3,xn);
hold off;


t_sample4=0:0.4:2;
xn=sin(5*pi*t_sample4);

xr=sinc_interp(t_sample4,xn,0.4,t_fine);

subplot(2,2,4);
plot(t_fine,xr);
title("T=0.4");
xlabel("t");
ylabel("xr(t)");
hold on;
stem(t_sample4,xn);
hold off;