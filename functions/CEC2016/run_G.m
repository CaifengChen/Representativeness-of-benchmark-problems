%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:Caifeng Chen
% Date:2021/12/07
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
clc;
global initial_flag 

nr = 30;  % Run independently 30 times
ignorepro = [131, 166, 180, 188, 201, 229, 250, 265];   % To avoid repetition, these problems should be ignored.
A = [10, 71, 81,109, 175, 177];     % The boundaries of each dimension of these problems are different and require special treatment.

for i = 614:643
    if (ismember (i,ignorepro) ~= 1)
        value = zeros(nr, 1);
       
        for j = 1:nr
            initial_flag = 0;
            fprintf('正在执行问题 %d, 第 %d 次运行\n', i, j);
            g_avg = G(i,A);
            value(j) = g_avg;
        end
        meanvalue = mean(value);
        filename = strcat('F:\研究生工作\7测试集代表性研究\code\results\G\',num2str(i), '.mat'); 
        save(filename,'value','meanvalue');
    else
        continue;
    end
end