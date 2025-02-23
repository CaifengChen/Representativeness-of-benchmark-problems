function y = crossLegTable(x)
% 
% crossLegTable function 
% The number of variables n = 2.
% 
a = 100- sqrt(x(1)^2 + x(2)^2)/pi;
b = sin(x(1))*sin(x(2));
c = abs(exp(abs(a))*b) + 1;

y = -1/(c^0.1);

end