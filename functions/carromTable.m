function y = carromTable(x)
% 
% carromTable function 
% The number of variables n = 2.
% 
A = 1-(sqrt(x(1)^2 + x(2)^2))/pi;
B = exp(2*abs(A));
C = (cos(x(1)))^2;
D = (cos(x(2)))^2;

y = -1/30 * B * C * D;
end