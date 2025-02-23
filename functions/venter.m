function y = venter(x)
% 
% venter function 
% The number of variables n = 2.
% 
a = cos(x(1));
b = cos(x(2));

y = x(1)^2 - 100*a^2 - 100*cos(x(1)^2/30) + x(2)^2 -100*b^2 - 100*cos(x(2)^2/30);
end