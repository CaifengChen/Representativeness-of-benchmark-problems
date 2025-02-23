function y = neumaier2(x)
% 
% neumaier2 function 
% The number of variables n = 4.
% 
n = length(x);
b = [8,18,44,114];
y = 0;

for i = 1:n
    s = 0;
    for j = 1:n
        s = s + x(j)^(i);
    end
    y = y + (b(i) - s)^2;
end

end