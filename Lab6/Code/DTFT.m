 function X = DTFT(x,N0,w) 
 X=0;
 for(k=1:size(N0))
 X=X+x(k)*exp(-i*N0(k)*w);
 
 end
 
 end