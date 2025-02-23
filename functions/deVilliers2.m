function y = deVilliers2(x)
% 
% deVilliers2 function 
% The number of variables n = 5.
% 
n = 5;
s1 = 0;
s2 = 0;

for i = 1:24
    t = 0.1*(i-1);
    a = 3.012*t + sin(2.13*t);
    b = (1.27)^t;
    d = exp(0.507);
    e = cos(d*t);
    
    s1 = x(1)*tanh(x(3)*t + sin(x(4)*t)) * cos(t*exp(x(5))) * (x(2)^t) -  53.81*b*tanh(a)*e;
    s2 = s2 + s1^2; 
end
y = s2;
end

