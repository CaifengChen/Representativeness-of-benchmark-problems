function y = stochastic(x)
% 
% stochastic function.
% The default value of n = 2.
%
n = length(x);
s = 0;

for i = 1:n
    s = s + rand()*abs(x(i) - 1/i);
end
y = s;
end