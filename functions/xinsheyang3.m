function y = xinsheyang3(x)
% 
% xinsheyang3 function 
% The number of variables n = 2.
% 
n = 2;
beta = 15;
m = 5;

A = (x(1)/beta)^(2*m) +(x(2)/beta)^(2*m);
B = x(1)^2 + x(2)^2;
C = (cos(x(1)))^2 * (cos(x(2)))^2;

y = exp(-A) - 2*exp(-B) * C;

end