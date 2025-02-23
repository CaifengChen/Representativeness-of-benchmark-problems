function y = schw4(x)
% 
% schwefel 4 function 
% The number of variables n = 2.
% 
n = 2;
s = 0;
for i = 1:n
    a = (x(i)-1)^2;
    b = (x(1) - x(i)^2)^2;
    s = s + a+b;
end
y = s ;
end