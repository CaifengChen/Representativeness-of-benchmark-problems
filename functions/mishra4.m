function y = mishra4(x)
% 
% Mishra4 function 
% The number of variables n = 2.
% 
a = sqrt(x(1)^2 + x(2)^2);
b = abs(sin(a));

y = sqrt(b) + 0.01*(x(1)+x(2));
end