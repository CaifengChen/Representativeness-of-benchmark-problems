function y = yaoliu7(x)
% 
% yaoliu7 function 
% The default value of n = 2.
% 
n = length(x);
s = 0;

for i = 1:n
    s = s + i*x(i)^4;
end
y = rand() + s;
end