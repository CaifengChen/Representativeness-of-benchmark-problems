function y = BBOBnoisy_f120(x)
% 
% BBOBnoisy_f120 function.
% The default value of n = 2, 3, 5, 10, 20, 40.
%
n = length(x);
y = BBOBnoisy(x',120);

end