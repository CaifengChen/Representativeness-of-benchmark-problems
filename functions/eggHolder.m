function y = eggHolder(x)
% 
% EggHolder function 
% The number of variables n = 2.
% 
x1 = x(1);
x2 = x(2);
term1 = -(x2+47) * sin(sqrt(abs(x2+x1/2+47)));
term2 = -x1 * sin(sqrt(abs(x1-(x2+47))));

y = term1 + term2;
end