function model = GA_UnitTest(len,training,test)
% Results for a GA with 2 loops
model = zeros(1,6);

for i = 1:5
model(i,:) = GaMain(len,training,test);

        
end

end