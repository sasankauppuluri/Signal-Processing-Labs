function B= NonIdeal(A,F,G,a, N)
B=zeros(1, 2*N+1);
for(var=1:2*N+1)
    B(var)=G*A(var)/(a+i*F(var));


end

end