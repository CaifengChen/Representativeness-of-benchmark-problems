function y = shubert2(x)
% 
% shubert 2 function 
% The number of variables n = 2.
% 
n = 2;
s2 = 1;
for i = 1:n
    s1 = 0;
    for j = 1:5
        s1 = s1 + j*cos((j+1)*x(i) +j);  
    end
    s2 = s2 * s1 ;
end
y = s2;
end
