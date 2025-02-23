function y = bukin2(x)
% 
% Bukin2 function 
% The number of variables n = 2.
% 
a = 100;
b = 0.01;

y = a*(x(2)-0.01*x(1)^2+1) + b*(x(1)+10)^2;
end