function y = trefethen(x)
% 
% trefethen function 
% The number of variables n = 2.
% 
a = 0.25*(x(1)^2+x(2)^2);
b = 60*exp(x(2));
c = 70*sin(x(1));
d = sin(80*x(2));
e = 10*(x(1)+x(2));

y = exp(sin(50*x(1))) + sin(b) + sin(c) +sin(d) - sin(e) +a;
end