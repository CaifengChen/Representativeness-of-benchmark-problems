function y = decanomial(x)
% 
% decanomial function 
% The number of variables n = 2.
% 
A = x(2)^4 + 12*x(2)^3 + 54*x(2)^2 + 108*x(2) + 81.0;
B = x(1)^10 - 20*x(1)^9 + 180*x(1)^8 - 960*x(1)^7 + 3360*x(1)^6 - 8064*x(1)^5 + 13340*x(1)^4 - 15360*x(1)^3 + 11520*x(1)^2 - 5120*x(1) + 2624;

y = 0.001*(abs(A) + abs(B))^2;

end