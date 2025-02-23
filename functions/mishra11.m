function y = mishra11(x)
% 
% Mishra11 function 
% The number of variables n = 2.
% 
n = 2;
a = abs(x(1)) + abs(x(2));
b =  abs(x(1)) * abs(x(2));
c = 1/n * a - b^(1/n);

y = c^2;
end