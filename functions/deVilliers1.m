function y = deVilliers1(x)
% 
% deVilliers1 function 
% The number of variables n = 4.
% 
n = 4;
s1 = 0;
s2 = 0;

for i = 1:24
    t = 0.1*(i-1);
    a = sin(3.112*t + 1.761);
    b = (1.371)^t;
    z = 60.137*b * a;
    
    s1 = x(1)*sin(x(3)*t + x(4)) * x(2)^t - z;
    s2 = s2 + s1^2 ; 
end
y = s2;
end