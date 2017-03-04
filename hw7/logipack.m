function c = logipack(A)
    [n,m] = size(A);
    c = cell(n,1);
    for i=1:n
        v = [];
        for j=1:m
            if A(i,j)~=0
                v=[v j];
            end
        end
        c{i}=v;
    end
    
