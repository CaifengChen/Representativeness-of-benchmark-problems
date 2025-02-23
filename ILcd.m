%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:Caifeng Chen
% Date:2021/11/28
% Code reference paper:"Characterising continuous optimisation problems for
%                       particle swarm optimisation performance prediction"
% and "Characterising continuous optimisation problems for particle swarm optimisation performance prediction"
% Extended by Information Landscape negative searchability, ILns
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function value = ILcd(nprob, d, lb, ub, num, points, fit_points)
% fit_points = zeros(num, 1);
% 
% parfor i = 1:num
%     fit_x = calfun(points(i,:), nprob);
%     while fit_x == Inf
%         newpoint = lb + (ub - lb) * rand(1,d);
%         fit_x = calfun(newpoint, nprob);
%     end
%     fit_points(i) = fit_x;
% end

% find the minimum
[fit_bestpoint, index] = min(fit_points);
bestpoint = points(index, :);

% construct landscape vector
Vp = [];
Vr = [];
size_Vp = (num - 1) * num /2;

% calculate the fitness of the reference problem
% parfor i = 1:num
%     f = 0;
%     for j = 1:d
%         f = f + points(i,j) * points(i, j) - sum(2 * bestpoint(j) * points(i, j)) + (bestpoint(j) * bestpoint(j));
%     end
%     fit(i) = f;
% end

diff = points - bestpoint;
fit = sum(diff.^2, 2);

% this code has some error
% for i = 1:num-1
%     compareVp = fit_points(i+1:num,:);
%     compareVp(fit_points(i) < compareVp) = 1;
%     compareVp(fit_points(i) == compareVp) = 0.5;
%     compareVp(fit_points(i) > compareVp) = 0;
%     Vp = [Vp; compareVp];
%     compareVp = [];
%     
%     % get the reference landscape vector Vr
%     compareVr = fit(i+1:num,:);
%     compareVr(fit(i) < compareVr) = 1;
%     compareVr(fit(i) == compareVr) = 0.5;
%     compareVr(fit(i) > compareVr) = 0;
%     Vr = [Vr; compareVr];
%     compareVr = [];
% end

% method 2
if d < 15
    Vp = zeros(num,num);
    Vr = zeros(num,num);
    diff_Vp = fit_points - fit_points';
    diff_Vr = fit - fit';
    Vp(diff_Vp < 0) = 1;
    Vp(diff_Vp == 0) = 0.5;
    Vr(diff_Vr < 0) = 1;
    Vr(diff_Vr == 0) = 0.5;
    % triu() Obtain elements above the diagonal

    dist = abs(triu(Vp-Vr,1));
    value = sum(dist(:))/size_Vp;

% method 3
% matrix convex to vector
% Generate vectors within num, in reverse order 3-----[3,2,1,0]
% reverse_v = flip(0:num-1);
% Generate vectors y, [1,2,3,4]-----[2,3,4,3,4,4]
% repeat_vp1 = repelem(fit_points, reverse_v);
else
    if d >= 40
        size = num/20;
        block = 20;
    else
        size = num/10;
        block = 10;
    end
    sum_dist = 0;
    parfor i = 1:block  % block size is num/10
        for j = i:block          
            temp_Vp = zeros(size,size);
            block_matrix_Vp = fit_points(1+(i-1)*size:size*i) - fit_points(1+(j-1)*size:size*j)';
            temp_Vp(block_matrix_Vp < 0) = 1;
            temp_Vp(block_matrix_Vp == 0) = 0.5;

            temp_Vr = zeros(size,size);
            block_matrix_Vr = fit(1+(i-1)*size:size*i) - fit(1+(j-1)*size:size*j)';
            temp_Vr(block_matrix_Vr < 0) = 1;
            temp_Vr(block_matrix_Vr == 0) = 0.5;
            if i==j           
                dist = abs(triu(temp_Vp-temp_Vr,1));
                sum_dist = sum_dist + sum(dist(:));
            else
                dist = abs(temp_Vp-temp_Vr);
                sum_dist = sum_dist + sum(dist(:));
            end
        end
    end

    value = sum_dist/size_Vp;
end
end
    