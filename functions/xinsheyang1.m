function y = xinsheyang1(x)
% 
% xinsheyang1 function 
% The number of variables n = 2.
% 
n = 2;
r = rand(1,n);
y = 0;
for i  =1:n
    y = y + r(i)*(abs(x(i)))^2;
end

end