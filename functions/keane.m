function y = keane(x)
% 
% Keane function 
% The number of variables n = 2.
% 
a = sin(x(1)-x(2));
b = sin(x(1)+x(2));
c = x(1)^2 +x(2)^2;

y = (a^2)*(b^2)/sqrt(c);

end