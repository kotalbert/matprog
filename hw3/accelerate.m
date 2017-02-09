function amag = accelerate(F1, F2, m)
a = (F1(1) + F2(1))^2 + (F1(2) + F2(2))^2 + (F1(3) + F2(3))^2;
a = sqrt(a);
amag = a*m;
