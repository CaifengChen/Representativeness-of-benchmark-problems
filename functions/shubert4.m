function y = shubert4(x)
% 
% shubert 4 function 
% The number of variables n = 2.
% 
n = 2;
s = 0;
for i = 1:n
    for j = 1:5
        a = (j+1)*x(i) + j;
        s = s + j*cos(a);
    end
end
y = s;
end
