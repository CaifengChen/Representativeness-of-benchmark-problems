function y = BBOB_f20(x)
% 
% BBOB_f20 function.
% The default value of n = 2, 3, 5, 10, 20, 40.
%
n = length(x);
y = BBOB(x',20);

end