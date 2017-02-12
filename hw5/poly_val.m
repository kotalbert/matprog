function p = poly_val(c0,c,x)
cl = length(c);
if cl == 0, p = c0;return;end;

n = 1:cl;
if iscolumn(c), c = c';end; 
p = c0 + sum(c.*x.^n);
