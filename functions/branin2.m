function y = branin2(x)
% 
% Branin2 function 
% The number of variables n = 2.
% 
b = 5.1/(4*pi^2);
c = 5/pi;
r = 6;
s = 10;
t = 5/(4*pi);
% x = [-3.2,12.53];

s1 = (x(2) - b*x(1)^2 + c*x(1) - r)^2;
s2 = (10-t)*cos(x(1))*cos(x(2))+log(x(1)^2+x(2)^2+1);

y = s1 + s2 + s;

end
