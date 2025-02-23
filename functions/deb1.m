function y = deb1(x)
% 
% Deb1 function 
% The number of variables n = 2.
% 
n = 2;
s = 0;

for i = 1:n
    a = sin(5*pi*x(i));
    s = s + a^6;
end
y = s * (-1/n);
end