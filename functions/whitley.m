function y = whitley(x)
% 
% whitley function 
% The number of variables n = 2.
% 
n = 2;
s = 0;
for i = 1:n
    for j = 1:n
        A = (x(i)^2 - x(j))^2;
        B = (1-x(j))^2;
        a = (100*A +B)^2 /4000;
        b = cos(100*A + B + 1);
        s = s + a - b;
    end
end
y = s;
end