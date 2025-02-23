function y = dolan(x)
% 
% Dolan function 
% The number of variables n = 5.
% 
a = (x(1)+1.7*x(2))*sin(x(1));
b = 0.1*x(4)*cos(x(4)+x(5)-x(1));

y = a - 1.5*x(3) - b + 0.2*x(5)^2 - x(2) - 1;

end