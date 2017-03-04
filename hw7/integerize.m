function intc = integerize(A)
    maxA = max(A(:));
    minA = min(A(:));
    if minA >= -2^7 && maxA <= 2^7-1
        intc = 'int8';
    elseif minA >= -2^15 && maxA <= 2^15-1
        intc = 'int16';
    elseif minA >= -2^31 && maxA <= 2^31-1
        intc = 'int32';
    elseif minA >= -2^63 && maxA <= 2^63-1
        intc = 'int64';
    else
        intc = 'NONE';
    end
            