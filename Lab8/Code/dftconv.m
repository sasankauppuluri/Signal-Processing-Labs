function [c1, c2] = dftconv(x1, x2)

if(length(x1)==length(x2))
    X1k=fft(x1);
    X2k=fft(x2);
   
else
    len=max(length(x1), length(x2));
    X1k=fft(x1, len);
    X2k=fft(x2, len);
    
end
 X3k=X1k.*X2k;
 c1=ifft(X3k);

X1k=fft(x1, length(x1)+length(x2)-1);
X2k=fft(x2, length(x1)+length(x2)-1);
X3k=X1k.*X2k;
c2=ifft(X3k);


end