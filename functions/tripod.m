function y = tripod(x)
% 
% tripod function 
% The number of variables n = 2.
% 
if x(1) < 0
    p1 = 0;
else
    p1 = 1;
end

if x(2) < 0
    p2 = 0;
else
    p2 = 1;
end

y = p2*(1+p1) + abs(x(1) + 50*p2 *(1-2*p1)) + abs(x(2) + 50*(1-2*p2));
end