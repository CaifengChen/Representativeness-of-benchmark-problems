function y = biggsExp3(x)
% 
% Biggs Exp3 function.
% The default value of n = 3.
%
s = 0;

for i = 1:10
    t = 0.1*i;
    z = exp(-t)-5*exp(-10*t);
    s = s + (exp(-t*x(1)) - x(3)*exp(-t*x(2)) - z)^2;
end
y = s;
end