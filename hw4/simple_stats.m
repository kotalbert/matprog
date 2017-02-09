function S = simple_stats(N)
a = mean(N, 2);
m = median(N, 2);
mi = min(N, [], 2);
ma = max(N, [], 2);
S = [a,m,mi,ma];
