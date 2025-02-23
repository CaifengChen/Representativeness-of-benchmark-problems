function y = cross(x)
% 
% Cross function 
% The number of variables n = 2.
% 
A = 100-(sqrt(x(1)^2 + x(2)^2))/pi;
B = exp(abs(A));
C = abs(B * sin(x(1)) * sin(x(2))) + 1;

y = C^(-0.1);
end