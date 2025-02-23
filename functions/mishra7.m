function y = mishra7(x)
% 
% Mishra7 function 
% The number of variables n = 2.
% 
n = 2;
s = 1;
for i = 1:n
    s = s*x(i);
end

y = (s - factorial(n))^2;
end