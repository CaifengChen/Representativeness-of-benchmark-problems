function y = scafferF6(x)
% 
% scaffer F6 function 
% The number of variables n = 2.
% 
n = 2;
s = 0;
for i = 1:1
    a = sqrt(x(i)^2 + x(i+1)^2);
    b = sin(a);
    c = 1 + 0.001*(x(i)^2 + x(i+1)^2);
    
    s = s + 0.5 +(b^2 - 0.5)/(c^2);
end
y = s;
end
