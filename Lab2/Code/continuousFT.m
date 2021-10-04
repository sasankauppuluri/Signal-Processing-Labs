function X=continuousFT(xt, t, a, b, w)

X=int(xt*exp(-i*w*t), t, a, b);


end