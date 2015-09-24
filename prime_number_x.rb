#this iterates through the found primes to figure out if the new number is a prime
#a new prime will not be divisible by any of the previous primes.
#this can get exponential runtimes, see the sieve of erasthenes answer if you only
#want to find primes.  Otherwise, a variation of this code can be used for prime factorization.

#set up this array to 'prime' the pump.  Heh, I kill me.  Mostly just avoiding debugging 0/1 issues.
primes = [2, 3, 5, 7, 9, 11, 13, 17, 19]
x = 20
while primes.length < 10002
	y = 0
	while y <= primes.length
		if y == primes.length
			primes.push(x)
			#print "pushed " + x.to_s
		end
		if x % primes[y] == 0
			#not a prime!
			y = primes.length
		end
		y = y + 1
	end
	x = x + 1
end
print primes[10001]