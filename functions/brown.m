function y = brown(x)
% 
% Brown function 
% The number of variables n = 2.
% 
n = 2;
s = 0;

for i = 1:n-1
    s = s + (x(i)^2)^(x(i+1)^2+1)+(x(i+1)^2)^(x(i)^2+1);
end
y = s;
end