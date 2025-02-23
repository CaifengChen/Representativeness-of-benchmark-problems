function y = newFun1(x)
% 
% newFun1 function 
% The number of variables n = 2.
%
A = sqrt(abs(x(1)^2 + x(2)));

y = (abs(cos(A)))^(0.5)+(x(1)+x(2))/100;
end