function y = price1(x)
% 
% price 1 function 
% The number of variables n = 2.
% 
a = abs(x(1)) - 5;
b = abs(x(2)) - 5;

y = a^2 + b^2;
end