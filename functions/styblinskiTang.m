function y = styblinskiTang(x)
% 
% styblinskiTang function 
% The number of variables n = 2.
% 

d = length(x);
sum = 0;
for ii = 1:d
	xi = x(ii);
	new = xi^4 - 16*xi^2 + 5*xi;
	sum = sum + new;
end

y = sum/2;
end