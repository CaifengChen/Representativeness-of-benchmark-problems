function y = biggsExp5(x)
% 
% Biggs Exp5 function.
% The default value of n = 5.
%
s = 0;

for i = 1:11
    t = 0.1*i;
    z = exp(-t)-5*exp(-10*t)+3*exp(-4*t);
    s = s + (x(3)*exp(-t*x(1)) - x(4)*exp(-t*x(2)) + 3*exp(-t*x(5)) - z)^2;
end
y = s;
end