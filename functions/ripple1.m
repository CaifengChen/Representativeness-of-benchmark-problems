function y = ripple1(x)
% 
% Ripple1 function 
% The number of variables n = 2.
% 
n = 2;
s = 0;
for i = 1:n
    a = ((x(i)-0.1)/0.8)^2;
    b = sin(5*pi*x(i));
    c = cos(500*pi*x(i));
    
    s = s - exp(-2*log(2)*a)*(b^6 + 0.1*c^2);
end
y = s;
end