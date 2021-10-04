T=2*pi;
t=-2*T:0.1:2*T;
N=input("enter N");
A=zeros(1, 2*N+1);
A(1, N-2)=0.5;
A(1, N-1)=i/2;
A(1, N+3)=-0.5*i;
A(1, N+4)=0.5;

F=zeros(1,2*N+1);
F(1, N-2)=-3;
F(1, N-1)=-2;
F(1, N+3)=2;
F(1, N+4)=3;

plot(t, sin(2*t)+cos(3*t));

Y=partialfouriersum(A, T, t, N);

subplot(2, 2, 1);
plot(t, real(Y));
xlabel("t");
ylabel("x(t)");




wc=2.5;
B=LPF(A, F, wc, N);
%disp(B);

Y=partialfouriersum(B, T, t, N);

subplot(2, 2, 2);
plot(t, real(Y));
xlabel("t");
ylabel("LPF x(t)");

B=HPF(A, F, wc, N);

disp(B);
Y=partialfouriersum(B, T, t, N);

subplot(2, 2, 3);
plot(t, (Y));
xlabel("t");
ylabel("HPF x(t)");


B=NonIdeal(A, F, 1, 1, N);

Y=partialfouriersum(B, T, t, N);

subplot(2, 2, 4);
plot(t, real(Y));
xlabel("t");
ylabel("NonIdeal x(t)");