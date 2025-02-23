function y = langerman(x)
% 
% langerman function 
% The number of variables n = 2.
% 
m = 5;
d = length(x);
outer = 0;
c = [1, 2, 5, 2, 3];
A = [3, 5; 5, 2; 2, 1; 1, 4; 7, 9];
for ii = 1:m
    inner = 0;
    for jj = 1:d
        xj = x(jj);
        Aij = A(ii,jj);
        inner = inner + (xj-Aij)^2;
    end
    new = c(ii) * exp(-inner/pi) * cos(pi*inner);
    outer = outer + new;
end

y = outer;

end