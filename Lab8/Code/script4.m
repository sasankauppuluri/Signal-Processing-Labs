

% **IMPORTANT: BEFORE RUNNING THE CODE CLEAR THE COMMAND WINDOW EVERY TIME 
%              AS SAME VARIABLES ARE USED REPEATEDLY    ** 


N = 1000:1000:8000 ;

tfft = zeros(numel(N)) ;
tdirectdft = zeros(numel(N)) ;

for k = 1:numel(N)
 
        k;
        x=rand(1,N(k))' ;
        tic ;
        X = fft(x) ;
        tfft(k) = toc ;
        
        tic ;
        X = directdft(x) ;
        tdirectdft(k) = toc ;
    
end

figure ;
subplot(2,1,1) ;
plot(N, tfft) ;
title("fft time complexity") ;
xlabel("N");
ylabel("t");

subplot(2,1,2) ;
plot(N,tdirectdft) ;
title("directdft time complexity") ;
xlabel("N");
ylabel("t");
