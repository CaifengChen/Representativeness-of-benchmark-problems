function y = deb3(x)
% 
% Deb3 function 
% The number of variables n = 2.
% 
n = 2;
s = 0;

for i = 1:n
    a = (x(i))^(3/4);
    b = sin(5*pi*(a-0.05));
    s = s + a^6;
end
y = s * (-1/n);
end