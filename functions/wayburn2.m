function y = wayburn2(x)
% 
% wayburn 2 function 
% The number of variables n = 2.
% 
a = 1.613- 4*(x(1)-0.3125)^2 - 4*(x(2) - 1.625)^2;
y = (a)^2 + (x(2) - 1)^2;
end