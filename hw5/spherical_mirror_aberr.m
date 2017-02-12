function mbd = spherical_mirror_aberr(fn,D)
dx = 0.01;
f = fn*D;
xn = 0:dx:D/2;
thetan = asin(xn/(2*f));
dn = 2*f*tan(2*thetan).*(1./cos(thetan) - 1); 
mbd = ((8*dx)/D^2)* (xn * dn');
