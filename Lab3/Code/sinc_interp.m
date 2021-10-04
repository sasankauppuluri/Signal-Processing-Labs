function xr = sinc_interp(n,xn,Ts,t_fine)
    xr=zeros(1,length(t_fine));
    
    wc=pi/Ts;
    len=length(n);
    for k=1:length(t_fine)
        tp=0;
        for l=1:len
            
            expr=(Ts/pi)* xn(l) * sinc(wc*(t_fine(k) - n(l))) * wc;
            tp=tp + expr;
        end
        xr(k)=tp;
    end
end