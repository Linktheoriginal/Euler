#I don't like that this computes all possibilities.
x = 999
y = 999
max = 0
while x > 0
	while y > 0
		if (x * y).to_s == (x * y).to_s.reverse and x * y >= max
			max = x * y
		end
		y = y - 1
	end
	x = x - 1
	y = 999
end
print max.to_s