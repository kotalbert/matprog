function hs = halfsum(X)
[n, m] =  size(X);
hs = 0;
for j = 1:m
    slce = X(:,j);
    hs = hs + sum(slce(n+1-j:n));
end