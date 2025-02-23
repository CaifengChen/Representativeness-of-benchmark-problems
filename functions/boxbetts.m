function y = boxbetts(x)
% 
% Box-Betts Quadratic Sum function.
% The default value of n = 3.
%
n = 3;
s = 0;
% x = [1,10,1];
for i = 0:n-1
    a = exp(-0.1*(i+1)*x(1));
    b = exp(-0.1*(i+1)*x(2));
    c = exp(-0.1*(i+1))-exp(-(i+1))*x(3);
    s = s + (a - b - c);
end
y = s;
end