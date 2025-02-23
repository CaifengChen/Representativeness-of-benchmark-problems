function y = gear(x)
% 
% gear function 
% The number of variables n = 4.
% 
xx = floor(x);
y = (1.0/6.931 - xx(1)*xx(2)/(xx(3)*xx(4)))^2;
end