function y = holderTable(x)
% 
% holder Table function 
% The number of variables n = 2.
% 
A = 1-(sqrt(x(1)^2 + x(2)^2))/pi;
B = exp(abs(A));
C = sin(x(1));
D = cos(x(2));

y = -abs(B*C*D);
end