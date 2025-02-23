function y = needleEye(x)
% 
% needleEye function 
% The number of variables n = 2.
% 
n = 2;
eye = 0.0001;
y = 0;
for i = 1:n
    if abs(x(i)) < eye
        y = y + 1;
    elseif  abs(x(i)) > eye
        y = y + (100+abs(x(1))) + (100+abs(x(2)));
    end
end

end