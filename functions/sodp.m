function y = sodp(x)
% 
% sodp function 
% The number of variables n = 2.
% 
n = length(x);
s = 0;

for i =1:n
    s = s + (abs(x(i)))^(i+1);
end
y = s;
end