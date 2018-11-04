function m = my_unique(M)
max = size(M, 1)
for i=1:max %row
    for j=i+1:max
        fprintf("i: %u\n", i);
        fprintf("j: %u\n", j);
        if j <= max
            x = all(M(i, :) == M(j, :))
            if x == 1
                fprintf('same\n');
                M(j, :) = [];
                max = max - 1;
            elseif x == 0
                fprintf('nope\n');
            end
        end
    end
end
m = M