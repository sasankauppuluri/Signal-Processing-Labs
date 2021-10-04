%A way to plot a step function is to use the heaviside function available
 
 x=-10:0.1:10
 y=heaviside(x-2);
 plot(x,y, 'r');
 axis([-11 11 -2 2]);
 title("The step function U(x-2) with increment 0.1")
 xlabel(' x(ranging from -10 to 10 with increment 0.1) ');
 ylabel(' U(x-2)');