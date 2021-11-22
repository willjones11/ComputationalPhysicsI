%{
Computational Physics I
William Jones
Assignment 3.2
Finding best fit model for a set of data 
%}

%Data Points 
t = 0:0.5:5.5;
gamma = [1.000 0.994 0.990 0.85 0.979 0.577 0.972 0.969 0.967 0.960 0.956 0.952];
%Data Fitting 
func = polyfit(t, log(gamma), 1);
%find the constants
a = exp(func(2));
b = - func(1);
hl = log(2)/b;
fprintf("The a coefficent is %f and the b coefficent is %f\n", a, b);
fprintf("The half life %f years", hl);
