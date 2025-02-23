function y = exp2(x)
% 
% Exp 2 function 
% The number of variables n = 2.
% 
s = 0;
for i =1:9
    a = exp(-i*x(1)/10);
    b = 5*exp(-i*x(2)/10);
    c = exp(-i/10);
    d = 5*exp(-i);
    
    s = s + (a - b - c + d)^2;
end
y = s;
end