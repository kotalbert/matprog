function a_uint = smallest_multiple(n)
primes_list=primes(n);

out = uint64(1);
for p = primes_list
out = out * power(p, prime_power(p, n));
end

if out == intmax('uint64')
    a_uint = uint64(0);
else
    a_uint = out;
end

end

% Find max power of prime p, less than n
function a_uint = prime_power(p, n)
  
  a_uint = floor(log(n)/log(p));
  
end