function y = mishra9(x)
% 
% Mishra9 function 
% The number of variables n = 3.
% 
a = 2*x(1)^3 + 5*x(1)*x(2) + 4*x(3) - 2*x(1)^2*x(3) - 18;
b = x(1) + x(2)^3 + x(1)*x(2)^2 +x(1)*x(3)^2 - 22;
c = 8*x(1)^2 + 2*x(2)*x(3) + 2*x(2)^2 + 3*x(2)^3 - 52;

y = a*c*b^2 + a*b*c^2 + b^2 + (x(1)+x(2)-x(3))^2;

end