function y = quintic(x)
% 
% Quintic function 
% The number of variables n = 2.
% 
n = length(x);
s = 0;
for i = 1:n
    a = x(i)^5 - 3*x(i)^4 + 4*x(i)^3 + 2*x(i)^2 - 10*x(i) - 4;
    s = s + abs(a);
end
y = s;
end