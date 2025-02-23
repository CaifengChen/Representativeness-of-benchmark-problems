function y = wayburn3(x)
% 
% wayburn 3 function 
% The number of variables n = 2.
% 
a = ((x(1)-4)^2 +(x(2)-5)^2-4)^2;
y = 2/3*x(1)^3 - 8*x(1)^2 + 33*x(1) - x(1)*x(2) + 5+a;
end