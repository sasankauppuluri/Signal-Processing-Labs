N=5;
f0=50;
td=1;
Fs=10000;
for(k=1:N)
A(k)=1/k;
P(k)=0;
end
xt=harmonics(A, f0, P, td, Fs);
t=0:1/Fs:td;
subplot(3, 1, 1);
plot(t, xt);
title("N=5 Ak=1/k F0=50");
%soundsc(xt, Fs);

[t_env,env]=envelope(0.2,0.2,0.7,0.4,0.2,Fs)
subplot(3, 1, 2);
plot(t_env, env);
title("Envelope");

subplot(3, 1, 3);
plot(t_env, xt.*env);
soundsc(xt.*env, Fs);
title("xt.*env");
% We can vary the values and find the plots
