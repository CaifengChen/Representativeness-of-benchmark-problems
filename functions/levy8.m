function y = levy8(x)
% 
% levy8 function.
% The default value of n =3.
%
n = length(x);
y  = [];
s = 0;

for i = 1:n
    y = [y, 1+(x(i) - 1)/4];
end

for j =1:n-1
    a = sin(pi * y(j+1));
    s = s + (y(j)-1)^2 *(1+10*a^2);
end

b = sin(pi * y(1));
y = b^2 + s + (y(n) - 1)^2;

end