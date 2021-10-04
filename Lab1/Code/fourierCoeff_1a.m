function [ak] = fourierCoeff_1a(N, T, t, xt, a, b)
ak = zeros(1,2*N+1); 
w0 = 2*pi/T; 
for k = -N:1:N
ak(1,1+k+N) = 1/T * int(xt * exp(-i*k*w0*t), t, a, b);
end
disp(ak);
end