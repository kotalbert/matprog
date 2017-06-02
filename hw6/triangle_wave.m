function o = triangle_wave(n)
t = linspace(0,4*pi, 1001);
o = zeros(1, 1001);

for i = 1:1001
   o(i) = twsum(t(i),n); 
end


function s = twsum(t,n)
s = 0;
for k = 0:n
   s = s + ((-1)^k*sin((2*k+1)*t))/((2*k+1)^2);
end
