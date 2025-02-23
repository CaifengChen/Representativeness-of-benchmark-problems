function y = bartelsConn(x)
% 
% Bartels Conn function.
% The default value of n = 2.
%
y = abs(x(1)^2+x(2)^2+x(1)*x(2))+abs(sin(x(1)))+abs(cos(x(2)));

end