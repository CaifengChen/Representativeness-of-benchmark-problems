function y = price4(x)
% 
% price 4 function 
% The number of variables n = 2.
% 

a =2*x(1)^3 * x(2) - x(2)^3;
b = 6*x(1) - x(2)^2 + x(2);

y = a^2 + b^2;
end