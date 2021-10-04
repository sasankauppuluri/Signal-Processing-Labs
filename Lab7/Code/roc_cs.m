function [N, ROC, C, S] = roc_cs(p)
    plength = length(p);
    pa = zeros(1, plength);
    for i1 = 1:plength
       ele = p(i1);
       pa(i1) = abs(ele);
    end
    Z = sort(pa);
    pf = zeros(1, plength);
    pf(1) = Z(1);
    c = 1;
    for i2 = 2:plength
        if(Z(i2) ~= Z(i2 -1))
           c=c+1;
           pf(c) = Z(i2);
        end
    end
    N = c + 1;
    if(pf(1) == 0)
       N = N - 1; 
       ROC = zeros(N, 2);
       for i5 = 1:N
          ROC(i5, 1) = pf(i5);
          if(i5 == N)
             ROC(i5, 2) = Inf;
          else
             ROC(i5, 2) = pf(i5 + 1);
          end
       end
    else
        ROC = zeros(N, 2);
        ROC(1,1) = 0;
        ROC(1,2) = pf(1);
        for i3 = 2:N
            ROC(i3, 1) = pf(i3 - 1);
            if(i3 == N)
                ROC(i3, 2) = Inf;
            else
                ROC(i3, 2) = pf(i3);
            end
        end
    end
    C = zeros(length(N), 1);
    S = zeros(length(N), 1);
    for i4 = 1:N
       if(ROC(i4,2) == Inf)
          C(i4, 1) = 1; 
       end
       if((ROC(i4, 1) < 1) && (ROC(i4, 2) > 1))
          S(i4, 1) = 1; 
       else
          S(i4, 1) = 0; 
       end
    end
    
end