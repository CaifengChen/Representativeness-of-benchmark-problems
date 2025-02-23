function y = sargan(x)
% 
% sargan function 
% The number of variables n = 2.
% 
n = 2;
z = 0;
s = 0;
for i =1:n
    z = 0;
    for j = 1:n
        if i~=j
            z = z + x(i) * x(j);
        end
    end
    s = s + n*(x(i)^2 + 0.4*z);
end
y = s;
end