#this is just brute force - a much faster way of computing this would be to calculate the maximum number of 
#prime divisors for each number under 20 and multiply them.  e.g. [1, 2, 3, 5, 7, 11, 13, 17, 19]
#is the primes under 20, but 20 breaks into [2, 2, 5], so we need to multiply 2 twice in the final set:
#[1, 2, 2, 3, 5, 7, 9, 11, 13, 17, 19].  Do this for every number under 20 and then multiply.

def evenlydivides(x)
	for y in 2..20
		if x % y != 0
			return false
		end
	end
	return true
end

x = 1
while not evenlydivides(x)
	x = x + 1
end
print x