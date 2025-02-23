function y = pathological(x)
% 
% Pathological function 
% The number of variables n = 2.
% 
a = sin(sqrt(100*x(1)^2 + x(2)^2));
b = x(1)^2 - 2*x(1)*x(2) + x(2)^2;

y = 0.5+(a^2-0.5)/(1+0.001*b^2);
end