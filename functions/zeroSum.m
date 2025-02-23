function y = zeroSum(x)
% 
% zeroSum function 
% The number of variables n = 2.
% 
n = length(x);
s = 0;
for i = 1:n
    s = s + x(i);
end

if s == 0
    y = 0;
else
    y = 1+(10000*abs(s))^(0.5);
end