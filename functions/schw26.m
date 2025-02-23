function y = schw26(x)
% 
% Schwefel 26 function
% Matlab Code by A. Hedar (Nov. 23, 2005).
% The number of variables n should be adjusted below.
% The default value of n = 2.
% 
n = length(x);
s = sum(-x.*sin(sqrt(abs(x))));
y = 418.9829*n+s;
end