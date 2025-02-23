function y = amgm(x)
% 
% amgm function.
% The default value of n =2.
%
n = length(x);
s1 = 0;
s2 = 1;

for i = 1:n
    s1 = s1 + x(i);
    s2 = s2*x(i);
end
y = (1/n*s1 - s2^(1/n))^2;
end