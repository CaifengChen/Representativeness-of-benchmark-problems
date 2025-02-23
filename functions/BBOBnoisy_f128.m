function y = BBOBnoisy_f128(x)
% 
% BBOBnoisy_f128 function.
% The default value of n = 2, 3, 5, 10, 20, 40.
%
n = length(x);
y = BBOBnoisy(x',128);

end