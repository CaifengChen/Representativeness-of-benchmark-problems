function y = perm2(x)
% 
% Perm 2 function 
% Matlab Code by A. Hedar (Nov. 23, 2005).
% The number of variables n should be adjusted below.
% The default value of n = 4.
% 
d = length(x);
b = 10;
outer = 0;

for ii = 1:d
	inner = 0;
	for jj = 1:d
		xj = x(jj);
        inner = inner + (jj+b)*(xj^ii-(1/jj)^ii);
	end
	outer = outer + inner^2;
end

y = outer;

end

