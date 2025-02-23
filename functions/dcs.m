function y = dcs(x)
% 
% dcs function.
% The default value of n =4.
%
alpha = 5;
k = 5;
n = length(x);
s1 = 0;

for i = 1:n
    s1 = s1 + (x(i)-alpha)^2;
end

y = 0.1*s1 - cos(k*sqrt(s1));

end