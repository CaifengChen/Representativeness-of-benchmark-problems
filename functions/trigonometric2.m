function y = trigonometric2(x)
% 
% trigonometric2 function 
% The number of variables n = 2.
% 
n = 2;
s = 0;

for i = 1:n
   a = (x(i)-0.9)^2;
   b = sin(7*a);
   c = sin(14*a);
   
   s = s + 8*b^2 + 6*c^2 + a;

end
y = s+1;
end