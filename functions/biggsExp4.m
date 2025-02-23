function y = biggsExp4(x)
% 
% Biggs Exp4 function.
% The default value of n = 4.
%
s = 0;

for i = 1:10
    t = 0.1*i;
    z = exp(-t)-5*exp(-10*t);
    s = s + (x(3)*exp(-t*x(1)) - x(4)*exp(-t*x(2)) - z)^2;
end
y = s;
end