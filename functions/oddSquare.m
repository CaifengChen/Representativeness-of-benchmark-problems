function y = oddSquare(x)
% 
% oddSquare function.
% The default value of n =2.
%
n = length(x);
A = [];
h = 0;
b = [1, 1.3, 0.8, -0.4, -1.3, 1.6, -0.2, -0.6, 0.5, 1.4, 1, 1.3, 0.8, -0.4, -1.3, 1.6, -0.2, -0.6, 0.5, 1.4];
for i = 1:n
    A = [A, (x(i)-b(i))^2];
    h = h + (x(i)-b(i))^2;
end

d = n*max(A);
y = -exp(-d/(2*pi)) * cos(pi*d) *(1+0.02*h/(d+0.01));
end