%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:Caifeng Chen
% Date:2021/12/26
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
% mex cec2013_func.cpp -DWINDOWS
% global initial_flag 


nr = 30;
value1 = zeros(nr, 1);
value2 = zeros(nr, 1);
value3 = zeros(nr, 1);
A = [10, 71, 81, 175, 177];

for i = 689:769
    for j = 1:nr
        % initial_flag = 0;
        % create points
        nprob = i;
        [d, lb, ub] = getInf(nprob);
        num = 100 * d;     % number of points
        points = [];
        
        if (ismember (nprob,A) ~= 1)
            points =  lb + (ub - lb) * rand(num,d);
        else
            for k = 1:num
                random_x = create(d, lb, ub);
                points = [points; random_x];
            end
        end
        
        avg_dist1 = DM(nprob, d, lb, ub, num, points, A);              
        avg_dist2 = FDCs(nprob, num, points);           
        avg_dist3 = ILns(nprob, num, points);    

        value1(j) = avg_dist1;
        value2(j) = avg_dist2;
        value3(j) = avg_dist3;
    end
    meanvalue1 = mean(value1);
    meanvalue2 = mean(value2);
    meanvalue3 = mean(value3);
    
    stdvalue1 = std(value1);
    stdvalue2 = std(value2); 
    stdvalue3 = std(value3);
    
    filename1 = strcat('F:\研究生工作\7测试集代表性研究\code\results\DM\',num2str(i), '.mat'); 
    filename2 = strcat('F:\研究生工作\7测试集代表性研究\code\results\FDCs\',num2str(i), '.mat'); 
    filename3 = strcat('F:\研究生工作\7测试集代表性研究\code\results\ILns\',num2str(i), '.mat'); 

    save(filename1,'value1','meanvalue1','stdvalue1');
    save(filename2,'value2','meanvalue2','stdvalue2');
    save(filename3,'value3','meanvalue3','stdvalue3');
    
%     value1 = [];
%     value2 = [];
%     value3 = [];
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create the random point
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function x = create(d, lb, ub)
x = [];
for i = 1:d
    x = [x, lb(i) + (ub(i) - lb(i)) * rand()];
end
end

