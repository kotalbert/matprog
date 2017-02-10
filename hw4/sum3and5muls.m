function s = sum3and5muls(n)
n3 = floor(n/3);
n5 = floor(n/5);
n15 = floor(n/15);
s = 3*si(n3) + 5*si(n5) - 15*si(n15)

function s = si(n)
s = (n*(n+1))/2;
