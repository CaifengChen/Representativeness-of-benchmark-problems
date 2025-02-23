function y = mishra8(x)
% 
% Mishra8 function 
% The number of variables n = 2.
% 
a = x(1)^10-20*x(1)^9+180*x(1)^8-960*x(1)^7+3360*x(1)^6-8064*x(1)^5+1334*x(1)^4 ...
    -15360*x(1)^3 + 11520*x(1)^2 - 5120*x(1) + 2624;
b = x(2)^4 + 12*x(2)^3 + 54*x(2)^2 + 108*x(2) + 81;

y = 0.001*(abs(a)*abs(b))^2;

end