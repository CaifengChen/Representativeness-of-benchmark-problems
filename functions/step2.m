function y = step2(x)
% 
% step2 function 
% The number of variables n = 2.
% 
n = 2;
s = 0;
for i =1:n
    a = abs(x(i)+0.5);
    b = floor(a);
    s = s + b^2;
end
y = s;
end
