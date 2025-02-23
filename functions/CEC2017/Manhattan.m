%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author:Caifeng Chen
% Date:2021/12/06
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function walk = Manhattan(lb, ub, nprob, numSteps, d, A)
walk = zeros(numSteps + 1, d);
if (ismember (nprob,A) ~= 1)
    step_size = (ub - lb)/100; % step size
else
    step_size = (ub(1) - lb(1))/100;
end

for i = 1:d
    startingZone = getStartingZone(d);
    if (ismember (nprob,A) ~= 1)
        r = ((ub - lb)/2)*rand();        % [0, (ub-lb)/2)
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

rD = randi(d);            % [1, d], return 1 to d
startingZone = getStartingZone(d);
if (ismember (nprob,A) ~= 1)
    if (startingZone(d) == 1)
        walk(1, rD) = ub;
    else
        walk(1, rD) = lb;
    end
else
    if (startingZone(d) == 1)
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


