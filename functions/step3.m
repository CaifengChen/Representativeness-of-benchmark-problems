function y = step3(x)
% 
% step3 function 
% The number of variables n = 2.
% 
n = 2;
s = 0;
for i =1:n
    a = abs(x(i));
    b = floor(a);
    s = s + b^2;
end
y = s;
end
