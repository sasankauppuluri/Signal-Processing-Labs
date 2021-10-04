N=10;
x1=rand(1, N);
x2=rand(1, N);

directc1=cconv(x1, x2, N);
directc2=conv(x1, x2);


[c1, c2]=dftconv(x1, x2);

subplot(2, 2, 1)
plot(directc1);
title("Circular convolution using cconv");
xlabel("n");
ylabel("x1circular*x2");

subplot(2, 2, 2)
plot(directc2);
title("Linear convolution using conv");
xlabel("n");
ylabel("x1*x2");

subplot(2, 2, 3)
plot(c1);
title("Circular convolution using dftconv");
xlabel("n");
ylabel("x1circular*x2");

subplot(2, 2, 4)
plot(c2);
title("Linear convolution using dftconv");
xlabel("n");
ylabel("x1*x2");
