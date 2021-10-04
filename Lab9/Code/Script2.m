% a)b)

N=51;
M=(N-1)/2;
x=[0:N-1];
Hd=sinc((x-M)/6)/6;
w=ones(N,1);
h=Hd.*w';
h=h';
h(abs(h)< exp(-10))=0;
figure();
subplot (3,1,1) , stem(-25:25,h);title("Rectangular Window");

N=500;
Hw=fft(h,N);
Hw=fftshift(Hw);
xlabel("time");ylabel("h[n]");
subplot (3,1,2) , plot(-pi:2*pi/N:pi-(2*pi/N),20*log10(abs(normalize(Hw))));
ylim([-100,0]);xlabel("w");ylabel("magnitude");
subplot (3,1,3) , plot(-pi:2*pi/N:pi-(2*pi/N),angle(Hw));
xlabel("w");ylabel("phase");
h1=h;


%-----------------------
%c)d)
N=51;
M=(N-1)/2;
x=[0:N-1];
Hd=sinc((x-M)/6)/6;
w=ones(N,1);
h=Hd.*blackman(N)';
h=h';
h(abs(h)< exp(-10))=0;
figure()
subplot (3,1,1) , stem(-25:25,h);title("Using Blackman window")

Hw = fft(h,500);
N=500;
Hw = fftshift(Hw);
xlabel("time");ylabel("h[n]");
subplot (3,1,2) , plot(-pi:2*pi/N:pi-(2*pi/N),20*log10(abs(normalize(Hw))));
ylim([-100,0]);xlabel("w");ylabel("magnitude");
subplot (3,1,3) , plot(-pi:2*pi/N:pi-(2*pi/N),angle(Hw));
xlabel("w");ylabel("phase");
h2=h;
%-------------------------

N=201;
n=[0:N-1];
x=cos(pi*n/16) + sin(pi*n/2)/4;
M=(N-1)/2;
Hd=sinc((n-M)/6)/6;
w=ones(N,1);
h=Hd.*w';
h=h';
y=conv(x,h);
figure()
subplot(2,1,1) , plot(n,x);ylim([-1.5,1.5]);title("Given signal");ylim([-1.5,1.5])
subplot(2,1,2) , plot(0:length(y)-1,y);ylim([-1.5,1.5]);title(" The Signal with rectangular filter window");ylim([-1.5,1.5]);

%----------------------
n=(0:N-1);
M=(N-1)/2;
Hd=sinc((n-M)/6)/6;
w=ones(N,1);
h=Hd.*blackman(N)';
y=conv(x,h');
figure()
subplot(2,1,1) , plot(n,x);ylim([-1.5,1.5]);title("Given signal");ylim([-1.5,1.5]);
subplot(2,1,2) , plot(0:length(y)-1,y);ylim([-1.5,1.5]);title("The signal with blackman filter window");
%---------------------
N=201;
n=[0:N-1];
z=randn(1,201);
x=cos(pi*n/16) + z/4;
M=(N-1)/2;
Hd=sinc((n-M)/6)/6;
w=ones(N,1);
h=Hd.*w';
h=h';
y=conv(x,h);
figure()
subplot(2,1,1) , plot(n,x);ylim([-1.5,1.5]);title("Given signal");ylim([-1.5,1.5])
subplot(2,1,2) , plot(0:length(y)-1,y);ylim([-1.5,1.5]);title("The signal with rectangular filter window");ylim([-1.5,1.5]);
%--------------
n=(0:N-1);
M=(N-1)/2;
Hd=sinc((n-M)/6)/6;
w=ones(N,1);
h=Hd.*blackman(N)';
y=conv(x,h');
figure()
subplot(2,1,1) , plot(n,x);ylim([-1.5,1.5]);title("Given signal");ylim([-1.5,1.5]);
subplot(2,1,2) , plot(0:length(y)-1,y);ylim([-1.5,1.5]);title("Given signal with blackman filter window");
%----------------
%f)
N=51;
M=(N-1)/2;
x=[0:N-1];
Hd=zeros(1,N);
for i=x
Hd(i+1)=(-1)^(i)*sinc(pi*(i-M)/6)/6;
end
w=ones(N,1);
h=Hd.*w';
h=h';
h(abs(h)< exp(-10))=0;
figure()
subplot (3,1,1) , stem(0:50,h);title("New Rectangular Window");
N=500;
Hw = fft(h,N);
Hw = fftshift(Hw);
xlabel("time");ylabel("h[n]");
subplot (3,1,2) , plot(-pi:2*pi/N:pi-(2*pi/N),20*log10(abs(normalize(Hw))));
ylim([-100,0]);xlabel("w");ylabel("magnitude");
subplot (3,1,3) , plot(-pi:2*pi/N:pi-(2*pi/N),angle(Hw));
xlabel("w");ylabel("phase");
