function y = B2(x)
% 
% B2 function.
% The default value of n = 2.
%
y = x(1)^2 + 2*x(2)^2 - 0.3*cos(3*pi*x(1)) - 0.4*cos(4*pi*x(2)) + 0.7;
end