function y = weierstrass(x)
% 
% weierstrass function 
% The default value of n = 2.
% 
n = length(x);
s1 = 0;
s2 = 0;


for i = 1:n
    for k = 0:20
        a = 2*pi*(3^k)*(x(i) + 0.5);
        s1 = s1 + 0.5^k*cos(a);        
    end
end

for k = 0:20
    b = 2*pi*(3^k)*0.5;
    s2 = s2 + 0.5^k*cos(b);
end
y = s1 - n*s2;

end