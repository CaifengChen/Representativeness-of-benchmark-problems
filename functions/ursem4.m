function y = ursem4(x)
% 
% ursem 4 function 
% The number of variables n = 2.
% 
a = -3*sin(0.5*pi*x(1) + 0.5*pi);
b = 2-sqrt(x(1)^2+x(2)^2);

y = a*(b/4);;
end