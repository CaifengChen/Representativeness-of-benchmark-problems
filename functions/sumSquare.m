function y = sumSquare(x)
% 
% sumSquare function 
% The number of variables n = 2.
% 
n = 2;
s = 0;
for i = 1:n
    s = s + i*x(i)^2;
end
y = s;
end