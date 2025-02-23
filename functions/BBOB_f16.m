function y = BBOB_f16(x)
% 
% BBOB_f16 function.
% The default value of n = 2, 3, 5, 10, 20, 40.
%
n = length(x);
y = BBOB(x',16);

end