function y = dejong4(x)
% 
% dejong4 function 
% The number of variables n = 2.
% no noise

n = length(x);
s = 0;

for i  = 1:n
    s = s + i*x(i)^4;
end
y = s;
end