%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:Caifeng Chen
% Date:2021/12/26
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
clc;
% mex cec2013_func.cpp -DWINDOWS
global initial_flag 

nr = 30;  % Run independently 30 times
ignorepro = [131, 166, 180, 188, 201, 229, 250, 265];   % To avoid repetition, these problems should be ignored.
A = [10, 71, 81,109, 175, 177];     % The boundaries of each dimension of these problems are different and require special treatment.

for i = 81:81
    if (ismember (i,ignorepro) ~= 1)
        value = zeros(nr, 1);
        
        [d, lb, ub] = getInf(i);
        num = 1000 * d * 0.05;     % number of points
        sample = sobolset(d,'Skip',0,'Leap',0);  % Sampling using sobol method
        
        for j = 1:nr
            fprintf('正在执行问题 %d, 第 %d 次运行\n', i, j);
            initial_flag = 0;
            % create points
            points = sample((j-1)*num+1:j*num,:);

            if (ismember (i,A) ~= 1)
                points = lb + (ub - lb) * points;
            else
                for k = 1:d
                    points(:,k) = lb(k) + (ub(k) - lb(k)) * points(:,k);
                end
            end
            
            avg_dist = Disp_DM(i, d, lb, ub, num, points, A);                      
            value(j) = avg_dist;
        end
        meanvalue = mean(value);
        stdvalue = std(value);  
        filename = strcat('F:\研究生工作\7测试集代表性研究\code\results\DispDM\',num2str(i), '.mat'); 
        save(filename,'value','meanvalue','stdvalue');

    else
        continue;
    end
end


