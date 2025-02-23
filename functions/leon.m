function y = leon(x)
% 
% Leon function 
% The number of variables n = 2.
% 
a = x(2) - x(1)^2;
b = 1 - x(1);

y = 100*a^2 + b^2;
end