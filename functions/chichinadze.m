function y = chichinadze(x)
% 
% Chichinadze function 
% The number of variables n = 2.
% 
a = pi*x(1)/2;
b = 5*pi*x(1)/2;
c = sqrt(1/5);
d = -0.5*((x(2)-0.5)^2);

y = x(1)^2 - 12*x(1) + 11 + 10*cos(a) + 8*sin(b) - c*exp(d);
end