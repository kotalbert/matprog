function exa = exp_average(in, bin)
persistent out b;
if nargin == 2
    out = in;
    b = bin;
    exa = out;
    return;
elseif nargin == 1
    if isempty(b) 
        b = .1;
    end
    if isempty(out)
        out = in;
        exa = in;
        return;
    end
end

out = b*in + (1 - b)*out;

exa = out;
