function y = penalty1(x)
% 
% penalty1 function 
% The number of variables n = 2.
%
n = 2;
s1 = 0;
s2 = 0;
u = 0;

z1 = 1 + 1/4*(x(1) + 1);
z2 = 1 + 1/4*(x(2) + 1);

a = (z1-1)^2;
b = sin(pi*z2);
s1 = a * (1+10*b^2);

c = sin(pi*z1);
s2 = 10*c^2 + s1 +(z2-1)^2;

for i =1:n
    if x(i) > 10
        u = u + 100*(x(i)-10)^4;
    elseif x(i) < -10
        u = u + 100*(-x(i)-10)^4;
    end
end
y = pi/30*s2 + u;
end


