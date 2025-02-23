function y = Li(x)
% 
% The test objective function is given by Li (1997) and Feng & Li (1998)
% The default value of n =2.
% n = 2;
a = x(1)+0.125*x(2);
b = cos(x(1)) - cos(2*x(2));
c = 6.452*a*(b^2);
d = 0.8+(x(1) - 4.2)^2 + 2 *(x(2) - 7)^2;

y = c/sqrt(d) + 3.226*x(2);
