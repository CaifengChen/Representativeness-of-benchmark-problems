function y = ursem3(x)
% 
% ursem 3 function 
% The number of variables n = 2.
% 
a = sin(2.2*pi*x(1) + 0.5*pi);
b = sin(0.5*pi*x(2)^2 + 0.5*pi);
c = (2-abs(x(1)))/2;
d = (3-abs(x(1)))/2;
e = (2-abs(x(2)))/2;
f = (3-abs(x(2)))/2;

y = -a*c*d - b*e*f;
end