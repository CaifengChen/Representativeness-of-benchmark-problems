%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:Caifeng Chen
% Date:2021/11/26
% Code reference paper:"The Dispersion Metric and the CMA Evolution Strategy"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function avg_dist = Disp_DM(nprob, d, lb, ub, num, points, A)
sv = num;                       
sb = num;                       

bestPoints = points;  

% normalised bestPoints to [0, 1]
if (ismember (nprob,A) ~= 1)
    bestPoints = (bestPoints - lb)/(ub - lb);
else
    bestPoints(:,1) = (bestPoints(:,1) - lb(1))/(ub(1) - lb(1));
    bestPoints(:,2) = (bestPoints(:,2) - lb(2))/(ub(2) - lb(2));
end

% Calculate the average pairwise distance of bestPoints
avg_dist = cal_dist(bestPoints);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculate the average pairwise distance
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [avg_dist] = cal_dist(bestPoints)
% sum_dist = [];
[x, y] = size(bestPoints);
% for i = 1:x
%     for j = i+1:x
%         % Calculate the second norm 
%         dist = bestPoints(i,:) - bestPoints(j,:);
%         sum_dist = [sum_dist;  norm(dist, 2)];
%     end
% end
% 
% avg_dist = mean(sum_dist);

% D is a matrix to store Euclidean distance
D = sqrt(sum((bestPoints.^2), 2) - 2*bestPoints*bestPoints' + sum((bestPoints.^2), 2)');
num_dist = x * (x - 1)/2;
avg_dist = sum(D(:))/2/num_dist;
end
