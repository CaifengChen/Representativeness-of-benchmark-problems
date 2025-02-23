%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:Caifeng Chen
% Date:2021/12/26
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
clc;
% mex cec2013_func.cpp -DWINDOWS
% mex soco2011.cpp -DWINDOWS
% global initial_flag 
% 
% 
% nr = 30;  % Run independently 30 times
% ignorepro = [131, 166, 180, 188, 201, 229, 250, 265];   % To avoid repetition, these problems should be ignored.
% A = [10, 71, 81,109, 175, 177];     % The boundaries of each dimension of these problems are different and require special treatment.

for i = 113:113
    global initial_flag 
    nr = 1;  % Run independently 30 times
    ignorepro = [131, 166, 180, 188, 201, 229, 250, 265];   % To avoid repetition, these problems should be ignored.
    A = [10, 71, 81,109, 175, 177];     % The boundaries of each dimension of these problems are different and require special treatment.

    if (ismember (i,ignorepro) ~= 1)
        value_DM = zeros(nr, 1);
        value_FDCs = zeros(nr, 1);
        value_ILcd = zeros(nr, 1);
        
        [d, lb, ub] = getInf(i);
        num = 1000 * d;     % number of points
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
            
%             fit_points = zeros(num, 1);             % save the fitness of points
%             for k = 1:num
%                 fit_x = calfun(points(k,:), i);
%                 while fit_x == Inf
%                     newpoint =  lb + (ub - lb) * rand(1,d);
%                     fit_x = calfun(newpoint, i);
%                 end
%                 fit_points(k) = fit_x;
%             end
%             filename_fit = strcat('F:\研究生工作\7测试集代表性研究\code\results\fit\',num2str(i),'_',num2str(j), '.mat'); 
%             save(filename_fit,'fit_points');
              filename = strcat(num2str(i),'_',num2str(j), '.mat');
              load(filename);

%             avg_dist1 = DM(i, d, lb, ub, num, points, fit_points, A);              
             avg_dist2 = FDCs(i, d, lb, ub, num, points, fit_points);           
%             avg_dist3 = ILcd(i, d, lb, ub, num, points, fit_points);    

%             value_DM(j) = avg_dist1;
             value_FDCs(j) = avg_dist2;
%             value_ILcd(j) = avg_dist3;
        end
%         mean_DM = mean(value_DM);
         mean_FDCs = mean(value_FDCs);
%         mean_ILcd = mean(value_ILcd);

%         std_DM = std(value_DM);
         std_FDCs = std(value_FDCs); 
%         std_ILcd = std(value_ILcd);

%         filename_DM = strcat('F:\研究生工作\7测试集代表性研究\code\results\DM\',num2str(i), '.mat'); 
         filename_FDCs = strcat('F:\研究生工作\7测试集代表性研究\code\results\FDCs\',num2str(i), '.mat'); 
%         filename_ILcd = strcat('F:\研究生工作\7测试集代表性研究\code\results\ILcd\',num2str(i), '.mat'); 

%         save(filename_DM,'value_DM','mean_DM','std_DM');
         save(filename_FDCs,'value_FDCs','mean_FDCs','std_FDCs');
%         save(filename_ILcd,'value_ILcd','mean_ILcd','std_ILcd');
        clear all;
        clc;

    else
        continue;
    end
end

