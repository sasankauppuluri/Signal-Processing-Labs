 function xt = harmonics(A, f0, P, td, Fs)
 N=length(A);
 for(k=1:N)
     F(k)=k*f0;
 end
 xt=SumOfSines(A, F, P, td, Fs);
%t=0:1/Fs:td;
% plot(t, xt);
 end
