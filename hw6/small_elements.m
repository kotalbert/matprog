function indexes = small_elements(X)
indexes = [];
[n,m] = size(X);
for j=1:m
    for i=1:n
        if X(i,j) < i*j
           indexes = [indexes; [i,j]];
        end
    end
end

