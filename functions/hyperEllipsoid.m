function y = hyperEllipsoid(x)
% 
% moved axis parallel hyper Ellipsoid function.
% The default value of n =30.
%
n = length(x);
s = 0;
for i = 1:n
    s = s + i*x(i)^2;
end
y = s;
end