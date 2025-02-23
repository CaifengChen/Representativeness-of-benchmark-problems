function y = multiGaussian(x)
% 
% multiGaussian function 
% The number of variables n = 2.
% 
a = [0.5,1.2,1.0,1.0,1.2];
b = [0.0,1.0,0.0,-0.5,0.0];
c = [0.0,0.0,-0.5,0.0,1.0];
d = [0.1,0.5,0.5,0.5,0.5];
B = 0;
for i = 1:5
    A = (x(1) - b(i))^2 + (x(2) - c(i))^2;
    B = B + a(i) * exp(-A/(d(i)^2));
end
y = B;
end