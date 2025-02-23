function y = paviani(x)
% 
% Paviani function 
% The number of variables n = 10.
% 
n = 10;
z = 1;
s = 0;
for i = 1:n
    a = log(x(i)-2);
    b = log(10 - x(i));
    
    s = s + a^2 + b^2;
    z = z*x(i);
end
y = s - z^(0.2);
end