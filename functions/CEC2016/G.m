%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:Caifeng Chen
% Date:2021/11/27
% Code reference paper:"Ruggedness, Funnels and Gradients in Fitness
%                       Landscapes and the Effect on PSO Performance"
% and "Characterising continuous optimisation problems for particle swarm optimisation performance prediction"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function g_avg = G(nprob,A)
[d, lb, ub] = getInf(nprob);
numSteps = 1000 * d;
fit_points = zeros(numSteps+1,1);

if (ismember (nprob,A) ~= 1)
    step_size = (ub - lb)/1000; % step size
else
    step_size = (ub(1) - lb(1))/1000;
end

walk = Manhattan(lb, ub, nprob, numSteps, step_size, d, A);
parfor s = 1:numSteps + 1
    fit = calfun(walk(s, :), nprob);
    fit_points(s) = fit;       
end

maxfit = max(fit_points);
minfit = min(fit_points);
g = 0;

a = diff(fit_points) / (maxfit - minfit);
if (ismember (nprob,A) ~= 1)
    b = step_size/((ub - lb) * d);
else
    b = step_size/sum(ub - lb);
end

value = a / b;
g = sum(abs(value));
g_avg = g / numSteps;

% for i = 2:numSteps + 1  
%     a = (fit_points(i) - fit_points(i-1))/(maxfit - minfit);
%     value = a/b;
%     g = g+abs(value);
% end
end
