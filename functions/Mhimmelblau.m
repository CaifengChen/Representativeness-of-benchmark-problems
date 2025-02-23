function y = Mhimmelblau(x)
% 
% Modified Himmelblau function 
% The number of variables n = 2.
% 
a = x(1)^2 + x(2) - 11;
b = x(1) + x(2)^2 - 7;
c = (x(1)-3)^2 + (x(2) - 2)^2;

y = a^2 + b^2 + 0.1*c;
end