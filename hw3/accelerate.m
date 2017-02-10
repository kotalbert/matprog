function amag = accelerate(F1, F2, m)
c = F1 + F2;
a = sqrt(c'*c);
amag = a*m;
