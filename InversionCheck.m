function Clean = InversionCheck(unclean,training)
[length, ~] = size(unclean);
errorIndex = 0;

for i = 1:length
    if unclean(i,1) == 0
    try
        p = unclean(i,2);
        d = unclean(i,3);
        q = unclean(i,4);
        ARIMA_test = arima(p,d,q);
        [~,~,~] = estimate(ARIMA_test,training,'display','off');
        errorIndex(i) = 0;
    catch
            errorIndex(i) = i;
    end
    end
end
[~,errorSize] = size(errorIndex);
for g = errorSize:-1:1
        if errorIndex(g) == g
            unclean(g,:) = [];
            errorIndex(g)= [];
        end
end
Clean = unclean;
end