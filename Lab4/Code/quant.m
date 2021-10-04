function y = quant(x, L, a, b)

y=zeros(1, length(x));

n=1:L;
ind = a+(b-a)*(2*n-1)/(2*L);

for p=1:length(x)
    m=b-a;c=1;
    for q=1:length(ind)
        if abs(x(p)-ind(q))<m
        c=q;
        m=abs(x(p)-ind(q));  
        end
    end
y(p)=ind(c);
end
end
