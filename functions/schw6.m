function y = schw6(x)
% 
% schwefel 6 function 
% The number of variables n = 2.
% 
a = abs(x(1) + 2*x(2) - 7);
b = abs(2*x(1) + x(2) - 5);

y = max(a,b);
end