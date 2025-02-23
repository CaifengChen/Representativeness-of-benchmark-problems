function y = yaoliu9(x)
% 
% yaoliu9 function 
% The number of variables n = 2.
% 
n = length(x);
y = 0;
for i = 1:n
    y = y + x(i)^2 - 10* cos(2*pi*x(i)) + 10;
end
end