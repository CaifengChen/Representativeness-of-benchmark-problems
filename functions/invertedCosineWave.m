function y = invertedCosineWave(x)
% 
% invertedCosineWavefunction 
% The number of variables n = 5.
% 
n = length(x);
s = 0;

for i = 1:n-1
    a = x(i)^2 + x(i+1)^2 + 0.5 *x(i)*x(i+1);
    s = s + exp(-a/8) * cos(4*sqrt(a));
end
y = -s;
end