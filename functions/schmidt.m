function y = schmidt(x)
% 
% schmidt function 
% The number of variables n = 3.
% 
a = (x(1)-x(2))^2;
b = (pi*x(2) + x(3))/2;
c = (x(1)+x(2))/x(2) - 2;

y = 1/(1+a) + sin(b) + exp(c^2);
end