function y = sineEnvelope(x)
% 
% sineEnvelope function 
% The number of variables n = 2.
% 
n = length(x);
s = 0;
for i =1:n-1
    a = sqrt(x(i+1)^2 + x(i)^2);
    b = 0.001*(x(i+1)^2 + x(i)^2) + 1;
    A = (sin(a))^2 - 0.5;
    
    s = s + A/(b^2) + 0.5;
end
y = -s;
end