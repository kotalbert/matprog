function [o1, o2, o3] = sort3(v)
% sort 3 element vector in non decreasing order
a=v(1); b=v(2); c=v(3);

if a<b
    if b<c
        o=[a, b, c];
    else
        if a<c
            o = [a, c, b];
        else
            o = [c, a, b];
        end
    end
else
    if b<c
        if a<c
            o = [b, a, c];
        else
            o = [b, c, a];
        end
    else
        o = [c, b, a];
    end
end

o1 = o(1); o2 = o(2); o3 = o(3);
