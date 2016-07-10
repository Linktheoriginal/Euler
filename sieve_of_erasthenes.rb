#finds and sums all primes under a given number, using the Sieve of Eratosthenes
def answer(maxInt)
	isPrime = Array.new(maxInt + 1){true}
	
	for possiblePrime in 2..(maxInt / 2)
		if isPrime[possiblePrime]
			for multiple in ((possiblePrime * 2)..maxInt).step(possiblePrime)
				isPrime[multiple] = false
			end
		end
	end

	sum = 0
	for prime in 2..maxInt
		if isPrime[prime]
			sum = sum + prime
		end
	end
	print sum
end

answer(2000000)
