function y = exponential(x)
% 
% Expinential function 
% The number of variables n = 2.
% 
a = x(1)^2 + x(2)^2;
y = -exp(-0.5*a);
end