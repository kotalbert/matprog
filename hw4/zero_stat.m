function zperc = zero_stat(Z)
zsum = sum(Z(:));
[n,m]=size(Z);
in = n*m;
zperc = (1 - zsum/in)*100;
