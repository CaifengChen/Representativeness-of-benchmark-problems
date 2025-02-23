function y = freudenstein(x)
% 
% Freudenstein Roth function 
% The number of variables n = 2.
% 
a = (5 - x(2))*x(2);
b = (x(2) + 1)*x(2);
c = x(1) - 13 + (a - 2) *x(2);
d = x(1) - 29 + (b - 14) *x(2);

y = c^2 + d^2;
end