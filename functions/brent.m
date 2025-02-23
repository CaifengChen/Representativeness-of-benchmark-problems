function y = brent(x)
% 
% Brent function 
% The number of variables n = 2.
% 
a = -x(1)^2-x(2)^2;

y = (x(1)+10)^2 + (x(2)+10)^2 + exp(a);

end