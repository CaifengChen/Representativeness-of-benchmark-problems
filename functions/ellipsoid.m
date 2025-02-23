function y = ellipsoid(x)
% 
% ellipsoid function.
% The default value of n =30.
%
n = length(x);
s = 0;

for i = 1:n
    s = s + 10^(i-1) * x(i)^2;
end
y = s;
end