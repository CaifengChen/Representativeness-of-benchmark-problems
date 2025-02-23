function y = zacharov(x)
% 
% zacharov function 
% The number of variables n = 2.
% 
n = length(x);
A = 0;
B = 0;

for i = 1:n
    A = A + x(i)^2;
    B = B + i*x(i);
end
y = A + (0.5*B)^2 + (0.5*B)^4;
end