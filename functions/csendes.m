function y = csendes(x)
% 
% Csendes function 
% The number of variables n = 2.
% 
n = 2;
s = 0;

for i = 1:n
    a = 2 + sin(x(i));
    s = s + (x(i)^6)*a;
end

y = s;
end