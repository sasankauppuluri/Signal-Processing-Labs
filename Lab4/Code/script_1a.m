[y, Fs]=audioread('sp.wav');
disp(Fs);
disp(length(y));
%Length=rate*time

disp('The time of the audio is');
disp(length(y)/Fs);

%Bit rate=Number of bits * Sampling frequency
%For the given audio we saw that the bit rate is 128kbps
disp('The number of bits required by ADC is');
B=128000/Fs;
disp(B);

disp('The number of levels of quantization that for B bits is 2^B') 
disp(2^B);
%sound(y, Fs);
%sound(y, 0.8*Fs);
 sound(y, 1.3*Fs);