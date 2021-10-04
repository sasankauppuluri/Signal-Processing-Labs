
Ts=0.1;
t_fine=0:0.001:2;
t_sample=0:Ts:2;
xn=sin(5*pi*t_sample)+cos(10*pi*t_sample);
xt=sin(5*pi*t_fine)+cos(10*pi*t_fine);
subplot(2, 2, 1);
plot(t_fine, xt);
title("Original function");
xlabel("time");
ylabel("x(t)");

v1=interp1(t_sample, xn, t_fine, 'previous'); %Method 'next' also gives same plot
subplot(2,2,2);
plot(t_sample, xn, 'o', t_fine, v1, ':.');
title("Zero Hold");
xlabel("time");
ylabel("xr(t)");


v2=interp1(t_sample, xn, t_fine, 'linear');
subplot(2,2,3);
plot(t_sample, xn, 'o', t_fine, v2, ':.');
title("Linear interpolation");
xlabel("time");
ylabel("xr(t)");


xr=sinc_interp(t_sample,xn,Ts,t_fine);
subplot(2,2,4);
plot(t_fine,xr);
title("Sinc interpolation");
xlabel("time");
ylabel("xr(t)");

t2=0.5:0.001:1.5;
len2=length(t2);

max1=-1;
max2=-1;
max3=-1;
for a=501:501+len2

   if(abs(xt(a)-vq1(a))>max1)
    max1=abs(xt(a)-vq1(a));
    end

    if(abs(xt(a)-vq2(a))>max2)
    max2=abs(xt(a)-vq2(a));
    end
    
    if(abs(xt(a)-xr(a))>max3)
    max3=abs(xt(a)-xr(a));
    end

end
disp(max1);
disp(max2);
disp(max3);