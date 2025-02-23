function y = typicalmultimodal(x)
% 
% typicalmultimodal function.
% The default value of n =2.
%
n = length(x);

a = -1/4*sqrt(x(1)^2 + x(2)^2);
y = -cos(x(1))*cos(x(2))*exp(a);
end