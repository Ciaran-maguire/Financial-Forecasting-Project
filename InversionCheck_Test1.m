function result = InversionCheck_Test1
% This test checks if the function runs
population = randi([0,9],2,3);

try
    inversionCheck(population);
    
catch
    result = 0;
end
if isempty(result) == true
    result = 1;
end

