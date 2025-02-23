function y = koonF3(x)
% 
% koon function.
% The default value of n =3,30.
%
n = length(x);
s = 0;

for i = 1:n
    s = s + (x(i)^4 - 16*x(i)^2 + 5*x(i));
end
y = 0.5*s;
end