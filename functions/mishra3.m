function y = mishra3(x)
% 
% Mishra3 function 
% The number of variables n = 2.
% 
a = sqrt(x(1)^2 + x(2)^2);
b = abs(cos(a));

y = sqrt(b) + 0.01*(x(1)+x(2));
end