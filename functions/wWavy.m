function y = wWavy(x)
% 
% w/wavy function 
% The number of variables n = 6.
% The number of local minima k = 10.
n = 2;
k = 10;
s = 0;
for i = 1:n
    a = cos(k*x(i));
    b = (-x(i)^2)/2;
    
    s = s + a*exp(b);
    
end
y = 1 - 1/n*s;
end
