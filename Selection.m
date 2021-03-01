function population = Selection(y)
%Stochastic Universal Sampling
% y = [fitness, p,d,q]
[length,~] = size(y);
fitnessTotal = 0;
% Totals the individuals fittness score
for i = 1:length
    fitnessTotal =  fitnessTotal + y(i,1);
end

% assigns the individual their place on the wheel
for i = 1:length
    %finds fitness
    fitness = y(i,1);
    %finds percent of total fitness
    fitness = (fitness/fitnessTotal)*100;
    %assigns fitness percentage
    if i ~= 1
        y(i,5) = y(i-1,5) + fitness;
        
    else
        y(1,5) = fitness;
    end
end

% randomly generate 2 numbers between 1 - 100
% number will be generated
r = randi([1 100]);
selection1 = 0;

for i = 1:length
    
    if i ~=1
        if y(i-1,5) < r <= y(i,5)
            selection1 = i;
            break
        end
    end
    if y(1,5) <= r
        selection1 = i;
        break
    end
end
% The same individual cannot be selected twice. if this happens another
selection2 = selection1;
while selection2 == selection1
    r = randi([1 100]);
    for i = 1:length
        
        if i ~=1
            if y(i-1,5) < r <= y(i,5)
                selection2 = i;
                break
            end
        end
        if y(1,5) <= r
            selection2 = i;
            break
        end
    end
end
population = [y(:,selection1); y(:,selection2)]
end