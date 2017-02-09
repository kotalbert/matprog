function orms = odd_rms(nn)
pint = 1:2:2*nn;
ppint = pint.^2;
m = mean(ppint);
orms = sqrt(m);
