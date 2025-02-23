function y = step(x)
% 
% step function 
% The number of variables n = 2.
% 
n = 2;
s = 0;
for i =1:n
    a = abs(x(i));
    b = floor(a);
    s = s + b;
end
y = s;
end
