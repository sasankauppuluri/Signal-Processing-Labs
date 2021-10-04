function xt=SumOfSines(A, F, P, td, Fs)

t=0:1/Fs : td;

N=length(A);
xt=0;

for(k=1:N)

xt=xt+(A(k)*sin((2*pi*F(k)*t)+P(k)));

end


end