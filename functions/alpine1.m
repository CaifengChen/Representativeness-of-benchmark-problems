function y = alpine1(x)
% 
% Alpine1 function.
% The default value of n =2.
%
n = 2;
s = 0;
for i = 1:n
    s = s + abs(x(i)*sin(x(i))+0.1*x(i));
end
y = s;
end