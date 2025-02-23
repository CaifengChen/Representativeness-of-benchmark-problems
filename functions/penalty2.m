function y = penalty2(x)
% 
% penalty2 function 
% The number of variables n = 2.
%
n = 2;
s1 = 0;
s2 = 0;
u = 0;

a = sin(3*pi*x(2));
b = 1 + a^2;
s1 = (x(1) - 1)^2 *b;

c = sin(2*pi*x(2));
d = 1+ c^2;
s2 = (x(2) - 1)^2  * d;

for i =1:n
    if x(i) > 5
        u = u + 100*(x(i)-5)^4;
    elseif x(i) < -5
        u = u + 100*(-x(i)-5)^4;
    end
end
e = sin(3*pi*x(1));
y = 0.1*(e^2 + s1 + s2) + u;
end


