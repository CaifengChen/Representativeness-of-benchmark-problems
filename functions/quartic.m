function y = quartic(x)
% 
% Quartic function 
% The number of variables n = 2.
% 
s1 = x(1)^4 + rand();
s2 = 2* x(2)^4 + rand();

y = s1 + s2;
end