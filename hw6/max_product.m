function [mp,mn] = max_product(v, n)
len = length(v);

if n>len
    mp = 0;
    mn = -1;
    return;
end;

for i = 1:len-n+1
    w=v(i:i+n-1);
    if i == 1
        mp = prod(w);
        mn = 1;
    else
        if prod(w)>mp
           mp = prod(w);
           mn = i;
        end
    end
end

