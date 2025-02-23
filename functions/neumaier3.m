function y = neumaier3(x)
% 
% neumaier3 function 
% The number of variables n = 10.
% 
n = length(x);
s1 = 0;
s2 = 0;

for i = 1:n
   s1 = s1 + (x(i)-1)^2;
end

for i = 2:n
   s2 = s2 + x(i)*x(i-1);
end
y = s1 - s2;
end