function y = pinter(x)
% 
% Pinter function 
% The number of variables n = 2.
% 
n = 2;
A = x(2)*sin(x(1)) + sin(x(2));
B = (x(2))^2 - 2*x(1) + 3*x(2) - cos(x(1)) + 1;
a = sin(A);
b = log10(1+B^2);
s1 = x(1)^2 + 20*a^2 + b;
    
C = x(1)*sin(x(2)) + sin(x(1));
D = (x(1))^2 - 2*x(2) + 3*x(1) - cos(x(2)) + 1;
c = sin(A);
d = log10(1+2*B^2);
s2 =  2*x(2)^2 + 20*2*c^2 + 2* d;     

y = s1 + s2;
end