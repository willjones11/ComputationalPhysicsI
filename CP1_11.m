%{
Assignment 1.1 
William Jones
Comparing the truncated Taylor series to the intrinsic cosine 
%}
opengl software 
xlabel('x');
ylabel('Amplitude');
x = -1:0.1:1;
y1 = linspace(1,1, length(x));
y2 = 1 - x.^2 /2;
y3 = linspace(0, 0, length(x));
for n = 0:9
    y3 = y3 + (-1)^n*x.^(2*n)/factorial(2*n);
end 
plot(x, y1, x, y2, x, y3, x, cos(x));
legend('Leading Order', 'Fouth Order', 'First 10 Terms', 'Cos (x)');
title('Assignment 1.1');
