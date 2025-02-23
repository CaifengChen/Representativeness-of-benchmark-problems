function y = rosenModified(x)
% 
% rosenbrock Modified function 
% The number of variables n = 2.
% 
a = (x(1) + 1)^2 + (x(2) + 1)^2;
b = x(2) - x(1)^2;

y = 74 + 100*b^2 + (1-x(1))^2 - 400*exp(-a/0.1);
end