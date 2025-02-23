function y = schw2(x)
% 
% schwefel 2 function 
% The number of variables n = 2.
% 
n = 2;
b = 0;
for i = 1:n
    a = 0;
    for j = 1:i
        a = a + x(i);
    end
    b = b + a^2;
end

y = b;
end