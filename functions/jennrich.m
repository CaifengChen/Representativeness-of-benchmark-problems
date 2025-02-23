function y = jennrich(x)
% 
% Jennnrich-Sampson function 
% The number of variables n = 2.
% 
s = 0;
for i = 1:10
    a = exp(i*x(1)) + exp(i*x(2));
    s = s +( 2+ 2*i - a)^2;
end
y = s;
end