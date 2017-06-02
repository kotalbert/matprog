function ss = spiral_diag_sum(n)
s = (n-1)/2;
ss = 1;
for i = 1:s
    ss = ss + 16*i^2+4*i+4;
end