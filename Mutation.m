function  Mutated = Mutation(population)
% Random variable used to select which p,d,q variable to mutate
parSel = randi([1 3]);

% Used to randomly generate the mutation 
mutant = randi([0 9]);

switch (parSel)
    case 1
        population(2) = mutant;
        
    case 2
        population(3) = mutant;
        
    case 3
        population(4) = mutant;
        
end

Mutated = population;
end