function y = levy13(x)
% 
% Levy13 function 
% Matlab Code by A. Hedar (Nov. 23, 2005).
% The number of variables n should be adjusted below.
% The default value of n =2.
% 
x1 = x(1);
x2 = x(2);

term1 = (sin(3*pi*x1))^2;
term2 = (x1-1)^2 * (1+(sin(3*pi*x2))^2);
term3 = (x2-1)^2 * (1+(sin(2*pi*x2))^2);

y = term1 + term2 + term3;
end

