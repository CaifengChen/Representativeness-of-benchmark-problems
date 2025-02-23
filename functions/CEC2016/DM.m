%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:Caifeng Chen
% Date:2021/11/26
% Code reference paper:"The Dispersion Metric and the CMA Evolution Strategy"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function avg_dist = DM(nprob, d, lb, ub, num, points, fit_points, A)
sv = num;                        % 1000*D
sb = sv * 0.05;                  % 5%

% fit_points = zeros(sv, 1);      % save the fitness of x
bestPoints = zeros(sb, d);      % save the best x
fit_bestPoints = zeros(sb, 1);  % save the fitness of best x

% parfor i = 1:sv
%     fit_x = calfun(points(i,:), nprob);
%     while fit_x == Inf
%         newpoint =  lb + (ub - lb) * rand(1,d);
%         fit_x = calfun(newpoint, nprob);
%     end
%     fit_points(i) = fit_x;
% end

[sort_points, index] = sort(fit_points);
parfor j = 1:sb   
    fit_bestPoints(j) = sort_points(j);
    bestPoints(j,:) = points(index(j),:);
end

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
% Calculate the average pair-wise distance
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [avg_dist] = cal_dist(bestPoints)
% sum_dist = [];
[x, y] = size(bestPoints);

% parfor i = 1:x
%     for j = i+1:x
%         % Calculate the second norm 
%         % dist = bestPoints(i,:) - bestPoints(j,:);
%         % sum_dist = [sum_dist;  norm(dist, 2)];
%         sum_dist = [sum_dist; pdist([bestPoints(i,:); bestPoints(j,:)])];
%     end
% end

% D is a matrix to store Euclidean distance
D = sqrt(sum((bestPoints.^2), 2) - 2*bestPoints*bestPoints' + sum((bestPoints.^2), 2)');
num_dist = x * (x - 1)/2;
avg_dist = sum(D(:))/2/num_dist;

%avg_dist = mean(sum_dist);

end
