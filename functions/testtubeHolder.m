function y = testtubeHolder(x)
% 
% testtube Holder function 
% The number of variables n = 2.
% 
a = 1/200;
b = a*x(1)^2 + a*x(2)^2;
c = sin(x(1))*cos(x(2));
d = exp(abs(cos(b)));

y = -4*abs(d*c);
end