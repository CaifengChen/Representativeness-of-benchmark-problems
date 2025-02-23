function y = schumer(x)
% 
% schumer function 
% The number of variables n = 2.
% 
n = 2;
s = 0;
for i = 1:n
    s = s + x(i)^4;
end
y = s;
end