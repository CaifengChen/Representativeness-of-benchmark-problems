function y = wood(x)
% 
% wood function 
% The number of variables n = 4.
% 

y = 100*(x(2) - x(1))^2 + (1-x(1))^2 + 90*(x(4)-x(3)^2)^2 + (1-x(3))^2 ...
    +10.1*((x(2) - 1)^2 + (x(4) - 1)^2) + 19.8*(x(2)-1)*(x(4)-1);

end