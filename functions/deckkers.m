function y = deckkers(x)
% 
% Deckkers-Aarts function 
% The number of variables n = 2.
% 
a = x(1)^2;
b = x(2)^2;
c = 10^5;
d = 10^(-5);

y = c*a + b - (a+b)^2 + d*(a+b)^4;

end