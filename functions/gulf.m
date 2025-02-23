function y = gulf(x)
% 
% Gulf Research function 
% The number of variables n = 3.
% 
s = 0;
for i = 1:99
    a = -50 * log(0.01*i);
    u = 25 + a^(1/1.5);
    
    b = (u-x(2))^(x(3));
    c = exp(-b/x(1)) - 0.01*i;
    s = s + c^2;
end
y = s;
end