x = 600851475143
y = 2
factors = Array.new
while y < x
	if x % y == 0
		factors.push(y)
		x = x / y
	else
		y = y + 1
	end
end
factors.push(y)

print factors