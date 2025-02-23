function y = multimod(x)
% 
% multimod function.
% The default value of n =2.
%
n = length(x);
s1 = 0;
s2 = 1;

for i = 1:n
    s1 = s1 + abs(x(i));
    s2 = s2*abs(x(i));
end
y = s1*s2;
end