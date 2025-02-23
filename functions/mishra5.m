function y = mishra5(x)
% 
% Mishra5 function 
% The number of variables n = 2.
% 
a = cos(x(1)) + cos(x(2));
b = sin(a^2);
c = sin(x(1)) + sin(x(2));
d = cos(c^2);

y = (b^2 + d^2 + x(1))^2 + 0.01*(x(1)+x(2));
end