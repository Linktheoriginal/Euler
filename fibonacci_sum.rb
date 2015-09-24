i = 1
j = 2
total = 0
while i+j < 4000000
	temp = j
	j = i + j
	i = temp
	if j % 2 == 0
		total = total + j
	end
end
print total