function y = hansen(x)
% 
% hansen function.
% The default value of n =2.
%
s1 = 0;
s2 = 0;
for i = 0:4
    a = i*x(1) + i +1;
    b = (i+2)*x(2) + i + 1;
    s1 = s1 + (i+1)*cos(a);
    s2 = s2 + (i+1)*cos(b);
end
y = s1 * s2;
end