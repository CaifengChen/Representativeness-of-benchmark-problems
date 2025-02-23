function y = price3(x)
% 
% price 3 function 
% The number of variables n = 2.
% 
a = x(2)-x(1)^2;
b = x(2)-0.5;
c = 6.4*b^2 - x(1) - 0.6;

y =100*a^2 + c^2;
end