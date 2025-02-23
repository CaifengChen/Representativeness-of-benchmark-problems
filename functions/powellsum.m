function y = powellsum(x)
% 
% powellsum function 
% The number of variables n = 2.
% 
d = length(x);
sum = 0;

for ii = 1:d
    xi = x(ii);
    new = (abs(xi))^(ii+1);
    sum = sum + new;
end

y = sum;

end
