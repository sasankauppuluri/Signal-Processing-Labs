function B = LPF(A, F, wc, N)
B=zeros(1, 2*N+1);
for(var=1:2*N+1)
    if(F(var)<wc)
        B(var)=A(var);
    else
        B(var)=0;
       
    end
end
end

