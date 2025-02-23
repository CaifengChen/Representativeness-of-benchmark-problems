function y = corana(x)
% 
% Corana function 
% The number of variables n = 4.
% 
n = 4;
A = 0.05;
d = [1,1000,10,100];
s = 0;
for i = 1:n
    a = abs(x(i)/0.2);
    z = 0.2*floor(a + 0.49999)*sign(x(i));
    v = abs(x(i)-z);
   
    if abs(v) < A
        s = s + 0.15*(z-0.05*sign((z)^2))*d(i);
    else
        s = s + d(i)*x(i)^2;
    end
end
y = s;

end
