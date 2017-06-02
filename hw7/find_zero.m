function x = find_zero(f,x1,x2)
nearzero = 1e-10;
if abs(f(x1)) < nearzero
    x = x1;
    return;
elseif abs(f(x2)) < nearzero
    x =x2;
    return;
end

x3 = (x1+x2)/2;

if abs(f(x3)) < nearzero
    x = x3;
    return;
elseif f(x3)<0
    if f(x1) < f(x2)
        x = find_zero(f, x3, x2);
    else
        x = find_zero(f, x3, x1);
    end
else
    if f(x1) < f(x2)
        x = find_zero(f, x1, x3);
    else
        x = find_zero(f, x2, x3);
    end
end


