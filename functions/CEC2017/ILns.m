%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:Caifeng Chen
% Date:2021/11/28
% Code reference paper:"Characterising continuous optimisation problems for
%                       particle swarm optimisation performance prediction"
% Parameters:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function value = ILns(nprob, num,  points)
fit_points = zeros(num, 1);
Vp = [];
size_Vp = (num - 1)*(num - 2)/2;

for i = 1:num
    fit_x = calfun(points(i,:), nprob);
    fit_points(i) = fit_x;
end

% find the minimum
[fit_bestpoint, index] = min(fit_points);
bestpoint = points(index, :);

for i = 1:num
    for j = i+1:num
        if (i ~= index) && (j ~= index) && (i < j)
            if (fit_points(i) < fit_points(j))
                Mp = 1;
                Vp = [Vp; Mp];
            elseif fit_points(i) == fit_points(j)
                Mp = 0.5;
                Vp = [Vp; Mp];
            else
                Mp = 0;
                Vp = [Vp; Mp];
            end                    
        end
    end
end

if size(Vp,1) ~= size_Vp
    disp("error");
end
 
Vr = getVr(num, points, bestpoint);
dist = abs(Vp-Vr);
value = sum(dist)/size_Vp;

end
    

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% get the Vr
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [Vr] = getVr(num, points, bestpoint)
fit = [];
Mr = zeros(num, num);
Vr = [];
Vrpoints = points;
[x, y] = size(points);
f = 0;

for i = 1:x
    for j = 1:y
        f = f + Vrpoints(i,j) * Vrpoints(i, j) - sum(2 * bestpoint(j) * Vrpoints(i, j)) + (bestpoint(j) * bestpoint(j));
    end
    fit = [fit, f];
    f = 0;
end

% find the minimum
[best, index] = min(fit);
bestVrpoint = Vrpoints(index, :);

for i = 1:x
    for j = i+1:x
        if (i ~= index) && (j ~= index) && (i < j)
            if (fit(i) < fit(j))
                Mr = 1;
                Vr = [Vr; Mr];
            elseif fit(i) == fit(j)
                Mr = 0.5;
                Vr = [Vr; Mr];
            else
                Mr = 0;
                Vr = [Vr; Mr];
            end
        end
    end
end

end