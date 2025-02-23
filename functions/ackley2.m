function y = ackley2(x)
% 
% Ackley 2 function.
% The default value of n =2.
%
n = 2;
a = -200;
b = -0.02;

y = a*exp(b*sqrt(x(1)^2+x(2)^2));

end