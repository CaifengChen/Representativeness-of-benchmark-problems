function y = katsuura(x)
% 
% katsuura function.
% The default value of n =2.
%
d = 32;
n = 2;
s1 = 0;
s2 = 1;
for i = 1:n
    s1 = 0;
    for k = 1:d
        s1 = s1 + floor(2^k *x(i)) * 2^(-k);
    end
    s2 = s2 *(1+(i+1)*s1);
end
y = s2;

end