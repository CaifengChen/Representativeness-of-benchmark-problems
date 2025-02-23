function y = miele(x)
% 
% Miele Cantrell function 
% The number of variables n = 4.
% 
a = exp(-x(1)) - x(2);
b = x(2) - x(3);
c = tan(x(3)-x(4));

y = a^4 + 100*b^6 + c^4 +x(1)^8;
end

