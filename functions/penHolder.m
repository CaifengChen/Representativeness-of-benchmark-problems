function y = penHolder(x)
% 
% Pen Holder function 
% The number of variables n = 2.
% 
a = cos(x(1))*cos(x(2));
b = abs(1-(sqrt(x(1)^2+x(2)^2)/pi));
c = abs(exp(b)*a)^(-1);

y = -exp(-c);

end