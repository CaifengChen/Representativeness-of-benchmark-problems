function y = biggsExp6(x)
% 
% Biggs Exp6 function.
% The default value of n = 6.
%
s = 0;

for i = 1:13
    t = 0.1*i;
    z = exp(-t)-5*exp(-10*t)+3*exp(-4*t);
    s = s + (x(3)*exp(-t*x(1)) - x(4)*exp(-t*x(2)) + x(6)*exp(-t*x(5)) - z)^2;
end
y = s;
end