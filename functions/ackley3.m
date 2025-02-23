function y = ackley3(x)
% 
% Ackley 3 function.
% The default value of n =2.
%
n = 2;
a = -200;
b = -0.02;

y = a*exp(b*sqrt(x(1)^2+x(2)^2))+5*exp(cos(3*x(1))+sin(3*x(2)));
end