%Compuational Physics I
%Assignment 4.1
%William Jones 
%Using root finding methods for the root of a
%Saturn V rocket trajectory
u = 2513;
mo = 2.61e+6;
m = 11.3e+3;
g = 9.81;
%the Saturn Rocket trajectory equation
v = @(t) u * log(mo ./ (mo - m* t)) - g*t;
%equation set up for Secant root finding 
f =@(t) 335 -( u *log(mo ./ (mo - m *t)) - g*t);
errtol = 0.000001;%error tolerance
%%%%%%%%%    NEWTOWN RAPHSON METHOD    %%%%%%%%%%
s = 0; %Starting point
vi = 0; %approximate value of velocity 
vf = 335; %desired value needed
err = abs((vf -vi)/vf); %error formula 
%Newtown Raphson method
while err > errtol
        s = s + 0.1;
        %the flight equation 
        vi = v(s);
        err = abs((vf -vi)/vf); %error formula    
end
fprint('It takes t = %f seconds to reach a velocity of v = %f m/s \n', t, vi);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%     SECANT METHOD    %%%%%%%%%%%%%%%%%%%%%
%points 
a = 1;
b = 100;
%maximum number of iterations
N = 100; 
i =1;
%values for the function 
q0 = f(a);
q1 = f(b);
%Secant method
while i <=N
    p = b - (q1*((b -a)/(q1 - q0))); %Secant Formula
    %Stopping Criteria
    if abs(p-b) < errtol
        fprintf('At t = %f seconds the velocity is v = %f m/s', p, v(p));
        return 
    end 
    %New Parameters
    i = i + 1;
    a = b;
    b = p;
    q0 = q1;
    q1 = x(p);
end

    
