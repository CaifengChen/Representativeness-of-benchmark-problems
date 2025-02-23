function y = crossinTray(x)
% 
% Cross-in-Tray function 
% The number of variables n = 2.
% 

fact1 = sin(x(1))*sin(x(2));
fact2 = exp(abs(100 - sqrt(x(1)^2+x(2)^2)/pi));

y = -0.0001 * (abs(fact1*fact2)+1)^0.1;

end