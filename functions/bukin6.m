function y = bukin6(x)
% 
% Bukin6 function 
% The number of variables n = 2.
% 
s1 = 100 * sqrt(abs(x(2) - 0.01*x(1)^2));
s2 = 0.01 * abs(x(1)+10);

y = s1 + s2;
end