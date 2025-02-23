function y = bird(x)
% 
% Bird function.
% The default value of n = 2.
%
a = (1-cos(x(2)))^2;
b = (1-sin(x(1)))^2;
y = sin(x(1))*exp(a) + cos(x(2))*exp(b) + (x(1)-x(2))^2;

end