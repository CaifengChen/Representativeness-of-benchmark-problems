function y = ursemWaves(x)
% 
% Ursem Waves function 
% The number of variables n = 2.
% 
a = x(2)^2 - 4.5*x(2)^2;
b = 2*x(1) - (2+x(1))*x(2)^2;

y = -0.9*x(1)^2 + a*x(1)*x(2) + 4.7*cos(b)*sin(2.5*pi*x(1));
end