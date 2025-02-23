function y = strechedV(x)
% 
% streched V  Sine Wave function 
% The number of variables n = 2.
% 
n = 2;
a = (x(2)^2 + x(1)^2)^0.25;
b = 50*(x(2)^2 + x(1)^2)^0.1;

y = a*((sin(b))^2+0.1);

end