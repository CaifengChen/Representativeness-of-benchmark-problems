function y = powell2(x)
% 
% Powell singular 2 function 
% The number of variables n = 4.
% 
n = 4;
s = 0;

for i = 2:n-2
    a = x(i-1) + 10*x(i);
    b = x(i+1) - x(i+2);
    c = x(i) - 2*x(i+1);
    d = x(i-1) - x(i+2);
    
    s = s + a^2 + 5*b^2 + c^4 + 10*d^4;
end
y = s;
end