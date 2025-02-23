function y = mishra6(x)
% 
% Mishra6 function 
% The number of variables n = 2.
% 
a = cos(x(1)) + cos(x(2));
b = sin(a^2);
c = sin(x(1)) + sin(x(2));
d = cos(c^2);
e = (b^2 - d^2 + x(1))^2;

y =  -log(e) + 0.01*((x(1)-1)^2+(x(2)-1)^2);
end