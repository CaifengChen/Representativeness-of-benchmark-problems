function y = giunta(x)
% 
% Giunta function 
% The number of variables n = 2.
% 
n = 2;
s = 0;

for i = 1:n
    a = 16/15*x(i) - 1;
    b = sin(a);
    c = (1/50)*sin(4*a);
    
    s = s + b + b^2 + c;
end
y = 0.6 + s;
end
