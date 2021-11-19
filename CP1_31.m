%{
Computational Physics I
William Jones 
Assignment 3.1 
Determining what is the best fit for the data 
%}
tData = [ 0 21.1 37.8 54.4 71.1 87.8 100];
uData = [ 1.79 1.13 0.696 0.519 0.338 0.321 0.296];

temp = [10 30 60 90];
func = polyfit(tData, uData, 3);
for i = 1:length(temp)
    eval = polyval(func, temp(i));
    fprintf('At T = %d, the viscosity is %f\n' ,temp(i), eval);
end
for i = 1:length(tData)
    eval = polyval(func, tData(i));
    err = abs((tData(i) - eval) / tData(i));
    fprintf('At T = %d, the relative error is %f\n', tData(i), err);
end


