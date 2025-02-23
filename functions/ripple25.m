function y = ripple25(x)
% 
% Ripple25 function 
% The number of variables n = 2.
% 
n = 2;
s = 0;
for i = 1:n
    a = ((x(i)-0.1)/0.8)^2;
    b = sin(5*pi*x(i));
    
    s = s - exp(-2*log(2)*a)*b^6;
end
y = s;
end