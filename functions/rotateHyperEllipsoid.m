function y = rotateHyperEllipsoid(x)
% 
% rotateHyperEllipsoid function 
% The number of variables n = 2.
% 
d = length(x);
outer = 0;

for ii = 1:d
    inner = 0;
    for jj = 1:ii
        xj = x(jj);
        inner = inner + xj^2;
    end
    outer = outer + inner;
end

y = outer;
end