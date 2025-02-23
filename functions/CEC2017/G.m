%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:Caifeng Chen
% Date:2021/11/27
% Code reference paper:"Ruggedness, Funnels and Gradients in Fitness
%                       Landscapes and the Effect on PSO Performance"
% Parameters:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [g_avg, g_dev] = G(nprob,A)
[d, lb, ub] = getInf(nprob);
fit_points = [];
g = [];                      % save the gradient between two points
numSteps = 100 * d;

if (ismember (nprob,A) ~= 1)
    step_size = (ub - lb)/100; % step size
else
    step_size = (ub(1) - lb(1))/100;
end

walk = Manhattan(lb, ub, nprob, numSteps, d, A);
for s = 1:numSteps + 1
    fit = calfun(walk(s, :), nprob);
    fit_points = [fit_points; fit];       
end

for i = 2:numSteps + 1  
    a = (fit_points(i) - fit_points(i-1))/(max(fit_points) - min(fit_points));
    if (ismember (nprob,A) ~= 1)
        b = step_size/((ub - lb)* d);
    else
        b = step_size/sum(ub - lb);
    end
    
    value = a/b;
    g = [g;abs(value)];
end

g_avg = sum(g) / numSteps;
A = g_avg - g;
g_dev = sqrt(sum(A.*A) / numSteps);
end
