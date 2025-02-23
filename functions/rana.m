function y = rana(x)
% 
% Rana function 
% The number of variables n = 2.
% 
n = 2;
y = 0;
for i = 1:n
    t1 = sqrt(abs(x(1) - x(i) + 1));
    t2 = sqrt(abs(x(1) + x(i) + 1));

    y = y + x(i)*sin(t1)*cos(t2) + (x(1) + 1) * sin(t2)*cos(t1);
end

end