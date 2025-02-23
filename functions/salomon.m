function y = salomon(x)
% 
% salomon function 
% The number of variables n = 2.
% 
a = sqrt(x(1)^2 + x(2)^2);
y =  1 - cos(2*pi*a) + 0.1*a;
end