function rM = reverse_diag(n)
rM = zeros(n);
rM(n:n-1:n^2-n+1) = 1;
