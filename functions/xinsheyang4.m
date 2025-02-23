function y = xinsheyang4(x)
% 
% xinsheyang4 function 
% The number of variables n = 2.
% 
n = 2;

A = (sin(x(1)))^2 * (sin(x(2)))^2;
B = x(1)^2 + x(2)^2;
C = sqrt(abs(x(1)));
D = sqrt(abs(x(2)));
E = (sin(C))^2+(sin(D))^2;

y = (A - exp(-B)) * exp(-E);

end