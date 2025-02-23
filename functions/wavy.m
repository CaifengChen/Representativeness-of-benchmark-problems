function y = wavy(x)
% 
% wavy function.
% The default value of n =2.
%
n = length(x);
k = 10;
s = 0;
for i = 1:n
    s = s+cos(k*x(i))*exp(-(x(i)^2)/2);
end
y = 1-1/n*s;
end