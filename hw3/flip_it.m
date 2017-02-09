function w = flip_it(v)
n = length(v);
w = zeros(1,n);
j = 1;

for i = n:-1:1
   w(j) = v(i);
   j = j+1;
end
: