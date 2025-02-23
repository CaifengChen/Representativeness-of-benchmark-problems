function y = cosinemixture(x)
% 
% Cosine mixture function 
% The number of variables n = 2,4.
% 
n = length(x);
s1 = 0;
s2 = 0;

for i = 1:n
    a = 5*pi*x(i);
    b = x(i)^2;
    s1 = s1 + cos(a);
    s2 = s2 + b;
end
y = -0.1*s1 - s2;
end