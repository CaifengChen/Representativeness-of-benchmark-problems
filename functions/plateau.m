function y = plateau(x)
% 
% plateau function 
% The number of variables n = 2.
% 
n = length(x);
s = 0;
for i = 1:n
    s = s + floor(x(i))^2;
end
y = 30 +s ;
end