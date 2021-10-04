Fs=5000
t=0:1/Fs:1
xn=sin(20*pi*t);
figure(1);
subplot(3, 1, 1);
plot(t, xn);
xlabel('time');
ylabel('x[n]');
title('Sampled signal');

xqn=quant(xn, 8, -1, 1);
subplot(3, 1, 2);
plot(t, xqn);

xlabel('time');
ylabel('xq[n]');
title('Quantized signal with 8 levels');
%--------------------


for(n=1:8)
A=quant(xn, 2^n , -1, 1);
%plot(t, A);
end

subplot(3, 1, 3);
plot(t, xn-xqn);
xlabel('time');
ylabel('E[n]=X[n]-Xq[n]');
title('Quantization Error');
%----------------------------------
mae=zeros(1, 8);
for(n=1:8)
   
    A=quant(xn, 2^n, -1, 1);
    
   [maxdiff, index]=max(abs(A-xn));
    mae(n)=maxdiff;
end
n=1:8
figure(2);
plot(n, mae);
xlabel('n');
ylabel('maxabsoluteError');
title('MaxError for n=1 to 8');
%--------------------

sqnrnum=zeros(1, 8);
sqnrden=zeros(1, 8);
sqnr=zeros(1, 8);
for(m=1:8)
    x=quant(xn, 2^m, -1, 1);
   
    for(t=1:5001)
    sqnrnum(m)=sqnrnum(m)+(xn(t).*xn(t));
    sqnrden(m)=sqnrden(m)+((xn(t)-x(t)).*(xn(t)-x(t)))
    end
    sqnr(m)=sqnrnum(m)/sqnrden(m);
end

figure(3);
plot(n, sqnr);
xlabel('n=number of bits');
ylabel('sqnr');
title('Signal to Quantization Noise Ratio ');