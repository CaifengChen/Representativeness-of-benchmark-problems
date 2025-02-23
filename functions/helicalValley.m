function y = helicalValley(x)
% 
% helicalValley function 
% The number of variables n = 3.
% 
if x(1) < 0
    a = 1/(2*pi)* atan(x(2)/x(1) + 0.5);
else
    a = 1/(2*pi)* atan(x(2)/x(1));
end

y = 100*((x(2)-10*a)^2 + (sqrt(x(1)^2 + x(2)^2) - 1)^2) + x(3)^2;
end