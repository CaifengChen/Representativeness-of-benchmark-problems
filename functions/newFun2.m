function y = newFun2(x)
% 
% newFun2 function 
% The number of variables n = 2.
%

A = sqrt(abs(x(1)^2 + x(2)));

y = (abs(sin(A)))^(0.5)+(x(1)+x(2))/100;
end