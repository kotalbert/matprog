function [ea,k] = approximate_e(delta)
k = 0;
ea = 0;

while 1
    ea = ea + 1/myfact(k);
    if abs(ea - exp(1)) < delta
        break; 
    end
    k = k + 1;
end

function fct = myfact(k)
if k == 0, fct=1; return; end;
fct = k*myfact(k-1);