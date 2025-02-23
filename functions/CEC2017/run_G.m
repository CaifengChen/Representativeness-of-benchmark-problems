%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:Caifeng Chen
% Date:2021/12/07
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;

nr = 30;
value = [];
A = [10, 71, 81, 175, 177];

for i = 654:769
    for j = 1:nr
        [g_avg, g_dev] = G(i,A);
        value = [value; [g_avg, g_dev]];
    end
    meanvalue = mean(value);
    stdvalue = std(value);
    filename = strcat('F:\研究生工作\7测试集代表性研究\code\results\G\',num2str(i), '.mat'); 
    save(filename,'value','meanvalue','stdvalue');
    value = [];
end


