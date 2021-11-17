%{
Assignment 2.1 
William Jones
Using the spline function to do data interpolation of given data set
%}
x1 = [-1.5, -1.0 -0.5 0.0];
y1 = [-3.375 -1.0 -0.125 0.0];
x2 = [-1.5 -1.0 -0.5 0.0 1.0 2.0 3.0 4.0 4.1 4.2 4.5];
y2 = [-3.375 -1.0 -0.125 0.0 0.0 0.0 0.0 0.0 1.0 3.0 10.0];
figure(1)
xx1 = linspace(2, 0);
si1 = spline(x1, [-4 y1 0]);
plot(x1, y1, 'o', xx1, ppval(si1, xx1), '-');
xlabel('V');
ylabel('I');
title('Assignment 2.1 A');


figure(2)
xx2 = linspace(-2, 5);
si2 = spline(x2, [-4 y2 10]);
plot(x2, y2, 'o', xx2, ppval(si2, xx2), '-');
xlabel('V');
ylabel('I');
title('Assignment 2.1 B');
