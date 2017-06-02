function A = logiunpack(c)
    n=length(c);
    A=zeros(n);
    for i=1:n
        r = c{i};
        if isempty(r)
            continue;
        else
            for j=1:length(r)
                A(i,r(j))=1;
            end
        end
    end
    A = logical(A);
    