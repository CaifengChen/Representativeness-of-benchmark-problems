function y = trigonometric1(x)
% 
% trigonometric1 function 
% The number of variables n = 2.
% 
n = 2;
s = 0;
z = 0;
for i = 1:n
    s = 0;
    for j = 1:n
        s = s + cos(x(j)) + i*(1-cos(x(i))-sin(x(i)));
    end
    z = z + n - s;
end
y = z^2;
end