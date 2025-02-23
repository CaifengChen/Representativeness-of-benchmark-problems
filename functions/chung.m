function y = chung(x)
% 
% Chung Reynolds function 
% The number of variables n = 2.
% 
n = 2;
s = 0;

for i = 1:n
    s = s + x(i)^2;
end
y = s^2;
end
