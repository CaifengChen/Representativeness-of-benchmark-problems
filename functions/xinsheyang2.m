function y = xinsheyang2(x)
% 
% xinsheyang2 function 
% The number of variables n = 2.
% 
n = 2;
A = abs(x(1)) + abs(x(2));
B = sin(x(1)^2) + sin(x(2)^2);

y = A*exp(-B);

end