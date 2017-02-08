function Meven = even_index(M)
[n,m]=size(M);
neven = 2:2:n;
meven = 2:2:m;
Meven = M(neven,meven);
