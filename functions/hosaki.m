function y = hosaki(x)
% 
% Hosaki function 
% The number of variables n = 2.
% 
a = 1 - 8*x(1) + 7*x(1)^2 - 7/3*x(1)^3 + 1/4 *x(1)^4;

y = exp(-x(2))*a*x(2)^2;
end