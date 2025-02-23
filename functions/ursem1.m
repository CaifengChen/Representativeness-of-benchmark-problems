function y = ursem1(x)
% 
% ursem 1 function 
% The number of variables n = 2.
% 
a = sin(2*x(1) - 0.5*pi);
b = 3*cos(x(2));

y = -a -b -0.5*x(1);
end