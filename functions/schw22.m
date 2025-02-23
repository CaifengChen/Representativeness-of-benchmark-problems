function y = schw22(x)
% 
% schwefel 22 function 
% The number of variables n = 2.
% 
a = abs(x(1)) + abs(x(2));
b = abs(x(1)) * abs(x(2));
y = a+b;

end