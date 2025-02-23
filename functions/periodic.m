function y = periodic(x)
% 
% Periodic function 
% The number of variables n = 2.
% 
a = sin(x(1));
b = sin(x(2));
c = -(x(1)^2 +x(2)^2);

y = 1+a^2 + b^2 - 0.1*exp(c);

end