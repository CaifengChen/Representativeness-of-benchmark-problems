%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:Caifeng Chen
% Date:2021/11/26
% Code reference paper:"Analysis and Classification of Optimisation Benchmark 
%                       Functions and Benchmark Suites"
% Parameters:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function fdcs = FDCs(nprob, num, points)
fit_points = zeros(num, 1);             % save the fitness of points
        
for i = 1:num
    fit_x = calfun(points(i,:), nprob);
    fit_points(i) = fit_x;
end

[fit_bestpoint, index] = min(fit_points);
bestpoint = points(index,:);

% calculate the Euclidean distance between every point and bestpoint
dist = [];
for j = 1:num
    if (j == index)
        dist = [dist; 0];
    else
        E_dist = points(j,:) - bestpoint;
        dist = [dist; norm(E_dist, 2)];
    end
end

% calcuate the fitness-distance correltion
fit_mean = mean(fit_points);
dist_mean = mean(dist);
A = fit_points - fit_mean;
B = dist - dist_mean;
fdcs = (A' * B)/(sqrt(sum(A.*A)) * sqrt(sum(B.*B)));    

end

