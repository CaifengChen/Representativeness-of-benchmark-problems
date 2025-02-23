function y = adjiman(x)
% 
% Adjiman function.
% The default value of n =2.
%
n = 2;
y = cos(x(1))*sin(x(2))-x(1)/(x(2)^2+1);
end