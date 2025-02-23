function y = alpine2(x)
% 
% Alpine2 function.
% The default value of n =2.
%
n = 2;
s = 1;
for i = 1:n
    s = s * sqrt(x(i))*sin(x(i));
end
y = s;
end