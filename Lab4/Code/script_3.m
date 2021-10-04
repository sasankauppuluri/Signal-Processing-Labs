[y,Fs] = audioread('sp.wav');
b=quant(y, 8, -1, 1);
sound(b, Fs);

for(l=1:8)
b=quant(y, 2^l, -1, 1);
sound(b, Fs);
pause(2.0);
end