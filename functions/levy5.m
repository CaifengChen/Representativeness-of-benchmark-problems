function y = levy5(x)
% 
% levy5 function.
% The default value of n =2.
%
s1 = 0;
s2 = 0;
for i = 1:5
    A = i*cos((i-1)*x(1) + i);
    B = i*cos((i+1)*x(2) + i);
    s1 = s1 + A;
    s2 = s2 + B;
end
y = s1*s2 + (x(1)+1.42513)^2 + (x(2) + 0.80032)^2;
end