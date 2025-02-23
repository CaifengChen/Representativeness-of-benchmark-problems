%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:Caifeng Chen
% Date:2021/12/06
% Code reference paper:"Characterising continuous optimisation problems for particle swarm optimisation performance prediction"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function walk = Manhattan(lb, ub, nprob, numSteps, step_size, d, A)
walk = zeros(numSteps + 1, d);

for i = 1:d
    startingZone = getStartingZone(d);
    if (ismember (nprob,A) ~= 1)
        r = 0 + ((ub - lb)/2)*rand();        % r belong to [0, (ub-lb)/2)
        if startingZone(i) == 1
            walk(1, i) = ub - r;
        else
            walk(1, i) = lb + r;
        end
    else
        r = ((ub(i) - lb(i))/2)*rand();
        if startingZone(i) == 1
            walk(1, i) = ub(i) - r;
        else
            walk(1, i) = lb(i) + r;
        end
    end
   
end

rD = randi(d);   
startingZone = getStartingZone(d);
if (ismember (nprob,A) ~= 1)
    if (startingZone(rD) == 1)
        walk(1, rD) = ub;
    else
        walk(1, rD) = lb;
    end
else
    if (startingZone(rD) == 1)
        walk(1, rD) = ub(d);
    else
        walk(1, rD) = lb(d);
    end
end

for s = 2:numSteps + 1
    % generate a random dimension, rD, in range [1,…,n]
    rD = randi(d);
    for i = 1:d
        if (i == rD)
            startingZone = getStartingZone(d);
            if (startingZone(i) == 1)
                inc = -1;
            else
                inc = 1;
            end
            
            walk(s, rD) = walk(s-1, rD) + (inc * step_size);
            if (ismember (nprob,A) ~= 1)
                if walk(s, rD)< lb || walk(s, rD) > ub
                    walk(s, rD) = walk(s-1, rD) - (inc * step_size);
                    startingZone(rD) = ~startingZone(rD);
                end
            else
                if walk(s, rD)< lb(rD) || walk(s, rD) > ub(rD)
                    walk(s, rD) = walk(s-1, rD) - (inc * step_size);
                    startingZone(rD) = ~startingZone(rD);
                end
            end
        else
            walk(s, i) = walk(s-1, i);          
        end
    end
end
end

function startingZone = getStartingZone(d)
r = rand(1,d);
startingZone = round(r);
end


