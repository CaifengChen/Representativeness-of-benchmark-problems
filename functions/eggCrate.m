function y = eggCreate(x)
% 
% EggCrate function 
% The number of variables n = 2.
% 
a = sin(x(1));
b = sin(x(2));
y = x(1)^2 + x(2)^2 + 25*(a^2 + b^2);
end