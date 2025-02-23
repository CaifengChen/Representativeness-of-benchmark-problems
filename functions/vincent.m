function y = vincent(x)
% 
% vincent function.
% The default value of n =2.
%
n = length(x);
s = 0;
for i = 1:n
    s = s + sin(10*log(x(i)));
end
y = -s;
end