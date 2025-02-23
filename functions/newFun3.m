function y = newFun3(x)
% 
% newFun3 function 
% The number of variables n = 2.
%

A = (cos(x(1)) + cos(x(2)))^2;
B = (sin(x(1)) + sin(x(2)))^2;
C = x(1) +(sin(A))^2 + (cos(B))^2;

y = 0.01*x(1) + 0.1*x(2) + C^2;
end