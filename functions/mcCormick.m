function y = mcCormick(x)
% 
% McCormick function 
% The number of variables n = 2.
% 
a = x(1) + x(2);
b = x(1) - x(2);

y = sin(a) + b^2 - 3/2*x(1) + 5/2*x(2) + 1;

end