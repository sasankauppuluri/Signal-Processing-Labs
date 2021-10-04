%Qa)
w0=pi/4;
b0=1/(2-2*cos(w0));
b=[b0 -2*b0*cos(w0) b0];
a=[1];
figure();
freqz(b, a, 2001, 'whole');

%--------------
%Qb)
r0=0.99;
b0=(1-2*r0*cos(w0)+r0*r0)/(2-2*cos(w0));
b1=[b0 -2*b0*cos(w0) b0];
a1=[1 -2*r0*cos(w0) r0*r0];
figure();
freqz(b1, a1, 2001, 'whole');

%------------------
%Qc)
% for(r0=0.99:0.002:0.998)
% 
% b0=(1-2*r0*cos(w0)+r0*r0)/(2-2*cos(w0));
% b2=[b0 -2*b0*cos(w0) b0];
% a2=[1 -2*r0*cos(w0) r0*r0];
% figure();
% freqz(b2, a2, 2001, 'whole');
% 
% end

%----------------------
fvtool(b, a);
fvtool(b1, a1);
%------------------

a=load('handel');
N=length(a.y);
fs=8192;
%sound(a.y, fs);
t=0:1/fs:N/fs-1/fs;
f0=1024;
z=(a.y)'+sin(2*pi*f0*t);
%sound(z, fs);
 w0=pi/4;
 b0=1/(2-2*cos(w0));
 b=[b0 -2*b0*cos(w0) b0];
 a=[1];
 y1=filter(b,a,z);
%sound(y1, fs);
y2=filter(b1,a1,z);
sound(y2, fs);

t=t(1:100);
z=z(1:100);
y1=y1(1:100);
y2=y2(1:100);

subplot(2,2,1);
plot(t,z);
title("Given signal z for fir");

subplot(2,2,2);
plot(t,z);
title("Given signal z for iir");

subplot(2,2,3);
plot(t,y1);
title("Output after filtering for fir");


subplot(2,2,4);
plot(t,y2);
title("Output after filtering for iir");
