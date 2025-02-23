function y = XOR(x)
% 
% xor function 
% The number of variables n = 9.
% 
a = 1+exp(-x(1)-x(2)-x(5));
b = 1+exp(-x(3)-x(4)-x(6));
c = 1+exp(-x(5));
d = 1+exp(-x(6));
e = 1+exp(-x(1)-x(5));
f = 1+exp(-x(3)-x(6));
g = 1+exp(-x(2)-x(5));
h = 1+exp(-x(4)-x(6));

A = 1+exp(-x(7)/a - x(8)/b - x(9));
B = 1+exp(-x(7)/c - x(8)/d - x(9));
C = 1 - (1+exp(-x(7)/e - x(8)/f - x(9)))^(-1);
D = 1 - (1+exp(-x(7)/g - x(8)/h - x(9)))^(-1);

y = A^(-2) + B^(-2) + C^2 + D^2;
end