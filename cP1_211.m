%{
Computational Physics I
William Jones
Comparing different interpolation methods
%}
opengl software 
x = [-4 -3 -2 -1 0 1 2 3 4 5];
y = [ 0 0 0 1 1 1 0 0 0];
ls = linspace(-5, 5);
%linear interpolation 
p1 = interpl(x, y, ls, 'linear');
%spline interpolation 
p2 = interp1(x, y, ls, 'spline');
plot(x, y, ls, pl, 'r');
hold on 
plot(x, y, '*', ls, p2, 'b');
xlabel('x')
ylabel('y')
title('Assignment 2.1')
legend('linear', 'spline')
