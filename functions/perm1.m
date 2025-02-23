function y = perm1(x)
% 
% Perm 1 function 
% The default value of n = 4.
% 
d = length(x);
b = 50;
outer = 0;

for ii = 1:d
	inner = 0;
	for jj = 1:d
		xj = x(jj);
        inner = inner + (jj^ii+b)*((xj/jj)^ii-1);
	end
	outer = outer + inner^2;
end

y = outer;

end

