#I originally was running x up to k/2 (started k at 1 for dividing itself), but I stole 
#the sqrt idea from here:http://www.mathblog.dk/triangle-number-with-more-than-500-divisors/
#The second solution is basically usingthe prime divisor code from problem 3 plus combinatorics
#of the prime factors to figure it out.  Faster, but a lot more coding.

#While I generally understand the process of the coprime solution at the above url, that code is
#so unreadable that I wouldn't use it.  Once you understand it, it's great, but I would
#only go that far if it was a major gain in the program I'm writing.  Generally, avoid until required,
#but if that's required, write paragraphs of comments explaining it.

i = 0
y = 0
while y < 500 
	k = 0
	for j in 1..i
		k = j + k
	end
	#print " k = " + k.to_s
	y = 0
	for x in 1..Math.sqrt(k)
		if (k.to_f / x) % 1.to_f == 0
			y += 2
		end
	end
	#print " y = " + y.to_s
	i += 1
end
print k