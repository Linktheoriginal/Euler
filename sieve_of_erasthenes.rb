#finds and sums all primes under a given number, using the sieve of erasthenes
#x is the number to look under
x = 2000000

#set up a 2d array, like [[2, 0], [3, 0], [4, 0], ...]
#the first is the number we're checking, the second is whether it's a prime
#0 means prime, 1 means it's not.  assume primeness by default.
i = 1
arr = Array.new(x - 1){
	i+=1
	[i, 0]
}
i = 0

#now iterate through the array, marking off all multiples of each prime we find
#the marking pattern guarantees that the next non-marked number after a pass is a new prime
while i < x - 1
	if arr[i][1] == 0
		j = arr[i][0]
		while arr[i][0] + j < x + 1
			arr[i + j][1] = 1
			j = j + arr[i][0]
		end
	end
	i = i + 1
end

#sum the primes
i = 0
sum = 0
while i < x - 1
	if arr[i][1] == 0
		sum = sum + arr[i][0]
	end
	i = i + 1
end
print sum