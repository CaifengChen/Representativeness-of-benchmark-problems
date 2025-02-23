function y = shubert3(x)
% 
% shubert 3 function 
% The number of variables n = 2.
% 
n = 2;
s = 0;
for i = 1:n
    for j = 1:5
        a = (j+1)*x(i) + j;
        s = s + j*sin(a);
    end
end
y = s;
end
