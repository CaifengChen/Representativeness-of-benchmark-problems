function y = deflected(x)
% 
% deflected function 
% The number of variables n = 2.
% 
k = 5;
alpha = 5;
n = 2;
s1 = 0;
s2 = 0;

for i = 1:n
    s1 = s1 + (x(i)-alpha)^2;
end

for i = 1:n
    s2 = s2 + (x(i)-alpha)^2 - cos(k*sqrt(s1));
end
y = 0.1*s2;
end