function Q = intquad(n,m)
Q = zeros(2*n, 2*m);
Q(1:n,m+1:end) = 1;
Q(n+1:end,1:m) = 2;
Q(n+1:end,m+1:end) = 3;
