function  crossedOver = Crossover(population)
%One Point Crossover
gene1 = population(1,2:4);
gene2 = population(2,2:4);
r = randi([1 2]);

%Swaps genes
if r == 1
    %Swaps D,Q Parameters
    swap= gene1(2);
    gene1(2) = gene2(2);
    gene2(2) = swap;
    swap = gene1(3);
    gene1(3) = gene2(3);
    gene2(3) = swap;
else
    %Swaps P,D Parameters
    swap = gene1(1);
    gene1(1) = gene2(1);
    gene2(1) = swap;
    swap = gene1(2);
    gene1(2) = gene2(2);
    gene2(2) = swap;
    
end
crossedOver = [gene1;gene2];

end